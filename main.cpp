#include <iostream>
#include <fstream>
#include <stdarg.h>
#include <unistd.h>
#include "simulator.h"

using namespace spmv;

#define CPU_FREQ (2.3e9)

int run_ticks = 1000000;
const char* mtx_file = "sample.mtx";

namespace spmv {
int verbose = 0;
};

void spmv::DbgPrint(int level, const char *format, ...) {
  char buf[256];
  va_list args;
  va_start(args, format);
  if (level <= verbose) {
    vsnprintf(buf, 256, format, args);
    std::cout << buf;
  }
  va_end(args);
}

static inline uint64_t __rdtsc() {
  uint32_t hi, lo;
  __asm__ volatile("rdtsc" : "=a" (lo), "=d" (hi));
  return ((uint64_t)hi << 32) | lo;
}

static double elapsed_time(uint64_t start, uint64_t end) {
  return (end - start) / CPU_FREQ;
}

static void parse_args(int argc, char **argv) {
  int c;
  while ((c = getopt(argc, argv, "sm:v:t:i:h?")) != -1) {
    switch (c) {
    case 'v':
      spmv::verbose = atoi(optarg);
      break;
    case 'm':
      mtx_file = optarg;
      break;
    case 't':
      run_ticks = atoi(optarg);
      break;
    case '?':
    case 'h':
      printf("SPMV RTL Simulator v1.0 - by Blaise Tine.\n");
      printf("Usage: [-m mtx matrix] [-v verbose_level] [-t run_ticks] [-h help]\n");
    default:
      exit(1);
    }
  }
  
  std::ifstream ifile(mtx_file);
  if (!ifile) {
    printf("** couldn't open matrix file: %s", mtx_file);
    exit(1);
  }    
}

int main(int argc, char **argv) {  
  //--  
  parse_args(argc, argv);
  
  //--
  simulator* sim = new simulator(mtx_file);
  uint64_t start = __rdtsc();
  
  sim->run(run_ticks);
  
  uint64_t end = __rdtsc();
  printf("Total elapsed time = %.3f s\n", elapsed_time(start, end));

  delete sim;

  return 0;
}
