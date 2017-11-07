#include "spmv.h"

using namespace spmv;
using namespace spmv::accelerator;

__enum (ch_ctrl_state, 3, (
  ready,            
  get_partition,
  execute,
  flush_buffers,
  write_hwcntrs,
  wait_for_writes
));

__enum (ch_dispatch_state, 2, (
  get_partition,
  dispatch_PE0,
  dispatch_PE1
));

spmv_device::spmv_device() {
  // create the PEs
  pe_.reserve(PE_COUNT);
  for (int i = 0; i < PE_COUNT; ++i) {
    pe_.emplace_back(i);
  }

  // bind modules
  for (int i = 0; i < PE_COUNT; ++i) {
    lsu_.io.pe[i](pe_[i].io.lsu);
  }
  lsu_.io.ctx(io.ctx);
  lsu_.io.qpi(io.qpi);
}

spmv_device::~spmv_device() {
  //--
}

void spmv_device::describe() {  
  //--
  numparts_ = io.ctx.a.numparts.slice<ch_bitwidth_v<ch_ptr>>();

  // timer
  ch_seq<ch_bit64> timer;
  timer.next = timer + 1;
  for (auto& pe : pe_) {
    pe.io.ctrl.timer = timer;
  }
  
  // main thread
  this->main_thread();
    
  // dispatcher
  this->dispatch_thread();
}

void spmv_device::main_thread() {
  ch_seq<ch_ctrl_state> state;

  //--
  auto done = io.done.asSeq();

  //--
  pbuf_.io.enq.data = lsu_.io.ctrl.rd_rsp.data.data;
  pbuf_.io.enq.valid = lsu_.io.ctrl.rd_rsp.valid && (lsu_.io.ctrl.rd_rsp.data.type == ch_rd_request::a_partition);

  //--
  ch_hwcntrs_t hwcntrs(0);
  hwcntrs.PE0 = pe_[0].io.ctrl.hwcntrs;
  hwcntrs.PE1 = pe_[1].io.ctrl.hwcntrs;
  hwcntrs.a_partitions_stalls = a_partitions_stalls_;

  //--
  lsu_.io.ctrl.rd_req.data.addr = 0;

  //--
  lsu_.io.ctrl.wr_req.data.addr = 0;
  lsu_.io.ctrl.wr_req.data.data = ch_zext<ch_bitwidth_v<ch_block_t>>(hwcntrs.asBits());

  //--
  pbuf_pending_size_.next = pbuf_pending_size_ +
      ch_zext<32>(lsu_.io.ctrl.rd_req.valid && lsu_.io.ctrl.rd_req.ready && (lsu_.io.ctrl.rd_req.data.type == ch_rd_request::a_partition)) -
      ch_zext<32>(pbuf_.io.deq.ready);

  //--
  ch_bool all_PEs_ready = pe_[0].io.ctrl.start.ready;
  for (int i = 1; i < PE_COUNT; ++i) {
    all_PEs_ready = ch_clone(all_PEs_ready) & pe_[i].io.ctrl.start.ready;
  }
      
  //--
  __switch (state) (
  __case (ch_ctrl_state::ready) ( 
    __if (io.start) (
      __if (io.ctx.a.numparts != 0) (
        part_blk_curr_.next = 0;
        part_blk_end_.next = CEIL_INT32_TO_BLOCK_ADDR(io.ctx.a.numparts+1).slice<ch_bitwidth_v<ch_ptr>>();
        done.next = false; // clear done signal
        // request partition block
        state.next = ch_ctrl_state::get_partition;
      )
      __else (
        // no work to do!
        done.next = true; // set done signal
        state.next = ch_ctrl_state::ready;
      );
    );
  )
  __case (ch_ctrl_state::get_partition) (
      lsu_.io.ctrl.rd_req.data.type = ch_rd_request::a_partition;
    __if (pbuf_pending_size_ != PBUF_SIZE) (
      lsu_.io.ctrl.rd_req.valid = true;
      // wait for LSU ack
      __if (lsu_.io.ctrl.rd_req.ready) (
        part_blk_curr_.next = part_blk_curr_ + 1;
        __if (part_blk_curr_.next == part_blk_end_) (
          // goto execute
          state.next = ch_ctrl_state::execute;
        );
      )
      __else (
        // profiling
        a_partitions_stalls_.next = a_partitions_stalls_ + 1;
      );
    )
    __else (
      // profiling
      a_partitions_stalls_.next = a_partitions_stalls_ + 1;
    );
  )
  __case (ch_ctrl_state::execute) (
    // wait for the execution to complete
    __if (part_curr_ == numparts_ && all_PEs_ready) (
      // flush LSU write buffers      
      state.next = ch_ctrl_state::flush_buffers;  
    );
  )
  __case (ch_ctrl_state::flush_buffers) (     
    // flush write buffers
    lsu_.io.ctrl.wr_req.data.type = ch_wr_request::y_masks;
    lsu_.io.ctrl.wr_req.valid = true;
    // wait for LSU ack
    __if (lsu_.io.ctrl.wr_req.ready) (
      // write hardware counters      
      state.next = ch_ctrl_state::write_hwcntrs; 
    );
  )
  __case (ch_ctrl_state::write_hwcntrs) (         
    // gather hardware counters
    lsu_.io.ctrl.wr_req.data.type = ch_wr_request::hwcntrs;
    lsu_.io.ctrl.wr_req.valid = true;
    // wait for LSU ack
    __if (lsu_.io.ctrl.wr_req.ready) (
      // got wait for writes to complete
      state.next = ch_ctrl_state::wait_for_writes;
    );
  )
  __case (ch_ctrl_state::wait_for_writes) (
    // wait for pending LSU writes to complete
    __if (lsu_.io.ctrl.outstanding_writes == 0) (
      state.next = ch_ctrl_state::ready;
      done.next = true; // set done signal
    );
  )
  __default (
    //--
    lsu_.io.ctrl.rd_req.data.type = ch_rd_request::a_partition;
    lsu_.io.ctrl.rd_req.valid = false;

    //--
    lsu_.io.ctrl.wr_req.data.type = ch_wr_request::y_values;
    lsu_.io.ctrl.wr_req.valid = false;
  ));
    
  //--
  ch_print("{0}: ctrl_main: state={1}, start={2}, done={3}, Bi={4}, Bn={5}, rq_val={6}, rq_typ={7}, wr_val={8}, wr_typ={9}",
           ch_getTick(), state, io.start, done, part_blk_curr_, part_blk_end_,
           lsu_.io.ctrl.rd_req.valid, lsu_.io.ctrl.rd_req.data.type, lsu_.io.ctrl.wr_req.valid, lsu_.io.ctrl.wr_req.data.type);
}

