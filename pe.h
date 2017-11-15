#pragma once

#include "common.h"
#include "lsu.h"

namespace spmv {
namespace accelerator {

__struct (ch_pe_req_t, (
  (ch_ptr)     a_yindex,
  (ch_float32) a_value,
  (ch_float32) x_value,
  (ch_bool)    is_end
));

__struct (ch_pipe_data_t, (
  (ch_ptr)  a_yindex,
  (ch_bool) is_end
));

class spmv_pe {
public:

  __io(
    (ch_deq_io<ch_pe_req_t>) req,
    (ch_flip_t<ch_pe_lsu_io>) lsu,
    __out(ch_bool) is_idle
  );
  
  spmv_pe(uint32_t id);
  ~spmv_pe();
  
  void describe();

private:

  using ch_bit480 = ch_bit<480>;
  
  uint32_t  id_;

  ch_module<ch_pipe<ch_pipe_data_t, ALTFP_SP_MULT>> mult_pipe_;
  ch_module<ch_pipe<ch_pipe_data_t, ALTFP_SP_ADD_SUB>> add_pipe_;

  ch_ram<ch_float32, PARTITION_SIZE> y_values_;
  ch_seq<ch_bit32> y_mask_;

  ch_seq<ch_bit32> inflight_mask_;

  ch_seq<ch_bit32> pending_reqs_;

  ch_float32       y_value_;
  ch_bit<5>        y_waddr_;
  ch_bit1          y_wenable_;

  ch_bit32         mask_value_;

  ch_seq<ch_ptr>   y0_;

  ch_seq<ch_bit<LOG2_PARTITION_SIZE>> y_clr_cntr_;
};

}
}
