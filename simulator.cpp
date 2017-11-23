#include "simulator.h"

using namespace spmv;

#define CPU_FREQ (2.3e9)

static uint64_t __rdtsc() {
  unsigned int hi, lo;
  __asm__ volatile("rdtsc" : "=a"(lo), "=d"(hi));
  return ((uint64_t)hi << 32) | lo;
}

static double elapsed_time(uint64_t start, uint64_t end) {
  return (end - start) / CPU_FREQ;
}

simulator::simulator(const char* mtx_file)
  : vcd_file_("spmv.vcd") {
  // initialize random seed
  srand(0);
    
  //--
  cpu_ = new host::cpu_device(mtx_file);
  tracer_ = new ch_vcdtracer(vcd_file_, cpu_->get_accelerator());
}

simulator::~simulator() {   
  // release resources
  delete tracer_;
  delete cpu_;
}

void simulator::run(ch_tick run_ticks) {
  // reset native simulator
  ch_tick t = tracer_->reset(0);

  uint64_t start = __rdtsc();

  // run simulation  
  for (;t < run_ticks;) {
    
    // tick the cpu device
    if (!cpu_->tick(t))
      break;
    
    // advance native simulation
    t = tracer_->step(t);
  }

  uint64_t end = __rdtsc();
  printf("Total elapsed time = %.3f s\n", elapsed_time(start, end));
  
  // dump stats
  this->dump_stats(t);
}

void simulator::trace(ch_tick t) {
  //--
  DbgPrint(2, "%06ld:\n", t);
}

void simulator::dump_stats(ch_tick t) {
  //--
  cpu_->dump_stats(t);
}
