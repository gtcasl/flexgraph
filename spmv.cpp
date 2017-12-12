#include "spmv.h"

using namespace spmv;
using namespace spmv::accelerator;

__enum (ch_ctrl_state, (
  (ready,             1<<0),
  (get_partition,     1<<1),
  (wait_for_execute,  1<<2),
  (flush_buffers,     1<<3),
  (write_stats,       1<<4),
  (wait_for_writes,   1<<5)
));

spmv_device::spmv_device() {
  // bind modules
  for (int i = 0; i < PE_COUNT; ++i) {
    PEs_[i].io.req(walkers_[i].io.pe);
    lsu_.io.walkers[i](walkers_[i].io.lsu);
    lsu_.io.PEs[i](PEs_[i].io.lsu);
  }
  lsu_.io.ctx(io.ctx);
  lsu_.io.qpi(io.qpi);
}

spmv_device::~spmv_device() {
  //--
}

void spmv_device::describe() {  
  //--
  num_parts_ = io.ctx.a.num_parts.slice<ch_width_v<ch_ptr>>();

  // timer
  ch_seq<ch_bit64> timer;
  timer.next = timer + 1;
  for (auto& w : walkers_) {
    w.io.ctrl.timer = timer;
  }
  
  // main thread
  this->main_thread();
    
  // dispatcher
  this->dispatch_thread();
}

void spmv_device::main_thread() {
  ch_seq<ch_ctrl_state> state(ch_ctrl_state::ready);

  //--
  auto done = io.done.asSeq();

  //--
  pbuf_.io.enq.data  = lsu_.io.ctrl.rd_rsp.data.data;
  pbuf_.io.enq.valid = lsu_.io.ctrl.rd_rsp.valid
                   && (lsu_.io.ctrl.rd_rsp.data.type == ch_rd_request::a_colptr);

  //--
  pbuf_pending_size_.next = pbuf_pending_size_ +
      ch_zext<32>(lsu_.io.ctrl.rd_req.valid
               && lsu_.io.ctrl.rd_req.ready
               && (lsu_.io.ctrl.rd_req.data.type == ch_rd_request::a_colptr)) -
      ch_zext<32>(pbuf_.io.deq.ready);

  //--
  ch_bool all_PEs_ready = walkers_[0].io.ctrl.start.ready && PEs_[0].io.is_idle;
  for (int i = 1; i < PE_COUNT; ++i) {
    all_PEs_ready = ch_clone(all_PEs_ready)
                 && walkers_[i].io.ctrl.start.ready
                 && PEs_[i].io.is_idle;
  }
      
  //--
  __switch (state)
  __case (ch_ctrl_state::ready) {
    __if (io.start) {
      __if (io.ctx.a.num_parts != 0) {
        part_blk_curr_.next = 0;
        part_blk_end_.next = CEIL_INT32_TO_BLOCK_ADDR(io.ctx.a.num_parts+1).slice<ch_width_v<ch_ptr>>();
        done.next = false; // clear done signal
        // request partition block
        state.next = ch_ctrl_state::get_partition;
      } __else {
        // no work to do!
        done.next = true; // set done signal
      };
    };
  }
  __case (ch_ctrl_state::get_partition) {
      lsu_.io.ctrl.rd_req.data.type = ch_rd_request::a_colptr;
      lsu_.io.ctrl.rd_req.data.addr = part_blk_curr_;
    __if (pbuf_pending_size_ != PBUF_SIZE) {
      lsu_.io.ctrl.rd_req.valid = true;
      // wait for LSU ack
      __if (lsu_.io.ctrl.rd_req.ready) {
        part_blk_curr_.next = part_blk_curr_ + 1;
        __if (part_blk_curr_.next == part_blk_end_) {
          // go wait for execution to complete
          state.next = ch_ctrl_state::wait_for_execute;
        };
      } __else {
        // profiling
        stats_.next.a_colptr_stalls = stats_.a_colptr_stalls + 1;
      };
    } __else {
      // profiling
      stats_.next.a_colptr_stalls = stats_.a_colptr_stalls + 1;
    };
  }
  __case (ch_ctrl_state::wait_for_execute) {
    // wait for the execution to complete
    __if (part_curr_ == num_parts_ && all_PEs_ready) {
      // flush LSU write buffers      
      state.next = ch_ctrl_state::flush_buffers;  
    };
  }
  __case (ch_ctrl_state::flush_buffers) {
    // flush write buffers
    lsu_.io.ctrl.wr_req.data.type = ch_wr_request::y_masks;
    lsu_.io.ctrl.wr_req.valid = true;
    // wait for LSU ack
    __if (lsu_.io.ctrl.wr_req.ready) {
      // write hardware counters      
      state.next = ch_ctrl_state::write_stats;
    };
  }
  __case (ch_ctrl_state::write_stats) {
    // write ctrl counters
    lsu_.io.ctrl.wr_req.data.type = ch_wr_request::stats;
    lsu_.io.ctrl.wr_req.data.addr = ch_zext<ch_width_v<ch_blk_addr>>(stats_addr_);
    lsu_.io.ctrl.wr_req.data.data = this->get_stats(stats_addr_);
    lsu_.io.ctrl.wr_req.valid     = true;
    // wait for LSU ack
    __if (lsu_.io.ctrl.wr_req.ready) {
      stats_addr_.next = stats_addr_ + 1;
      __if (stats_addr_ == PE_COUNT) {
        // got wait for writes to complete
        state.next = ch_ctrl_state::wait_for_writes;
      };
    };
  }
  __case (ch_ctrl_state::wait_for_writes) {
    // wait for pending LSU writes to complete
    __if (lsu_.io.ctrl.outstanding_writes == 0) {
      state.next = ch_ctrl_state::ready;
      done.next = true; // set done signal
    };
  }
  __default {
    //--
    lsu_.io.ctrl.rd_req.data.addr = 0;
    lsu_.io.ctrl.rd_req.data.type = ch_rd_request::a_colptr;
    lsu_.io.ctrl.rd_req.valid     = false;

    //--
    lsu_.io.ctrl.wr_req.data.addr = 0;
    lsu_.io.ctrl.wr_req.data.type = ch_wr_request::y_values;
    lsu_.io.ctrl.wr_req.data.data = 0;
    lsu_.io.ctrl.wr_req.valid     = false;
  };
    
  //--
  if (verbose) {
    ch_print("{0}: ctrl_main: state={1}, start={2}, done={3}, Bc={4}, Be={5}, "
           "rq_val={6}, rq_typ={7}, rq_adr={8}, "
           "wr_val={9}, wr_typ={10}, wr_adr={11}",
           ch_getTick(), state, io.start, done, part_blk_curr_, part_blk_end_,
           lsu_.io.ctrl.rd_req.valid, lsu_.io.ctrl.rd_req.data.type, lsu_.io.ctrl.rd_req.data.addr,
           lsu_.io.ctrl.wr_req.valid, lsu_.io.ctrl.wr_req.data.type, lsu_.io.ctrl.wr_req.data.addr);
  }
}

