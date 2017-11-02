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
  : m_vcd_file("spmv.vcd") {
  // initialize random seed
  srand(0);
    
  //--
  m_cpu = new host::cpu_device(mtx_file);  
  m_tracer = new ch_vcdtracer(m_vcd_file, m_cpu->get_accelerator());
}

simulator::~simulator() {   
  // release resources
  delete m_tracer;
  delete m_cpu;
}

void simulator::run(ch_tick run_ticks) {
  // reset native simulator
  ch_tick t = m_tracer->reset(0);

  uint64_t start = __rdtsc();

  // run simulation  
  for (;t < run_ticks;) {
    
    // tick the cpu device
    if (!m_cpu->tick(t))
      break;
    
    // advance native simulation
    t = m_tracer->step(t);
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
  m_cpu->dump_stats(t);
}
