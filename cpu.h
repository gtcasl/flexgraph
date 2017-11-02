#pragma once

#include "common.h"
#include "graph.h"
#include "spmv.h"

namespace spmv {
namespace host {

struct rq_data_t {
  rq_data_t() {
    for (int i = 0; i < sizeof(__m); ++i) {
      __m[i] = 0;
    }
  }
  byte_t __m[__div_ceil(aal::aal_qpi0::cdata_width, 8)];
};

struct rq_mdata_t {
  rq_mdata_t() {
    for (int i = 0; i < sizeof(__m); ++i) {
      __m[i] = 0;
    }
  }
  byte_t __m[__div_ceil(aal::aal_qpi0::mdata_width, 8)];
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
    SHARE_MEM_SIZE      = 0x80000000, // 2GB
    
    PARTITION_SIZE      = 32,
    
    CACHE_HIT_RATE      = 80, // 80%
    
    MIN_RX_RD_CYCLES    = 2,  // cache hit
    MIN_TX_RD_CYCLES    = 2,  // cache hit
    MAX_RX_RD_CYCLES    = 2,
    MAX_TX_RD_CYCLES    = 32,    
    MIN_RX_RW_CYCLES    = 2,  // cache hit
    MIN_TX_RW_CYCLES    = 2,  // cache hit
    MAX_RX_RW_CYCLES    = 2,
    MAX_TX_RW_CYCLES    = 32,
    
    RQS_BUF_SIZE        = 90,
    RQS_BUF_FULL_DIST   = 4,    
  };
  
  cpu_device(const char* mtx_file);  
  ~cpu_device();
  
  const auto& get_accelerator() const {
    return m_accelerator;
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
  
  void check_output(const float* values, const uint32_t* masks, bool debug);
  
  ch_module<accelerator::spmv_device> m_accelerator;

  std::list<request_t*> m_qpi_read_requests;
  std::list<request_t*> m_qpi_write_requests;
  
  mdcsc_t*  m_matrix;
  vertex_t* m_vertex;
  byte_t*   m_shared_mem;
  
  friend class simulator;
};

}
}
