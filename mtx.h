#pragma once

#include <fstream>
#include <cstdlib>

enum class mtx_format : uint32_t {
  None,
  Int32,
  Float,
  Int64,
  Double,
};

struct  mtx_header_t {
  mtx_format fmt;
  uint32_t   rows;
  uint32_t   cols;
  uint32_t   nnz;
};

struct  mtx_edge_t {
  uint32_t src;
  uint32_t dst;
};

size_t mxt_format_size(mtx_format fmt);

void mtx_format_cast(void* dst, mtx_format fmt, double value);

bool mtx_is_binary(std::ifstream& file);

int mtx_read_header_from_binary(std::ifstream& file, mtx_header_t* header);

int mtx_read_data_from_binary(std::ifstream& file, const mtx_header_t& header,
                              mtx_edge_t* edges, int edges_size,
                              void* weights, int weights_size);

int mtx_read_header_from_text(std::ifstream& file, mtx_header_t* header);

int mtx_read_data_from_text(std::ifstream& file, const mtx_header_t& header,
                            mtx_edge_t* edges, int edges_size,
                            void* weights, int weights_size);

int mtx_detect_header_from_text(std::ifstream& file, mtx_header_t* header);

int mtx_write_binary(std::ofstream& file, const mtx_header_t& header,
                     const mtx_edge_t* edges, int edges_size,
                     const void* weights, int weights_size);

int mtx_write_text(std::ofstream& file, const mtx_header_t& header,
                   const mtx_edge_t* edges, int edges_size,
                   const void* weights, int weights_size);
