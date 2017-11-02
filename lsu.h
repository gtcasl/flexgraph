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

__enum (ch_rd_request, 3, (
  a_partition,
  a_xindices,
  a_ystarts,
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

__enum (ch_rq_owner, 2, (
  PE0,
  PE1,             
  ctrl
));

__struct(ch_rd_mdata_t, (
  (ch_rd_request) type,
  (ch_rq_owner) owner
));

__struct(ch_wr_mdata_t, (
  (ch_wr_request) type,
  (ch_rq_owner) owner
));

enum {
  LOG2_PBUF_SIZE = 2,
  PBUF_SIZE = 1 << LOG2_PBUF_SIZE,

  LOG2_AXBUF_SIZE = 1,
  AXBUF_SIZE = 1 << LOG2_AXBUF_SIZE,

  LOG2_ASBUF_SIZE = 1,
  ASBUF_SIZE = 1 << LOG2_ASBUF_SIZE,

  LOG2_AYBUF_SIZE = 5,
  AYBUF_SIZE = 1 << LOG2_AYBUF_SIZE,

  LOG2_AVBUF_SIZE = 5,
  AVBUF_SIZE = 1 << LOG2_AVBUF_SIZE,

  LOG2_XVBUF_SIZE = 1,
  XVBUF_SIZE = 1 << LOG2_XVBUF_SIZE,

  LOG2_XMBUF_SIZE = 1,
  XMBUF_SIZE = 1 << LOG2_XMBUF_SIZE,

  LOG2_ABUF_SIZE = 3,
  ABUF_SIZE = 1 << LOG2_ABUF_SIZE,
};

using ch_blk_addr = ch_bit<aal::aal_qpi0::addr_wdith>;
using ch_ptr = ch_bit<aal::aal_qpi0::addr_wdith>;

using ch_pbuf_t  = ch_queue<ch_block_t, PBUF_SIZE>;

using ch_axbuf_t = ch_queue<ch_block_t, AXBUF_SIZE>;
using ch_asbuf_t = ch_queue<ch_block_t, ASBUF_SIZE>;
using ch_aybuf_t = ch_queue<ch_block_t, AYBUF_SIZE>;
using ch_avbuf_t = ch_queue<ch_block_t, AVBUF_SIZE>;

using ch_xvbuf_t = ch_queue<ch_block_t, XVBUF_SIZE>;
using ch_xmbuf_t = ch_queue<ch_block_t, XMBUF_SIZE>;

using ch_abuf_t  = ch_queue<ch_ptr, ABUF_SIZE>;

__inout (ch_lsu_rd_req_io_t, (
  __in(ch_bool)       syn,
  __in(ch_rd_request) type,
  __in(ch_blk_addr)   addr,
  __out(ch_bool)      ack
));

__inout (ch_lsu_rd_rsp_io_t, (
  __out(ch_bool)       syn,
  __out(ch_rd_request) type
));

__inout (ch_lsu_wr_req_io_t, (
  __in(ch_bool)       syn,
  __in(ch_wr_request) type,
  __in(ch_blk_addr)   addr,
  __in(ch_block_t)    data,
  __out(ch_bool)      ack
));

__inout (ch_lsu_wr_rsp_io_t, (
  __out(ch_bool)       syn,
  __out(ch_wr_request) type
));

__inout (ch_ctrl_lsu_io_t, (
  (ch_lsu_rd_req_io_t) rd_req,
  (ch_lsu_wr_req_io_t) wr_req,
  (ch_enqIO<ch_pbuf_t::value_type>) pbuf,
  __out(ch_bit32)      outstanding_writes
));

__inout (ch_pe_lsu_io_t, (
  (ch_lsu_rd_req_io_t) rd_req,
  (ch_lsu_rd_rsp_io_t) rd_rsp,
  (ch_lsu_wr_req_io_t) wr_req,
  (ch_enqIO<ch_axbuf_t::value_type>) axbuf,
  (ch_enqIO<ch_asbuf_t::value_type>) asbuf,
  (ch_enqIO<ch_aybuf_t::value_type>) aybuf,
  (ch_enqIO<ch_avbuf_t::value_type>) avbuf,
  (ch_enqIO<ch_xvbuf_t::value_type>) xvbuf,
  (ch_enqIO<ch_xmbuf_t::value_type>) xmbuf,
  __out(ch_bit<ch_avbuf_t::addr_width+1>) avbuf_size
));

class spmv_lsu {
public:

  __io (
    (spmv_aal_device::qpi_io_t) qpi,
    (ch_ctx_io_t) ctx,
    (ch_ctrl_lsu_io_t) ctrl,
    (ch_vec<ch_pe_lsu_io_t, PE_COUNT>) pe
  );

  spmv_lsu();
  ~spmv_lsu();
  
  void describe();

private:

  __enum (ch_rd_req_state, 3, (
    ping_PE0,
    ping_PE1,
    ping_ctrl,
    submit,
    get_x_mask,
    get_x_value
  ));

  __enum (ch_wr_req_state, 3, (
    ping_PE0,
    ping_PE1,
    ping_ctrl,
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

  struct ctrl_t {
    ch_module<ch_pbuf_t> pbuf;

    ch_seq<ch_bit1> rd_req_ack;
    ch_seq<ch_bit1> rd_rsp_valid;
    ch_seq<ch_rd_request> rd_rsp_type;

    ch_seq<ch_bit1> wr_req_ack;
    ch_seq<ch_bit1> wr_rsp0_ack;
    ch_seq<ch_bit1> wr_rsp1_ack;
    ch_seq<ch_wr_request> wr_rsp0_type;
    ch_seq<ch_wr_request> wr_rsp1_type;

    ch_seq<ch_bit32> pbuf_pending_size;
  };

  struct pe_t {
    ch_module<ch_axbuf_t> axbuf;
    ch_module<ch_asbuf_t> asbuf;
    ch_module<ch_aybuf_t> aybuf;
    ch_module<ch_avbuf_t> avbuf;
    ch_module<ch_xvbuf_t> xvbuf;
    ch_module<ch_xmbuf_t> xmbuf;

    ch_seq<ch_bit32> axbuf_pending_size;
    ch_seq<ch_bit32> asbuf_pending_size;
    ch_seq<ch_bit32> aybuf_pending_size;
    ch_seq<ch_bit32> avbuf_pending_size;
    ch_seq<ch_bit32> xvbuf_pending_size;
    ch_seq<ch_bit32> xmbuf_pending_size;

    ch_seq<ch_bit1> rd_req_ack;
    ch_seq<ch_bit1> rd_rsp_valid;
    ch_seq<ch_rd_request> rd_rsp_type;

    ch_seq<ch_bit1> wr_req_ack;
    ch_seq<ch_bit1> wr_rsp0_ack;
    ch_seq<ch_bit1> wr_rsp1_ack;
    ch_seq<ch_wr_request> wr_rsp0_type;
    ch_seq<ch_wr_request> wr_rsp1_type;
  };

  void read_req_thread();
  void write_req_thread();
  
  void read_rsp_thread();
  void write_rsp0_thread();
  void write_rsp1_thread();
  
  void writemask_thread();
  
  ch_blk_addr get_baseaddr(const ch_rd_request& rq_type);
  ch_blk_addr get_baseaddr(const ch_wr_request& rq_type);
  
  ch_bit1 check_pe_buf_ready(uint32_t pe_id, const ch_rd_request& rq_type);  
  void update_pe_buf_pending_size(uint32_t pe_id, const ch_rd_request& rq_type);

  ctrl_t ctrl_;

  pe_t pe_[PE_COUNT];
  
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
  
  ch_seq<ch_bit32>    outstanding_writes_;
  
  ch_wr_req_state     m_wr_req_state;
  ch_writemask_state  m_writemask_state;
};

}
}
