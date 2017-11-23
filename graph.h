#pragma once

#include "common.h"
#include "mtx.h"

namespace spmv {

struct mdcsc_t { 
public:
  uint32_t  cols;
  uint32_t  rows;
  uint32_t  nnz;
  uint32_t  nzx;
  uint32_t  num_parts;
  uint32_t  data_size;
  uint32_t* col_ptr;
  uint32_t* col_ind;
  uint32_t* row_ptr;
  uint32_t* row_ind;
  byte_t*   values;    
  
  mdcsc_t();
  mdcsc_t(
    uint32_t cols,
    uint32_t rows,
    uint32_t nnz,
    uint32_t nzx,
    uint32_t num_parts,
    uint32_t data_size) {
    this->init(cols, rows, nnz, nnz, num_parts, data_size);
  }
  
  mdcsc_t(const char* mtx_file, mtx_format edge_type, uint32_t part_size);
  ~mdcsc_t();
  
  
  void init(uint32_t cols,
            uint32_t rows,
            uint32_t nnz,
            uint32_t nzx,
            uint32_t num_parts,
            uint32_t data_size);
  
  void allocate();
  
  size_t copy(byte_t* dest,
              size_t offset,
              size_t size,
              ch_scalar_t<ch_matrix_dcsc_t>& desc);
};

struct vertex_t {
  byte_t*   values;
  uint32_t* masks;
  uint32_t  size;
  uint32_t  data_size;
  
  vertex_t();
  vertex_t(uint32_t size, uint32_t data_size);
  ~vertex_t();
  
  size_t copy(byte_t* dest,
              size_t offset,
              size_t size,
              ch_scalar_t<ch_vertex_t>& desc);
  
  void dump();
};

}
