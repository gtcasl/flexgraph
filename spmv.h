#pragma once

#include "common.h"
#include "lsu.h"
#include "dcsc_walk.h"
#include "pe.h"

namespace spmv {
namespace accelerator {

enum {
  LOG2_PBUF_SIZE = 2,
  PBUF_SIZE = (1 << LOG2_PBUF_SIZE),

  LOG2_HWCNTR_ADDR_SIZE = log2ceil(PE_COUNT+1),
};

using ch_part_buf = ch_bit<ch_bitwidth_v<ch_block> + PARTITION_VALUE_BITS>;

using ch_pbuf_t = ch_queue<ch_block, PBUF_SIZE>;

using ch_hwcntr_addr = ch_bit<LOG2_HWCNTR_ADDR_SIZE>;

class spmv_device : public spmv_aal_device {
public:
  spmv_device();
  ~spmv_device();

  void describe() override;

protected:

  void main_thread();
  void dispatch_thread();

  ch_block get_hwnctrs(const ch_hwcntr_addr& addr);

  std::vector<ch_module<spmv_dcsc_walk>> walkers_;
  std::vector<ch_module<spmv_pe>> PEs_;
  ch_module<spmv_lsu> lsu_;
  ch_module<ch_pbuf_t> pbuf_;

  ch_seq<ch_part_buf> part_buf_;
  ch_seq<ch_bit<LOG2_PARTITIONS_PER_BLOCK>> part_buf_size_;

  ch_seq<ch_bit32> pbuf_pending_size_;

  ch_seq<ch_bit32> a_partitions_stalls_;

  ch_seq<ch_ptr> part_blk_curr_;
  ch_seq<ch_ptr> part_blk_end_;
  ch_seq<ch_ptr> part_curr_;

  ch_seq<ch_hwcntr_addr> hwcntrs_addr_;

  ch_ptr numparts_;
};

}
}
