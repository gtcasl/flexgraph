#pragma once

#include <cash.h>

namespace opae {

//
// Description:
// - memory data are 64 byte cache line width
// - there are two write response ports
// - memory responses are returned in order
//

using namespace ch::core;

template <unsigned ADDR, unsigned MDATA, unsigned CDATA>
struct opae_qpi {
  static constexpr unsigned addr_wdith  = ADDR;
  static constexpr unsigned mdata_width = MDATA;
  static constexpr unsigned cdata_width = CDATA;

  __inout (rd_req_io, (
    (ch_in<ch_bit1>)        almostfull,
    (ch_out<ch_bit<ADDR>>)  addr,
    (ch_out<ch_bit<MDATA>>) mdata,
    (ch_out<ch_bit1>)       valid
  ));

  __inout (rd_rsp_io, (
    (ch_in<ch_bit<MDATA>>) mdata,
    (ch_in<ch_bit<CDATA>>) data,
    (ch_in<ch_bit1>)       valid
  ));

  __inout (wr_req_io, (
    (ch_in<ch_bit1>)        almostfull,
    (ch_out<ch_bit<ADDR>>)  addr,
    (ch_out<ch_bit<MDATA>>) mdata,
    (ch_out<ch_bit<CDATA>>) data,
    (ch_out<ch_bit1>)       valid
  ));

  __inout (wr_rsp_io, (
    (ch_in<ch_bit<MDATA>>) mdata,
    (ch_in<ch_bit1>)       valid
  ));

  __inout (io, (
    (rd_req_io) rd_req,
    (rd_rsp_io) rd_rsp,
    (wr_req_io) wr_req,
    (wr_rsp_io) wr_rsp0,
    (wr_rsp_io) wr_rsp1
  ));
};

using opae_qpi0 = opae_qpi<20, 14, 512>;

template <typename Context, typename Qpi = opae_qpi0>
class opae_device {
public:
  using qpi_io = typename Qpi::io;
  static_assert(ch_width_v<Context> == Qpi::cdata_width, "invalid context size");
  static_assert(ch_direction_v<Context> == ch_direction::in, "invalid context direction");

  __io (
    (qpi_io)          qpi,
    (Context)         ctx,
    (ch_in<ch_bit1>)  start,
    (ch_out<ch_bit1>) done
  );

  opae_device() {}
  virtual ~opae_device() {}

  virtual void describe() = 0;
};

template <typename Context>
using opae_device0 = opae_device<Context>;

}
