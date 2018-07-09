#pragma once

#include "common.h"

namespace spmv {
namespace accelerator {

template <typename T, unsigned Delay>
class pipe_window {
public:
  pipe_window(const T& value, const ch_bool& valid) {
    //--
    value_[0] = value;
    for (unsigned i = 1; i < Delay; ++i) {
      value_[i] = ch_delay(value_[i-1]);
    }

    //--
    valid_[0] = valid;
    for (unsigned i = 1; i < Delay; ++i) {
      valid_[i] = ch_delay(valid_[i-1], 1, false);
    }
  }

  ch_bool in_flight(const T& value) const {
    ch_bool ret = (value_[0] == value) && valid_[0];
    for (unsigned i = 1; i < Delay; ++i) {
      ret = (value_[i] == value && valid_[i]) || ch_clone(ret);
    }
    return ret;
  }

  T value() const {
    return value_[Delay-1];
  }

  ch_bool valid() const {
    return valid_[Delay-1];
  }

private:
  T       value_[Delay];
  ch_bool valid_[Delay];
};

}
}
