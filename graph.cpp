#include "graph.h"

using namespace spmv;

struct __attribute__((aligned(16))) edge_t {
  uint32_t src;
  uint32_t dst;
  uint32_t vid;
  uint32_t pid;
};

// sort by partition (pid), then cols (dst), then rows (src)
static bool compare_edges_dcsc(const edge_t& a, const edge_t& b) {
  if (a.pid < b.pid)
    return true;
  else if (a.pid > b.pid)
    return false;
  if (a.dst < b.dst)
    return true;
  else if (a.dst > b.dst)
    return false;
  if (a.src < b.src)
    return true;
  else if (a.src > b.src)
    return false;
  return false;
}

static uint32_t static_partition(uint32_t *partitions, uint32_t num_elements, uint32_t num_partitions, uint32_t alignment) {
  partitions[0] = 0;
  uint32_t p = 1;
  uint32_t nnz = 1;
  uint32_t aligned_size = __div_ceil(num_elements, alignment) * alignment;
  uint32_t partition_size = __div_ceil(aligned_size, num_partitions);
  partition_size = __div_ceil(partition_size, alignment) * alignment;
  for (uint32_t n = partition_size; n < aligned_size; n += partition_size) {
    partitions[p++] = n;
    ++nnz;
  }
  do {
    partitions[p++] = aligned_size;
  } while (p <= num_partitions);
  return nnz;
}

static void set_edge_pointers(uint32_t *edge_pointers,
                              const uint32_t *row_pointers,
                              uint32_t num_partitions,
                              const edge_t* edges,
                              uint32_t nnz) {
#ifdef SET_EDGE_POINTERS_BINARY_SEARCH
#pragma omp parallel for num_threads(nthreads)
  for (uint32_t p = 0; p < num_partitions; ++p) {
    // binary search
    uint32_t e1 = 0;
    uint32_t e2 = nnz;
    uint32_t eh;
    while (e2 >= e1) {
      eh = e2 - (e2 - e1) / 2;
      if (eh == 0) {
        break;
      }
      if ((edges[eh - 1].src < row_pointers[p]) &&
          edges[eh].src >= row_pointers[p]) {
        break;
      } else if (edges[eh].src >= row_pointers[p]) {
        e2 = eh - 1;
      } else {
        e1 = eh + 1;
      }
    }
    edge_pointers[p] = eh;
  }
  edge_pointers[num_partitions] = nnz;
#ifdef CHECK_EDGE_POINTERS
  uint32_t p = 0;
  for (uint32_t i = 0; i < nnz; ++i) {
    while (edges[i].src >= row_pointers[p]) {
      assert(edge_pointers[p] == i);
      ++p;
    }
  }
  assert(edge_pointers[p] == nnz);
  for (p = p + 1; p < num_partitions + 1; ++p) {
    assert(edge_pointers[p] == nnz);
  }
#endif
#else
  uint32_t p = 0;
  for (uint32_t i = 0; i < nnz; ++i) {
    while (edges[i].src >= row_pointers[p]) {
      edge_pointers[p] = i;
      ++p;
    }
  }
  edge_pointers[p] = nnz;
  for (p = p + 1; p < num_partitions + 1; ++p) {
    edge_pointers[p] = nnz;
  }
#endif
}

