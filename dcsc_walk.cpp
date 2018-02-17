#include "dcsc_walk.h"

using namespace spmv;
using namespace spmv::accelerator;

__enum (ch_walk_state, (
  ready,
  get_a_colidx,
  get_a_rstart,
  wait_for_a_rstart,
  get_a_rend,
  wait_for_a_rend,
  row_end,
  check_x_mask,
  check_x_mask2,
  get_x_mask,
  wait_for_x_mask,
  get_x_value,
  calc_blk_cnt,
  calc_blk_cnt2,
  get_a_rowidx,
  get_a_value,
  wait_for_data,
  execute,
  execute2,
  next_column,
  next_column2,
  calc_runtime,
  end_partition
));

spmv_dcsc_walk::spmv_dcsc_walk()
  : xmblock_addr_(PTR_MAX_VALUE) // default initialize to max
  , xvblock_addr_(PTR_MAX_VALUE) // default initialize to max{
{
  //--
  static uint32_t s_ids = 0;
  id_ = s_ids++;

  //--
  io.ctrl.stats = stats_;

  //--
  acbuf_.io.enq.data = io.lsu.rd_rsp.data.data;
  asbuf_.io.enq.data = io.lsu.rd_rsp.data.data;
  arbuf_.io.enq.data = io.lsu.rd_rsp.data.data;
  avbuf_.io.enq.data = io.lsu.rd_rsp.data.data;
  xvbuf_.io.enq.data = io.lsu.rd_rsp.data.data;
  xmbuf_.io.enq.data = io.lsu.rd_rsp.data.data;

  //--
  acbuf_.io.enq.valid = io.lsu.rd_rsp.valid && (io.lsu.rd_rsp.data.type == ch_rd_request::a_colind);
  asbuf_.io.enq.valid = io.lsu.rd_rsp.valid && (io.lsu.rd_rsp.data.type == ch_rd_request::a_rowptr);
  arbuf_.io.enq.valid = io.lsu.rd_rsp.valid && (io.lsu.rd_rsp.data.type == ch_rd_request::a_rowind);
  avbuf_.io.enq.valid = io.lsu.rd_rsp.valid && (io.lsu.rd_rsp.data.type == ch_rd_request::a_values);
  xvbuf_.io.enq.valid = io.lsu.rd_rsp.valid && (io.lsu.rd_rsp.data.type == ch_rd_request::x_values);
  xmbuf_.io.enq.valid = io.lsu.rd_rsp.valid && (io.lsu.rd_rsp.data.type == ch_rd_request::x_masks);
}

spmv_dcsc_walk::~spmv_dcsc_walk() {}

