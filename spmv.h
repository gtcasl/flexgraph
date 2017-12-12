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

using ch_part_buf = ch_bit<ch_width_v<ch_block> + PARTITION_VALUE_BITS>;

using ch_pbuf_t = ch_queue<ch_block, PBUF_SIZE>;

using ch_stats_addr = ch_bit<LOG2_HWCNTR_ADDR_SIZE>;

class spmv_device : public spmv_aal_device {
public:
  spmv_device();
  ~spmv_device();

  void describe() override;

protected:

  void main_thread();
  void dispatch_thread();

  ch_block get_stats(const ch_stats_addr& addr);

  std::array<ch_module<spmv_dcsc_walk>, PE_COUNT> walkers_;
  std::array<ch_module<spmv_pe>, PE_COUNT> PEs_;
  ch_module<spmv_lsu> lsu_;
  ch_module<ch_pbuf_t> pbuf_;

  ch_seq<ch_part_buf> part_buf_;
  ch_seq<ch_bit<LOG2_PARTITIONS_PER_BLOCK>> part_buf_size_;

  ch_seq<ch_bit32> pbuf_pending_size_;

  ch_seq<ch_ptr> part_blk_curr_;
  ch_seq<ch_ptr> part_blk_end_;
  ch_seq<ch_ptr> part_curr_;

  ch_seq<ch_stats_addr> stats_addr_;

  ch_seq<ch_ctrl_stats_t> stats_;

  ch_ptr num_parts_;
};

}
}