static void build(mdcsc_t* matrix,
                  const uint32_t* edge_pointers,
                  uint32_t num_partitions,
                  const mtx_header_t& header,
                  const edge_t* edges,
                  const byte_t* weights) {
  //--
  uint32_t element_size = mxt_format_size(header.fmt);

  //
  // compute non-zero partitions and max nzx
  //

  uint32_t nnz_partitions = 0;
  uint32_t total_nnz = 0;
  uint32_t total_nzx = 0;
  uint32_t total_nzy = 0;

  for (uint32_t p = 0; p < num_partitions; ++p) {
    uint32_t edge_start = edge_pointers[p];
    uint32_t edge_end = edge_pointers[p + 1];
    uint32_t nnz_part = edge_end - edge_start;
    if (nnz_part > 0) {
      uint32_t nzx_part = 0;
      uint32_t nzy_part = 0;
      for (uint32_t i = edge_start, col = -1; i < edge_end; ++i) {
        if (col == -1 || edges[i].dst > col) {          
          col = edges[i].dst;          
          ++nzx_part;
        }
        ++nzy_part;
      }
      total_nnz += nnz_part;
      total_nzx += nzx_part;
      total_nzy += __div_rnd(nzy_part, nzx_part);
      ++nnz_partitions;
    }
  }

#ifndef NDEBUG
  std::cout << "Tiled matrix description: " << header.rows << " rows, " << num_partitions << " partitions (" << nnz_partitions << " non-empty)" << std::endl;
  std::cout << "Average nnz entries per partition: " << __div_rnd(total_nnz, nnz_partitions) << "." << std::endl;
  std::cout << "Average nzx entries per partition: " << __div_rnd(total_nzx, nnz_partitions) << "." << std::endl;
  std::cout << "Average nzy entries per partition: " << __div_rnd(total_nzy, nnz_partitions) << "." << std::endl;
#endif
  
  matrix->init(header.cols, header.rows, header.nnz, total_nzx, num_partitions, element_size);
  
  uint32_t* const partitions= matrix->partitions;
  uint32_t* const x_indices = matrix->xindices;
  uint32_t* const y_starts  = matrix->ystarts;
  uint32_t* const y_indices = matrix->yindices;
  byte_t*   const values    = matrix->values;

  partitions[0] = 0;
  uint32_t q = 1;
  uint32_t col_idx = 0;

  for (uint32_t p = 1; p <= num_partitions; ++p) {
    uint32_t edge_start = edge_pointers[p-1];
    uint32_t edge_end = edge_pointers[p];
    uint32_t nnz_part = edge_end - edge_start;
    if (nnz_part > 0) {
      uint32_t col = -1;
      for (uint32_t i = edge_start; i < edge_end; ++i) {
        if (col == -1 || col < edges[i].dst) {
          col = edges[i].dst;
          x_indices[col_idx] = col;
          y_starts[col_idx] = i;
          ++col_idx;
        }        
        y_indices[i] = edges[i].src;
        if (weights) {
          memcpy(values + i * element_size,
                 weights + edges[i].vid * element_size,
                 element_size);
        } else {
          mtx_format_cast(values + i * element_size, header.fmt, 1);
        }
      }
      partitions[q++] = col_idx;
      x_indices[col_idx] = col + 1;
      y_starts[col_idx] = edge_end;
    }
  }

  while (q <= num_partitions) {
    partitions[q++] = col_idx;
  }  
}

