#include "graph.h"

using namespace spmv;

struct __attribute__((aligned(16))) edge_t {
  uint32_t src;
  uint32_t dst;
  uint32_t vid;
  uint32_t pid;
};

// sort by partition (pid), then cols (dst), then rows (src)
static bool compare_edges_dcsc(const edge_t& lhs, const edge_t& rhs) {
  if (lhs.pid < rhs.pid)
    return true;
  else if (lhs.pid > rhs.pid)
    return false;
  if (lhs.dst < rhs.dst)
    return true;
  else if (lhs.dst > rhs.dst)
    return false;
  if (lhs.src < rhs.src)
    return true;
  else if (lhs.src > rhs.src)
    return false;
  return false;
}

static uint32_t generate_partition(uint32_t *partitions,
                                   uint32_t num_elements,
                                   uint32_t num_parts,
                                   uint32_t alignment) {
  partitions[0] = 0;
  uint32_t p = 1;
  uint32_t nnz = 1;
  uint32_t aligned_size = __div_ceil(num_elements, alignment) * alignment;
  uint32_t part_size = __div_ceil(aligned_size, num_parts);
  part_size = __div_ceil(part_size, alignment) * alignment;
  for (uint32_t n = part_size; n < aligned_size; n += part_size) {
    partitions[p++] = n;
    ++nnz;
  }
  do {
    partitions[p++] = aligned_size;
  } while (p <= num_parts);
  return nnz;
}

static void set_edge_ptr(uint32_t *edge_ptr,
                         const uint32_t *row_ptr,
                         uint32_t num_parts,
                         const edge_t* edges,
                         uint32_t nnz) {
#ifdef SET_EDGE_POINTERS_BINARY_SEARCH
#pragma omp parallel for num_threads(nthreads)
  for (uint32_t p = 0; p < num_parts; ++p) {
    // binary search
    uint32_t e1 = 0;
    uint32_t e2 = nnz;
    uint32_t eh;
    while (e2 >= e1) {
      eh = e2 - (e2 - e1) / 2;
      if (eh == 0) {
        break;
      }
      if ((edges[eh - 1].src < row_ptr[p]) &&
          edges[eh].src >= row_ptr[p]) {
        break;
      } else if (edges[eh].src >= row_ptr[p]) {
        e2 = eh - 1;
      } else {
        e1 = eh + 1;
      }
    }
    edge_ptr[p] = eh;
  }
  edge_ptr[num_parts] = nnz;
#ifdef CHECK_EDGE_POINTERS
  uint32_t p = 0;
  for (uint32_t i = 0; i < nnz; ++i) {
    while (edges[i].src >= row_ptr[p]) {
      assert(edge_ptr[p] == i);
      ++p;
    }
  }
  assert(edge_ptr[p] == nnz);
  for (p = p + 1; p < num_parts + 1; ++p) {
    assert(edge_ptr[p] == nnz);
  }
#endif
#else
  uint32_t p = 0;
  for (uint32_t i = 0; i < nnz; ++i) {
    while (edges[i].src >= row_ptr[p]) {
      edge_ptr[p] = i;
      ++p;
    }
  }
  edge_ptr[p] = nnz;
  for (p = p + 1; p < num_parts + 1; ++p) {
    edge_ptr[p] = nnz;
  }
#endif
}