void spmv_dcsc_walk::describe() {
  //--
  ch_seq<ch_walk_state> state(ch_walk_state::ready);

  //--
  io.ctrl.start.ready = (state == ch_walk_state::ready);

  //--
  auto emit_pending_size = [&](auto& p, const auto& q, auto type) {
    auto req = io.lsu.rd_req.valid && io.lsu.rd_req.ready && (io.lsu.rd_req.data.type == type);
    auto deq = q.io.deq.ready;
    __if (req && !deq) {
      p.next = p + 1;
    }
    __elif (!req && deq) {
      p.next = p - 1;
    };
  };
  emit_pending_size(acbuf_pending_size_, acbuf_, ch_rd_request::a_colind);
  emit_pending_size(asbuf_pending_size_, asbuf_, ch_rd_request::a_rowptr);
  emit_pending_size(arbuf_pending_size_, arbuf_, ch_rd_request::a_rowind);
  emit_pending_size(avbuf_pending_size_, avbuf_, ch_rd_request::a_values);
  emit_pending_size(xvbuf_pending_size_, xvbuf_, ch_rd_request::x_values);
  emit_pending_size(xmbuf_pending_size_, xmbuf_, ch_rd_request::x_masks);

  //--
  if (verbose) {
    ch_print(fstring("{0}: *** Walker%d: state={1:s}, "
                     "acbuf.enq.val={2}, acbuf.deq.val={3}, acbuf_psz={4}, "
                     "asbuf.enq.val={5}, asbuf.deq.val={6}, asbuf_psz={7}, "
                     "arbuf.enq.val={8}, arbuf.deq.val={9}, arbuf_psz={10}, "
                     "avbuf.enq.val={11}, avbuf.deq.val={12}, avbuf_psz={13}, "
                     "rbk_cur={14}, rbk_end={15}, rbk_cnt={16}, nparts={17}", id_),
             ch_getTick(), state,
             acbuf_.io.enq.valid, acbuf_.io.deq.valid, acbuf_pending_size_,
             asbuf_.io.enq.valid, asbuf_.io.deq.valid, asbuf_pending_size_,
             arbuf_.io.enq.valid, arbuf_.io.deq.valid, arbuf_pending_size_,
             avbuf_.io.enq.valid, avbuf_.io.deq.valid, avbuf_pending_size_,
             row_blk_curr_, row_blk_end_, row_blk_cnt_, stats_.num_parts);
  }

  //--
  auto acbuf_deq = acbuf_.io.deq.ready.asSeq();
  auto asbuf_deq = asbuf_.io.deq.ready.asSeq();
  auto arbuf_deq = arbuf_.io.deq.ready.asSeq();
  auto avbuf_deq = avbuf_.io.deq.ready.asSeq();
  auto xvbuf_deq = xvbuf_.io.deq.ready.asSeq();
  auto xmbuf_deq = xmbuf_.io.deq.ready.asSeq();

  //--
  auto pe_data = io.pe.data.asSeq();
  auto pe_valid = io.pe.valid.asSeq();

  //--
  io.lsu.rd_req.data.type = ch_rd_request::a_colptr;
  io.lsu.rd_req.data.addr = 0;
  io.lsu.rd_req.valid     = false;

  //--
  acbuf_deq.next = false;
  asbuf_deq.next = false;
  arbuf_deq.next = false;
  avbuf_deq.next = false;
  xvbuf_deq.next = false;
  xmbuf_deq.next = false;

  //--
  pe_data.next.a_rowind = 0;
  pe_data.next.a_value  = 0;
  pe_data.next.x_value  = 0;
  pe_data.next.is_end   = false;
  pe_valid.next         = false;

  // ch_walk_state FSM
  __switch (state)
  __case (ch_walk_state::ready) {
    // wait for partition data
    __if (io.ctrl.start.valid) {
      // get partition columns data
      col_curr_.next = ch_slice<ch_ptr>(io.ctrl.start.data.part.start);
      col_end_.next = ch_slice<ch_ptr>(io.ctrl.start.data.part.end) - 1;

      // profiling
      prof_start_.next = io.ctrl.timer;

      // go to get_a_colidx
      state.next = ch_walk_state::get_a_colidx;
    };
  }
  __case (ch_walk_state::get_a_colidx) {
    // request a_colind
    io.lsu.rd_req.data.type = ch_rd_request::a_colind;
    io.lsu.rd_req.data.addr = INT32_TO_BLOCK_ADDR(col_curr_);
    __if (acbuf_pending_size_ != ACBUF_SIZE) {
      io.lsu.rd_req.valid = true;
      // wait for LSU ack
      __if (io.lsu.rd_req.ready) {
        state.next = ch_walk_state::get_a_rstart;
      } __else {
        // profiling
        stats_.next.a_colind_stalls = stats_.a_colind_stalls + 1;
      };
    } __else {
      // profiling
      stats_.next.a_colind_stalls = stats_.a_colind_stalls + 1;
    };
  }
  __case (ch_walk_state::get_a_rstart) {
    // request a_rowptr
    io.lsu.rd_req.data.type = ch_rd_request::a_rowptr;
    io.lsu.rd_req.data.addr = INT32_TO_BLOCK_ADDR(col_curr_);
    __if (asbuf_pending_size_ != ASBUF_SIZE) {
      io.lsu.rd_req.valid = true;
      // wait for LSU ack
      __if (io.lsu.rd_req.ready) {
        // go wait for data
        state.next = ch_walk_state::wait_for_a_rstart;
      } __else {
        // profiling
        stats_.next.a_rowptr_stalls = stats_.a_rowptr_stalls + 1;
      };
    } __else {
      // profiling
      stats_.next.a_rowptr_stalls = stats_.a_rowptr_stalls + 1;
    };
  }
  __case (ch_walk_state::wait_for_a_rstart) {
    // wait for all requested blocks to arrive
    __if (acbuf_.io.deq.valid && asbuf_.io.deq.valid) {
      //--
      acblock_.next  = acbuf_.io.deq.data;
      a_colidx_.next = ch_slice<ch_ptr>(acbuf_.io.deq.data >> INT32_TO_BLOCK_BITSHIFT(col_curr_));
      acbuf_deq.next = true;

      //--
      asblock_.next  = asbuf_.io.deq.data;
      row_curr_.next = ch_slice<ch_ptr>(asbuf_.io.deq.data >> INT32_TO_BLOCK_BITSHIFT(col_curr_));
      asbuf_deq.next = true;

      //--
      __if ((col_curr_ & 0xf) != 0xf) {
        // go next
        state.next =ch_walk_state::row_end;
      } __else {
        // need to get row_end from next block
        state.next = ch_walk_state::get_a_rend;
      };
    };
  }
  __case (ch_walk_state::row_end) {
    row_endp_.next = ch_slice<ch_ptr>(asblock_ >> INT32_TO_BLOCK_BITSHIFT(col_curr_ + 1));
    // check the vertex mask
    state.next = ch_walk_state::check_x_mask;
  }
  __case (ch_walk_state::get_a_rend) {
    // request a_rowptr
    io.lsu.rd_req.data.type = ch_rd_request::a_rowptr;
    io.lsu.rd_req.data.addr = INT32_TO_BLOCK_ADDR(col_curr_ + 1);
    // wait for pending asbuf blocks to arrive
    __if (asbuf_pending_size_ != ASBUF_SIZE) {
      io.lsu.rd_req.valid = true;
      // wait for LSU ack
      __if (io.lsu.rd_req.ready) {
        // go wait for data
        state.next = ch_walk_state::wait_for_a_rend;
      } __else {
        // profiling
        stats_.next.a_rowptr_stalls = stats_.a_rowptr_stalls + 1;
      };
    } __else {
      // profiling
      stats_.next.a_rowptr_stalls = stats_.a_rowptr_stalls + 1;
    };
  }
  __case (ch_walk_state::wait_for_a_rend) {
    // wait for requested block to arrive
    __if (asbuf_.io.deq.valid) {
      // get the returned block
      row_endp_.next = ch_slice<ch_ptr>(asbuf_.io.deq.data); // no offset needed because the value will be at the begining of block
      asbuf_deq.next = true;
      // check the vertex mask
      state.next = ch_walk_state::check_x_mask;
    } __else {
      // profiling
      stats_.next.a_rowptr_stalls = stats_.a_rowptr_stalls + 1;
    };
  }
  __case (ch_walk_state::check_x_mask) {
    // compute row_end
    row_end_.next = row_endp_ - 1;
    // check if the current mask block is valid
    ch_ptr x_mask_index = a_colidx_ >> 5; // divide by 32 bitmask
    ch_ptr x_mask_addr = INT32_TO_BLOCK_ADDR(x_mask_index);
    __if (x_mask_addr == xmblock_addr_) {
      // check if the index is valid
      ch_bit32 mask = ch_slice<32>(xmblock_ >> INT32_TO_BLOCK_BITSHIFT(x_mask_index));
      __if ((mask & (1_b32 << (a_colidx_ & 0x1f))) != 0) {
        // go to check_x_mask2
        state.next = ch_walk_state::check_x_mask2;
      } __else {
        // go to next column
        state.next = ch_walk_state::next_column;
      };
    } __else {
      // save block addr
      xmblock_addr_.next = x_mask_addr;
      // request x_mask value
      state.next = ch_walk_state::get_x_mask;
    };
  }  
  __case (ch_walk_state::check_x_mask2) {
    // check if the current vertex block is valid
    ch_ptr x_value_addr = INT32_TO_BLOCK_ADDR(a_colidx_);
    __if (x_value_addr == xvblock_addr_) {
      // calculate rows prefetch iterators
      state.next = ch_walk_state::calc_blk_cnt;
    } __else {
      // save block addr
      xvblock_addr_.next = x_value_addr;
      // request x_value
      state.next = ch_walk_state::get_x_value;
    };
  }
  __case (ch_walk_state::get_x_mask) {
    // request x_mask
    io.lsu.rd_req.data.type = ch_rd_request::x_masks;
    io.lsu.rd_req.data.addr = xmblock_addr_;
    __if (xmbuf_pending_size_ != XMBUF_SIZE) {
      io.lsu.rd_req.valid = true;
      // wait for LSU ack
      __if (io.lsu.rd_req.ready) {
        // wait for data
        state.next = ch_walk_state::wait_for_x_mask;
      } __else {
        // profiling
        stats_.next.x_masks_stalls = stats_.x_masks_stalls + 1;
      };
    } __else {
      // profiling
      stats_.next.x_masks_stalls = stats_.x_masks_stalls + 1;
    };
  }
  __case (ch_walk_state::wait_for_x_mask) {
    // wait for the x_mask block to arrive
    __if (xmbuf_.io.deq.valid) {
      // get the returned block
      xmblock_.next = xmbuf_.io.deq.data;
      xmbuf_deq.next = true;
      // check if the index is valid
      ch_ptr x_mask_index = a_colidx_ >> 5; // divide by 32 bitmask
      ch_bit32 mask = ch_slice<32>(xmblock_.next >> INT32_TO_BLOCK_BITSHIFT(x_mask_index));
      __if ((mask & (1_b32 << (a_colidx_ & 0x1f))) != 0) {
        // go to check_x_mask2
        state.next = ch_walk_state::check_x_mask2;
      } __else {
        // go to next column
        state.next = ch_walk_state::next_column;
      };
    } __else {
      // profiling
      stats_.next.x_masks_stalls = stats_.x_masks_stalls + 1;
    };
  }
  __case (ch_walk_state::get_x_value) {
    // request a_value
    io.lsu.rd_req.data.type = ch_rd_request::x_values;
    io.lsu.rd_req.data.addr = INT32_TO_BLOCK_ADDR(a_colidx_);
    __if (xvbuf_pending_size_ != XVBUF_SIZE) {
      io.lsu.rd_req.valid = true;
      // wait for LSU ack
      __if (io.lsu.rd_req.ready) {        
        // calculate rows prefetch iterators
        state.next = ch_walk_state::calc_blk_cnt;
      } __else {
        // profiling
        stats_.next.x_values_stalls = stats_.x_values_stalls + 1;
      };
    } __else {
      // profiling
      stats_.next.x_values_stalls = stats_.x_values_stalls + 1;
    };
  }
  __case(ch_walk_state::calc_blk_cnt) {
    // calculate rows prefetch iterators
    row_blk_curr_.next = INT32_TO_BLOCK_ADDR(row_curr_);
    row_blk_endp_.next = CEIL_INT32_TO_BLOCK_ADDR(row_endp_);
    // compute row block count
    state.next = ch_walk_state::calc_blk_cnt2;
  }
  __case(ch_walk_state::calc_blk_cnt2) {
    // compute block count
    row_blk_cnt_.next = ch_slice<ch_bit<6>>(row_blk_endp_ - row_blk_curr_);
    // compute row block end
    row_blk_end_.next = row_blk_endp_ - 1;
    // request a_rowind
    state.next = ch_walk_state::get_a_rowidx;
  }
  __case (ch_walk_state::get_a_rowidx) {
    // request a_rowind
    io.lsu.rd_req.data.type = ch_rd_request::a_rowind;
    io.lsu.rd_req.data.addr = row_blk_curr_;
    __if (arbuf_pending_size_ != ARBUF_SIZE) {
      io.lsu.rd_req.valid = true;
      // wait for LSU ack
      __if (io.lsu.rd_req.ready) {
        // request a_value
        state.next = ch_walk_state::get_a_value;
      } __else {
        // profiling
        stats_.next.a_rowind_stalls = stats_.a_rowind_stalls + 1;
      };
    } __else {
      // profiling
      stats_.next.a_rowind_stalls = stats_.a_rowind_stalls + 1;
    };
  }
  __case (ch_walk_state::get_a_value) {
    // request a_values
    io.lsu.rd_req.data.type = ch_rd_request::a_values;
    io.lsu.rd_req.data.addr = row_blk_curr_;
    __if (avbuf_pending_size_ != AVBUF_SIZE) {
      io.lsu.rd_req.valid = true;
      // wait for LSU ack
      __if (io.lsu.rd_req.ready) {
        row_blk_curr_.next = row_blk_curr_ + 1;
        __if (row_blk_curr_ != row_blk_end_) {
          // request next a_rowind
          state.next = ch_walk_state::get_a_rowidx;
        } __else {
          // goto wait for all data to return
          state.next = ch_walk_state::wait_for_data;
        };
      } __else {
        // profiling
        stats_.next.a_values_stalls = stats_.a_values_stalls + 1;
      };
    } __else {
      // profiling
      stats_.next.a_values_stalls = stats_.a_values_stalls + 1;
    };
  }
  __case (ch_walk_state::wait_for_data) {
    // wait for all a_rowind and a_value blocks to arrive
    // read requests are returned in order, so
    // we only need to wait on the requested last buffer
    __if (avbuf_.io.size == row_blk_cnt_) {
      __if (xvbuf_.io.deq.valid) {
        // fetch x_value block
        xvblock_.next = xvbuf_.io.deq.data;
        xvbuf_deq.next = true;
        x_value_.next = ch_slice<ch_float32>(xvblock_.next >> INT32_TO_BLOCK_BITSHIFT(a_colidx_));
      } __else {
        // get x_value from local storage
        x_value_.next = ch_slice<ch_float32>(xvblock_ >> INT32_TO_BLOCK_BITSHIFT(a_colidx_));
      };
      // go to execute
      state.next = ch_walk_state::execute;
    } __else {
      // profiling
      stats_.next.a_values_stalls = stats_.a_values_stalls + 1;
    };
  }
  __case (ch_walk_state::execute) {
    // push data to PE
    pe_data.next.a_rowind = ch_slice<ch_ptr>(arbuf_.io.deq.data >> INT32_TO_BLOCK_BITSHIFT(row_curr_));
    pe_data.next.a_value  = ch_slice<ch_float32>(avbuf_.io.deq.data >> INT32_TO_BLOCK_BITSHIFT(row_curr_));
    pe_data.next.x_value  = x_value_.as<ch_float32>();
    pe_data.next.is_end   = false;
    pe_valid.next         = true;

    // wait for PE ack
    __if (io.pe.ready) {
      // advance row
      row_curr_.next = row_curr_ + 1;
      // check if not last row
      __if (row_curr_ != row_end_) {
        // check if last entry in block
        __if ((row_curr_ & 0xf) == 0xf) {
          // pop fifo
          arbuf_deq.next = true;
          avbuf_deq.next = true;
          // go next
          state.next = ch_walk_state::execute2;
        };
      } __else {
        // pop fifo
        arbuf_deq.next = true;
        avbuf_deq.next = true;
        // go to next column
        state.next = ch_walk_state::next_column;
      };
    } __else {
      // profiling
      stats_.next.execute_stalls = stats_.execute_stalls + 1;
    };
  }
  __case (ch_walk_state::execute2) {
    // go next
    state.next = ch_walk_state::execute;
  }
  __case (ch_walk_state::next_column) {
    // advance to next column
    col_curr_.next = col_curr_ + 1;
    // check if not last column
    __if (col_curr_ != col_end_) {
      // check if not last entry in block
      __if ((col_curr_ & 0xf) != 0xf) {
        // goto next_column2
        state.next = ch_walk_state::next_column2;
      } __else {
        // get the next axblock
        state.next = ch_walk_state::get_a_colidx;
      };
    } __else {
      // compute runtime
      state.next = ch_walk_state::calc_runtime;
    };
  }
  __case (ch_walk_state::next_column2) {    
    // get the next a_index
    a_colidx_.next = ch_slice<ch_ptr>(acblock_ >> INT32_TO_BLOCK_BITSHIFT(col_curr_));
    // get the next row_curr
    row_curr_.next = ch_slice<ch_ptr>(asblock_ >> INT32_TO_BLOCK_BITSHIFT(col_curr_));
    // get the next row_end
    __if ((col_curr_ & 0xf) != 0xf) {
      // go next
      state.next = ch_walk_state::row_end;
    } __else {
      // need to get row_end from next block
      state.next = ch_walk_state::get_a_rend;
    };
  }
  __case (ch_walk_state::calc_runtime) {
    // compute the runtime
    runtime_.next = (io.ctrl.timer - prof_start_).slice<32>();
    // end the partition
    state.next = ch_walk_state::end_partition;
  }
  __case (ch_walk_state::end_partition) {
    // send end-of-partition signal to PE
    pe_data.next.is_end = true;
    pe_valid.next       = true;
    // wait for PE ack
    __if (io.pe.ready) {
      // profiling
      stats_.next.min_latency   = ch_select(stats_.min_latency == 0, runtime_, ch_min(stats_.min_latency, runtime_));
      stats_.next.max_latency   = ch_max(stats_.min_latency, runtime_);
      stats_.next.total_latency = stats_.total_latency + runtime_;
      stats_.next.num_parts     = stats_.num_parts + 1;
      // return
      state.next = ch_walk_state::ready;
    } __else {
      // profiling
      stats_.next.execute_stalls = stats_.execute_stalls + 1;
    };
  };

  //--
  if (verbose) {
    ch_print(fstring("{0}: Walker%d: state={1:s}, rq_val={2}, rq_typ={3}, rq_adr={4}, "
                     "rr_val={5}, rr_typ={6}, "
                     "col_cur={7}, col_end={8}, row_cur={9}, row_end={10}, ax={11}, xv={12}, "
                     "pe_ay={13}, pe_av={14}, pe_xv={15}, pe_end={16}, pe_val={17}", id_),
      ch_getTick(), state, io.lsu.rd_req.valid, io.lsu.rd_req.data.type, io.lsu.rd_req.data.addr,
      io.lsu.rd_rsp.valid, io.lsu.rd_rsp.data.type,
      col_curr_, col_end_, row_curr_, row_end_, a_colidx_, x_value_,
      io.pe.data.a_rowind, io.pe.data.a_value, io.pe.data.x_value, io.pe.data.is_end, io.pe.valid);
  }
}
