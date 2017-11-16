#include "math.h"
#include "cpu.h"

using namespace spmv;
using namespace spmv::host;

static int random_select(int vmin, int vmax, float skew) {
  float alpha((rand() * 1.0f) / RAND_MAX);
  return (int)std::ceil(vmin + (vmax - vmin) * alpha * skew);  
}

// poluate random values into vertex
static void init_vertex(vertex_t* vertex) {
  float sample[] = {0.0, 0.1, 0.2, 0.0, 0.4, 0.5, 0.0, 0.7, 0.8, 0.0, 1.0};  
  uint32_t size = vertex->size;
  float* const values = reinterpret_cast<float*>(vertex->values);
  uint32_t* const masks = vertex->masks;
  for (uint32_t i = 0; i < size; ++i) {
    float value = sample[ random_select(0, __countof(sample)-1, 1.0) ];
    values[i] = value;
    uint32_t ivalue = *(uint32_t*)&value;
    if (value != 0.0) {
      set_bitvector(masks, i);
    }
  }           
}

cpu_device::cpu_device(const char* mtx_file) 
  : m_shared_mem(nullptr) 
  , m_matrix(nullptr)
  , m_vertex(nullptr) {
  // initialiaze matrix file
  this->init(mtx_file);

  // dump stats
  ch_dumpStats(std::cout, m_accelerator);

  // dump verilog
  ch_toVerilog("spmv.v", m_accelerator);
}

cpu_device::~cpu_device() {
  // release allocated resources
  if (m_matrix)
    delete m_matrix;
  if (m_vertex)
    delete m_vertex;
  if (m_shared_mem)
    delete[] m_shared_mem;
  if (!m_qpi_read_requests.empty()) {
    std::cout << "CPU had " << m_qpi_read_requests.size() << " pending read requests" << std::endl;
    for (auto rq : m_qpi_read_requests) {
      delete rq;
    }
  }
  if (!m_qpi_read_requests.empty()) {
    std::cout << "CPU had " << m_qpi_write_requests.size() << " pending write requests" << std::endl;
    for (auto rq : m_qpi_write_requests) {
      delete rq;
    }
  }
}

void cpu_device::init(const char* mtx_file) {
  // allocate shared memory
  m_shared_mem = new byte_t[SHARE_MEM_SIZE];
  
  // create the matrix
  m_matrix = new mdcsc_t(mtx_file, mtx_format::Float, PARTITION_SIZE);
  
  // create the input vertex
  m_vertex = new vertex_t(m_matrix->cols, sizeof(float));
  init_vertex(m_vertex); 
    
  // copy data to shared memory and update context info with block offsets
  size_t offset = 0;
  offset = m_matrix->copy(m_shared_mem, offset, SHARE_MEM_SIZE, m_accelerator.io.ctx.a);
  offset = m_vertex->copy(m_shared_mem, offset, SHARE_MEM_SIZE, m_accelerator.io.ctx.x);
  offset = m_vertex->copy(nullptr, offset, SHARE_MEM_SIZE, m_accelerator.io.ctx.y);
  m_accelerator.io.ctx.hwcntrs = (offset / BLOCK_SIZE);
  offset += (1 + PE_COUNT) * BLOCK_SIZE;
  assert(offset <= SHARE_MEM_SIZE);
  
  /*printf("*** partitions=0x%x, a_xindices=0x%x, a_startys=0x%x, a_yindices=0x%x, a_values=0x%x, x_values=x0%x, x_masks=0x%x\n",
         (uint32_t)m_afu_ctx.a.partitions,
         (uint32_t)m_afu_ctx.a.xindices,
         (uint32_t)m_afu_ctx.a.ystarts,
         (uint32_t)m_afu_ctx.a.yindices,
         (uint32_t)m_afu_ctx.a.values,
         (uint32_t)m_afu_ctx.x.values,
         (uint32_t)m_afu_ctx.x.masks);*/
  
  // dump reference result
  //m_vertex->dump();
  //this->check_output(nullptr, nullptr, true);
}

