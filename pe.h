#pragma once

#include "common.h"
#include "lsu.h"

namespace spmv {
namespace accelerator {

__inout (ch_pe_start_req_io_t, (
  __in(ch_bool)        syn,
  __in(ch_dcsc_part_t) part,
  __out(ch_bool)       ack
));

__inout (ch_ctrl_pe_io_t, (
  (ch_pe_start_req_io_t) start,
  __in(ch_bit64) timer,
  __out(ch_pe_hwcntrs_t) hwcntrs
));

class spmv_pe {
public:

  __io(
    (ch_ctrl_pe_io_t) ctrl,
    (ch_flip_t<ch_pe_lsu_io_t>) lsu
  );
  
  spmv_pe(uint32_t id);
  ~spmv_pe();
  
  void describe();

private:

  using ch_bit480 = ch_bit<480>;
  
  uint32_t  id_;
  
  ch_seq<ch_ptr>      col_curr_;
  ch_seq<ch_ptr>      col_end_;

  ch_seq<ch_block_t>  axblock_;
  ch_seq<ch_block_t>  asblock_;
  ch_seq<ch_block_t>  ayblock_;
  ch_seq<ch_block_t>  avblock_;
  ch_seq<ch_block_t>  xmblock_;
  ch_seq<ch_block_t>  xvblock_;
  
  ch_seq<ch_ptr>      xmblock_addr_;
  ch_seq<ch_ptr>      xvblock_addr_;
  
  ch_seq<ch_ptr>      a_xindex_;
  ch_seq<ch_float32>  x_value_;
  
  ch_seq<ch_ptr>      row_curr_;
  ch_seq<ch_ptr>      row_end_;
  
  ch_seq<ch_ptr>      row_blk_curr_;
  ch_seq<ch_ptr>      row_blk_end_;
  ch_seq<ch_bit<6>>   row_blk_cnt_;

  ch_seq<ch_pe_hwcntrs_t> hwcntrs_;
  ch_seq<ch_bit64>    prof_start_;
  
  ch_seq<ch_bit<5>>   y_clr_cntr_;
  ch_float32          y_value_;
  ch_bit<5>           y_addr_;
  ch_bit1             y_wenable_;
  ch_seq<ch_bit32>    y_mask_;
  ch_seq<ch_ptr>      y0_;
};

}
}
