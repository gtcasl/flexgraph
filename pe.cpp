#include "pe.h"
#include "pipew.h"

using namespace spmv;
using namespace spmv::accelerator;

__enum (ch_pe_state, 3, (
  ready,
  write_value0,
  write_value1,
  write_mask,
  clear
));

spmv_pe::spmv_pe(uint32_t id) : id_(id) {
  //--
  __if (y_wenable_) (
    y_values_[y_waddr_] = y_value_;
    y_mask_.next = mask_value_;
  );
}

spmv_pe::~spmv_pe() {}

void spmv_pe::describe() {
  //--
  ch_seq<ch_pe_state> state;

  //--
  ch_bool do_enq = io.req.valid && io.req.ready;

  //--
  auto mult_value = ch_fmult<ALTFP_SP_MULT>(io.req.data.a_value, io.req.data.x_value);
  mult_pipe_.io.enq.data.a_yindex = io.req.data.a_yindex;
  mult_pipe_.io.enq.data.is_end = io.req.data.is_end;
  mult_pipe_.io.enq.valid = do_enq;

  //--
  auto y_raddr = (mult_pipe_.io.deq.data.a_yindex & 0x1f).slice<5>();
  auto add_value = ch_fadd<ALTFP_SP_ADD_SUB>(mult_value, y_values_[y_raddr]);
  add_pipe_.io.enq.data.a_yindex = mult_pipe_.io.deq.data.a_yindex;
  add_pipe_.io.enq.data.is_end = mult_pipe_.io.deq.data.is_end;
  add_pipe_.io.enq.valid = mult_pipe_.io.deq.valid;

  //--
  auto y_raddr_mask = 1_b32 << y_raddr;
  auto y_waddr_mask = 1_b32 << y_waddr_;

  //--
  __if (do_enq && !add_pipe_.io.deq.valid) (
    pending_reqs_.next = pending_reqs_ + 1;
  )
  __elif (!do_enq && add_pipe_.io.deq.valid) (
    pending_reqs_.next = pending_reqs_ - 1;
  );

  //--
  __if (mult_pipe_.io.deq.valid && !mult_pipe_.io.deq.data.is_end
     && add_pipe_.io.deq.valid && !add_pipe_.io.deq.data.is_end) (
    inflight_mask_.next = (inflight_mask_ & ~y_waddr_mask) | y_raddr_mask;
  )
  __elif (mult_pipe_.io.deq.valid && !mult_pipe_.io.deq.data.is_end) (
    inflight_mask_.next = inflight_mask_ | y_raddr_mask;
  )
  __elif (add_pipe_.io.deq.valid && !add_pipe_.io.deq.data.is_end) (
    inflight_mask_.next = inflight_mask_ & ~y_waddr_mask;
  );

  //--
  io.req.ready = (state == ch_pe_state::ready)
              && (0 == (inflight_mask_ & y_raddr_mask));

  //--
  io.is_idle = (state == ch_pe_state::ready)
            && (0 == pending_reqs_);

  //--
  __if (add_pipe_.io.deq.valid
     && !add_pipe_.io.deq.data.is_end) (
    y0_.next = add_pipe_.io.deq.data.a_yindex & ~0x1f_h20;
  );

  //--
  __switch (state) (
  __case (ch_pe_state::ready) (
    //--
    y_wenable_  = add_pipe_.io.deq.valid && !add_pipe_.io.deq.data.is_end;
    y_waddr_    = (add_pipe_.io.deq.data.a_yindex & 0x1f).slice<5>();
    y_value_    = add_value;
    mask_value_ = y_mask_ | y_waddr_mask;

    //--
    __if (add_pipe_.io.deq.valid
       && add_pipe_.io.deq.data.is_end) (
      state.next = ch_pe_state::write_value0;
    );
  )
  __case (ch_pe_state::write_value0) (
    // submit first y_value block
    ch_block value;
    for (int i = 0; i < 16; ++i) {
      value.slice<32>(i*32) = y_values_[i];
    }
    io.lsu.wr_req.data.type = ch_wr_request::y_values;
    io.lsu.wr_req.data.addr = INT32_TO_BLOCK_ADDR(y0_);
    io.lsu.wr_req.data.data = value;
    io.lsu.wr_req.valid = true;
    // wait for LSU ack
    __if (io.lsu.wr_req.ready) (
      // go write second y_value block
      state.next = ch_pe_state::write_value1;
    )
    __else (
      // profiling
    );
  )
  __case (ch_pe_state::write_value1) (
    // submit second y_value block
    ch_block value;
    for (int i = 0; i < 16; ++i) {
      value.slice<32>(i*32) = y_values_[i+16];
    }
    io.lsu.wr_req.data.type = ch_wr_request::y_values;
    io.lsu.wr_req.data.addr = INT32_TO_BLOCK_ADDR(y0_) + 1;
    io.lsu.wr_req.data.data = value;
    io.lsu.wr_req.valid = true;
    // wait for LSU ack
    __if (io.lsu.wr_req.ready) (
      // go write mask value
      state.next = ch_pe_state::write_mask;
    )
    __else (
      // profiling
    );
  )
  __case (ch_pe_state::write_mask) (
    // submit write mask
    io.lsu.wr_req.data.type = ch_wr_request::y_masks;
    io.lsu.wr_req.data.addr = INT32_TO_BLOCK_ADDR(y0_ >> 5); // divide by 32
    io.lsu.wr_req.data.data = ch_zext<512>(y_mask_) << INT32_TO_BLOCK_BITSHIFT(y0_ >> 5); // apply mask
    io.lsu.wr_req.valid = true;
   // wait for LSU ack
    __if (io.lsu.wr_req.ready) (
      state.next = ch_pe_state::clear;
    )
    __else (
      // profiling
    );
  )
  __case (ch_pe_state::clear) (
    // clear write buffer
    y_wenable_  = true;
    y_waddr_    = y_clr_cntr_;
    y_value_    = 0.0f;
    mask_value_ = 0;

    // advance buffer address
    y_clr_cntr_.next = y_clr_cntr_ + 1;
    __if (y_clr_cntr_.next == 0) (
      state.next = ch_pe_state::ready;
    );
  )
  __default (
    //--
    io.lsu.wr_req.data.type = ch_wr_request::y_values;
    io.lsu.wr_req.data.addr = 0;
    io.lsu.wr_req.data.data = 0;
    io.lsu.wr_req.valid = false;

    //--
    y_wenable_  = false;
    y_value_    = 0.0f;
    y_waddr_    = 0;
    mask_value_ = 0;
  ));

  //--
  if (id_ == 0) {
    ch_print(fstring("{0}: PE%d: state={1}, mp_val={2}, mult={3}, ap_val={4}, add={5}, rq_rdy={6}, idle={7}, "
                     "wq_val={8}, wq_typ={9}, wq_adr={10}, wq_dat={11}, flight={12}, pending={13}", id_),
      ch_getTick(), state, mult_pipe_.io.deq.valid, mult_value, add_pipe_.io.deq.valid, add_value, io.req.ready, io.is_idle,
      io.lsu.wr_req.valid, io.lsu.wr_req.data.type, io.lsu.wr_req.data.addr, io.lsu.wr_req.data.data, inflight_mask_, pending_reqs_
    );
  }
}