void cpu_device::check_output(const float* values, const uint32_t* masks, bool debug) {
  float y_values[32];
  uint32_t y_mask;
  uint32_t y0;
  
  uint64_t errors = 0;
  
  for (int p = 0, numparts = m_matrix->numparts; p < numparts; ++p) {
    if (debug) 
      printf("begin partition: %d\n", p);
    
    // clear output buffer
    memset(y_values, 0, sizeof(y_values));
    y_mask = 0;
    
    // iterate thru all columns in current partition
    for (int col = m_matrix->partitions[p], 
         col_end = m_matrix->partitions[p+1]; col != col_end; ++col) {
      int a_x = m_matrix->xindices[col];      
      uint32_t x_mask = m_vertex->masks[a_x >> 5];
      if (x_mask & (1 << (a_x & 0x1f))) {
         float x_value = *(float*)&m_vertex->values[a_x * 4];
         
         // iterate thru all rows in current column
         for (int row = m_matrix->ystarts[col],
              row_end = m_matrix->ystarts[col+1]; row != row_end; ++row) {
           int a_y = m_matrix->yindices[row];
           float a_value = *(float*)&m_matrix->values[row * 4];
           // compute y += ax
           float y_value = a_value * x_value + y_values[a_y & 0x1f];
           y_values[a_y & 0x1f] = y_value;
           // compute output mask
           y_mask |= 1 << (a_y & 0x1f);
           y0 = a_y & ~0x1f;
           
           // dump output
           if (debug) {
             printf("col=0x%x, row=0x%x, a_x=x0%x, a_y=0x%x, x_mask=0x%x, x_val=%.2f, a_val=%.2f, y_val=%.2f, y_mask=0x%x\n", 
                  col, row, a_x, a_y, x_mask, x_value, a_value, y_value, y_mask);
           }
         }
      }
    }
    
    if (debug) {
      printf("end partition\n");
    }
    
    if (y_mask && values && masks) {
      uint32_t mask = masks[y0 >> 5];
      if (mask != y_mask) {
        printf("*** dirty mask mismatch in partition%d, : actual=0x%x, expected=0x%x\n", p, mask, y_mask);
        ++errors;
      } else {
        printf("OK: dirty mask mismatch in partition%d, : actual=0x%x\n", p, mask);
      }
      for (int i = 0; i < 32; ++i) {
        if (y_mask & (1 << i)) {
          float value = values[y0 + i];
          float value_ref = y_values[i];
          if (value != value_ref) {
            printf("*** value mismatch in partition%d, row=%d: actual=%f, expected=%f\n", p, i, value, value_ref);
            ++errors;
          } else {
            printf("Ok: partition%d, row=%d: actual=%f\n", p, i, value);
          }
        }
      }
    }    
  }
  
  if (values && masks) {
    if (errors) {
      printf("Result Validation FAILED! - %ld errors\n", errors);
    } else  {
      printf("Result Validation PASSED!\n");
    }
  }  
}

bool cpu_device::tick(ch_tick t) {
  // check done signal
  if (m_accelerator.io.done) {
    m_accelerator.io.start = false; // stop execution
    this->check_result(t);
    return false;
  }  
  
  // clear pulse signals
  this->clear_pulse_signals(t);
  
  // process read responses
  if (!m_qpi_read_requests.empty())
    this->process_rd_rsp(t);
  
  // process write responses
  if (!m_qpi_write_requests.empty())
    this->process_wr_rsp(t);
  
  // process read requests
  if (m_accelerator.io.qpi.rd_req.valid)
    this->process_rd_req(t);
  
  // process write requests
  if (m_accelerator.io.qpi.wr_req.valid)
    this->process_wr_req(t);
  
  // start execution
  if (4 == t) {
    m_accelerator.io.start = true;
  }
  
  return true;
}

void cpu_device::clear_pulse_signals(ch_tick t) {
  if (m_accelerator.io.qpi.rd_rsp.valid) {
    m_accelerator.io.qpi.rd_rsp.valid = false;
    m_accelerator.io.qpi.rd_rsp.data = 0;
    m_accelerator.io.qpi.rd_rsp.mdata = 0;
  }
    
  if (m_accelerator.io.qpi.wr_rsp0.valid) {
    m_accelerator.io.qpi.wr_rsp0.valid = false;
    m_accelerator.io.qpi.wr_rsp0.mdata = 0;
  }
  
  if (m_accelerator.io.qpi.wr_rsp1.valid) {
    m_accelerator.io.qpi.wr_rsp1.valid = false;
    m_accelerator.io.qpi.wr_rsp1.mdata = 0;
  }
}

