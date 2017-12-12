#include <iostream>
#include <fstream>
#include <unistd.h>
#include "test.h"
#include "wrcache.h"

using namespace spmv;
using namespace spmv::accelerator;

int main() {

  ch_device<spmv_write_cache<ch_bit4, 8, 8, 2>> device;
  ch_simulator sim(device);
  ch_tick t = sim.reset(0);
  t = sim.step(t);
  int ret = 1;
  assert(!!device.io.enq.ready);

  device.io.enq.data.tag   = 0;
  device.io.enq.data.owner = PE_ID(0);
  device.io.enq.data.data  = 0001_b;
  device.io.enq.valid = true;
  t = sim.step(t);
  device.io.enq.valid = false;
  t = sim.step(t,3);

  device.io.enq.data.tag   = 0;
  device.io.enq.data.owner = PE_ID(0);
  device.io.enq.data.data  = 0010_b;
  device.io.enq.valid = true;
  t = sim.step(t);
  device.io.enq.valid = false;
  t = sim.step(t,3);

  device.io.enq.data.tag   = 0;
  device.io.enq.data.owner = PE_ID(1);
  device.io.enq.data.data  = 0100_b;
  device.io.enq.valid = true;
  t = sim.step(t);
  device.io.enq.valid = false;
  t = sim.step(t,3);

  device.io.enq.data.tag   = 1;
  device.io.enq.data.owner = PE_ID(0);
  device.io.enq.data.data  = 0001_b;
  device.io.enq.valid = true;
  t = sim.step(t);
  device.io.enq.valid = false;
  t = sim.step(t,3);

  device.io.enq.data.tag   = 1;
  device.io.enq.data.owner = PE_ID(1);
  device.io.enq.data.data  = 0010_b;
  device.io.enq.valid = true;
  t = sim.step(t);
  device.io.enq.valid = false;
  t = sim.step(t,3);

  assert(0x7 == device.io.evict.data.data);
  device.io.evict.ready = true;
  t = sim.step(t);
  device.io.evict.ready = false;
  t = sim.step(t);
  device.io.flush = true;
  t = sim.step(t);
  device.io.flush = false;
  t = sim.step(t, 4);
  device.io.evict.ready = true;
  t = sim.step(t);
  device.io.evict.ready = false;
  t = sim.step(t, 6);

  return 0;
}