static void build(mdcsc_t* matrix,
                  const uint32_t* edge_ptr,
                  uint32_t num_parts,
                  const mtx_header_t& header,
                  const edge_t* edges,
                  const byte_t* weights) {
  //--
  uint32_t data_size = mxt_format_size(header.fmt);

  //
  // compute non-zero partitions and max nzx
  //

  uint32_t nnz_parts = 0;
  uint32_t total_nnz = 0;
  uint32_t total_nzx = 0;
  uint32_t total_nzy = 0;

  for (uint32_t p = 0; p < num_parts; ++p) {
    uint32_t edge_start = edge_ptr[p];
    uint32_t edge_end   = edge_ptr[p + 1];
    uint32_t nnz        = edge_end - edge_start;
    if (nnz       > 0) {
      uint32_t nzx = 0;
      uint32_t nzy = 0;
      for (uint32_t i = edge_start, col = -1; i < edge_end; ++i) {
        if (col == -1 || edges[i].dst > col) {          
          col = edges[i].dst;          
          ++nzx;
        }
        ++nzy;
      }
      total_nnz += nnz;
      total_nzx += nzx;
      total_nzy += __div_rnd(nzy, nzx);
      ++nnz_parts;
    }
  }

#ifndef NDEBUG
  std::cout << "Tiled matrix description: " << header.rows << " rows, " << num_parts << " partitions (" << nnz_parts << " non-empty)" << std::endl;
  std::cout << "Average nnz entries per partition: " << __div_rnd(total_nnz, nnz_parts) << "." << std::endl;
  std::cout << "Average nzx entries per partition: " << __div_rnd(total_nzx, nnz_parts) << "." << std::endl;
  std::cout << "Average nzy entries per partition: " << __div_rnd(total_nzy, nnz_parts) << "." << std::endl;
#endif
  
  matrix->init(header.cols,
               header.rows,
               header.nnz,
               total_nzx,
               num_parts,
               data_size);
  
  uint32_t* const col_ptr = matrix->col_ptr;
  uint32_t* const col_ind = matrix->col_ind;
  uint32_t* const row_ptr = matrix->row_ptr;
  uint32_t* const row_ind = matrix->row_ind;
  byte_t*   const values  = matrix->values;

  col_ptr[0] = 0;
  uint32_t q = 1;
  uint32_t col_idx = 0;

  for (uint32_t p = 1; p <= num_parts; ++p) {
    uint32_t edge_start = edge_ptr[p-1];
    uint32_t edge_end   = edge_ptr[p];
    uint32_t nnz_parts  = edge_end - edge_start;
    if (nnz_parts > 0) {
      uint32_t col = -1;
      for (uint32_t i = edge_start; i < edge_end; ++i) {
        if (col == -1 || col < edges[i].dst) {
          col = edges[i].dst;
          col_ind[col_idx] = col;
          row_ptr[col_idx] = i;
          ++col_idx;
        }        
        row_ind[i] = edges[i].src;
        if (weights) {
          memcpy(values + i * data_size,
                 weights + edges[i].vid * data_size,
                 data_size);
        } else {
          mtx_format_cast(values + i * data_size, header.fmt, 1);
        }
      }
      col_ptr[q++]     = col_idx;
      col_ind[col_idx] = col + 1;
      row_ptr[col_idx] = edge_end;
    }
  }

  while (q <= num_parts) {
    col_ptr[q++] = col_idx;
  }  
}

