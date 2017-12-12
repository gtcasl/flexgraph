#include <iostream>
#include <sstream>
#include <assert.h>
#include "mtx.h"

static bool is_space_or_comment(const std::string& line) {
  const char * str = line.c_str();
  if (*str == '#')
    return true;
  while (std::isspace(*str))
    ++str;
  return (*str == 0);
}

template <typename T>
int readline(std::ifstream& file, mtx_edge_t* edges, T* weights) {
  std::string line;
  while (getline(file, line)) {
    if (is_space_or_comment(line))
      continue;
    std::istringstream ln_ss(line);
    ln_ss >> edges->src >> edges->dst >> *weights++;
    if (ln_ss.fail())
      return -1;
    ++edges;
  }
  return 0;
}

template <typename T>
void writeline(std::ofstream& file, const mtx_edge_t* edges, const T* weights, uint32_t nnzs) {
  for (uint32_t i = 0; i < nnzs; ++i) {
    file << edges[i].src << edges[i].dst << weights[i] << std::endl;
  }
}

size_t mxt_format_size(mtx_format fmt) {
  switch (fmt) {
  case mtx_format::Int32:
    return sizeof(int);
  case mtx_format::Float:
    return sizeof(float);
  case mtx_format::Int64:
    return sizeof(int64_t);
  case mtx_format::Double:
    return sizeof(double);
  default:
    return 0;
  }
}

void mtx_format_cast(void* dst, mtx_format fmt, double value) {
  switch (fmt) {
  case mtx_format::None:
    std::abort();
    break;
  case mtx_format::Int32:
    *(int*)dst = value;
    break;
  case mtx_format::Float:
    *(float*)dst = value;
    break;
  case mtx_format::Int64:
    *(int64_t*)dst = value;
    break;
  case mtx_format::Double:
    *(double*)dst = value;
    break;
  }
}

bool mtx_is_binary(std::ifstream& file) {
  char magic[4];

  file.read((char*)magic, sizeof(magic));
  if (!file)
    return -1;

  file.seekg(0, file.beg);
  return magic[0] == 'M'
      && magic[1] == 'T'
      && magic[2] == 'X'
      && magic[3] == 0;
}

int mtx_read_header_from_binary(std::ifstream& file, mtx_header_t* header) {
  char magic[4];

  file.read((char*)magic, sizeof(magic));
  if (!file)
    return -1;

  file.read((char*)header, sizeof(mtx_header_t));
  if (!file)
    return -1;

  return 0;
}

int mtx_read_data_from_binary(std::ifstream& file, const mtx_header_t& header,
                              mtx_edge_t* edges, int edges_size,
                              void* weights, int weights_size) {
  int edges_size_ = header.nnz * sizeof(mtx_edge_t);
  int weights_size_ = header.nnz * mxt_format_size(header.fmt);

  if (edges == nullptr || edges_size < edges_size_)
    return -1;

  if (weights
  && (header.fmt == mtx_format::None
   || weights_size < weights_size_))
      return -1;

  file.read((char *)edges, edges_size_);
  if (!file)
    return -1;

  if (weights) {
    file.read((char *)weights, weights_size_);
    if (!file)
      return -1;
  }
  return 0;
}

int mtx_read_header_from_text(std::ifstream& file, mtx_header_t* header) {
  std::string line;
  while (getline(file, line) && is_space_or_comment(line));
  std::istringstream ln_ss(line);
  uint32_t fmt, rows, cols, nnz;
  ln_ss >> fmt >> rows >> cols >> nnz;
  if (ln_ss.fail()) {
    if (fmt == 0)
      return -1;
    int ret = mtx_detect_header_from_text(file, header);
    if (ret != 0 || header->nnz != fmt)
      return -1;
  } else {
    header->fmt  = (mtx_format)fmt;
    header->rows = rows;
    header->cols = cols;
    header->nnz  = nnz;
  }
  return 0;
}