void cpu_device::process_rd_req(ch_tick t) {
  assert(m_qpi_read_requests.size() < RQS_BUF_SIZE);
  // enqueue new request
  auto addr = (uint32_t)m_accelerator.io.qpi.rd_req.addr * BLOCK_SIZE;
  assert((addr + BLOCK_SIZE) <= SHARE_MEM_SIZE);
  request_t* rq = new request_t(addr, t, t + 2 * random_select(MIN_RX_RD_CYCLES, MAX_RX_RD_CYCLES, 1.0));
  m_accelerator.io.qpi.rd_req.mdata.read(0, &rq->mdata, sizeof(rq_mdata_t));
  m_qpi_read_requests.push_back(rq);
  if (m_qpi_read_requests.size()+RQS_BUF_FULL_DIST == RQS_BUF_SIZE) {
    m_accelerator.io.qpi.rd_req.almostfull = true;
  }
}

void cpu_device::process_rd_rsp(ch_tick t) {
  // process outstanding requests
  int free_tx_channels = 1;
  for (auto iter = m_qpi_read_requests.begin(), iterEnd = m_qpi_read_requests.end(); 
       iter != iterEnd;) {
    request_t* rq = *iter;
    if (rq->rx_time == t) {
      // perform the read operation
      memcpy(&rq->data, m_shared_mem + rq->addr, BLOCK_SIZE); 
      // schedule the response
      ch_tick tx_time = t + 2 * random_select(MIN_TX_RD_CYCLES, MAX_TX_RD_CYCLES, 1.0f-CACHE_HIT_RATE/100.0f);
      // Enforce AAL supports read response re-ordering
      for (request_t* rq2 : m_qpi_read_requests) {
        if (rq2->tx_time >= tx_time 
         && rq2->rq_time < rq->rq_time) {
          tx_time = rq2->tx_time + 1; // move commit time after this earlier request
        }
      }
      rq->tx_time = tx_time;
    } else 
    if (free_tx_channels 
     && rq->tx_time != 0
     && rq->tx_time <= t) {
      // commit the response
      m_accelerator.io.qpi.rd_rsp.data.write(0, &rq->data, sizeof(rq_data_t));
      m_accelerator.io.qpi.rd_rsp.mdata.write(0, &rq->mdata, sizeof(rq_mdata_t));
      m_accelerator.io.qpi.rd_rsp.valid = true;
      m_accelerator.io.qpi.rd_req.almostfull = false;
      // remove entry
      iter = m_qpi_read_requests.erase(iter);   
      delete rq;
      --free_tx_channels;
      continue;
    }
    ++iter;
  }
}

void cpu_device::process_wr_req(ch_tick t) {
  assert(m_qpi_write_requests.size() < RQS_BUF_SIZE);
  // enqueue new request
  auto addr = (uint32_t)m_accelerator.io.qpi.wr_req.addr * BLOCK_SIZE;
  assert((addr + BLOCK_SIZE) <= SHARE_MEM_SIZE);
  request_t* rq = new request_t(addr, t, t + 2 * random_select(MIN_TX_RW_CYCLES, MAX_TX_RW_CYCLES, 1.0));
  m_accelerator.io.qpi.wr_req.mdata.read(0, &rq->mdata, sizeof(rq_mdata_t));
  m_accelerator.io.qpi.wr_req.data.read(0, &rq->data, sizeof(rq_data_t));
  m_qpi_write_requests.push_back(rq);
  if (m_qpi_write_requests.size() + RQS_BUF_FULL_DIST == RQS_BUF_SIZE) {
    m_accelerator.io.qpi.wr_req.almostfull = true;
  }
}

