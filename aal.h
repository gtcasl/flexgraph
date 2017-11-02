#pragma once

#include <cash.h>

namespace aal {

//
// Description:
// - memory data are 64 byte cache line width
// - there are two write response ports
// - memory responses are returned in order
//

using namespace ch::core;

template <unsigned ADDR, unsigned MDATA, unsigned CDATA>
struct aal_qpi {
  static constexpr unsigned addr_wdith  = ADDR;
  static constexpr unsigned mdata_width = MDATA;
  static constexpr unsigned cdata_width = CDATA;

  __inout (rd_req_t, (
    (ch_in<ch_bit1>)        almostfull,
    (ch_out<ch_bit<ADDR>>)  addr,
    (ch_out<ch_bit<MDATA>>) mdata,
    (ch_out<ch_bit1>)       valid
  ));

  __inout (rd_rsp_t, (
    (ch_in<ch_bit<MDATA>>) mdata,
    (ch_in<ch_bit<CDATA>>) data,
    (ch_in<ch_bit1>)       valid
  ));

  __inout (wr_req_t, (
    (ch_in<ch_bit1>)        almostfull,
    (ch_out<ch_bit<ADDR>>)  addr,
    (ch_out<ch_bit<MDATA>>) mdata,
    (ch_out<ch_bit<CDATA>>) data,
    (ch_out<ch_bit1>)       valid
  ));

  __inout (wr_rsp_t, (
    (ch_in<ch_bit<MDATA>>) mdata,
    (ch_in<ch_bit1>)       valid
  ));

  __inout (io_t, (
    (rd_req_t) rd_req,
    (rd_rsp_t) rd_rsp,
    (wr_req_t) wr_req,
    (wr_rsp_t) wr_rsp0,
    (wr_rsp_t) wr_rsp1
  ));
};

using aal_qpi0 = aal_qpi<20, 14, 512>;

template <typename Context, typename Qpi = aal_qpi0>
class aal_device {
public:
  using qpi_io_t = typename Qpi::io_t;
  static_assert(ch_bitwidth_v<Context> == Qpi::cdata_width, "invalid context size");
  static_assert(ch_direction_v<Context> == ch_direction::in, "invalid context direction");

  __io (
    (qpi_io_t)         qpi,
    (Context)          ctx,
    (ch_in<ch_bit1>)   start,
    (ch_out<ch_bit1>)  done
  );

  aal_device() {}
  virtual ~aal_device() {}
  
  virtual void describe() = 0;
};

template <typename Context>
using aal_device0 = aal_device<Context>;

}
