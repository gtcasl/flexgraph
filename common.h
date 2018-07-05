#pragma once

#include <string.h>
#include <cash.h>
#include <htl/queue.h>
#include <htl/xbar.h>
#include <htl/arbiter.h>
#include <htl/counter.h>
#include <htl/pipe.h>
#include <htl/float32.h>
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

using qpi = aal::aal_qpi0;

using ch_block = ch_bit<qpi::cdata_width>;

using ch_blk_addr = ch_uint<qpi::addr_wdith>;

using ch_ptr = ch_uint<qpi::addr_wdith>;

inline constexpr unsigned FP_MULT_LATENCY = 3; // Aria 10
inline constexpr unsigned FP_ADD_LATENCY  = 3;

inline constexpr unsigned PE_COUNT       = 2;
inline constexpr unsigned LOG2_PE_COUNT  = log2ceil(PE_COUNT);

inline constexpr unsigned PTR_MAX_VALUE  = (1 << qpi::addr_wdith)-1;

inline constexpr unsigned PARTITION_SIZE = 32;
inline constexpr unsigned LOG2_PARTITION_SIZE = log2ceil(PARTITION_SIZE);

inline constexpr unsigned PARTITION_VALUE_BITS = 32;
inline constexpr unsigned PARTITIONS_PER_BLOCK = ch_width_v<ch_block> / PARTITION_VALUE_BITS;
inline constexpr unsigned LOG2_PARTITIONS_PER_BLOCK = log2ceil(PARTITIONS_PER_BLOCK+1);

inline constexpr unsigned CTRL_ID = (1 << PE_COUNT);


#define PE_ID(x) (1 << x)

extern int verbose;

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

__struct (ch_walker_stats_t, (
  (ch_uint32) num_parts,
  (ch_uint32) min_latency,
  (ch_uint32) max_latency,
  (ch_uint32) total_latency,
  (ch_uint32) a_colind_stalls,
  (ch_uint32) a_rowptr_stalls,
  (ch_uint32) a_rowind_stalls,
  (ch_uint32) a_values_stalls,
  (ch_uint32) x_values_stalls,
  (ch_uint32) x_masks_stalls,
  (ch_uint32) execute_stalls
));

__struct (ch_pe_stats_t, (
  (ch_uint32) write_value_stalls,
  (ch_uint32) write_mask_stalls
));

__struct (ch_cu_stats_t, (
  (ch_walker_stats_t) walker,
  (ch_pe_stats_t) pe
));

__struct (ch_ctrl_stats_t, (
  (ch_uint32) a_colptr_stalls,
  (ch_uint32) vcache_hits,
  (ch_uint32) vcache_stalls
));

__struct (ch_matrix_dcsc_t, (
  (ch_uint32) num_parts,
  (ch_uint<qpi::addr_wdith>) col_ptr,
  (ch_uint<qpi::addr_wdith>) col_ind,
  (ch_uint<qpi::addr_wdith>) row_ptr,
  (ch_uint<qpi::addr_wdith>) row_ind,
  (ch_uint<qpi::addr_wdith>) values
));

__struct (ch_vertex_t, (
  (ch_uint<qpi::addr_wdith>) values,
  (ch_uint<qpi::addr_wdith>) masks
));

using stats_addr_t = ch_uint<qpi::addr_wdith>;

__struct (spmv_ctx_t, (
  (ch_matrix_dcsc_t) a,
  (ch_vertex_t) x,
  (ch_vertex_t) y,
  (stats_addr_t) stats,
  (ch_bit<280>) __reserved__
));

using spmv_aal_device = aal::aal_device<spmv_ctx_t, qpi>;

__struct (ch_dcsc_part_t, (
  (ch_uint32) start,
  (ch_uint32) end
));

}
