#pragma once

#include "cpu.h"
#include "spmv.h"

namespace spmv {

class simulator {
public:
  simulator(const char* mtx_file);
  ~simulator();    
  
  void run(ch_tick run_ticks);
   
protected:
  
  void trace(ch_tick t);
  
  void dump_stats(ch_tick t);
  
  host::cpu_device* cpu_;
  ch_tracer* tracer_;
};

}
