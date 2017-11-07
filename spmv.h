#pragma once

#include "common.h"
#include "lsu.h"
#include "pe.h"

namespace spmv {
namespace accelerator {

enum {
  LOG2_PBUF_SIZE = 2,
  PBUF_SIZE = (1 << LOG2_PBUF_SIZE),
};

using ch_part_buf_t = ch_bit<ch_bitwidth_v<ch_block_t> + PARTITION_VALUE_BITS>;

using ch_pbuf_t = ch_queue<ch_block_t, PBUF_SIZE>;

class spmv_device : public spmv_aal_device {
public:
  spmv_device();
  ~spmv_device();

  void describe() override;

protected:

  void main_thread();
  void dispatch_thread();

  std::vector<ch_module<spmv_pe>> pe_;
  ch_module<spmv_lsu> lsu_;
  ch_module<ch_pbuf_t> pbuf_;

  ch_seq<ch_part_buf_t> part_buf_;
  ch_seq<ch_bit<LOG2_PARTITIONS_PER_BLOCK>> part_buf_size_;

  ch_seq<ch_bit32> pbuf_pending_size_;

  ch_seq<ch_bit<20>> a_partitions_stalls_;

  ch_seq<ch_ptr> part_blk_curr_;
  ch_seq<ch_ptr> part_blk_end_;
  ch_seq<ch_ptr> part_curr_;

  ch_ptr numparts_;
};

}
}
