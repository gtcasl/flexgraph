#pragma once

#include "common.h"

namespace spmv {
namespace accelerator {

template <typename T, unsigned N, unsigned TagBits, unsigned LookupCycles = CH_CEILDIV(N, 4)>
class spmv_write_cache {
private:

  using ch_idx = ch_uint<log2ceil(N)>;
  using ch_tag = ch_uint<TagBits>;

  __enum (ch_state, (
    ready,
    lookup,
    check_evict,
    evict,
    flush
  ));

  __struct (entry_t, (
    (ch_uint<N>) owner,  // one-hot representation
    (ch_tag)     tag,
    (T)          data
  ));

  __struct (tag_t, (
    (ch_bit<N>) owners,
    (ch_tag)    tag
  ));

  ch_mem<tag_t, N> tags_;
  ch_mem<T, N>     data_;
  ch_reg<ch_idx>   last_used_idx_;
  ch_reg<ch_tag>   last_used_tag_;

  ch_idx port0_;
  ch_idx port1_;

  T data_value_;
  ch_bool data_wenable_;

  tag_t tag_value_;
  ch_bool tag_wenable_;

  ch_reg<ch_idx> counter_;

public:

  __io (
    (ch_deq_io<entry_t>) enq,
    (ch_enq_io<entry_t>) evict,
    __in(ch_bool)        flush
  );

  spmv_write_cache() {
    //--
    data_.write(port0_, data_value_, data_wenable_);

    //--
    tags_.write(port0_, tag_value_, tag_wenable_);
  }

