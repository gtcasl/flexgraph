#pragma once

#include "common.h"
#include "wrcache.h"

namespace spmv {
namespace accelerator {

#define INT32_TO_BLOCK_ADDR(x) \
   (((x) << 2) >> LOG2_BLOCK_SIZE)

#define CEIL_INT32_TO_BLOCK_ADDR(x) \
   ((((x) << 2) + BLOCK_SIZE_MASK) >> LOG2_BLOCK_SIZE)

#define INT32_TO_BLOCK_BITSHIFT(x) \
  (((x) & 0xf) << 5)

enum {
  RD_REQ_INPUTS = PE_COUNT + 1,
  WR_REQ_INPUTS = PE_COUNT + 1,
};

__enum (ch_rd_request, (
  a_colptr,
  a_colind,
  a_rowptr,
  a_rowind,
  a_values,
  x_values,
  x_masks
));

__enum (ch_wr_request, (
  y_values,
  y_masks,
  stats
));

__struct(ch_rd_mdata_t, (
  (ch_rd_request) type,
  (ch_bit<RD_REQ_INPUTS>) owner
));

__struct(ch_wr_mdata_t, (
  (ch_wr_request) type,
  (ch_bit<WR_REQ_INPUTS>) owner
));

__struct (ch_lsu_rd_req_t, (
  (ch_rd_request) type,
  (ch_blk_addr)   addr
));

__struct (ch_lsu_rd_rsp_t, (
  (ch_rd_request) type,
  (ch_block)      data
));

__struct (ch_lsu_wr_req_t, (
  (ch_wr_request) type,
  (ch_blk_addr)   addr,
  (ch_block)      data
));

__struct (ch_lsu_wr_rsp_t, (
  (ch_wr_request) type
));

__inout (ch_ctrl_lsu_io, (
  (ch_enq_io<ch_lsu_rd_req_t>)    rd_req,
  (ch_enq_io<ch_lsu_wr_req_t>)    wr_req,
  (ch_valid_out<ch_lsu_rd_rsp_t>) rd_rsp,
  __out(ch_uint32)                outstanding_writes
));

__inout (ch_walker_lsu_io, (
  (ch_enq_io<ch_lsu_rd_req_t>)    rd_req,
  (ch_valid_out<ch_lsu_rd_rsp_t>) rd_rsp
));

__inout (ch_pe_lsu_io, (
  (ch_enq_io<ch_lsu_wr_req_t>) wr_req
));

using ch_rd_req_arb_t = ch_xbar_switch<ch_lsu_rd_req_t, RD_REQ_INPUTS>;
using ch_wr_req_arb_t = ch_xbar_switch<ch_lsu_wr_req_t, WR_REQ_INPUTS>;

class spmv_lsu {
public:

  __io (
    (spmv_aal_device::qpi_io) qpi,
    __in(spmv_ctx_t) ctx,
    (ch_ctrl_lsu_io) ctrl,
    (ch_vec<ch_walker_lsu_io, PE_COUNT>) walkers,
    (ch_vec<ch_pe_lsu_io, PE_COUNT>) PEs
  );

  spmv_lsu();
  ~spmv_lsu();
  
  void describe();

private:

  void read_req_thread();
  void write_req_thread();
  
  void read_rsp_thread();
  void write_rsp0_thread();
  void write_rsp1_thread();
  
  ch_blk_addr get_baseaddr(const ch_rd_request& rq_type);
  ch_blk_addr get_baseaddr(const ch_wr_request& rq_type);

  ch_module<ch_rd_req_arb_t> rd_req_arb_;
  ch_module<ch_wr_req_arb_t> wr_req_arb_;
  ch_module<spmv_write_cache<ch_block, PE_COUNT, ch_width_v<ch_blk_addr>>> wr_cache_;
};

}
}