int mtx_detect_header_from_text(std::ifstream& file, mtx_header_t* header) {
  std::string line;
  int src, dst, nnz = 0, rows = 0;
  int start_pos = file.tellg();
  while (getline(file, line)) {
    if (is_space_or_comment(line))
      continue;
    std::istringstream ln_ss(line);
    ln_ss >> src >> dst;
    if (ln_ss.fail())
      return -1;
    rows = std::max(rows, src);
    rows = std::max(rows, dst);
    ++nnz;
  }
  header->fmt  = mtx_format::None;
  header->rows = header->cols = rows + 1; // assume zero-based indices
  header->nnz  = nnz;

  // return to input stream to starting position
  file.clear();
  file.seekg(start_pos);
  return 0;
}

int mtx_read_data_from_text(std::ifstream& file, const mtx_header_t& header,
                         mtx_edge_t* edges, int edges_size,
                         void* weights, int weights_size) {
  int edges_size_ = header.nnz * sizeof(mtx_edge_t);
  int weights_size_ = header.nnz * mxt_format_size(header.fmt);

  if (edges == nullptr || edges_size < edges_size_)
    return -1;

  if (weights
  && (header.fmt == mtx_format::None
   || weights_size < weights_size_))
      return -1;

  if (weights) {
    int ret = -1;
    switch (header.fmt) {
    case mtx_format::None:
      std::abort();
      break;
    case mtx_format::Int32:
      ret = readline(file, edges, (int*)weights);
      break;
    case mtx_format::Float:
      ret = readline(file, edges, (float*)weights);
      break;
    case mtx_format::Int64:
      ret = readline(file, edges, (int64_t*)weights);
      break;
    case mtx_format::Double:
      ret = readline(file, edges, (double*)weights);
      break;
    }
    if (ret != 0)
      return -1;
  } else {
    std::string line;
    while (getline(file, line)) {
      if (is_space_or_comment(line))
        continue;
      std::istringstream ln_ss(line);
      ln_ss >> edges->src >> edges->dst;
      if (ln_ss.fail())
        return -1;
      ++edges;
    }
  }
  return 0;
}

int mtx_write_binary(std::ofstream& file, const mtx_header_t& header,
                     const mtx_edge_t* edges, int edges_size,
                     const void* weights, int weights_size) {
  char magic[4] = {'M', 'T', 'X', 0};

  int edges_size_ = header.nnz * sizeof(mtx_edge_t);
  int weights_size_ = header.nnz * mxt_format_size(header.fmt);

  if (edges == nullptr || edges_size < edges_size_)
    return -1;

  if (header.fmt != mtx_format::None) {
    if (weights == nullptr || weights_size < weights_size_)
      return -1;
  }

  file.write((char*)magic, sizeof(magic));
  file.write((char*)&header, sizeof(mtx_header_t));
  file.write((char*)edges, edges_size_);
  if (weights) {
    file.write((char*)weights, weights_size_);
  }
  return 0;
}

int mtx_write_text(std::ofstream& file, const mtx_header_t& header,
                   const mtx_edge_t* edges, int edges_size,
                   const void* weights, int weights_size) {
  int edges_size_ = header.nnz * sizeof(mtx_edge_t);
  int weights_size_ = header.nnz * mxt_format_size(header.fmt);

  if (edges == nullptr || edges_size < edges_size_)
    return -1;

  if (header.fmt != mtx_format::None) {
    if (weights == nullptr || weights_size < weights_size_)
      return -1;
  }

  file << (uint32_t)header.fmt;
  file << header.rows << header.cols << header.nnz ;
  file << std::endl;

  if (weights) {
    switch (header.fmt) {
    case mtx_format::None:
      std::abort();
      break;
    case mtx_format::Int32:
      writeline(file, edges, (const int*)weights, header.nnz);
      break;
    case mtx_format::Float:
      writeline(file, edges, (const float*)weights, header.nnz);
      break;
    case mtx_format::Int64:
      writeline(file, edges, (const int64_t*)weights, header.nnz);
      break;
    case mtx_format::Double:
      writeline(file, edges, (const double*)weights, header.nnz);
      break;
    }
  } else {
    for (uint32_t i = 0; i < header.nnz; ++i) {
      file << edges[i].src << edges[i].dst << std::endl;
    }
  }
  return 0;
}
