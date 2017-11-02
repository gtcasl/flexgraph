#include "spmv.h"

using namespace spmv;
using namespace spmv::accelerator;

__enum (ch_ctrl_state, 3, (
  ready,            
  get_partition,
  execute,
  flush_buffers,
  write_hwcntrs
));

__enum (ch_dispatch_state, 2, (
  get_partition,
  dispatch_PE0,
  dispatch_PE1
));

spmv_device::spmv_device() {
  // create the PEs
  for (int i = 0; i < PE_COUNT; ++i) {
    pe_[i].module = std::make_unique<ch_module<spmv_pe>>(i);
  }
  // create LSU
  lsu_.module = std::make_unique<ch_module<spmv_lsu>>();

  // bind PEs
  for (int i = 0; i < PE_COUNT; ++i) {
    pe_[i].module->io.ctrl(pe_[i].io);
    lsu_.module->io.pe[i](pe_[i].module->io.lsu);
  }

  // bind LSU
  lsu_.module->io.ctx(io.ctx);
  lsu_.module->io.qpi(io.qpi);
  lsu_.module->io.ctrl(lsu_.io);
}

spmv_device::~spmv_device() {
  //--
}

void spmv_device::describe() {
  // print the context block
  ch_print("{0}: ctx.a.numparts={1}, ctx.a.partitions={2}",
              ch_getTick(), io.ctx.a.numparts, io.ctx.a.partitions);

  // emit timer
  timer_.next = timer_ + 1;
  
  // emit main thread
  this->main_thread();
    
  // emit dispatcher
  this->dispatch_thread();

  //
  // return outputs
  //

  for (int i = 0; i < PE_COUNT; ++i) {
    pe_[i].io.start_req.syn = pe_[i].start_req_syn;
  }

  lsu_.io.rd_req.syn  = lsu_.rd_req_syn;
  lsu_.io.rd_req.type = lsu_.rd_req_type;
  lsu_.io.rd_req.addr = lsu_.rd_req_addr;
  lsu_.io.wr_req.syn  = lsu_.wr_req_syn;
  lsu_.io.wr_req.type = lsu_.wr_req_type;
  lsu_.io.wr_req.addr = lsu_.wr_req_addr;
  lsu_.io.wr_req.data = lsu_.wr_req_data;
  lsu_.io.pbuf.ready  = lsu_.pbuf_dequeue;

  io.done = done_;
}

void spmv_device::main_thread() {
  ch_seq<ch_ctrl_state> state;
      
  // ch_ctrl_state FSM
  __switch (state) (
  __case (ch_ctrl_state::ready) ( 
    __if (io.start) (
      __if (io.ctx.a.numparts != 0) (
        part_blk_curr_.next = 0;
        part_blk_end_.next = CEIL_INT32_TO_BLOCK_ADDR(io.ctx.a.numparts+1).slice<ch_bitwidth_v<ch_ptr>>();
        // request partition block       
        lsu_.rd_req_type.next = ch_rd_request::a_partition;
        lsu_.rd_req_syn.next = ~lsu_.rd_req_syn;
        done_.next = false; // clear done signal
        state.next = ch_ctrl_state::get_partition;        
      )
      __else (
       // no work to do!         
        done_.next = true; // set done signal
        state.next = ch_ctrl_state::ready;
      );
    );
  )
  __case (ch_ctrl_state::get_partition) (
    // wait for the LSU resquest ack
    __if (lsu_.io.rd_req.ack == lsu_.rd_req_syn) (
      part_blk_curr_.next = part_blk_curr_ + 1;
      __if (part_blk_curr_.next != part_blk_end_) (
        // request next block
        lsu_.rd_req_type.next = ch_rd_request::a_partition;
        lsu_.rd_req_syn.next = ~lsu_.rd_req_syn;
      )
      __else (         
        // goto execute
        state.next = ch_ctrl_state::execute; 
      );    
    )
    __else (
      // profiling
      hwcntrs_.next.a_partitions_stalls = hwcntrs_.a_partitions_stalls + 1;
    );
  )
  __case (ch_ctrl_state::execute) (
    // wait for the execution to complete 
    ch_bool all_PEs_ready = (pe_[0].io.start_req.ack != pe_[0].start_req_syn);
    for (int i = 1; i < PE_COUNT; ++i) {
      all_PEs_ready = ch_clone(all_PEs_ready) & (pe_[i].io.start_req.ack != pe_[i].start_req_syn);
    }
    __if (part_curr_ == numparts_
       && all_PEs_ready) (      
      // flush LSU write buffers
      lsu_.wr_req_type.next = ch_wr_request::y_masks;
      lsu_.wr_req_syn.next = ~lsu_.wr_req_syn;
      state.next = ch_ctrl_state::flush_buffers;  
    );
  )
  __case (ch_ctrl_state::flush_buffers) (     
    // wait for the LSU resquest ack    
    __if (lsu_.io.wr_req.ack == lsu_.wr_req_syn) (
      // gather hardware counters
      hwcntrs_.next.PE0 = pe_[0].io.hwcntrs;
      hwcntrs_.next.PE1 = pe_[1].io.hwcntrs;
      // write hardware counters
      lsu_.wr_req_type.next = ch_wr_request::hwcntrs;
      lsu_.wr_req_syn.next = ~lsu_.wr_req_syn;
      state.next = ch_ctrl_state::write_hwcntrs; 
    );
  )
  __case (ch_ctrl_state::write_hwcntrs) ( 
    // wait for all LSU write requests to complete
    __if (lsu_.io.wr_req.ack == lsu_.wr_req_syn
       && lsu_.io.outstanding_writes == 0) (
      state.next = ch_ctrl_state::ready;
      done_.next = true; // set done signal
    );
  ));
    
  //--
  numparts_ = io.ctx.a.numparts.slice<ch_bitwidth_v<ch_ptr>>();
    
  //-  
  lsu_.rd_req_addr = part_blk_curr_;
  
  //--
  lsu_.wr_req_addr = 0;
  lsu_.wr_req_data = ch_zext<ch_bitwidth_v<ch_block_t>>(hwcntrs_.asBits());
  
  //--
  /*ch_print("{0}: ctrl: state={1}, start={2}, done={3}, Bi={4}, Bn={5}, rq_ack={6}, rq_typ={7}, wr_ack={8}, wr_typ={9}",
           ch_getTick(), state, m_start, done_, part_blk_curr_, part_blk_end_,
           lsu_.rd_req_syn, lsu_.rd_req_type, lsu_.wr_req_ack, lsu_.wr_req_type);*/
}

