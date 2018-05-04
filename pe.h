#pragma once

#include "common.h"
#include "lsu.h"

namespace spmv {
namespace accelerator {

__struct (ch_pe_req_t, (
  (ch_ptr)     a_rowind,
  (ch_float32) a_value,
  (ch_float32) x_value,
  (ch_bool)    is_end
));

__struct (ch_pipe_data_t, (
  (ch_ptr)  a_rowind,
  (ch_bool) is_end
));

class spmv_pe {
public:

  __io(
    (ch_deq_io<ch_pe_req_t>) req,
    (ch_flip_t<ch_pe_lsu_io>) lsu,
    __out(ch_pe_stats_t) stats,
    __out(ch_bool) is_idle
  );
  
  spmv_pe();
  ~spmv_pe();
  
  void describe();

private:

  using ch_pvBits = ch_uint<PARTITION_SIZE>;
  using ch_paBits = ch_uint<LOG2_PARTITION_SIZE>;
  
  uint32_t  id_;

  ch_module<ch_pipe<ch_pipe_data_t, FP_MULT_LATENCY>> mult_pipe_;
  ch_module<ch_pipe<ch_pipe_data_t, FP_ADD_LATENCY>> add_pipe_;

  ch_mem<ch_float32, PARTITION_SIZE> y_values_;
  ch_reg<ch_pvBits> y_mask_;
  ch_reg<ch_pvBits> y_mask_cpy_;

  ch_reg<ch_pvBits> inflight_mask_;

  ch_reg<ch_uint32> pending_reqs_;

  ch_float32  y_value_;
  ch_paBits   y_raddr_;
  ch_paBits   y_waddr_;
  ch_bool     y_wenable_;

  ch_reg<ch_ptr>   y0_;

  ch_reg<ch_pe_stats_t> stats_;
};

}
}
