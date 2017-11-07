#pragma once

#include "common.h"

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

  CTRL_ID = (1 << PE_COUNT),
};

#define PE_ID(x) (1 << x)

__enum (ch_rd_request, 3, (
  a_partition,
  a_xindices,
  a_startys,
  a_yindices,
  a_values,
  x_values,
  x_masks
));

__enum (ch_wr_request, 2, (
  y_values,
  y_masks,
  hwcntrs
));

__struct(ch_rd_mdata_t, (
  (ch_rd_request) type,
  (ch_bit<RD_REQ_INPUTS>) owner
));

__struct(ch_wr_mdata_t, (
  (ch_wr_request) type,
  (ch_bit<WR_REQ_INPUTS>) owner
));

using ch_blk_addr = ch_bit<aal::aal_qpi0::addr_wdith>;
using ch_ptr = ch_bit<aal::aal_qpi0::addr_wdith>;

__struct (ch_lsu_rd_req_t, (
  (ch_rd_request) type,
  (ch_blk_addr)   addr
));

__struct (ch_lsu_rd_rsp_t, (
  (ch_rd_request) type,
  (ch_block_t)    data
));

__struct (ch_lsu_wr_req_t, (
  (ch_wr_request) type,
  (ch_blk_addr)   addr,
  (ch_block_t)    data
));

__struct (ch_lsu_wr_rsp_t, (
  (ch_wr_request) type
));

__inout (ch_ctrl_lsu_io, (
  (ch_deq_io<ch_lsu_rd_req_t>) rd_req,
  (ch_deq_io<ch_lsu_wr_req_t>) wr_req,
  (ch_valid_io<ch_lsu_rd_rsp_t>) rd_rsp,
  __out(ch_bit32) outstanding_writes
));

__inout (ch_pe_lsu_io, (
  (ch_deq_io<ch_lsu_rd_req_t>) rd_req,
  (ch_deq_io<ch_lsu_wr_req_t>) wr_req,
  (ch_valid_io<ch_lsu_rd_rsp_t>) rd_rsp
));

using ch_rd_req_arb_t = ch_arbiter<ch_lsu_rd_req_t, RD_REQ_INPUTS>;
using ch_wr_req_arb_t = ch_arbiter<ch_lsu_wr_req_t, WR_REQ_INPUTS>;

class spmv_lsu {
public:

  __io (
    (spmv_aal_device::qpi_io) qpi,
    (ch_ctx_io) ctx,
    (ch_ctrl_lsu_io) ctrl,
    (ch_vec<ch_pe_lsu_io, PE_COUNT>) pe
  );

  spmv_lsu();
  ~spmv_lsu();
  
  void describe();

private:

  __enum (ch_wr_req_state, 3, (
    get_request,
    submit,
    writemask,
    flush_writemask1,
    flush_writemask2
  ));

  __enum (ch_writemask_state, 2, (
    ready,
    check_mask0,
    check_mask1,
    done
  ));

  void read_req_thread();
  void write_req_thread();
  
  void read_rsp_thread();
  void write_rsp0_thread();
  void write_rsp1_thread();
  
  void writemask_thread();
  
  ch_blk_addr get_baseaddr(const ch_rd_request& rq_type);
  ch_blk_addr get_baseaddr(const ch_wr_request& rq_type);

  ch_module<ch_rd_req_arb_t> rd_req_arb_;
  ch_module<ch_wr_req_arb_t> wr_req_arb_;
  
  ch_seq<ch_block_t>  m_writemask0;
  ch_seq<ch_block_t>  m_writemask1;
  ch_seq<ch_block_t>  m_writemask_flush;
  ch_seq<ch_blk_addr> m_writemask_flush_addr;
  ch_seq<ch_bit<2>>   m_writemask0_owners;
  ch_seq<ch_bit<2>>   m_writemask1_owners;
  ch_seq<ch_blk_addr> m_writemask0_addr;
  ch_seq<ch_blk_addr> m_writemask1_addr;
  ch_seq<ch_bit1>     m_writemask_flush_enable;
  ch_seq<ch_bit1>     m_pe_writemask_in;
  ch_seq<ch_bit1>     m_pe_writemask_out;
  ch_seq<ch_bit1>     m_pe0_writemask;
  ch_seq<ch_bit1>     m_pe1_writemask;
  
  ch_wr_req_state     m_wr_req_state;
  ch_writemask_state  m_writemask_state;
};

}
}
