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

  std::unique_ptr<ch_module<spmv_pe>> pe_[PE_COUNT];
  std::unique_ptr<ch_module<spmv_lsu>> lsu_;

  ch_seq<ch_part_buf_t> part_buf_;
  ch_seq<ch_bit<LOG2_PARTITIONS_PER_BLOCK>> part_buf_size_;

  ch_seq<ch_ptr> part_blk_curr_;
  ch_seq<ch_ptr> part_blk_end_;
  ch_seq<ch_ptr> part_curr_;
  ch_ptr numparts_;

  ch_seq<ch_hwcntrs_t> hwcntrs_;
};

}
}