  void describe() {
    //--
    ch_reg<ch_state> state(ch_state::ready);
    ch_reg<entry_t> enq_data;

    //--
    ch_idx match_block_idx(0);
    ch_idx owned_block_idx(0);
    ch_idx free_block_idx(N-1);
    ch_bool lookup_valid(io.enq.valid);

    // lookup unit
    {
      int step = CH_CEILDIV(N, LookupCycles);
      entry_t lookup_data = io.enq.data; // use io.enq.data in first cycle
      for (unsigned i = 1; i < N; ++i) {
        match_block_idx = ch_select((tags_.read(i).tag == lookup_data.tag) && (tags_.read(i).owners != 0), i, ch_clone(match_block_idx));
        owned_block_idx = ch_select((tags_.read(i).owners & lookup_data.owner) != 0, i, ch_clone(owned_block_idx));
        free_block_idx  = ch_select(tags_.read(N-1-i).owners == 0, N-1-i, ch_clone(free_block_idx));
        if (0 == (i % step)) {
          lookup_data = enq_data; // io.enq.data is not avaiable beyond first cycle, use backup value
          match_block_idx = ch_delay(ch_clone(match_block_idx));
          owned_block_idx = ch_delay(ch_clone(owned_block_idx));
          free_block_idx  = ch_delay(ch_clone(free_block_idx));
          lookup_valid    = ch_delay(ch_clone(lookup_valid)) & (state == ch_state::lookup);
        }
      }
      match_block_idx = ch_delay(ch_clone(match_block_idx));
      owned_block_idx = ch_delay(ch_clone(owned_block_idx));
      free_block_idx  = ch_delay(ch_clone(free_block_idx));
      lookup_valid    = ch_delay(ch_clone(lookup_valid));
    }

    //--
    io.enq.ready = (state == ch_state::ready);

    ch_reg<ch_idx> evict_block_idx;

    //--
    io.evict.data.owner = 0;
    io.evict.data.tag   = 0;
    io.evict.data.data  = 0;
    io.evict.valid      = false;

    //--
    port0_ = 0;
    port1_ = 0;
    data_wenable_ = false;
    tag_wenable_ = false;
    data_value_.as_bit() = 0;
    tag_value_.as_bit() = 0;

    // control thread
    __switch (state)
    __case (ch_state::ready) {
      __if (io.enq.valid) {
        // check if last used block matches (fast path)
        port0_ = last_used_idx_;
        __if (io.enq.data.tag == last_used_tag_
           && (tags_.read(port0_).owners & io.enq.data.owner) != 0) {
          data_wenable_ = true;
          tag_wenable_  = true;
          data_value_ = data_.read(port0_) | io.enq.data.data;
          tag_value_  = tag_t(tags_.read(port0_).tag, tags_.read(port0_).owners | io.enq.data.owner);
        } __else {
          enq_data <<= io.enq.data;
          state <<= ch_state::lookup;
        };
      } __else  {
        __if (io.flush) {
          counter_ <<= 0;
          state <<= ch_state::flush;
        };
      };
    }
    __case (ch_state::lookup) {
      // wait for lookup to complete
      __if (lookup_valid) {
        // found a valid matching block?
        port1_ = match_block_idx;
        __if (tags_.read(port1_).owners != 0
          &&  tags_.read(port1_).tag == enq_data.tag) {
          // append data to matching block
          data_wenable_ = true;
          tag_wenable_  = true;
          port0_      = match_block_idx;
          data_value_ = data_.read(port0_) | enq_data.data;
          tag_value_  = tag_t(tags_.read(port0_).tag, tags_.read(port0_).owners | enq_data.owner);

          // udpate last used info
          last_used_tag_ <<= enq_data.tag;
          last_used_idx_ <<= match_block_idx;

          // need to check for evection
          __if (match_block_idx != owned_block_idx) {
            evict_block_idx <<= owned_block_idx;
            state <<= ch_state::check_evict;
          } __else {
            // done
            state <<= ch_state::ready;
          };
        } __else {
          // add data to existing free block
          data_wenable_ = true;
          tag_wenable_  = true;
          port0_      = free_block_idx;
          data_value_ = enq_data.data;
          tag_value_  = tag_t(enq_data.tag, enq_data.owner);

          // udpate last used info
          last_used_tag_ <<= enq_data.tag;
          last_used_idx_ <<= free_block_idx;

          // need to check for evection
          __if (free_block_idx != owned_block_idx) {
            evict_block_idx <<= owned_block_idx;
            state <<= ch_state::check_evict;
          } __else {
            // done
            state <<= ch_state::ready;
          };
        };
      };
    }
    __case (ch_state::check_evict) {
      port0_ = evict_block_idx;
      // if sole owner of previous block?
      __if (tags_.read(port0_).owners == enq_data.owner) {
        // reset ownerhip
        tag_wenable_ = true;
        tag_value_  = tag_t(tags_.read(port0_).tag, 0);
        // evict the block
        state <<= ch_state::evict;
      } __else {
        // has block ownership?
        __if ((tags_.read(port0_).owners & enq_data.owner) != 0) {
          // clear ownership
          tag_wenable_ = true;
          tag_value_ = tag_t(tags_.read(port0_).tag, tags_.read(port0_).owners & ~enq_data.owner);
        };
        // done
        state <<= ch_state::ready;
      };
    }
    __case (ch_state::evict) {
      // evict unused dirty block
      port0_ = evict_block_idx;
      io.evict.data.owner = enq_data.owner;
      io.evict.data.tag   = tags_.read(port0_).tag;
      io.evict.data.data  = data_.read(port0_);
      io.evict.valid = true;
      // wait for the LSU ack
      __if (io.evict.ready) {
        // done
        state <<= ch_state::ready;
      };
    }
    __case (ch_state::flush) {
      // evict all dirty blocks
      port0_ = counter_;
      __if (tags_.read(port0_).owners != 0) {
        io.evict.data.owner = 0;
        io.evict.data.tag   = tags_.read(port0_).tag;
        io.evict.data.data  = data_.read(port0_);
        io.evict.valid = true;
        // wait for the LSU ack
        __if (io.evict.ready) {
          // advance counter
          counter_ <<= counter_ + 1;
          __if (counter_ == (N-1)) {
            // done
            state <<= ch_state::ready;
          };
        };
      } __else {
        // advance counter
        counter_ <<= counter_ + 1;
        __if (counter_ == (N-1)) {
          // done
          state <<= ch_state::ready;
        };
      };
    };

    /*if (verbose) {
      ch_print("{0}: wrcache: state={1:s}, enq_val={2}, enq_tag={3}, enq_own={4}, enq_dat={5}, "
             "l_val={6}, mb_idx={7}, ob_idx={8}, fb_idx={9}, lu_idx={10}, "
             "flush={11}, evt_val={12}, evt_rdy={13}, evt_dat={14}, evt_cntr={15}",
             ch_time(), state, io.enq.valid, io.enq.data.tag, io.enq.data.owner, io.enq.data.data,
             lookup_valid, match_block_idx, owned_block_idx, free_block_idx, last_used_idx_,
             io.flush, io.evict.valid, io.evict.ready, io.evict.data.data, counter_);
   }
   if (verbose) {
      ch_print("{0}: *** data[0]={1}, data[1]={2}, data[2]={3}, data[3]={4}, tags[0]={5}, tags[1]={6}",
               ch_time(), data_[0], data_[1], data_[2], data_[3], tags_[0], tags_[1]);
    }*/
  }
};

}
}