void cpu_device::process_wr_rsp(ch_tick t) {
  // process outstanding requests
  int free_tx_channels = 2;
  for (auto iter = m_qpi_write_requests.begin(), iterEnd = m_qpi_write_requests.end(); 
       iter != iterEnd;) {
    request_t* rq = *iter;
    if (rq->rx_time == t) {
      // perform the write operation
      memcpy(m_shared_mem + rq->addr, &rq->data, BLOCK_SIZE); 
      // schedule the response
      rq->tx_time = t + 2 * random_select(MIN_TX_RW_CYCLES, MAX_TX_RW_CYCLES, 1.0f-CACHE_HIT_RATE/100.0f);
    } else
    if (free_tx_channels && rq->tx_time != 0 && rq->tx_time <= t) {
      // commit the response
      if (free_tx_channels == 2) {
        m_accelerator.io.qpi.wr_rsp0.mdata.write(0, &rq->mdata, sizeof(rq_mdata_t));
        m_accelerator.io.qpi.wr_rsp0.valid = true;
      } else {
        m_accelerator.io.qpi.wr_rsp1.mdata.write(0, &rq->mdata, sizeof(rq_mdata_t));
        m_accelerator.io.qpi.wr_rsp1.valid = true;
      }
      m_accelerator.io.qpi.wr_req.almostfull = false;
      // remove entry
      iter = m_qpi_write_requests.erase(iter);
      delete rq;
      --free_tx_channels;
      continue;
    }
    ++iter;
  }
}

void cpu_device::check_result(ch_tick t) {
  //--
  auto y_values_base = (uint32_t)m_accelerator.io.ctx.y.values;
  auto y_masks_base = (uint32_t)m_accelerator.io.ctx.y.masks;
  const float* values = reinterpret_cast<const float*>(m_shared_mem + y_values_base * BLOCK_SIZE);
  const uint32_t* masks = reinterpret_cast<const uint32_t*>(m_shared_mem + y_masks_base * BLOCK_SIZE);
  check_output(values, masks, false);
}

void cpu_device::dump_stats(ch_tick t) {  
  DbgPrint(0, "Simulation Summary Report:\n");
  DbgPrint(0, "total rum time = %ld ticks\n", t);

  auto hwcntrs_base = (uint32_t)m_accelerator.io.ctx.hwcntrs;

  {
    ch_scalar_t<ch_ctrl_hwcntrs_t> hwcntrs;

    // fetch hwcntrs from memory
    hwcntrs.asScalar().write(0, m_shared_mem + hwcntrs_base * BLOCK_SIZE, BLOCK_SIZE);

    // dump stats
    DbgPrint(0, "total partitions stalls = %d\n", (uint32_t)hwcntrs.a_partitions_stalls);
  }

  for (int i = 0; i < PE_COUNT; ++i) {
    ch_scalar_t<ch_pe_hwcntrs_t> hwcntrs;

    // fetch hwcntrs from memory
    hwcntrs.asScalar().write(0, m_shared_mem + (hwcntrs_base + 1 + i) * BLOCK_SIZE, BLOCK_SIZE);

    // dump stats
    DbgPrint(0, "PE%d total partitions executed = %d\n", i, (uint32_t)hwcntrs.num_partitions);
    DbgPrint(0, "PE%d average latency = %d ticks\n", i, __safediv((uint32_t)hwcntrs.total_latency, (uint32_t)hwcntrs.num_partitions));
    DbgPrint(0, "PE%d minimum latency = %d ticks\n", i, (uint32_t)hwcntrs.min_latency);
    DbgPrint(0, "PE%d maximum latency = %d ticks\n", i, (uint32_t)hwcntrs.max_latency);
    DbgPrint(0, "PE%d execution latency = %d ticks\n", i, (uint32_t)hwcntrs.execute_stalls);
    DbgPrint(0, "PE%d matrix xindices stalls = %d\n", i, (uint32_t)hwcntrs.a_xindices_stalls);
    DbgPrint(0, "PE%d matrix ystarts stalls = %d\n", i, (uint32_t)hwcntrs.a_startys_stalls);
    DbgPrint(0, "PE%d matrix values stalls = %d\n", i, (uint32_t)hwcntrs.a_values_stalls);
    DbgPrint(0, "PE%d vertex masks stalls = %d\n", i, (uint32_t)hwcntrs.x_masks_stalls);
    DbgPrint(0, "PE%d matrix write values stalls = %d\n", i, (uint32_t)hwcntrs.write_value_stalls);
    DbgPrint(0, "PE%d matrix write masks stalls = %d\n", i, (uint32_t)hwcntrs.write_mask_stalls);
  }
}
