#pragma once

#include "common.h"
#include "lsu.h"

namespace spmv {
namespace accelerator {

enum {
  AXBUF_SIZE = 2,
  ASBUF_SIZE = 2,
  AYBUF_SIZE = 32,
  AVBUF_SIZE = 32,
  XVBUF_SIZE = 2,
  XMBUF_SIZE = 2,
};

using ch_axbuf_t = ch_queue<ch_block, AXBUF_SIZE>;
using ch_asbuf_t = ch_queue<ch_block, ASBUF_SIZE>;
using ch_aybuf_t = ch_queue<ch_block, AYBUF_SIZE>;
using ch_avbuf_t = ch_queue<ch_block, AVBUF_SIZE>;

using ch_xvbuf_t = ch_queue<ch_block, XVBUF_SIZE>;
using ch_xmbuf_t = ch_queue<ch_block, XMBUF_SIZE>;

__struct (ch_pe_start_req_t, (
  __in(ch_dcsc_part_t) part
));

__inout (ch_ctrl_pe_io, (
  (ch_deq_io<ch_pe_start_req_t>) start,
  __in(ch_bit64) timer,
  __out(ch_pe_hwcntrs_t) hwcntrs
));

class spmv_pe {
public:

  __io(
    (ch_ctrl_pe_io) ctrl,
    (ch_flip_t<ch_pe_lsu_io>) lsu
  );
  
  spmv_pe(uint32_t id);
  ~spmv_pe();
  
  void describe();

private:

  using ch_bit480 = ch_bit<480>;
  
  uint32_t  id_;  

  ch_module<ch_axbuf_t> axbuf_;
  ch_module<ch_asbuf_t> asbuf_;
  ch_module<ch_aybuf_t> aybuf_;
  ch_module<ch_avbuf_t> avbuf_;
  ch_module<ch_xvbuf_t> xvbuf_;
  ch_module<ch_xmbuf_t> xmbuf_;

  ch_seq<ch_bit32>    axbuf_pending_size_;
  ch_seq<ch_bit32>    asbuf_pending_size_;
  ch_seq<ch_bit32>    aybuf_pending_size_;
  ch_seq<ch_bit32>    avbuf_pending_size_;
  ch_seq<ch_bit32>    xvbuf_pending_size_;
  ch_seq<ch_bit32>    xmbuf_pending_size_;
  
  ch_seq<ch_ptr>      col_curr_;
  ch_seq<ch_ptr>      col_end_;

  ch_seq<ch_block>    axblock_;
  ch_seq<ch_block>    asblock_;
  ch_seq<ch_block>    ayblock_;
  ch_seq<ch_block>    avblock_;
  ch_seq<ch_block>    xmblock_;
  ch_seq<ch_block>    xvblock_;
  
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
  
  ch_seq<ch_bit<LOG2_PARTITION_SIZE>> y_clr_cntr_;
  ch_float32          y_value_;
  ch_bit<5>           y_addr_;
  ch_bit1             y_wenable_;
  ch_seq<ch_bit32>    y_mask_;
  ch_seq<ch_ptr>      y0_;
};

}
}