void spmv_device::dispatch_thread() {
  ch_seq<ch_bit<log2ceil(1+PE_COUNT)>> state;
  
  // extract partition data from pbuf and assign it to eahc PE
  {
    auto sw = ch_switch(state);
    sw __case (0) {
      // wait for partition data
      __if (pbuf_.io.deq.valid) {
        pbuf_.io.deq.ready = true;
        __if (part_buf_size_ == 0) {
          // get whole partition block
          part_buf_.next.slice<ch_width_v<ch_block>>(0) = pbuf_.io.deq.data;
          part_buf_size_.next = PARTITIONS_PER_BLOCK;
        } __else {
          // append partition block
          part_buf_.next.slice<ch_width_v<ch_block>>(PARTITION_VALUE_BITS) = pbuf_.io.deq.data;
          part_buf_size_.next = 1 + PARTITIONS_PER_BLOCK ;
        };
        // submit partition to next ready PE starting with PE0
        state.next = 1;
      };
    };

    for (int i = 0; i < PE_COUNT; ++i) {
      sw __case (1+i) {
        // check if PE is ready
        __if (walkers_[i].io.ctrl.start.ready) {
          // dispatch partition to PE
          ch_dcsc_part_t part(part_buf_.slice<ch_width_v<ch_dcsc_part_t>>());
          walkers_[i].io.ctrl.start.data.part = part;
          walkers_[i].io.ctrl.start.valid = true;
          // advance counters
          part_buf_.next = part_buf_ >> PARTITION_VALUE_BITS; // pop one entry
          part_curr_.next = part_curr_ + 1; // advance partition
          part_buf_size_.next = part_buf_size_ - 1;

          //--
          if (verbose) {
            ch_print(fstring("{0}: *** assigned partition{1} to PE%d, p_start={2}, p_end={3}", i),
                     ch_getTick(), part_curr_, part.start, part.end);
          }

          // check if we can pop another partition from current block
          // we need at least two entries to proceed
          __if (part_curr_.next != num_parts_
             && part_buf_size_.next != 1) {
            // goto next PE
            state.next = 1 + ((i+1 != PE_COUNT) ? (i+1) : 0);
          } __else {
            state.next = 0;
          };
        } __else {
          // goto next PE
          state.next = 1 + ((i+1 != PE_COUNT) ? (i+1) : 0);
        };
      };
    }

    sw __default {
      for (int i = 0; i < PE_COUNT; ++i) {
        walkers_[i].io.ctrl.start.data.part.asBits() = 0;
        walkers_[i].io.ctrl.start.valid = false;
      }
      pbuf_.io.deq.ready = false; // off by default
    };
  }
    
  //--
  if (verbose) {
    ch_print("{0}: ctrl_disp: state={1}, pe0_rdy={2}, p={3}, pbuf_sz={4}, pbuf={5}, part0={6}",
           ch_getTick(), state, 
           (walkers_[0].io.ctrl.start.valid == walkers_[0].io.ctrl.start.ready),
           part_curr_, part_buf_size_, part_buf_,
           walkers_[0].io.ctrl.start.data.part.asBits());
  }
}

ch_block spmv_device::get_stats(const ch_stats_addr& addr) {
  //--
  auto cs = ch_case(addr, 0, ch_zext<ch_width_v<ch_block>>(stats_.asBits()));
  for (int i = 1; i < PE_COUNT; ++i) {
    ch_stats_t stats;
    stats.walker = walkers_[i-1].io.ctrl.stats;
    stats.pe = PEs_[i-1].io.stats;
    cs(i, ch_zext<ch_width_v<ch_block>>(stats.asBits()));
  }
  ch_stats_t stats;
  stats.walker = walkers_[PE_COUNT-1].io.ctrl.stats;
  stats.pe = PEs_[PE_COUNT-1].io.stats;
  return cs(ch_zext<ch_width_v<ch_block>>(stats.asBits()));
}
