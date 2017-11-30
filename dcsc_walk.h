#pragma once

#include "common.h"
#include "lsu.h"
#include "pe.h"

namespace spmv {
namespace accelerator {

enum {
  ACBUF_SIZE = 2,
  ASBUF_SIZE = 2,
  ARBUF_SIZE = 32,
  AVBUF_SIZE = 32,
  XVBUF_SIZE = 2,
  XMBUF_SIZE = 2,
};

using ch_acbuf_t = ch_queue<ch_block, ACBUF_SIZE>;
using ch_asbuf_t = ch_queue<ch_block, ASBUF_SIZE>;
using ch_arbuf_t = ch_queue<ch_block, ARBUF_SIZE>;
using ch_avbuf_t = ch_queue<ch_block, AVBUF_SIZE>;

using ch_xvbuf_t = ch_queue<ch_block, XVBUF_SIZE>;
using ch_xmbuf_t = ch_queue<ch_block, XMBUF_SIZE>;

__struct (ch_pe_start_req_t, (
  __in(ch_dcsc_part_t) part
));

__inout (ch_ctrl_pe_io, (
  (ch_deq_io<ch_pe_start_req_t>) start,
  __in(ch_bit64) timer,
  __out(ch_walker_stats_t) stats
));

class spmv_dcsc_walk {
public:

  __io(
    (ch_ctrl_pe_io) ctrl,
    (ch_flip_t<ch_walker_lsu_io>) lsu,
    (ch_enq_io<ch_pe_req_t>) pe
  );

  spmv_dcsc_walk();
  ~spmv_dcsc_walk();

  void describe();

private:

  uint32_t id_;

  ch_seq<ch_ptr> col_curr_;
  ch_seq<ch_ptr> col_end_;

  ch_seq<ch_ptr> a_colidx_;

  ch_seq<ch_ptr> row_curr_;
  ch_seq<ch_ptr> row_end_;

  ch_seq<ch_ptr> xmblock_addr_;
  ch_seq<ch_ptr> xvblock_addr_;

  ch_seq<ch_ptr>  row_blk_curr_;
  ch_seq<ch_ptr>  row_blk_end_;
  ch_seq<ch_bit<6>> row_blk_cnt_;

  ch_seq<ch_float32> x_value_;

  ch_module<ch_acbuf_t> acbuf_;
  ch_module<ch_asbuf_t> asbuf_;
  ch_module<ch_arbuf_t> arbuf_;
  ch_module<ch_avbuf_t> avbuf_;
  ch_module<ch_xvbuf_t> xvbuf_;
  ch_module<ch_xmbuf_t> xmbuf_;

  ch_seq<ch_bit8> acbuf_pending_size_;
  ch_seq<ch_bit8> asbuf_pending_size_;
  ch_seq<ch_bit8> arbuf_pending_size_;
  ch_seq<ch_bit8> avbuf_pending_size_;
  ch_seq<ch_bit8> xvbuf_pending_size_;
  ch_seq<ch_bit8> xmbuf_pending_size_;

  ch_seq<ch_block> acblock_;
  ch_seq<ch_block> asblock_;
  ch_seq<ch_block> xmblock_;
  ch_seq<ch_block> xvblock_;

  ch_seq<ch_bit64> prof_start_;
  ch_seq<ch_walker_stats_t> stats_;
};

}
}
