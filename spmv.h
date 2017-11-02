#pragma once

#include "common.h"
#include "lsu.h"
#include "pe.h"

namespace spmv {
namespace accelerator {

using ch_part_buf_t = ch_bit<ch_bitwidth_v<ch_block_t> + PARTITION_VALUE_BITS>;

class spmv_device : public spmv_aal_device {
public:
  spmv_device();
  ~spmv_device();

  void describe() override;

protected:

  void main_thread();
  void dispatch_thread();

  struct pe_t {
    std::unique_ptr<ch_module<spmv_pe>> module;
    ch_flip_t<ch_ctrl_pe_io_t> io;
    ch_seq<ch_dcsc_part_t> parts;
    ch_seq<ch_bit1> start_req_syn;
  };

  struct lsu_t {
    std::unique_ptr<ch_module<spmv_lsu>> module;
    ch_flip_t<ch_ctrl_lsu_io_t> io;

    ch_seq<ch_bit1> rd_req_syn;
    ch_seq<ch_rd_request> rd_req_type;
    ch_blk_addr rd_req_addr;

    ch_seq<ch_bit1> wr_req_syn;
    ch_seq<ch_wr_request> wr_req_type;
    ch_blk_addr wr_req_addr;
    ch_block_t wr_req_data;

    ch_bit1 pbuf_dequeue;
  };

  pe_t pe_[PE_COUNT];

  lsu_t lsu_;

  ch_seq<ch_part_buf_t> part_buf_;
  ch_seq<ch_bit<LOG2_PARTITIONS_PER_BLOCK>> part_buf_size_;

  ch_seq<ch_ptr> part_blk_curr_;
  ch_seq<ch_ptr> part_blk_end_;
  ch_seq<ch_ptr> part_curr_;
  ch_ptr numparts_;

  ch_seq<ch_bit64> timer_;

  ch_seq<ch_hwcntrs_t> hwcntrs_;

  ch_seq<ch_bit1> done_;
};

}
}