static void load_mtx(mdcsc_t* matrix,
                     const mtx_header_t& header,
                     const mtx_edge_t* mtx_edges,
                     const byte_t* weights,
                     uint32_t part_size) {
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

  uint32_t num_parts = __div_ceil(header.rows, part_size);
  uint32_t* row_ptr  = new uint32_t[num_parts + 1];
  uint32_t* edge_ptr = new uint32_t[num_parts + 1];

  //
  // do rows partitioning
  // generate table containing a max row index for each partition
  //
  uint32_t nnz_parts = generate_partition(row_ptr, header.rows, num_parts, part_size);
#ifndef NDEBUG
  std::cout << "Partitioned " << header.rows << " matrix rows into " << num_parts << " chunks (" << nnz_parts << " non-empty)" << std::endl;
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
    uint32_t max_p = num_parts - 1;
    uint32_t h_p;
    while (max_p >= min_p) {
      h_p = max_p - ((max_p - min_p) / 2);
      if (key >= row_ptr[h_p] && key < row_ptr[h_p + 1]) {
        break;
      } else if (key >= row_ptr[h_p]) {
        min_p = h_p + 1;
      } else {
        max_p = h_p - 1;
      }
    }
    edges[i].pid = h_p;
#ifdef CHECK_PARTITION_IDS
    for (uint32_t p = 0; p < num_parts; ++p) {
      if (edges[i].src >= row_ptr[p] &&
          edges[i].src < row_ptr[p + 1]) {
        assert(edges[i].pid == p);
      }
    }
#endif
#else
    for (uint32_t p = 0; p < num_parts; ++p) {
      if (edges[i].src >= row_ptr[p] &&
          edges[i].src < row_ptr[p + 1]) {
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

  set_edge_ptr(edge_ptr, row_ptr, num_parts, edges, header.nnz);

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

  build(matrix, edge_ptr, num_parts, header, edges, weights);

#ifdef __DTIMING
  gettimeofday(&end, nullptr);
  std::cout << "Finished build_dcsc, time: " << elapsed_time(start, end) << " ms" << std::endl;
#endif

  delete[] row_ptr;
  delete[] edge_ptr;
  delete[] edges;

#ifdef __DTIMING
  gettimeofday(&end, 0);
  printf("Completed reading matrix from memory in %.3f ms.\n", elapsed_time(start, end));
#endif
}

static void load_mtx(mdcsc_t* matrix, const char *filename, mtx_format edge_type, uint32_t part_size) {
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

    uint32_t weight_size  = mxt_format_size(header.fmt);
    uint32_t edges_size   = header.nnz * sizeof(mtx_edge_t);
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

  load_mtx(matrix, header, edges, weights, part_size);

  delete [] edges;
  delete [] weights;

#ifdef __DTIMING
  gettimeofday(&end, 0);
  printf("Completed reading matrix from file in %.3f ms.\n", elapsed_time(start, end));
#endif
}

template <typename F, typename T>
size_t copy_data (byte_t* dst_buf,
                  F& field_offset,
                  const T* src_buf,
                  size_t size,
                  size_t dst_offset,
                  size_t dst_size) {
  auto start = dst_offset;
  auto end = start + __align(size, BLOCK_SIZE);
  assert(0 == (start & BLOCK_SIZE_MASK));
  assert(end <= dst_size);
  if (dst_buf) {
    memcpy(dst_buf + start, src_buf, size);
    memset(dst_buf + end, 0, end - start - size);
  }
  field_offset = (start >> LOG2_BLOCK_SIZE);
  return end;
}

///////////////////////////////////////////////////////////////////////////////

mdcsc_t::mdcsc_t() {
  memset(this, 0, sizeof(mdcsc_t));
}

mdcsc_t::mdcsc_t(const char* mtx_file, mtx_format edge_type, uint32_t part_size) {
  memset(this, 0, sizeof(mdcsc_t));
  load_mtx(this, mtx_file, edge_type, part_size);
}

mdcsc_t::~mdcsc_t() {
  delete[] col_ptr;
  delete[] col_ind;
  delete[] row_ptr;
  delete[] row_ind;
  delete[] values;    
}

void mdcsc_t::init(
    uint32_t cols_,
    uint32_t rows_,
    uint32_t nnz_,
    uint32_t nzx_,
    uint32_t num_parts_,
    uint32_t data_size_) {
  cols = cols_;
  rows = rows_;
  nnz  = nnz_;
  nzx  = nzx_;
  num_parts = num_parts_;
  data_size = data_size_;
  col_ptr = new uint32_t[num_parts_ + 1];
  col_ind = new uint32_t[nzx_ + 1];
  row_ptr = new uint32_t[nzx_ + 1];
  row_ind = new uint32_t[nnz_];
  values  = new byte_t[nnz_ * data_size_];
}

size_t mdcsc_t::copy(byte_t* dest,
                     size_t offset,
                     size_t size,
                     ch_scalar_t<ch_matrix_dcsc_t>& desc) {
  desc.num_parts = num_parts;

  offset = copy_data(dest, desc.col_ptr, col_ptr, sizeof(uint32_t) * (num_parts + 1), offset, size);
  offset = copy_data(dest, desc.col_ind, col_ind, sizeof(uint32_t) * (nzx + 1), offset, size);
  offset = copy_data(dest, desc.row_ptr, row_ptr, sizeof(uint32_t) * (nzx + 1), offset, size);
  offset = copy_data(dest, desc.row_ind, row_ind, sizeof(uint32_t) * nnz, offset, size);
  offset = copy_data(dest, desc.values,  values, nnz * data_size, offset, size);
  
  return offset;
}

///////////////////////////////////////////////////////////////////////////////

vertex_t::vertex_t() {
  memset(this, 0, sizeof(vertex_t));
}

vertex_t::vertex_t(uint32_t size_, uint32_t data_size_)
  : size(size_)
  , data_size(data_size_) {
  values = new byte_t[size * data_size_];
  
  uint32_t num_masks = __div_ceil(size, 32);
  masks = new uint32_t[num_masks];
  memset(masks, 0, sizeof(uint32_t) * num_masks);
}

vertex_t::~vertex_t() {
  delete[] values;
  delete[] masks;
}

size_t vertex_t::copy(byte_t* dest,
                      size_t offset,
                      size_t size,
                      ch_scalar_t<ch_vertex_t>& desc) {
  offset = copy_data(dest, desc.values, values, this->size * data_size, offset, size);
  offset = copy_data(dest, desc.masks, masks, sizeof(uint32_t) * __div_ceil(this->size, 32), offset, size);
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