static void load_mtx(mdcsc_t* matrix,
                     const mtx_header_t& header,
                     const mtx_edge_t* mtx_edges,
                     const byte_t* weights,
                     uint32_t partition_size) {
#ifdef __DTIMING
  struct timeval start, end;
  gettimeofday(&start, 0);
#endif

  edge_t* const edges = new edge_t[header.nnz];
  for (uint32_t i = 0; i < header.nnz; ++i) {
    edges[i].src = mtx_edges[i].src;
    edges[i].dst = mtx_edges[i].dst;
    edges[i].vid = i;
  }

  uint32_t num_partitions = __div_ceil(header.rows, partition_size);  
  uint32_t* row_pointers  = new uint32_t[num_partitions + 1];
  uint32_t* edge_pointers = new uint32_t[num_partitions + 1];

  //
  // do rows partitioning
  // generate table containing a max row index for each partition
  //
  uint32_t nnz_parts = static_partition(row_pointers, header.rows, num_partitions, partition_size);
#ifndef NDEBUG
  std::cout << "Partitioned " << header.rows << " matrix rows into " << num_partitions << " chunks (" << nnz_parts << " non-empty)" << std::endl;
#endif

#ifdef __DTIMING
  struct timeval start, end;
  std::cout << "Starting setting partition ids" << std::endl;
  gettimeofday(&start, nullptr);
#endif

  //
  // Assign partition id to each edge
  // based on the src value being within a partition rows range
  //
#pragma omp parallel for num_threads(nthreads)
  for (uint32_t i = 0; i < header.nnz; ++i) {
#ifdef SET_PARTITION_IDS_BINARY_SEARCH
    uint32_t key = edges[i].src;
    uint32_t min_p = 0;
    uint32_t max_p = num_partitions - 1;
    uint32_t h_p;
    while (max_p >= min_p) {
      h_p = max_p - ((max_p - min_p) / 2);
      if (key >= row_pointers[h_p] && key < row_pointers[h_p + 1]) {
        break;
      } else if (key >= row_pointers[h_p]) {
        min_p = h_p + 1;
      } else {
        max_p = h_p - 1;
      }
    }
    edges[i].pid = h_p;
#ifdef CHECK_PARTITION_IDS
    for (uint32_t p = 0; p < num_partitions; ++p) {
      if (edges[i].src >= row_pointers[p] &&
          edges[i].src < row_pointers[p + 1]) {
        assert(edges[i].pid == p);
      }
    }
#endif
#else
    for (uint32_t p = 0; p < num_partitions; ++p) {
      if (edges[i].src >= row_pointers[p] &&
          edges[i].src < row_pointers[p + 1]) {
        edges[i].pid = p;
      }
    }
#endif
  }

#ifdef __DTIMING
  gettimeofday(&end, nullptr);
  std::cout << "Finished setting partition ids, time: " << elapsed_time(start, end) << " ms" << std::endl;
#endif

  //
  // Sort edge list using the partition id first, then cols, then rows
  //
#ifdef __DTIMING
  std::cout << "Starting sorting edges" << std::endl;
  gettimeofday(&start, nullptr);
#endif

  std::sort(edges, edges + header.nnz, compare_edges_dcsc);

#ifdef __DTIMING
  gettimeofday(&end, nullptr);
  std::cout << "Finished sorting edges, time: " << elapsed_time(start, end) << " ms" << std::endl;
#endif

  //
  // build a table to track the starting edge index for each partition
  //
#ifdef __DTIMING
  std::cout << "Starting edge pointers setting" << std::endl;
  gettimeofday(&start, nullptr);
#endif

  set_edge_pointers(edge_pointers, row_pointers, num_partitions, edges, header.nnz);

#ifdef __DTIMING
  gettimeofday(&end, nullptr);
  std::cout << "Finished setting edge pointers, time: " << elapsed_time(start, end) << " ms" << std::endl;
#endif

  //
  // build the matrix
  //
#ifdef __DTIMING
  std::cout << "Starting build_dcsc" << std::endl;
  gettimeofday(&start, nullptr);
#endif

  build(matrix, edge_pointers, num_partitions, header, edges, weights);

#ifdef __DTIMING
  gettimeofday(&end, nullptr);
  std::cout << "Finished build_dcsc, time: " << elapsed_time(start, end) << " ms" << std::endl;
#endif

  delete[] row_pointers;
  delete[] edge_pointers;  
  delete[] edges;

#ifdef __DTIMING
  gettimeofday(&end, 0);
  printf("Completed reading matrix from memory in %.3f ms.\n", elapsed_time(start, end));
#endif
}

static void load_mtx(mdcsc_t* matrix, const char *filename, mtx_format edge_type, uint32_t partition_size) {
#ifdef __DTIMING
  struct timeval start, end;
  gettimeofday(&start, 0);
#endif

  mtx_header_t header;
  mtx_edge_t* edges = nullptr;
  byte_t* weights = nullptr;
  int ret;

  std::ifstream file(filename, std::ios::binary);
  if (file.is_open()) {
    if (!mtx_is_binary(file)) {
      printf("input file not a valid mtx binary.\n");
      exit(1);
    }
    ret = mtx_read_header_from_binary(file, &header);
    if (ret != 0) {
      printf("failed to read input file header.\n");
      exit(1);
    }

    uint32_t weight_size = mxt_format_size(header.fmt);
    uint32_t edges_size = header.nnz * sizeof(mtx_edge_t);
    uint32_t weights_size = header.nnz * weight_size;

    if (header.fmt != mtx_format::None
     && header.fmt != edge_type) {
      printf("Input file edge format doesn't match application, %d expected %d.\n", (int)header.fmt, (int)edge_type);
      exit(1);
    }

    edges = new mtx_edge_t[header.nnz];
    if (header.fmt != mtx_format::None)
      weights = new byte_t[weights_size];

    ret = mtx_read_data_from_binary(file, header, edges, edges_size, weights, weights_size);
    if (ret != 0) {
      printf("failed to read input file data.\n");
      exit(1);
    }

    file.close();
  }

#ifdef __DTIMING
  gettimeofday(&end, nullptr);
  std::cout << "Finished file read of " << filename
            << ", time: " << elapsed_time(start, end) << " ms" << std::endl;
#endif

  if (header.fmt == mtx_format::None) {
    header.fmt = edge_type;
  }

  load_mtx(matrix, header, edges, weights, partition_size);

  delete [] edges;
  delete [] weights;

#ifdef __DTIMING
  gettimeofday(&end, 0);
  printf("Completed reading matrix from file in %.3f ms.\n", elapsed_time(start, end));
#endif
}

