#pragma once

#include <string.h>
#include <cash.h>
#include <../htl/queue.h>
#include <../htl/xbar.h>
#include <../htl/arbiter.h>
#include <../htl/counter.h>
#include "aal.h"

using namespace ch::core;
using namespace ch::literals;
using namespace ch::htl;
using namespace ch::sim;

#define LOG2_BLOCK_SIZE   6
#define BLOCK_SIZE        (1 << LOG2_BLOCK_SIZE)
#define BLOCK_SIZE_MASK   (BLOCK_SIZE-1)

#define __countof(a) (sizeof(a) / sizeof(a[0])) 

#define __safediv(a, b) ((b) != 0) ? ((a) / (b)) : 0 

#define __align(x, alignment) \
  (((x) + ((alignment)-1)) & ~((alignment)-1))

#define __div_ceil(x, y) (((x) + (y) - 1) / (y))
#define __div_rnd(x, y)  (((x) + ((y)/2)) / (y))

#define CHECK(x) if (!(x)) { assert(false); exit(1); }

namespace spmv {

using ch_block = ch_bit<aal::aal_qpi0::cdata_width>;

using ch_blk_addr = ch_bit<aal::aal_qpi0::addr_wdith>;

using ch_ptr = ch_bit<aal::aal_qpi0::addr_wdith>;

enum {
  PE_COUNT       = 2,
  LOG2_PE_COUNT  = log2ceil(PE_COUNT),
  RQ_OWNER_BITS  = log2ceil(PE_COUNT+1),

  PTR_MAX_VALUE  = (1 << aal::aal_qpi0::addr_wdith)-1,

  PARTITION_SIZE = 32,
  LOG2_PARTITION_SIZE = 5,

  PARTITION_VALUE_BITS = 32,
  PARTITIONS_PER_BLOCK = ch_bitwidth_v<ch_block> / PARTITION_VALUE_BITS,
  LOG2_PARTITIONS_PER_BLOCK = log2ceil(PARTITIONS_PER_BLOCK+1),

  CTRL_ID = (1 << PE_COUNT),
};

#define PE_ID(x) (1 << x)

extern bool g_singlecore; 

using byte_t = uint8_t;

void DbgPrint(int level, const char *format, ...);

inline void set_bitvector(uint32_t* bitvec, uint32_t idx) {
  uint32_t block = idx >> 5;
  uint32_t bit   = idx & 31;
  uint32_t value = bitvec[block];
  if ((value & (1 << bit)) == 0) {
    bitvec[block] = value | (1 << bit);
  }
}

inline void clear_bitvector(uint32_t* bitvec, uint32_t idx) {
  uint32_t block = idx >> 5;
  uint32_t bit   = idx & 31;
  uint32_t value = bitvec[block];
  if ((value & (1 << bit)) != 0) {
    bitvec[block] = value & ~(1 << bit);
  }
}

inline bool test_bitvector(const uint32_t* bitvec, uint32_t idx) {
  uint32_t block = idx >> 5;
  uint32_t bit   = idx & 31;
  uint32_t value = bitvec[block];
  return value & (1 << bit);
}

__struct (ch_pe_hwcntrs_t, (
  (ch_bit<32>) num_partitions,
  (ch_bit<32>) min_latency,
  (ch_bit<32>) max_latency,
  (ch_bit<32>) total_latency,
  (ch_bit<32>) execute_latency,
  (ch_bit<32>) a_xindices_stalls,
  (ch_bit<32>) x_masks_stalls,
  (ch_bit<32>) a_startys_stalls,
  (ch_bit<32>) a_values_stalls
));

__struct (ch_ctrl_hwcntrs_t, (
  (ch_bit<32>) a_partitions_stalls,
  (ch_bit<32>) vcache_hits,
  (ch_bit<32>) vcache_stalls
));

__inout (ch_matrix_dcsc_t, (
  __in(ch_bit32) numparts,
  __in(ch_bit<aal::aal_qpi0::addr_wdith>) partitions,
  __in(ch_bit<aal::aal_qpi0::addr_wdith>) xindices,
  __in(ch_bit<aal::aal_qpi0::addr_wdith>) ystarts,
  __in(ch_bit<aal::aal_qpi0::addr_wdith>) yindices,
  __in(ch_bit<aal::aal_qpi0::addr_wdith>) values
));

__inout (ch_vertex_t, (
  __in(ch_bit<aal::aal_qpi0::addr_wdith>) values,
  __in(ch_bit<aal::aal_qpi0::addr_wdith>) masks
));

using hwcntrs_addr_t = ch_bit<aal::aal_qpi0::addr_wdith>;

__inout (ch_ctx_io, (
  (ch_matrix_dcsc_t) a,
  (ch_vertex_t) x,
  (ch_vertex_t) y,
  __in(hwcntrs_addr_t) hwcntrs,
  __in(ch_bit<280>) __reserved__
));

using spmv_aal_device = aal::aal_device0<ch_ctx_io>;

__struct (ch_dcsc_part_t, (
  (ch_bit32) start,
  (ch_bit32) end
));

}