void spmv_device::dispatch_thread() {
  ch_seq<ch_dispatch_state> state;
  
  // extract partition blocks from lsu buffer into pe_buf
  // extract partition data from pe_buf and give it to the PE's
  __switch (state) (
  __case (ch_dispatch_state::get_partition) (
    __if (lsu_.io.pbuf.valid) (
      lsu_.pbuf_dequeue = true;
      __if (part_buf_size_ == 0) (
        part_curr_.next = 0;
        part_buf_.next.slice<ch_bitwidth_v<ch_block_t>>(0) = lsu_.io.pbuf.data;
        part_buf_size_.next = PARTITIONS_PER_BLOCK;
      )
      __else (
        part_buf_.next.slice<ch_bitwidth_v<ch_block_t>>(PARTITION_VALUE_BITS) = lsu_.io.pbuf.data;
        part_buf_size_.next = PARTITIONS_PER_BLOCK + 1;
      );  
      state.next = ch_dispatch_state::dispatch_PE0;
    );
  )
  __case (ch_dispatch_state::dispatch_PE0) (
    // check if PE0 is ready
    __if (pe_[0].start_req_syn != pe_[0].io.start_req.ack) (
      pe_[0].start_req_syn.next = pe_[0].io.start_req.ack; // send request ack
      pe_[0].parts.next.asBits() = part_buf_.slice<ch_bitwidth_v<ch_dcsc_part_t>>(); // copy two entries
      part_buf_.next = part_buf_ >> PARTITION_VALUE_BITS; // pop one entry
      part_curr_.next = part_curr_ + 1; // advance partition
      ch_print("*** PE0 executing partition {0}", part_curr_);
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
    // check if PE1 is ready
    __if (pe_[1].start_req_syn != pe_[1].io.start_req.ack) (
      pe_[1].start_req_syn.next = pe_[1].io.start_req.ack; // send request ack
      pe_[1].parts.next.asBits() = part_buf_.slice<ch_bitwidth_v<ch_dcsc_part_t>>(); // copy two entries
      part_buf_.next = part_buf_ >> PARTITION_VALUE_BITS; // pop one entry
      part_curr_.next = part_curr_ + 1; // advance partition
      ch_print("*** PE1 executing partition {0}", part_curr_);
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
    lsu_.pbuf_dequeue = false; // off by default
  ));
    
  //--
  /*ch_print("{0}: disp: state={1}, pe0_rdy={2}, pe1_rdy={3}, p={4}, pbuf_sz={5}, pbuf={6}, part0={7}, part1={8}",
           ch_getTick(), state, 
           m_PEs[0]->get_ctrl_req_ack() != pe_[0].req_ack,
           m_PEs[1]->get_ctrl_req_ack() != pe_[1].req_ack,
           part_curr_, part_buf_size_, part_buf_, pe_[0].parts, pe_[1].parts);*/
}
