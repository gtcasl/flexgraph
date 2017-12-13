#include <iostream>
#include <fstream>
#include <stdarg.h>
#include <unistd.h>
#include "simulator.h"

using namespace spmv;

#define CPU_FREQ (2.3e9)

bool verilog_only = false;

int run_ticks = 1000000;
const char* mtx_file = "sample.mtx";

namespace spmv {
int verbose = 0;
}

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

static void parse_args(int argc, char **argv) {
  int c;
  while ((c = getopt(argc, argv, "lm:v:t:i:h?")) != -1) {
    switch (c) {
    case 'v':
      spmv::verbose = atoi(optarg);
      break;
    case 'm':
      mtx_file = optarg;
      break;
    case 'l':
      verilog_only = true;
      break;
    case 't':
      run_ticks = atoi(optarg);
      break;
    case '?':
    case 'h':
      printf("SPMV RTL Simulator v1.0 - by Blaise Tine.\n");
      printf("Usage: [-m mtx matrix] [-v verbose level] [-l verilog only] [-t run ticks] [-h help]\n");
      [[fallthrough]];
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
  simulator sim(mtx_file);
  if (!verilog_only) {
    sim.run(run_ticks);
  }

  return 0;
}
