#include "pe.h"

using namespace spmv;
using namespace spmv::accelerator;

__enum (ch_exec_state, 5, (
  get_partition,
  clear_output,
  get_a_xindex,
  get_a_starty,
  wait_for_a_starty,
  get_a_endy,
  wait_for_a_endy,
  check_x_mask,             
  get_x_mask,
  wait_for_x_mask,
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
  //--
  io.ctrl.hwcntrs = hwcntrs_;

  //--
  axbuf_.io.enq.data = io.lsu.rd_rsp.data.data;
  asbuf_.io.enq.data = io.lsu.rd_rsp.data.data;
  aybuf_.io.enq.data = io.lsu.rd_rsp.data.data;
  avbuf_.io.enq.data = io.lsu.rd_rsp.data.data;
  xvbuf_.io.enq.data = io.lsu.rd_rsp.data.data;
  xmbuf_.io.enq.data = io.lsu.rd_rsp.data.data;

  //--
  axbuf_.io.enq.valid = io.lsu.rd_rsp.valid && (io.lsu.rd_rsp.data.type == ch_rd_request::a_xindices);
  asbuf_.io.enq.valid = io.lsu.rd_rsp.valid && (io.lsu.rd_rsp.data.type == ch_rd_request::a_startys);
  aybuf_.io.enq.valid = io.lsu.rd_rsp.valid && (io.lsu.rd_rsp.data.type == ch_rd_request::a_yindices);
  avbuf_.io.enq.valid = io.lsu.rd_rsp.valid && (io.lsu.rd_rsp.data.type == ch_rd_request::a_values);
  xvbuf_.io.enq.valid = io.lsu.rd_rsp.valid && (io.lsu.rd_rsp.data.type == ch_rd_request::x_values);
  xmbuf_.io.enq.valid = io.lsu.rd_rsp.valid && (io.lsu.rd_rsp.data.type == ch_rd_request::x_masks);
}

spmv_pe::~spmv_pe() {
  //--
}

void spmv_pe::describe() {
  //--
  ch_seq<ch_exec_state> state;
  
  //--
  ch_ram<ch_float32, PARTITION_SIZE> y_values;
  __if (y_wenable_) (
    y_values[y_addr_] = y_value_;
  );
  
  //--
  ch_block y_value0;
  for (int i = 0; i < 16; ++i) {
    y_value0.slice<32>(i*32) = y_values[i];
  }
  
  //--
  ch_block y_value1;
  for (int i = 0; i < 16; ++i) {
    y_value1.slice<32>(i*32) = y_values[i+16];
  }

  //--
  auto emit_pending_size = [&](auto& p, auto& q, auto type) {
    p.next = p + ch_zext<32>(io.lsu.rd_req.valid && io.lsu.rd_req.ready && (io.lsu.rd_req.data.type == type)) - ch_zext<32>(q.io.deq.ready);
  };
  emit_pending_size(axbuf_pending_size_, axbuf_, ch_rd_request::a_xindices);
  emit_pending_size(asbuf_pending_size_, asbuf_, ch_rd_request::a_startys);
  emit_pending_size(aybuf_pending_size_, aybuf_, ch_rd_request::a_yindices);
  emit_pending_size(avbuf_pending_size_, avbuf_, ch_rd_request::a_values);
  emit_pending_size(xvbuf_pending_size_, xvbuf_, ch_rd_request::x_values);
  emit_pending_size(xmbuf_pending_size_, xmbuf_, ch_rd_request::x_masks);

  //--
  io.ctrl.start.ready = (state == ch_exec_state::get_partition);

  //--
  ch_print(fstring("{0}: *** PE%d: state={1}, axbuf.enq.val={2}, axbuf.deq.val={3}, asbuf.enq.val={4}, asbuf.deq.val={5}, asbuf_psz={6}, #p={7}", id_),
           ch_getTick(), state, axbuf_.io.enq.valid, axbuf_.io.deq.valid, asbuf_.io.enq.valid, asbuf_.io.deq.valid, asbuf_pending_size_, hwcntrs_.num_partitions);

  // ch_exec_state FSM
  __switch (state) (
  __case (ch_exec_state::get_partition) (
    // wait for partition data
    __if (io.ctrl.start.valid) (
      // get partition columns data
      auto& part = io.ctrl.start.data.part;
      col_curr_.next = part.start.slice<ch_bitwidth_v<ch_ptr>>();
      col_end_.next = part.end.slice<ch_bitwidth_v<ch_ptr>>();
      __if (col_curr_.next != col_end_.next) (
        // clear writemask
        y_mask_.next = 0;
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
    // clear all y_values
    y_wenable_ = true;
    y_value_ = 0.0f;
    y_addr_ = y_clr_cntr_;
    y_clr_cntr_.next = y_clr_cntr_ + 1;
    __if (y_clr_cntr_.next == 0) (
      state.next = ch_exec_state::get_a_xindex;
    );
  )
  __case (ch_exec_state::get_a_xindex) (            
    // request a_xindex
    io.lsu.rd_req.data.type = ch_rd_request::a_xindices;
    io.lsu.rd_req.data.addr = INT32_TO_BLOCK_ADDR(col_curr_);
    __if (axbuf_pending_size_ != AXBUF_SIZE) (
      io.lsu.rd_req.valid = true;
      // wait for LSU ack
      __if (io.lsu.rd_req.ready) (
        state.next = ch_exec_state::get_a_starty;
      )__else (
        // profiling
        hwcntrs_.next.a_xindices_stalls = hwcntrs_.a_xindices_stalls + 1;
      );
    )__else (
      // profiling
      hwcntrs_.next.a_xindices_stalls = hwcntrs_.a_xindices_stalls + 1;
    );
  )
  __case (ch_exec_state::get_a_starty) (
    // request a_starty
    io.lsu.rd_req.data.type = ch_rd_request::a_startys;
    io.lsu.rd_req.data.addr = INT32_TO_BLOCK_ADDR(col_curr_);
    __if (asbuf_pending_size_ != ASBUF_SIZE) (
      io.lsu.rd_req.valid = true;
      // wait for LSU ack
      __if (io.lsu.rd_req.ready) (
        // go wait for data
        state.next = ch_exec_state::wait_for_a_starty;
      )__else (
        // profiling
        hwcntrs_.next.a_startys_stalls = hwcntrs_.a_startys_stalls + 1;
      );
    )__else (
      // profiling
      hwcntrs_.next.a_startys_stalls = hwcntrs_.a_startys_stalls + 1;
    );
  )
  __case (ch_exec_state::wait_for_a_starty) (
    // wait for all requested blocks to arrive
    __if (axbuf_.io.deq.valid && asbuf_.io.deq.valid) (
      //--
      axblock_.next = axbuf_.io.deq.data;
      a_xindex_.next = (axblock_.next >> INT32_TO_BLOCK_BITSHIFT(col_curr_)).slice<ch_bitwidth_v<ch_ptr>>();
      axbuf_.io.deq.ready = true;

      //--
      asblock_.next = asbuf_.io.deq.data;
      row_curr_.next = (asblock_.next >> INT32_TO_BLOCK_BITSHIFT(col_curr_)).slice<ch_bitwidth_v<ch_ptr>>();
      asbuf_.io.deq.ready = true;

      //--
      __if ((col_curr_ & 0xf) != 0xf) (
        row_end_.next  = (asblock_.next >> INT32_TO_BLOCK_BITSHIFT(col_curr_ + 1)).slice<ch_bitwidth_v<ch_ptr>>();
        // check the vertex mask
        state.next = ch_exec_state::check_x_mask;
      )__else (
        // need to get row_end from next block
        state.next = ch_exec_state::get_a_endy;
      );
    );
  )
  __case (ch_exec_state::get_a_endy) (
    // request a_endy
    io.lsu.rd_req.data.type = ch_rd_request::a_startys;
    io.lsu.rd_req.data.addr = INT32_TO_BLOCK_ADDR(col_curr_ + 1);
    // wait for pending asbuf blocks to arrive
    __if (asbuf_pending_size_ != ASBUF_SIZE) (
      io.lsu.rd_req.valid = true;
      // wait for LSU ack
      __if (io.lsu.rd_req.ready) (
        // go wait for data
        state.next = ch_exec_state::wait_for_a_endy;
      )
      __else (
        // profiling
        hwcntrs_.next.a_startys_stalls = hwcntrs_.a_startys_stalls + 1;
      );
    )
    __else (
      // profiling
      hwcntrs_.next.a_startys_stalls = hwcntrs_.a_startys_stalls + 1;
    );
  )
  __case (ch_exec_state::wait_for_a_endy) (
    // wait for requested block to arrive
    __if (asbuf_.io.deq.valid) (
      // get the returned block
      auto asblock = asbuf_.io.deq.data;
      asbuf_.io.deq.ready = true;
      row_end_.next = asblock.slice<ch_bitwidth_v<ch_ptr>>(); // no offset needed because the value will be at the begining of block
      // check the vertex mask
      state.next = ch_exec_state::check_x_mask;
    )__else (
      // profiling
      hwcntrs_.next.a_startys_stalls = hwcntrs_.a_startys_stalls + 1;
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
          state.next = ch_exec_state::get_a_yindex;
        )
        __else (
          // save block addr
          xvblock_addr_.next = x_value_addr;
          // request x_value
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
      state.next = ch_exec_state::get_x_mask;
    );
  )
  __case (ch_exec_state::get_x_mask) (
    // request x_mask
    io.lsu.rd_req.data.type = ch_rd_request::x_masks;
    io.lsu.rd_req.data.addr = xmblock_addr_;
    __if (xmbuf_pending_size_ != XMBUF_SIZE) (
      io.lsu.rd_req.valid = true;
      // wait for LSU ack
      __if (io.lsu.rd_req.ready) (
        // wait for data
        state.next = ch_exec_state::wait_for_x_mask;
      );
    )
    __else (
      // profiling
      hwcntrs_.next.x_masks_stalls = hwcntrs_.x_masks_stalls + 1;
    );
  )
  __case (ch_exec_state::wait_for_x_mask) (
    // wait for the x_mask block to arrive
    __if (xmbuf_.io.deq.valid) (
      // get the returned block
      xmblock_.next = xmbuf_.io.deq.data;
      xmbuf_.io.deq.ready = true;
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
          state.next = ch_exec_state::get_a_yindex;
        )
        __else (
          // save block addr
          xvblock_addr_.next = x_value_addr;
          // request x_value
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
    // request a_value
    io.lsu.rd_req.data.type = ch_rd_request::x_values;
    io.lsu.rd_req.data.addr = INT32_TO_BLOCK_ADDR(a_xindex_);
    __if (xvbuf_pending_size_ != XVBUF_SIZE) (
      io.lsu.rd_req.valid = true;
      // wait for LSU ack
      __if (io.lsu.rd_req.ready) (
        // calculate yindices prefetch iterators
        row_blk_curr_.next = INT32_TO_BLOCK_ADDR(row_curr_);
        row_blk_end_.next = CEIL_INT32_TO_BLOCK_ADDR(row_end_);
        row_blk_cnt_.next = (row_blk_end_.next - row_blk_curr_.next).slice<6>();
        // request a_yindex
        state.next = ch_exec_state::get_a_yindex;
      );
    );
  )
  __case (ch_exec_state::get_a_yindex) (
    // request a_yindex
    io.lsu.rd_req.data.type = ch_rd_request::a_yindices;
    io.lsu.rd_req.data.addr = row_blk_curr_;
    __if (aybuf_pending_size_ != AYBUF_SIZE) (
      io.lsu.rd_req.valid = true;
      // wait for LSU ack
      __if (io.lsu.rd_req.ready) (
        // request a_value
        state.next = ch_exec_state::get_a_value;
      );
    );
  )
  __case (ch_exec_state::get_a_value) (
    // request a_value
    io.lsu.rd_req.data.type = ch_rd_request::a_values;
    io.lsu.rd_req.data.addr = row_blk_curr_;
    __if (avbuf_pending_size_ != AVBUF_SIZE) (
      io.lsu.rd_req.valid = true;
      // wait for LSU ack
      __if (io.lsu.rd_req.ready) (
        row_blk_curr_.next = row_blk_curr_ + 1;
        __if (row_blk_curr_.next != row_blk_end_) (
          // request next a_yindex
          state.next = ch_exec_state::get_a_yindex;
        )
        __else (
          // goto wait for all data to return
          state.next = ch_exec_state::wait_for_data;
        );
      );
    );
  )
  __case (ch_exec_state::wait_for_data) (
    // wait for all a_yindex and a_value blocks to arrive
    // read requests are returned in order, so 
    // we only need to wait on the requested last buffer
    __if (avbuf_.io.size == row_blk_cnt_) (
      __if (xvbuf_.io.deq.valid) (
        // fetch x_value block     
        xvblock_.next = xvbuf_.io.deq.data;
        xvbuf_.io.deq.ready = true;
        x_value_.next = (xvblock_.next >> INT32_TO_BLOCK_BITSHIFT(a_xindex_)).slice<32>().as<ch_float32>();
      )
      __else (
        // get x_value from local storage
        x_value_.next = (xvblock_ >> INT32_TO_BLOCK_BITSHIFT(a_xindex_)).slice<32>().as<ch_float32>();
      );
      // fetch first (a_yindex, a_value) blocks
      ayblock_.next = aybuf_.io.deq.data;
      avblock_.next = avbuf_.io.deq.data;
      aybuf_.io.deq.ready = true;
      avbuf_.io.deq.ready = true;
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
    ch_ptr a_yindex = (ayblock_ >> INT32_TO_BLOCK_BITSHIFT(row_curr_)).slice<ch_bitwidth_v<ch_ptr>>();
    ch_float32 a_value = (avblock_ >> INT32_TO_BLOCK_BITSHIFT(row_curr_)).slice<32>().as<ch_float32>();
    // save y0
    y0_.next = a_yindex & ~0x1f_h20;
    // calculate y += a * x
    y_addr_ = (a_yindex & 0x1f).slice<5>();
    y_value_ = y_values[y_addr_] + (a_value * x_value_.as<ch_float32>());
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
        ayblock_.next = aybuf_.io.deq.data;
        avblock_.next = avbuf_.io.deq.data;
        aybuf_.io.deq.ready = true;
        avbuf_.io.deq.ready = true;
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
          state.next = ch_exec_state::get_a_endy;
        );        
      )
      __else (
        // get the next axblock
        state.next = ch_exec_state::get_a_xindex;    
      );  
    )
    __else (
      // write first y_value block      
      state.next = ch_exec_state::write_y_value0;
    );
  )
  __case (ch_exec_state::write_y_value0) (
    // submit first y_value block
    io.lsu.wr_req.data.type = ch_wr_request::y_values;
    io.lsu.wr_req.data.addr = INT32_TO_BLOCK_ADDR(y0_);
    io.lsu.wr_req.data.data = y_value0;
    io.lsu.wr_req.valid = true;
    // wait for LSU ack
    __if (io.lsu.wr_req.ready) (
      // write second y_value block
      state.next = ch_exec_state::write_y_value1;
    )
    __else (
      // profiling
      hwcntrs_.next.write_value_stalls = hwcntrs_.write_value_stalls + 1;
    );
  )
  __case (ch_exec_state::write_y_value1) (        
    // submit second y_value block
    io.lsu.wr_req.data.type = ch_wr_request::y_values;
    io.lsu.wr_req.data.addr = INT32_TO_BLOCK_ADDR(y0_) + 1;
    io.lsu.wr_req.data.data = y_value1;
    io.lsu.wr_req.valid = true;
    // wait for LSU ack
    __if (io.lsu.wr_req.ready) (
      state.next = ch_exec_state::write_y_mask;
    )
    __else (
      // profiling
      hwcntrs_.next.write_value_stalls = hwcntrs_.write_value_stalls + 1;
    );
  )
  __case (ch_exec_state::write_y_mask) (
    // submit write mask
    io.lsu.wr_req.data.type = ch_wr_request::y_masks;
    io.lsu.wr_req.data.addr = INT32_TO_BLOCK_ADDR(y0_ >> 5); // divide by 32
    io.lsu.wr_req.data.data = ch_zext<512>(y_mask_) << INT32_TO_BLOCK_BITSHIFT(y0_ >> 5); // apply mask
    io.lsu.wr_req.valid = true;
   // wait for LSU ack
    __if (io.lsu.wr_req.ready) (
      // profiling
      ch_bit32 runtime = (io.ctrl.timer - prof_start_).slice<32>();
      hwcntrs_.next.min_latency = ch_select(hwcntrs_.min_latency == 0, runtime, ch_min(hwcntrs_.min_latency, runtime));
      hwcntrs_.next.max_latency = ch_max(hwcntrs_.min_latency, runtime);
      hwcntrs_.next.total_latency = hwcntrs_.total_latency + runtime;
      hwcntrs_.next.num_partitions = hwcntrs_.num_partitions + 1;
      // advance to the next partition
      state.next = ch_exec_state::get_partition;      
    )
      __else (
        // profiling
        hwcntrs_.next.write_mask_stalls = hwcntrs_.write_mask_stalls + 1;
      );
  )
  __default (
    //--
    io.lsu.rd_req.data.type = ch_rd_request::a_partition;
    io.lsu.rd_req.data.addr = 0;
    io.lsu.rd_req.valid = false;

    //--
    io.lsu.wr_req.data.type = ch_wr_request::y_values;
    io.lsu.wr_req.data.addr = 0;
    io.lsu.wr_req.data.data = 0;
    io.lsu.wr_req.valid = false;

    //--
    axbuf_.io.deq.ready = false;
    asbuf_.io.deq.ready = false;
    aybuf_.io.deq.ready = false;
    avbuf_.io.deq.ready = false;
    xvbuf_.io.deq.ready = false;
    xmbuf_.io.deq.ready = false;

    //--
    y_value_ = 0;
    y_addr_ = 0;
    y_wenable_ = 0;
  ));

  //--
  if (id_ == 0) {
    ch_print(fstring("{0}: PE%d: state={1}, rq_val={2}, rq_typ={3}, rq_adr={4}, "
                     "wq_val={5}, wq_typ={6}, wq_adr={7}, "
                     "rr_val={8}, rr_typ={9}, "
                     "col={10}, coln={11}, ax={12}, xv={13}, row={14}, rown={15}, ya={16}, yv={17}, ym={18}", id_),
      ch_getTick(), state, io.lsu.rd_req.valid, io.lsu.rd_req.data.type, io.lsu.rd_req.data.addr,
      io.lsu.wr_req.valid, io.lsu.wr_req.data.type, io.lsu.wr_req.data.addr,
      io.lsu.rd_rsp.valid, io.lsu.rd_rsp.data.type,
      col_curr_, col_end_, a_xindex_, x_value_, row_curr_, row_end_, y_addr_, y_value_, y_mask_
    );
  }
}