void spmv_device::dispatch_thread() {
  ch_seq<ch_dispatch_state> state;
  
  // extract partition blocks from lsu buffer into pe_buf
  // extract partition data from pe_buf and give it to the PE's
  __switch (state) (
  __case (ch_dispatch_state::get_partition) (
    __if (pbuf_.io.deq.valid) (
      pbuf_.io.deq.ready = true;
      __if (part_buf_size_ == 0) (
        part_curr_.next = 0;
        part_buf_.next.slice<ch_bitwidth_v<ch_block_t>>(0) = pbuf_.io.deq.data;
        part_buf_size_.next = PARTITIONS_PER_BLOCK;
      )
      __else (
        part_buf_.next.slice<ch_bitwidth_v<ch_block_t>>(PARTITION_VALUE_BITS) = pbuf_.io.deq.data;
        part_buf_size_.next = PARTITIONS_PER_BLOCK + 1;
      );  
      state.next = ch_dispatch_state::dispatch_PE0;
    );
  )
  __case (ch_dispatch_state::dispatch_PE0) (
    // dispatch partition to PE0
    pe_[0].io.ctrl.start.data.part.asBits() = part_buf_.slice<ch_bitwidth_v<ch_dcsc_part_t>>(); // copy two entries
    pe_[0].io.ctrl.start.valid = true;
    // wait for PE0 ack
    __if (pe_[0].io.ctrl.start.ready) (
      part_buf_.next = part_buf_ >> PARTITION_VALUE_BITS; // pop one entry
      part_curr_.next = part_curr_ + 1; // advance partition
      // ch_print("*** PE0 executing partition {0}", part_curr_);
      // check if we still have partitions to process
      __if (part_curr_.next != numparts_) (
        part_buf_size_.next = part_buf_size_ - 1;
        // check if we can pop another partition (we need at least two entries)            
        __if (part_buf_size_.next != 1) (
          // goto PE1 
          if (!g_singlecore) {
            state.next = ch_dispatch_state::dispatch_PE1;
          }
        )
        __else (
          // fetch next block
          state.next = ch_dispatch_state::get_partition;
        );          
      )
      __else (
        // restart
        part_buf_size_.next = 0;
        state.next = ch_dispatch_state::get_partition;
      );
    )
    __else (
      // goto PE1 
      if (!g_singlecore) {
        state.next = ch_dispatch_state::dispatch_PE1;
      }
    );
  )
  __case (ch_dispatch_state::dispatch_PE1) (
    // dispatch partition to PE1
    pe_[1].io.ctrl.start.data.part.asBits() = part_buf_.slice<ch_bitwidth_v<ch_dcsc_part_t>>(); // copy two entries
    pe_[1].io.ctrl.start.valid = true;
    // wait for PE1 ack
    __if (pe_[1].io.ctrl.start.ready) (
      part_buf_.next = part_buf_ >> PARTITION_VALUE_BITS; // pop one entry
      part_curr_.next = part_curr_ + 1; // advance partition
      //ch_print("*** PE1 executing partition {0}", part_curr_);
      // check if we still have partitions to process
      __if (part_curr_.next != numparts_) (
        part_buf_size_.next = part_buf_size_ - 1;
        // check if we can pop another partition (we need at least two entries)
        __if (part_buf_size_.next != 1) (
          // goto PE0 
          state.next = ch_dispatch_state::dispatch_PE0;
        )
        __else (
          // fetch next block
          state.next = ch_dispatch_state::get_partition;
        );          
      )
      __else (
        // restart
        part_buf_size_.next = 0;
        state.next = ch_dispatch_state::get_partition;
      );
    )
    __else (
      // goto PE0 
      state.next = ch_dispatch_state::dispatch_PE0;  
    );
  )    
  __default (
    for (int i = 0; i < PE_COUNT; ++i) {
      pe_[i].io.ctrl.start.data.part.asBits() = 0;
      pe_[i].io.ctrl.start.valid = false;
    }
    pbuf_.io.deq.ready = false; // off by default
  ));
    
  //--
  ch_print("{0}: ctrl_disp: state={1}, pe0_rdy={2}, pe1_rdy={3}, p={4}, pbuf_sz={5}, pbuf={6}, part0={7}, part1={8}",
           ch_getTick(), state, 
           (pe_[0].io.ctrl.start.valid == pe_[0].io.ctrl.start.ready),
           (pe_[0].io.ctrl.start.valid == pe_[1].io.ctrl.start.ready),
           part_curr_, part_buf_size_, part_buf_,
           pe_[0].io.ctrl.start.data.part.asBits(),
           pe_[1].io.ctrl.start.data.part.asBits());
}
