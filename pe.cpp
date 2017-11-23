#include "pe.h"
#include "pipew.h"

using namespace spmv;
using namespace spmv::accelerator;

__enum (ch_pe_state, 2, (
  ready,
  write_value0,
  write_value1,
  write_mask
));

spmv_pe::spmv_pe() {
  //--
  static uint32_t s_ids = 0;
  id_ = s_ids++;

  //--
  io.stats = stats_;

  //--
  __if (y_wenable_) (
    y_values_[y_waddr_] = y_value_;    
  );
}

spmv_pe::~spmv_pe() {}

void spmv_pe::describe() {
  //--
  ch_seq<ch_pe_state> state;

  //--
  auto y_raddr_mask = ch_pvBits(1) << y_raddr_;
  auto y_waddr_mask = ch_pvBits(1) << y_waddr_;

  //--
  ch_bool add_enable = (ch_pe_state::ready == state)
                     || !add_pipe_.io.deq.valid; // discard non-valid heads

  //--
  ch_bool mult_enable = (add_enable && 0 == (inflight_mask_ & y_raddr_mask))
                     || !mult_pipe_.io.deq.valid; // discard non-valid heads

  //--
  io.req.ready = mult_pipe_.io.enq.ready;

  //--
  io.is_idle = (state == ch_pe_state::ready)
            && (0 == pending_reqs_);

  // select previous y_value if dirty
  ch_float32 prev_y_value =
      ch_select(0 != (y_mask_ & y_raddr_mask), y_values_[y_raddr_], 0);

  // Multiply pipeline
  mult_pipe_.io.enq.data.a_rowind = io.req.data.a_rowind;
  mult_pipe_.io.enq.data.is_end = io.req.data.is_end;
  mult_pipe_.io.enq.valid = io.req.valid && io.req.ready;
  mult_pipe_.io.deq.ready = mult_enable;
  ch_float32 mult_value = ch_fmult<ALTFP_SP_MULT>(
        io.req.data.a_value, io.req.data.x_value, mult_enable);

  // Adder pipeline
  add_pipe_.io.enq.data.a_rowind = mult_pipe_.io.deq.data.a_rowind;
  add_pipe_.io.enq.data.is_end = mult_pipe_.io.deq.data.is_end;
  add_pipe_.io.enq.valid = mult_pipe_.io.deq.valid && mult_enable;
  add_pipe_.io.deq.ready = add_enable;
  y_raddr_ = (mult_pipe_.io.deq.data.a_rowind & 0x1f).slice<5>();  
  ch_float32 add_value = ch_fadd<ALTFP_SP_ADD_SUB>(
        mult_value, prev_y_value, add_enable);

  // track outstanding requests
  auto pe_issue = mult_pipe_.io.enq.valid;
  auto pe_commit = (ch_pe_state::ready == state) && add_pipe_.io.deq.valid;
  __if (pe_issue && !pe_commit) (
    pending_reqs_.next = pending_reqs_ + 1;
  )__else (
    __if (!pe_issue && pe_commit) (
      pending_reqs_.next = pending_reqs_ - 1;
    );
  );

  // in-flight controller:
  // flag rows as they enter/exit the Adder pipeline
  auto adder_issue = add_pipe_.io.enq.valid && !add_pipe_.io.enq.data.is_end;
  auto adder_commit = pe_commit && !add_pipe_.io.deq.data.is_end;
  __if (adder_commit) (
    __if (adder_issue && (y_raddr_mask != y_waddr_mask)) (
      inflight_mask_.next = (inflight_mask_ & ~y_waddr_mask) | y_raddr_mask;
    )__else (
      inflight_mask_.next = inflight_mask_ & ~y_waddr_mask;
    );
  )__else (
    __if (adder_issue) (
      inflight_mask_.next = inflight_mask_ | y_raddr_mask;
    );
  );

  //--
  __if (adder_commit) (
    y0_.next = add_pipe_.io.deq.data.a_rowind & ~0x1f_h20;
  );

  //--
  __switch (state) (
  __case (ch_pe_state::ready) (
    //--
    y_wenable_ = add_pipe_.io.deq.valid && !add_pipe_.io.deq.data.is_end;
    y_waddr_   = (add_pipe_.io.deq.data.a_rowind & 0x1f).slice<5>();
    y_value_   = add_value;

    //--
    __if (y_wenable_) (
      y_mask_.next = y_mask_ | y_waddr_mask;
    );

    //--
    __if (add_pipe_.io.deq.valid
       && add_pipe_.io.deq.data.is_end) (
      y_mask_cpy_.next = y_mask_;
      y_mask_.next = 0;
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
    )__else (
      // profiling
      stats_.next.write_value_stalls = stats_.write_value_stalls + 1;
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
    )__else (
      // profiling
      stats_.next.write_value_stalls = stats_.write_value_stalls + 1;
    );
  )
  __case (ch_pe_state::write_mask) (
    // submit write mask
    io.lsu.wr_req.data.type = ch_wr_request::y_masks;
    io.lsu.wr_req.data.addr = INT32_TO_BLOCK_ADDR(y0_ >> 5); // divide by 32
    io.lsu.wr_req.data.data = ch_zext<512>(y_mask_cpy_) << INT32_TO_BLOCK_BITSHIFT(y0_ >> 5); // apply mask
    io.lsu.wr_req.valid     = true;
   // wait for LSU ack
    __if (io.lsu.wr_req.ready) (
      // return
      state.next = ch_pe_state::ready;
    )__else (
      // profiling
      stats_.next.write_mask_stalls = stats_.write_mask_stalls + 1;
    );
  )
  __default (
    //--
    io.lsu.wr_req.data.type = ch_wr_request::y_values;
    io.lsu.wr_req.data.addr = 0;
    io.lsu.wr_req.data.data = 0;
    io.lsu.wr_req.valid     = false;

    //--
    y_wenable_ = false;
    y_value_   = 0.0f;
    y_waddr_   = 0;
  ));

  //--
  if (id_ == 0) {
    ch_print(fstring("{0}: PE%d: state={1}, rq_val={2}, rq_ar={3}, rq_av={4}, rq_xv={5}, "
                     "mp_val={6}, mp_ar={7}, mp_dat={8}, "
                     "ap_val={9}, ap_ar={10}, ap_dat={11}, ap_old={12}, "
                     "rq_rdy={13}, idle={14}, "
                     "wq_val={15}, wq_typ={16}, wq_adr={17}, wq_dat={18}, "
                     "flight={19}, pending={20}, wen={21}, m_en={22}, a_en={23}", id_),
      ch_getTick(), state, io.req.valid, io.req.data.a_rowind, io.req.data.a_value, io.req.data.x_value,
      mult_pipe_.io.deq.valid, mult_pipe_.io.deq.data.a_rowind, mult_value,
      add_pipe_.io.deq.valid, add_pipe_.io.deq.data.a_rowind, add_value, prev_y_value,
      io.req.ready, io.is_idle,
      io.lsu.wr_req.valid, io.lsu.wr_req.data.type, io.lsu.wr_req.data.addr, io.lsu.wr_req.data.data,
      inflight_mask_, pending_reqs_, y_wenable_, mult_enable, add_enable
    );
  }
}
