#include "math.h"
#include "cpu.h"

using namespace spmv;
using namespace spmv::host;

static int random_select(int vmin, int vmax, float weight) {
  auto alpha = rand() * weight / RAND_MAX;
  return (int)std::round(vmin + (vmax - vmin) * alpha);
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
  : shared_mem_(nullptr)
  , matrix_(nullptr)
  , vertex_(nullptr) {
  // initialiaze matrix file
  this->init(mtx_file);

  // dump stats
  ch_dumpStats(std::cout, accelerator_);

  // dump verilog
  ch_toVerilog("flexgraph.v", accelerator_);
}

cpu_device::~cpu_device() {
  // release allocated resources
  if (matrix_)
    delete matrix_;
  if (vertex_)
    delete vertex_;
  if (shared_mem_)
    delete[] shared_mem_;
  if (!qpi_read_requests_.empty()) {
    std::cout << "CPU had " << qpi_read_requests_.size() << " pending read requests" << std::endl;
    for (auto rq : qpi_read_requests_) {
      delete rq;
    }
  }
  if (!qpi_read_requests_.empty()) {
    std::cout << "CPU had " << qpi_write_requests_.size() << " pending write requests" << std::endl;
    for (auto rq : qpi_write_requests_) {
      delete rq;
    }
  }
}

void cpu_device::init(const char* mtx_file) {
  // allocate shared memory
  shared_mem_ = new byte_t[SHARE_MEM_SIZE];
  assert(shared_mem_);
  
  // create the matrix
  matrix_ = new mdcsc_t(mtx_file, mtx_format::Float, PARTITION_SIZE);
  assert(matrix_);
  
  // create the input vertex
  vertex_ = new vertex_t(matrix_->cols, sizeof(float));
  assert(vertex_);

  init_vertex(vertex_);
    
  // copy data to shared memory and update context info with block offsets
  size_t offset = 0;
  offset = matrix_->copy(shared_mem_, offset, SHARE_MEM_SIZE, accelerator_.io.ctx.a);
  offset = vertex_->copy(shared_mem_, offset, SHARE_MEM_SIZE, accelerator_.io.ctx.x);
  offset = vertex_->copy(nullptr, offset, SHARE_MEM_SIZE, accelerator_.io.ctx.y);
  accelerator_.io.ctx.stats = (offset / BLOCK_SIZE);
  offset += (1 + PE_COUNT) * BLOCK_SIZE;
  assert(offset <= SHARE_MEM_SIZE);
  
  /*printf("*** a_colptr=0x%x, a_colind=0x%x, a_rowptr=0x%x, a_rowind=0x%x, a_values=0x%x, x_values=x0%x, x_masks=0x%x\n",
         (uint32_t)m_afu_ctx.a.col_ptr,
         (uint32_t)m_afu_ctx.a.col_ind,
         (uint32_t)m_afu_ctx.a.row_ptr,
         (uint32_t)m_afu_ctx.a.row_ind,
         (uint32_t)m_afu_ctx.a.values,
         (uint32_t)m_afu_ctx.x.values,
         (uint32_t)m_afu_ctx.x.masks);*/
  
  // dump reference result
  //m_vertex->dump();
  //this->check_output(nullptr, nullptr, true);
}

void cpu_device::check_output(const float* values,
                              const uint32_t* masks,
                              bool debug) {
  float y_values[32];
  int   y_rowind[32];
  uint32_t y_mask;
  uint32_t y0;
  
  uint64_t errors = 0;
  
  for (int p = 0, num_parts = matrix_->num_parts; p < num_parts; ++p) {
    if (debug) 
      printf("begin partition: %d\n", p);
    
    // clear output buffer
    memset(y_values, 0, sizeof(y_values));
    y_mask = 0;
    
    // iterate thru all columns in current partition
    for (int col = matrix_->col_ptr[p],
         col_end = matrix_->col_ptr[p+1]; col != col_end; ++col) {
      int col_idx = matrix_->col_ind[col];
      uint32_t x_mask = vertex_->masks[col_idx >> 5];
      if (x_mask & (1 << (col_idx & 0x1f))) {
         float x_value = *(float*)&vertex_->values[col_idx * 4];
         
         // iterate thru all rows in current column
         for (int row = matrix_->row_ptr[col],
              row_end = matrix_->row_ptr[col+1]; row != row_end; ++row) {
           int row_idx = matrix_->row_ind[row];
           float a_value = *(float*)&matrix_->values[row * 4];
           // compute y += ax
           float y_value = a_value * x_value + y_values[row_idx & 0x1f];
           y_values[row_idx & 0x1f] = y_value;
           y_rowind[row_idx & 0x1f] = row_idx;
           // compute output mask
           y_mask |= 1 << (row_idx & 0x1f);
           y0 = row_idx & ~0x1f;
           
           // dump output
           if (debug) {
             printf("col=0x%x, row=0x%x, a_x=x0%x, a_y=0x%x, a_val=%.2f, x_mask=0x%x, x_val=%.2f, y_val=%.2f, y_mask=0x%x\n",
                  col, row, col_idx, row_idx, a_value, x_mask, x_value, y_value, y_mask);
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
        if (debug) {
          printf("OK: dirty mask mismatch in partition%d, : actual=0x%x\n", p, mask);
        }
      }
      for (int i = 0; i < 32; ++i) {
        if (y_mask & (1 << i)) {
          float value = values[y0 + i];
          float value_ref = y_values[i];
          if (value != value_ref) {
            printf("*** value mismatch in partition%d, row=%d: row_idx=%d, actual=%f, expected=%f\n", p, i, y_rowind[i], value, value_ref);
            ++errors;
          } else {
            if (debug) {
              printf("Ok: partition%d, row=%d: actual=%f\n", p, i, value);
            }
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
  if (accelerator_.io.done) {
    accelerator_.io.start = false; // stop execution
    this->check_result(t);
    return false;
  }  
  
  // clear pulse signals
  this->clear_pulse_signals(t);
  
  // process read responses
  if (!qpi_read_requests_.empty())
    this->process_rd_rsp(t);
  
  // process write responses
  if (!qpi_write_requests_.empty())
    this->process_wr_rsp(t);
  
  // process read requests
  if (accelerator_.io.qpi.rd_req.valid)
    this->process_rd_req(t);
  
  // process write requests
  if (accelerator_.io.qpi.wr_req.valid)
    this->process_wr_req(t);
  
  // start execution
  if (4 == t) {
    accelerator_.io.start = true;
  }
  
  return true;
}

void cpu_device::clear_pulse_signals(ch_tick t) {
  if (accelerator_.io.qpi.rd_rsp.valid) {
    accelerator_.io.qpi.rd_rsp.valid = false;
    accelerator_.io.qpi.rd_rsp.data  = 0;
    accelerator_.io.qpi.rd_rsp.mdata = 0;
  }
    
  if (accelerator_.io.qpi.wr_rsp0.valid) {
    accelerator_.io.qpi.wr_rsp0.valid = false;
    accelerator_.io.qpi.wr_rsp0.mdata = 0;
  }
  
  if (accelerator_.io.qpi.wr_rsp1.valid) {
    accelerator_.io.qpi.wr_rsp1.valid = false;
    accelerator_.io.qpi.wr_rsp1.mdata = 0;
  }
}

void cpu_device::process_rd_req(ch_tick t) {
  assert(qpi_read_requests_.size() < RQS_BUF_SIZE);
  // enqueue new request
  auto addr = (uint32_t)accelerator_.io.qpi.rd_req.addr * BLOCK_SIZE;
  assert((addr + BLOCK_SIZE) <= SHARE_MEM_SIZE);
  auto latency = 2 * random_select(MIN_RD_RX_CYCLES, MAX_RD_RX_CYCLES, 1.0f);
  request_t* rq = new request_t(addr, t, t + latency);
  accelerator_.io.qpi.rd_req.mdata.read(0, &rq->mdata, sizeof(rq_mdata_t));
  qpi_read_requests_.push_back(rq);
  if (qpi_read_requests_.size()+RQS_BUF_FULL_DIST == RQS_BUF_SIZE) {
    accelerator_.io.qpi.rd_req.almostfull = true;
  }
}

void cpu_device::process_rd_rsp(ch_tick t) {
  // process outstanding requests
  int free_tx_channels = 1;
  for (auto iter = qpi_read_requests_.begin(), iterEnd = qpi_read_requests_.end();
       iter != iterEnd;) {
    request_t* rq = *iter;
    if (rq->rx_time == t) {
      // perform the read operation
      memcpy(&rq->data, shared_mem_ + rq->addr, BLOCK_SIZE);
      // schedule the response
      auto latency = 2 * random_select(MIN_RD_TX_CYCLES, MAX_RD_TX_CYCLES, CACHE_HIT_RATE/100.0f);
      ch_tick tx_time = t + latency;
      // Enforce AAL supports read response re-ordering
      for (request_t* rq2 : qpi_read_requests_) {
        if (rq2->tx_time >= tx_time 
         && rq2->rq_time < rq->rq_time) {
          tx_time = rq2->tx_time + 1; // move commit time after this earlier request
        }
      }
      rq->tx_time = tx_time;
      qpi_rd_stats_.update(rq->tx_time - rq->rq_time);
    } else 
    if (free_tx_channels 
     && rq->tx_time != 0
     && rq->tx_time <= t) {
      // commit the response
      accelerator_.io.qpi.rd_rsp.data.write(0, &rq->data, sizeof(rq_data_t));
      accelerator_.io.qpi.rd_rsp.mdata.write(0, &rq->mdata, sizeof(rq_mdata_t));
      accelerator_.io.qpi.rd_rsp.valid = true;
      accelerator_.io.qpi.rd_req.almostfull = false;
      // remove entry
      iter = qpi_read_requests_.erase(iter);
      delete rq;
      --free_tx_channels;
      continue;
    }
    ++iter;
  }
}

void cpu_device::process_wr_req(ch_tick t) {
  assert(qpi_write_requests_.size() < RQS_BUF_SIZE);
  // enqueue new request
  auto addr = (uint32_t)accelerator_.io.qpi.wr_req.addr * BLOCK_SIZE;
  assert((addr + BLOCK_SIZE) <= SHARE_MEM_SIZE);
  auto latency = 2 * random_select(MIN_RW_TX_CYCLES, MAX_RW_TX_CYCLES, 1.0);
  request_t* rq = new request_t(addr, t, t + latency);
  accelerator_.io.qpi.wr_req.mdata.read(0, &rq->mdata, sizeof(rq_mdata_t));
  accelerator_.io.qpi.wr_req.data.read(0, &rq->data, sizeof(rq_data_t));
  qpi_write_requests_.push_back(rq);
  if (qpi_write_requests_.size() + RQS_BUF_FULL_DIST == RQS_BUF_SIZE) {
    accelerator_.io.qpi.wr_req.almostfull = true;
  }
}

void cpu_device::process_wr_rsp(ch_tick t) {
  // process outstanding requests
  int free_tx_channels = 2;
  for (auto iter = qpi_write_requests_.begin(), iterEnd = qpi_write_requests_.end();
       iter != iterEnd;) {
    request_t* rq = *iter;
    if (rq->rx_time == t) {
      // perform the write operation
      memcpy(shared_mem_ + rq->addr, &rq->data, BLOCK_SIZE);
      // schedule the response
      auto latency = 2 * random_select(MIN_RW_TX_CYCLES, MAX_RW_TX_CYCLES, 1.0f-CACHE_HIT_RATE/100.0f);
      rq->tx_time = t + latency;
      qpi_wr_stats_.update(rq->tx_time - rq->rq_time);
    } else
    if (free_tx_channels && rq->tx_time != 0 && rq->tx_time <= t) {
      // commit the response
      if (free_tx_channels == 2) {
        accelerator_.io.qpi.wr_rsp0.mdata.write(0, &rq->mdata, sizeof(rq_mdata_t));
        accelerator_.io.qpi.wr_rsp0.valid = true;
      } else {
        accelerator_.io.qpi.wr_rsp1.mdata.write(0, &rq->mdata, sizeof(rq_mdata_t));
        accelerator_.io.qpi.wr_rsp1.valid = true;
      }
      accelerator_.io.qpi.wr_req.almostfull = false;
      // remove entry
      iter = qpi_write_requests_.erase(iter);
      delete rq;
      --free_tx_channels;
      continue;
    }
    ++iter;
  }
}

void cpu_device::check_result(ch_tick t) {
  //--
  auto y_values_base = (uint32_t)accelerator_.io.ctx.y.values;
  auto y_masks_base = (uint32_t)accelerator_.io.ctx.y.masks;
  const float* values = reinterpret_cast<const float*>(shared_mem_ + y_values_base * BLOCK_SIZE);
  const uint32_t* masks = reinterpret_cast<const uint32_t*>(shared_mem_ + y_masks_base * BLOCK_SIZE);
  check_output(values, masks, false);
}

void cpu_device::dump_stats(ch_tick t) {  
  //--
  auto avg_rd_latency = qpi_rd_stats_.get_sum() / qpi_rd_stats_.get_count();
  auto avg_wr_latency = qpi_wr_stats_.get_sum() / qpi_wr_stats_.get_count();

  DbgPrint(0, "Simulation Summary Report:\n");
  DbgPrint(0, "Total exection time = %ld cycles\n", (t/2));
  DbgPrint(0, "Average throughput = %f Gflops\n", (2.0f * matrix_->nnz * 1e-9 * CLOCK_RATE) / (t/2));
  DbgPrint(0, "QPI read latency: min=%ld, max=%ld, avg=%ld cycles\n",
           qpi_rd_stats_.get_min()/2, qpi_rd_stats_.get_max()/2, avg_rd_latency/2);
  DbgPrint(0, "QPI write latency: min=%ld, max=%ld, avg=%ld cycles\n",
           qpi_wr_stats_.get_min()/2, qpi_wr_stats_.get_max()/2, avg_wr_latency/2);
  DbgPrint(0, "QPI read bandwidth: %f GB/s\n", 1e-9 * (64.0f * CLOCK_RATE) / (avg_rd_latency/2));

  //--
  auto stats_base = (uint32_t)accelerator_.io.ctx.stats;

  {
    ch_scalar_t<ch_ctrl_stats_t> stats;

    //--
    stats.asScalar().write(0, shared_mem_ + stats_base * BLOCK_SIZE, BLOCK_SIZE);

    //--
    DbgPrint(0, "total colptr stalls = %d\n", (uint32_t)stats.a_colptr_stalls);
  }

  for (int i = 0; i < PE_COUNT; ++i) {
    ch_scalar_t<ch_stats_t> stats;

    //--
    stats.asScalar().write(0, shared_mem_ + (stats_base + 1 + i) * BLOCK_SIZE, BLOCK_SIZE);

    //--
    auto avg_stats = [&](const ch_scalar<32>& stat) {
      int n = (int)stats.walker.num_parts;
      if (0 == n)
        return 0;
      return __div_ceil((int)stat, n);
    };

    //--
    DbgPrint(0, "PE%d total partitions executed = %d\n", i, (uint32_t)stats.walker.num_parts);
    DbgPrint(0, "PE%d minimum latency = %d cycles\n", i, (uint32_t)stats.walker.min_latency);
    DbgPrint(0, "PE%d maximum latency = %d cycles\n", i, (uint32_t)stats.walker.max_latency);
    DbgPrint(0, "PE%d average latency = %d cycles\n", i, avg_stats(stats.walker.total_latency));
    DbgPrint(0, "PE%d matrix col_ind stalls = %d\n", i, avg_stats(stats.walker.a_colind_stalls));
    DbgPrint(0, "PE%d matrix row_ptr stalls = %d\n", i, avg_stats(stats.walker.a_rowptr_stalls));
    DbgPrint(0, "PE%d matrix row_ind stalls = %d\n", i, avg_stats(stats.walker.a_rowind_stalls));
    DbgPrint(0, "PE%d matrix values stalls = %d\n", i, avg_stats(stats.walker.a_values_stalls));
    DbgPrint(0, "PE%d vertex values stalls = %d\n", i, avg_stats(stats.walker.x_values_stalls));
    DbgPrint(0, "PE%d vertex masks stalls = %d\n", i, avg_stats(stats.walker.x_masks_stalls));
    DbgPrint(0, "PE%d execute stalls = %d\n", i, avg_stats(stats.walker.execute_stalls));
    DbgPrint(0, "PE%d matrix write values stalls = %d\n", i, avg_stats(stats.pe.write_value_stalls));
    DbgPrint(0, "PE%d matrix write masks stalls = %d\n", i, avg_stats(stats.pe.write_mask_stalls));
  }
}
