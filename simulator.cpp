#include "simulator.h"
#include <chrono>

using namespace spmv;

simulator::simulator(const char* mtx_file) {
  // initialize random seed
  srand(0);
    
  //--
  cpu_ = new host::cpu_device(mtx_file);
  tracer_ = new ch_tracer(cpu_->get_accelerator());
}

simulator::~simulator() {   
  // release resources
  delete tracer_;
  delete cpu_;
}

void simulator::run(ch_tick run_ticks) {
  // reset native simulator
  ch_tick t = tracer_->reset(0);

  auto start_time = std::chrono::system_clock::now();

  // run simulation  
  for (;t < run_ticks;) {
    
    // tick the cpu device
    if (!cpu_->tick(t))
      break;
    
    // advance native simulation
    t = tracer_->step(t);
  }

  tracer_->toVCD("spmv.vcd");

  auto end_time = std::chrono::system_clock::now();
  auto latency = end_time - start_time;
  printf("Total elapsed time = %lf ms\n",
         std::chrono::duration<double, std::milli>(latency).count());
  
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
