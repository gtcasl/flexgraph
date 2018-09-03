#pragma once

#include <cash.h>

namespace aal {

//
// Description:
// - memory data are 64 byte cache line width
// - there are two write response ports
// - memory responses are returned in order
//

using namespace ch::logic;

template <unsigned ADDR, unsigned MDATA, unsigned CDATA>
struct aal_qpi {
  static constexpr unsigned addr_wdith  = ADDR;
  static constexpr unsigned mdata_width = MDATA;
  static constexpr unsigned cdata_width = CDATA;

  __inout (rd_req_io, (
    (ch_in<ch_bool>)        almostfull,
    (ch_out<ch_uint<ADDR>>) addr,
    (ch_out<ch_bit<MDATA>>) mdata,
    (ch_out<ch_bool>)       valid
  ));

  __inout (rd_rsp_io, (
    (ch_in<ch_bit<MDATA>>) mdata,
    (ch_in<ch_bit<CDATA>>) data,
    (ch_in<ch_bool>)       valid
  ));

  __inout (wr_req_io, (
    (ch_in<ch_bool>)        almostfull,
    (ch_out<ch_uint<ADDR>>)  addr,
    (ch_out<ch_bit<MDATA>>) mdata,
    (ch_out<ch_bit<CDATA>>) data,
    (ch_out<ch_bool>)       valid
  ));

  __inout (wr_rsp_io, (
    (ch_in<ch_bit<MDATA>>) mdata,
    (ch_in<ch_bool>)       valid
  ));

  __inout (io, (
    (rd_req_io) rd_req,
    (rd_rsp_io) rd_rsp,
    (wr_req_io) wr_req,
    (wr_rsp_io) wr_rsp0,
    (wr_rsp_io) wr_rsp1
  ));
};

using aal_qpi0 = aal_qpi<20, 14, 512>;
using aal_qpi1 = aal_qpi<42, 16, 512>;

template <typename Context, typename Qpi = aal_qpi0>
class aal_device {
public:
  using qpi_io = typename Qpi::io;
  static_assert(ch_width_v<Context> == Qpi::cdata_width, "invalid context size");

  __io (
    (qpi_io)          qpi,
    __in(Context)     ctx,
    (ch_in<ch_bool>)  start,
    (ch_out<ch_bool>) done
  );

  aal_device() {}
  virtual ~aal_device() {}
  
  virtual void describe() = 0;
};

}
