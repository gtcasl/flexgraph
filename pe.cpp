#include "pe.h"
#include "spmv.h"

using namespace spmv;
using namespace spmv::accelerator;

__enum (ch_exec_state, 4, (
  get_partition,
  clear_output,
  get_a_xindex,
  check_x_mask,             
  get_x_mask,
  get_a_ystart,
  get_a_yend,
  get_x_value,
  get_a_yindex,
  get_a_value,
  wait_for_data,
  execute,
  next_column,
  write_y_value0,
  write_y_value1,
  write_y_mask
));

spmv_pe::spmv_pe(uint32_t id)
  : id_(id)
  , xmblock_addr_(PTR_MAX_VALUE) // default initialize to max
  , xvblock_addr_(PTR_MAX_VALUE) // default initialize to max
{
  // io binding
  io.ctrl.hwcntrs = hwcntrs_;
}

spmv_pe::~spmv_pe() {
  //--
}

void spmv_pe::describe() {
  //--
  ch_seq<ch_exec_state> state;
  
  //--
  ch_ram<ch_bit32, PARTITION_SIZE> y_values;
  __if (y_wenable_) (
    y_values[y_addr_] = y_value_;
  );
  
  ch_block_t y_value0;
  for (int i = 0; i < 16; ++i) {
    y_value0.slice<32>(i*32) = y_values[i];
  }
  
  ch_block_t y_value1;
  for (int i = 0; i < 16; ++i) {
    y_value1.slice<32>(i*32) = y_values[i+16];
  }

  auto ctrl_start_ack = io.ctrl.start.ack.asSeq();
  
  auto lsu_rd_req_syn  = io.lsu.rd_req.syn.asSeq();
  auto lsu_rd_req_type = io.lsu.rd_req.type.asSeq();
  auto lsu_rd_req_addr = io.lsu.rd_req.addr.asSeq();

  auto lsu_wr_req_syn  = io.lsu.wr_req.syn.asSeq();
  auto lsu_wr_req_type = io.lsu.wr_req.type.asSeq();
  auto lsu_wr_req_addr = io.lsu.wr_req.addr.asSeq();
  auto lsu_wr_req_data = io.lsu.wr_req.data.asSeq();

  auto& lsu_axbuf_dequeue = io.lsu.axbuf.ready;
  auto& lsu_asbuf_dequeue = io.lsu.asbuf.ready;
  auto& lsu_aybuf_dequeue = io.lsu.aybuf.ready;
  auto& lsu_avbuf_dequeue = io.lsu.avbuf.ready;
  auto& lsu_xvbuf_dequeue = io.lsu.xvbuf.ready;
  auto& lsu_xmbuf_dequeue = io.lsu.xmbuf.ready;

  /*//--
  if (id_ == 0) {
    ch_print(fstring("{0}: PE%d: state={1}, rq_ack={2}, rq_typ={3}, rq_adr={4}, col={5}, coln={6}, ax={7}, xv={8}, row={9}, rown={10}, ya={11}, yv={12}, ym={13}, wq_ack={14}, wq_typ={15}, wq_adr={16}", id_).c_str(),
           ch_getTick(), state, lsu_rd_req_syn, lsu_rd_req_type, lsu_rd_req_addr,
           col_curr_, col_end_, a_xindex_, x_value_, row_curr_, row_end_, y_addr_, y_value_, y_mask_,
           lsu_wr_req_syn, lsu_wr_req_type, lsu_wr_req_addr);
  }*/

  // ch_exec_state FSM
  __switch (state) (
  __case (ch_exec_state::get_partition) (
    // wait for partition data
    __if (io.ctrl.start.syn != ctrl_start_ack) (
      // get partition columns data
      auto& part = io.ctrl.start.part;
      col_curr_.next = part.start.slice<ch_bitwidth_v<ch_ptr>>();
      col_end_.next = part.end.slice<ch_bitwidth_v<ch_ptr>>();
      __if (col_curr_.next != col_end_.next) (
        // clear writemask
        y_mask_.next = 0;
        // clear y_values        
        y_value_ = 0.0f;
        y_addr_ = 0;
        y_wenable_ = true;
        y_clr_cntr_.next = 1;
        // profiling
        prof_start_.next = io.ctrl.timer;
        state.next = ch_exec_state::clear_output;
      )
      __else (
        // no work to do
        state.next = ch_exec_state::get_partition;
      );
    );
  )
  __case (ch_exec_state::clear_output) (
    y_clr_cntr_.next = y_clr_cntr_ + 1;
    __if (y_clr_cntr_ != 0) (
      y_value_ = 0.0f;
      y_addr_ = y_clr_cntr_;
      y_wenable_ = true;
    )
    __else (       
      // request a_xindex
      lsu_rd_req_type.next = ch_rd_request::a_xindices;
      lsu_rd_req_addr.next = INT32_TO_BLOCK_ADDR(col_curr_.next);
      lsu_rd_req_syn.next  = ~lsu_rd_req_syn;
      state.next = ch_exec_state::get_a_xindex;
    );
  )
  __case (ch_exec_state::get_a_xindex) (            
    // just wait for the request ack
    __if (io.lsu.rd_req.ack == lsu_rd_req_syn) (
      // request a_ystart  
      lsu_rd_req_type.next = ch_rd_request::a_ystarts;
      lsu_rd_req_addr.next = INT32_TO_BLOCK_ADDR(col_curr_);
      lsu_rd_req_syn.next  = ~lsu_rd_req_syn;
      state.next = ch_exec_state::get_a_ystart;
    );
  )
  __case (ch_exec_state::get_a_ystart) (
    // wait for all requested blocks to arrive
    __if (io.lsu.axbuf.valid
       && io.lsu.asbuf.valid) (
      // get the returned block      
      axblock_.next = io.lsu.axbuf.data;
      asblock_.next = io.lsu.asbuf.data;
      lsu_axbuf_dequeue = true;
      lsu_asbuf_dequeue = true;
      // get first a_xindex and row_start values
      a_xindex_.next = (axblock_.next >> INT32_TO_BLOCK_BITSHIFT(col_curr_)).slice<ch_bitwidth_v<ch_ptr>>();
      row_curr_.next = (asblock_.next >> INT32_TO_BLOCK_BITSHIFT(col_curr_)).slice<ch_bitwidth_v<ch_ptr>>();
      // check if not last entry in block
      __if ((col_curr_ & 0xf) != 0xf) (
        row_end_.next = (asblock_.next >> INT32_TO_BLOCK_BITSHIFT(col_curr_ + 1)).slice<ch_bitwidth_v<ch_ptr>>();
        // check the vertex mask
        state.next = ch_exec_state::check_x_mask;
      )
      __else (
        // need to get row_end from next block
        lsu_rd_req_type.next = ch_rd_request::a_ystarts;
        lsu_rd_req_addr.next = INT32_TO_BLOCK_ADDR(col_curr_ + 1);
        lsu_rd_req_syn.next  = ~lsu_rd_req_syn;
        state.next = ch_exec_state::get_a_yend;
      );
    )
    __else (
      // profiling
      hwcntrs_.next.a_xindices_stalls = hwcntrs_.a_xindices_stalls + 1;
    );
  )
  __case (ch_exec_state::get_a_yend) (
    // wait for the a_yend block to arrive
    __if (io.lsu.rd_rsp.syn == lsu_rd_req_syn) (
      // get the returned block      
      ch_block_t asblock = io.lsu.asbuf.data;
      lsu_asbuf_dequeue = true;
      row_end_.next = asblock.slice<ch_bitwidth_v<ch_ptr>>(); // no offset needed because the value will be at the begining of block
      // check the vertex mask
      state.next = ch_exec_state::check_x_mask;
    )
    __else (
      // profiling
      hwcntrs_.next.a_ystarts_stalls = hwcntrs_.a_ystarts_stalls + 1;
    );
  )
  __case (ch_exec_state::check_x_mask) (
    // check if the current mask block is valid
    ch_ptr x_mask_index = a_xindex_ >> 5; // divide by 32 bitmask
    ch_ptr x_mask_addr = INT32_TO_BLOCK_ADDR(x_mask_index);
    __if (x_mask_addr == xmblock_addr_) (
      // check if the index is valid      
      ch_bit32 mask = (xmblock_ >> INT32_TO_BLOCK_BITSHIFT(x_mask_index)).slice<32>();
      __if ((mask & (1_b32 << (a_xindex_ & 0x1f))) != 0) (
        // check if the current value block is valid
        ch_ptr x_value_addr = INT32_TO_BLOCK_ADDR(a_xindex_);
        __if (x_value_addr == xvblock_addr_) (
          // calculate yindices prefetch iterators
          row_blk_curr_.next = INT32_TO_BLOCK_ADDR(row_curr_);
          row_blk_end_.next = CEIL_INT32_TO_BLOCK_ADDR(row_end_);
          row_blk_cnt_.next = (row_blk_end_.next - row_blk_curr_.next).slice<6>();
          // request a_yindex
          lsu_rd_req_type.next = ch_rd_request::a_yindices;
          lsu_rd_req_addr.next = row_blk_curr_.next;
          lsu_rd_req_syn.next  = ~lsu_rd_req_syn;
          state.next = ch_exec_state::get_a_yindex;          
        )
        __else (
          // save block addr
          xvblock_addr_.next = x_value_addr;
          // request x_value  
          lsu_rd_req_type.next = ch_rd_request::x_values;
          lsu_rd_req_addr.next = INT32_TO_BLOCK_ADDR(a_xindex_);
          lsu_rd_req_syn.next  = ~lsu_rd_req_syn;
          state.next = ch_exec_state::get_x_value;        
        );        
      )
      __else (
        // go to next column
        state.next = ch_exec_state::next_column;
      );
    )
    __else (
      // save block addr
      xmblock_addr_.next = x_mask_addr;
      // request x_mask value
      lsu_rd_req_type.next = ch_rd_request::x_masks;
      lsu_rd_req_addr.next = x_mask_addr;
      lsu_rd_req_syn.next  = ~lsu_rd_req_syn;
      state.next = ch_exec_state::get_x_mask; 
    );
  )
  __case (ch_exec_state::get_x_mask) (
    // wait for the x_mask block to arrive
    __if (io.lsu.rd_rsp.syn == lsu_rd_req_syn) (
      // get the returned block      
      xmblock_.next = io.lsu.xmbuf.data;
      lsu_xmbuf_dequeue = true;
      // check if the index is valid
      ch_ptr x_mask_index = a_xindex_ >> 5; // divide by 32 bitmask
      ch_bit32 mask = (xmblock_.next >> INT32_TO_BLOCK_BITSHIFT(x_mask_index)).slice<32>();
      __if ((mask & (1_b32 << (a_xindex_ & 0x1f))) != 0) (
        // check if the current value block is valid
        ch_ptr x_value_addr = INT32_TO_BLOCK_ADDR(a_xindex_);
        __if (x_value_addr == xvblock_addr_) (
          // calculate yindices prefetch iterators
          row_blk_curr_.next = INT32_TO_BLOCK_ADDR(row_curr_);
          row_blk_end_.next = CEIL_INT32_TO_BLOCK_ADDR(row_end_);
          row_blk_cnt_.next = (row_blk_end_.next - row_blk_curr_.next).slice<6>();
          // request a_yindex
          lsu_rd_req_type.next = ch_rd_request::a_yindices;
          lsu_rd_req_addr.next = row_blk_curr_.next;
          lsu_rd_req_syn.next  = ~lsu_rd_req_syn;
          state.next = ch_exec_state::get_a_yindex;          
        )
        __else (
          // save block addr
          xvblock_addr_.next = x_value_addr;
          // request x_value  
          lsu_rd_req_type.next = ch_rd_request::x_values;
          lsu_rd_req_addr.next = INT32_TO_BLOCK_ADDR(a_xindex_);
          lsu_rd_req_syn.next  = ~lsu_rd_req_syn;
          state.next = ch_exec_state::get_x_value;        
        );        
      )
      __else (
        // go to next column
        state.next = ch_exec_state::next_column;
      );      
    )
    __else (
      // profiling
      hwcntrs_.next.x_masks_stalls = hwcntrs_.x_masks_stalls + 1;
    );
  )
  __case (ch_exec_state::get_x_value) (
    // just wait for the request ack
    __if (io.lsu.rd_req.ack == lsu_rd_req_syn) (
      // calculate yindices prefetch iterators
      row_blk_curr_.next = INT32_TO_BLOCK_ADDR(row_curr_);
      row_blk_end_.next = CEIL_INT32_TO_BLOCK_ADDR(row_end_);
      row_blk_cnt_.next = (row_blk_end_.next - row_blk_curr_.next).slice<6>();
      // request a_yindex
      lsu_rd_req_type.next = ch_rd_request::a_yindices;
      lsu_rd_req_addr.next = row_blk_curr_.next;
      lsu_rd_req_syn.next  = ~lsu_rd_req_syn;
      state.next = ch_exec_state::get_a_yindex;
    );
  )
  __case (ch_exec_state::get_a_yindex) (
    // just wait for the request ack
    __if (io.lsu.rd_req.ack == lsu_rd_req_syn) (
      // request a_value
      lsu_rd_req_type.next = ch_rd_request::a_values;
      lsu_rd_req_addr.next = row_blk_curr_;
      lsu_rd_req_syn.next  = ~lsu_rd_req_syn;
      state.next = ch_exec_state::get_a_value;
    );
  )
  __case (ch_exec_state::get_a_value) (
    // just wait for the request ack
    __if (io.lsu.rd_req.ack == lsu_rd_req_syn) (
      row_blk_curr_.next = row_blk_curr_ + 1;
      __if (row_blk_curr_.next != row_blk_end_) (
        // request next a_yindex
        lsu_rd_req_type.next = ch_rd_request::a_yindices;
        lsu_rd_req_addr.next = row_blk_curr_.next;
        lsu_rd_req_syn.next  = ~lsu_rd_req_syn;
        state.next = ch_exec_state::get_a_yindex;
      )
      __else (
        // goto wait for all data to return
        state.next = ch_exec_state::wait_for_data;
      );
    );
  )
  __case (ch_exec_state::wait_for_data) (
    // wait for all a_yindex and a_value blocks to arrive
    // read requests are returned in order, so 
    // we only need to wait on the requested last buffer
    __if (io.lsu.avbuf_size == row_blk_cnt_) (
      __if (io.lsu.xvbuf.valid) (
        // fetch x_value block     
        xvblock_.next = io.lsu.xvbuf.data;
        lsu_xvbuf_dequeue = true;
        x_value_.next = (xvblock_.next >> INT32_TO_BLOCK_BITSHIFT(a_xindex_)).slice<32>().as<ch_float32>();
      )
      __else (
        // get x_value from local storage
        x_value_.next = (xvblock_ >> INT32_TO_BLOCK_BITSHIFT(a_xindex_)).slice<32>().as<ch_float32>();
      );
      // fetch first (a_yindex, a_value) blocks
      ayblock_.next = io.lsu.aybuf.data;
      avblock_.next = io.lsu.avbuf.data;
      lsu_aybuf_dequeue = true;
      lsu_avbuf_dequeue = true;
      // proceed to execution
      state.next = ch_exec_state::execute;        
    )
    __else (
      // profiling
      hwcntrs_.next.a_values_stalls = hwcntrs_.a_values_stalls + 1;
    );    
  )
  __case (ch_exec_state::execute) (
    // get values 
    ch_ptr a_yindex  = (ayblock_ >> INT32_TO_BLOCK_BITSHIFT(row_curr_)).slice<ch_bitwidth_v<ch_ptr>>();
    ch_float32 a_value = (avblock_ >> INT32_TO_BLOCK_BITSHIFT(row_curr_)).slice<32>().as<ch_float32>();
    // save y0
    y0_.next = a_yindex & ~0x1f_h20;
    // calculate y += a * x
    y_addr_ = (a_yindex & 0x1f).slice<5>();
    ch_float32 y_value(y_values[y_addr_]);
    // TODO: fix float casting
    y_value_ = (a_value * (const ch_float32&)x_value_) + y_value;
    y_wenable_ = true;
    // calculate output mask
    y_mask_.next = y_mask_ | (1_b32 << y_addr_);
    // advance row
    row_curr_.next = row_curr_ + 1;
    // check if not last row
    __if (row_curr_.next != row_end_) (
      // check if last entry in block
      __if ((row_curr_ & 0xf) == 0xf) (
        // fetch the next (a_yindex, a_value) blocks    
        ayblock_.next = io.lsu.aybuf.data;
        avblock_.next = io.lsu.avbuf.data;
        lsu_aybuf_dequeue = true;
        lsu_avbuf_dequeue = true;
      );
    )
    __else (
      // go to next column
      state.next = ch_exec_state::next_column;
    );   
    
    // profiling
    hwcntrs_.next.execute_latency = hwcntrs_.execute_latency + 1;
  )
  __case (ch_exec_state::next_column) (
    // advance to next column
    col_curr_.next = col_curr_ + 1;
    // check if not last column 
    __if (col_curr_.next != col_end_) (
      // check if not last entry in block
      __if ((col_curr_ & 0xf) != 0xf) (
        // get the next a_index
        a_xindex_.next = (axblock_ >> INT32_TO_BLOCK_BITSHIFT(col_curr_.next)).slice<ch_bitwidth_v<ch_ptr>>();
        // get the next row_curr
        row_curr_.next = (asblock_ >> INT32_TO_BLOCK_BITSHIFT(col_curr_.next)).slice<ch_bitwidth_v<ch_ptr>>();
        // get the next row_end
        __if ((col_curr_.next & 0xf) != 0xf) (
          row_end_.next = (asblock_ >> INT32_TO_BLOCK_BITSHIFT(col_curr_.next + 1)).slice<ch_bitwidth_v<ch_ptr>>();
          // check the vertex mask
          state.next = ch_exec_state::check_x_mask;
        )
        __else (
          // need to get row_end from next block
          lsu_rd_req_type.next = ch_rd_request::a_ystarts;
          lsu_rd_req_addr.next = INT32_TO_BLOCK_ADDR(col_curr_.next + 1);
          lsu_rd_req_syn.next  = ~lsu_rd_req_syn;
          state.next = ch_exec_state::get_a_yend;
        );        
      )
      __else (
        // get the next axblock            
        lsu_rd_req_type.next = ch_rd_request::a_xindices;
        lsu_rd_req_addr.next = INT32_TO_BLOCK_ADDR(col_curr_.next);
        lsu_rd_req_syn.next  = ~lsu_rd_req_syn;
        state.next = ch_exec_state::get_a_xindex;    
      );  
    )
    __else (
      // write first y_value block
      lsu_wr_req_type.next = ch_wr_request::y_values;
      lsu_wr_req_addr.next = INT32_TO_BLOCK_ADDR(y0_);
      lsu_wr_req_data.next = y_value0;
      lsu_wr_req_syn.next = ~lsu_wr_req_syn;
      state.next = ch_exec_state::write_y_value0;
    );
  )
  __case (ch_exec_state::write_y_value0) (
    // just wait for the request ack
    __if (io.lsu.wr_req.ack == lsu_wr_req_syn) (
      // write second y_value block
      lsu_wr_req_type.next = ch_wr_request::y_values;
      lsu_wr_req_addr.next = INT32_TO_BLOCK_ADDR(y0_) + 1;
      lsu_wr_req_data.next = y_value1;
      lsu_wr_req_syn.next = ~lsu_wr_req_syn;
      state.next = ch_exec_state::write_y_value1;
    );
  )
  __case (ch_exec_state::write_y_value1) (
    // just wait for the request ack
    __if (io.lsu.wr_req.ack == lsu_wr_req_syn) (
      // write second y_value block
      lsu_wr_req_type.next = ch_wr_request::y_masks;
      lsu_wr_req_addr.next = INT32_TO_BLOCK_ADDR(y0_ >> 5); // divide by 32
      lsu_wr_req_data.next = ch_zext<512>(y_mask_) << INT32_TO_BLOCK_BITSHIFT(y0_ >> 5); // apply mask
      lsu_wr_req_syn.next  = ~lsu_wr_req_syn;
      state.next = ch_exec_state::write_y_mask;
    );
  )
  __case (ch_exec_state::write_y_mask) (      
    // just wait for the request ack
    __if (io.lsu.wr_req.ack == lsu_wr_req_syn) (
      // profiling
      ch_bit32 runtime = (io.ctrl.timer - prof_start_).slice<32>();
      hwcntrs_.next.min_latency = ch_select(hwcntrs_.min_latency == 0, runtime, ch_min(hwcntrs_.min_latency, runtime));
      hwcntrs_.next.max_latency = ch_max(hwcntrs_.min_latency, runtime);
      hwcntrs_.next.total_latency = hwcntrs_.total_latency + runtime;
      hwcntrs_.next.num_partitions = hwcntrs_.num_partitions + 1;
      // advance to the next partition
      ctrl_start_ack.next = ~ctrl_start_ack;
      state.next = ch_exec_state::get_partition;      
    );
  )
  __default (
    //--
    lsu_axbuf_dequeue = false;
    lsu_asbuf_dequeue = false;
    lsu_aybuf_dequeue = false;
    lsu_avbuf_dequeue = false;
    lsu_xvbuf_dequeue = false;
    lsu_xmbuf_dequeue = false;

    y_value_ = 0;
    y_addr_ = 0;
    y_wenable_ = 0;
  ));
}
