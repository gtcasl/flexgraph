#pragma once

#include "common.h"
#include "graph.h"
#include "spmv.h"

namespace spmv {
namespace host {

template <typename T>
class accumulator {
public:

  accumulator(): count_(0) {}

  void update(const T& value) {
    if (0 == count_) {
      min_ = value;
      max_ = value;
      sum_ = value;
    } else {
      if (value < min_) {
        min_ = value;
      } else
      if (value > max_) {
        max_ = value;
      }
      sum_ += value;
    }
    ++count_;
  }

  const T& get_min() const {
    return min_;
  }

  const T& get_max() const {
    return max_;
  }

  const T& get_sum() const {
    return sum_;
  }

  uint64_t get_count() const {
    return count_;
  }

private:

  T min_;
  T max_;
  T sum_;
  uint64_t count_;
};

struct rq_data_t {
  rq_data_t() {
    for (unsigned i = 0; i < sizeof(__m); ++i) {
      __m[i] = 0;
    }
  }
  byte_t __m[__div_ceil(qpi::cdata_width, 8)];
};

struct rq_mdata_t {
  rq_mdata_t() {
    for (unsigned i = 0; i < sizeof(__m); ++i) {
      __m[i] = 0;
    }
  }
  byte_t __m[__div_ceil(qpi::mdata_width, 8)];
};

struct request_t {
  uint32_t   addr;
  ch_tick    rq_time;
  ch_tick    rx_time;
  ch_tick    tx_time;
  rq_data_t  data;
  rq_mdata_t mdata;

  request_t(uint32_t _addr, ch_tick _rq_time, ch_tick _rx_time)
    : addr(_addr)
    , rq_time(_rq_time)
    , rx_time(_rx_time)
    , tx_time(0)
  {}
};

class cpu_device {
public:  
  enum {
    CLOCK_RATE          = 200000000, // 200MHz

    SHARE_MEM_SIZE      = 0x80000000, // 2GB
    
    PARTITION_SIZE      = 32,
    
    CACHE_HIT_RATE      = 80, // 80%
    
    MIN_RD_RX_CYCLES    = 1,  // cache hit
    MAX_RD_RX_CYCLES    = 2,

    MIN_RD_TX_CYCLES    = 1,  // cache hit
    MAX_RD_TX_CYCLES    = 2,

    MIN_RW_RX_CYCLES    = 1,  // cache hit
    MAX_RW_RX_CYCLES    = 2,

    MIN_RW_TX_CYCLES    = 1,  // cache hit
    MAX_RW_TX_CYCLES    = 2,
    
    RQS_BUF_SIZE        = 90,
    RQS_BUF_FULL_DIST   = 4,    
  };
  
  cpu_device(const char* mtx_file);  
  ~cpu_device();
  
  const auto& get_accelerator() const {
    return accelerator_;
  }
  
  bool tick(ch_tick t);
  
  void dump_stats(ch_tick t);
    
private:
  
  void init(const char* mtx_file);
  
  void clear_pulse_signals(ch_tick t);
  
  void process_rd_req(ch_tick t);
  void process_wr_req(ch_tick t);
  
  void process_rd_rsp(ch_tick t);
  void process_wr_rsp(ch_tick t);
  
  void check_result(ch_tick t);
  
  void check_output(const float* values,
                    const uint32_t* masks,
                    bool debug);
  
  ch_device<accelerator::spmv_device> accelerator_;

  std::list<request_t*> qpi_read_requests_;
  std::list<request_t*> qpi_write_requests_;
  
  byte_t*   shared_mem_;

  mdcsc_t*  matrix_;
  vertex_t* vertex_;

  accumulator<ch_tick> qpi_rd_stats_;
  accumulator<ch_tick> qpi_wr_stats_;
  
  friend class simulator;
};

}
}