mdcsc_t::mdcsc_t() {
  memset(this, 0, sizeof(mdcsc_t));
}

mdcsc_t::mdcsc_t(const char* mtx_file, mtx_format edge_type, uint32_t partition_size) {
  memset(this, 0, sizeof(mdcsc_t));
  load_mtx(this, mtx_file, edge_type, partition_size);
}

mdcsc_t::~mdcsc_t() {
  delete[] partitions;
  delete[] xindices;
  delete[] ystarts;
  delete[] yindices;  
  delete[] values;    
}

void mdcsc_t::init(
    uint32_t cols_,
    uint32_t rows_,
    uint32_t nnz_,
    uint32_t nzx_,
    uint32_t numparts_,
    uint32_t element_size_) {
  cols = cols_;
  rows = rows_;
  nnz  = nnz_;
  nzx  = nzx_;
  numparts = numparts_;
  element_size = element_size_;
  partitions = new uint32_t[numparts_ + 1];    
  xindices   = new uint32_t[nzx_ + 1];
  ystarts    = new uint32_t[nzx_ + 1];
  yindices   = new uint32_t[nnz_];
  values     = new byte_t[nnz_ * element_size_];  
}

size_t mdcsc_t::copy(byte_t* dest, size_t offset, size_t size, ch_port_t<ch_matrix_dcsc_t>& desc) {
  ch_poke(desc.numparts, numparts);
  
#define  __copy_data(s, S) \
  assert((offset & BLOCK_SIZE_MASK) == 0); \
  assert(offset + __align(S, BLOCK_SIZE) <= size); \
  assert((offset >> LOG2_BLOCK_SIZE) < 0x100000); \
  ch_poke(desc.s, (offset >> LOG2_BLOCK_SIZE)); \
  if (dest) memcpy(dest + offset, s, S); \
  offset += __align(S, BLOCK_SIZE);  
  
  __copy_data(partitions, sizeof(uint32_t) * (numparts + 1));
  __copy_data(xindices, sizeof(uint32_t) * (nzx + 1));
  __copy_data(ystarts, sizeof(uint32_t) * (nzx + 1));
  __copy_data(yindices, sizeof(uint32_t) * nnz);
  __copy_data(values, nnz * element_size);  
  
#undef __copy_data  
  
  return offset;
}

///////////////////////////////////////////////////////////////////////////////

vertex_t::vertex_t() {
  memset(this, 0, sizeof(vertex_t));
}

vertex_t::vertex_t(uint32_t size_, uint32_t element_size_) 
  : size(size_)
  , element_size(element_size_) {
  values = new byte_t[size * element_size_];
  
  uint32_t num_masks = __div_ceil(size, 32);
  masks = new uint32_t[num_masks];
  memset(masks, 0, sizeof(uint32_t) * num_masks);
}

vertex_t::~vertex_t() {
  delete[] values;
  delete[] masks;
}

size_t vertex_t::copy(byte_t* dest, size_t offset, size_t size, ch_port_t<ch_vertex_t>& desc) {

#define  __copy_data(s, S) \
  assert((offset & BLOCK_SIZE_MASK) == 0); \
  assert(offset + __align(S, BLOCK_SIZE) <= size); \
  assert((offset >> LOG2_BLOCK_SIZE) < 0x100000); \
  ch_poke(desc.s, (offset >> LOG2_BLOCK_SIZE)); \
  if (dest) memcpy(dest + offset, s, S); \
  offset += __align(S, BLOCK_SIZE);  
  
  __copy_data(values, this->size * element_size);
  __copy_data(masks, sizeof(uint32_t) * __div_ceil(this->size, 32)); 
  
#undef __copy_data  
  
  return offset;
}

void vertex_t::dump() {
  printf("x_values=[");
  uint32_t hit = 0;
  for (uint32_t i = 0, n = this->size; i < n; ++i) {        
    uint32_t mask = this->masks[i >> 5];
    if (mask & (1 << (i & 0x1f))) {
      if (hit++ != 0)
        printf(", ");
      printf("%d=%.2f", i, *(float*)&this->values[i*4]);
    }
  }
  printf("]\n");
}
