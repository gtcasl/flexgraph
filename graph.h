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
  uint32_t  numparts;
  uint32_t  element_size;
  uint32_t* partitions;
  uint32_t* xindices;
  uint32_t* ystarts;
  uint32_t* yindices;  
  byte_t*   values;    
  
  mdcsc_t();
  mdcsc_t(
    uint32_t cols,
    uint32_t rows,
    uint32_t nnz,
    uint32_t nzx,
    uint32_t numparts,
    uint32_t element_size) {
    this->init(cols, rows, nnz, nnz, numparts, element_size);  
  }
  
  mdcsc_t(const char* mtx_file, mtx_format edge_type, uint32_t partition_size);
  ~mdcsc_t();
  
  
  void init(uint32_t cols,
            uint32_t rows,
            uint32_t nnz,
            uint32_t nzx,
            uint32_t numparts,
            uint32_t element_size);
  
  void allocate();
  
  size_t copy(byte_t* dest, size_t offset, size_t size, ch_scalar_t<ch_matrix_dcsc_t>& desc);
};

struct vertex_t {
  byte_t*   values;
  uint32_t* masks;
  uint32_t  size;
  uint32_t  element_size;
  
  vertex_t();
  vertex_t(uint32_t size, uint32_t element_size);
  ~vertex_t();
  
  size_t copy(byte_t* dest, size_t offset, size_t size, ch_scalar_t<ch_vertex_t>& desc);
  
  void dump();
};

}
