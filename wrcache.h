#pragma once

#include "common.h"

namespace spmv {
namespace accelerator {

template <typename T, unsigned N, unsigned TagBits, unsigned LookupCycles = ceildiv<unsigned>(N, 4)>
class spmv_write_cache {
private:

  using ch_idx = ch_uint<log2ceil(N)>;
  using ch_tag = ch_uint<TagBits>;

  __enum (ch_state, (
    ready,
    write,
    check_evict,
    evict,
    flush
  ));

  __struct (entry_t, (
    (ch_bit<N>) owner,  // one-hot representation
    (ch_tag)    tag,
    (T)         data
  ));

  __struct (tag_t, (
    (ch_bit<N>) owners,
    (ch_tag)    tag
  ));

  ch_mem<tag_t, N>  tags_;
  ch_mem<T, N>      data_;
  ch_reg<ch_bit<N>> tags_valid_;
  ch_reg<ch_idx>    last_used_idx_;
  ch_reg<ch_tag>    last_used_tag_;

  ch_idx port0_;
  ch_idx port1_;

  T data_value_;
  ch_bool data_wenable_;

  tag_t tag_value_;
  ch_bool tag_wenable_;

  ch_reg<ch_idx> flush_cntr_;

public:

  __io (
    (ch_enq_io<entry_t>) enq,
    (ch_deq_io<entry_t>) evict,
    __in(ch_bool)        flush
  );

  spmv_write_cache() : tags_valid_(0) {
    //--
    data_.write(port0_, data_value_, data_wenable_);
    tags_.write(port0_, tag_value_, tag_wenable_);
  }

  void describe() {
    //--
    ch_reg<ch_state> state(ch_state::ready);
    ch_reg<entry_t> saved_enq_data; // io.enq.data should be saved for use in next cycles

    //--
    ch_idx match_block_idx(0);
    ch_idx owned_block_idx(0);
    ch_idx free_block_idx(N-1);
    ch_bool lookup_valid(io.enq.valid);

    // lookup unit
    {
      int step = ceildiv(N, LookupCycles);
      auto lookup_data = ch_sel(state == ch_state::ready, io.enq.data, saved_enq_data);
      for (unsigned i = 1; i < N; ++i) {
        auto tag_valid  = (0 != (tags_valid_ & (ch_bit<N>(1) << i)));
        match_block_idx = ch_sel(tag_valid && (tags_.read(i).tag == lookup_data.tag), i, match_block_idx.clone());
        owned_block_idx = ch_sel(tag_valid && (tags_.read(i).owners & lookup_data.owner) != 0, i, owned_block_idx.clone());
        free_block_idx  = ch_sel(!tag_valid, N-1-i, free_block_idx.clone());
        if (0 == (i % step)) {
          match_block_idx = ch_delay(match_block_idx.clone());
          owned_block_idx = ch_delay(owned_block_idx.clone());
          free_block_idx  = ch_delay(free_block_idx.clone());
          lookup_valid    = ch_delay(lookup_valid.clone(), 1, false);
        }
      }
      match_block_idx = ch_delay(match_block_idx.clone());
      owned_block_idx = ch_delay(owned_block_idx.clone());
      free_block_idx  = ch_delay(free_block_idx.clone());
      lookup_valid    = ch_delay(lookup_valid.clone(), 1, false);
    }

    // advance counter
    ch_bool advance_flush_cntr_ = false;
    __if (advance_flush_cntr_) {
      flush_cntr_->next = flush_cntr_ + 1;
      __if (flush_cntr_ == (N-1)) {
        // done
        tags_valid_->next = 0;
        state->next = ch_state::ready;
      };
    };

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
        // check if last update was done by current owner (fast path)
        port0_ = last_used_idx_;
        __if (tags_valid_ != 0
           && io.enq.data.tag == last_used_tag_
           && 0 != (tags_.read(port0_).owners & io.enq.data.owner)) {
          data_wenable_ = true;
          tag_wenable_  = true;
          data_value_   = data_.read(port0_) | io.enq.data.data;
          tag_value_    = tag_t(tags_.read(port0_).tag, tags_.read(port0_).owners | io.enq.data.owner);
        } __else {
          // perform lookup and write
          saved_enq_data->next = io.enq.data;
          state->next = ch_state::write;
        };
      } __else  {
        __if (io.flush) {
          flush_cntr_->next = 0;
          saved_enq_data->next = io.enq.data;
          state->next = ch_state::flush;
        };
      };
    }
    __case (ch_state::write) {
      // wait for lookup to complete
      __if (lookup_valid) {
        // found a valid matching block?
        port1_ = match_block_idx;
        __if (0 != (tags_valid_ & (ch_bit<N>(1) << port1_))
           && tags_.read(port1_).tag == saved_enq_data.tag) {
          // append data to matching block
          port0_      = match_block_idx;
          data_value_ = data_.read(port0_) | saved_enq_data.data;
          tag_value_  = tag_t(tags_.read(port0_).tag, tags_.read(port0_).owners | saved_enq_data.owner);
        } __else {
          // add data to existing free block
          port0_      = free_block_idx;
          data_value_ = saved_enq_data.data;
          tag_value_  = tag_t(saved_enq_data.tag, saved_enq_data.owner);
        };

        data_wenable_ = true;
        tag_wenable_  = true;

        // udpate last used info
        last_used_tag_->next = saved_enq_data.tag;
        last_used_idx_->next = port0_;
        tags_valid_->next = tags_valid_ | (ch_bit<N>(1) << port0_);

        // need to check for evection
        __if (port0_ != owned_block_idx) {
          evict_block_idx->next = owned_block_idx;
          state->next = ch_state::check_evict;
        } __else {
          // done
          state->next = ch_state::ready;
        };
      };
    }
    __case (ch_state::check_evict) {
      port0_ = evict_block_idx;
      // if sole owner of evicted block?
      __if (tags_.read(port0_).owners == saved_enq_data.owner) {
        // reset ownerhip
        tag_wenable_ = true;
        tag_value_ = tag_t(0, 0);
        tags_valid_->next = tags_valid_ & ~(ch_bit<N>(1) << port0_);
        // evict the block
        state->next = ch_state::evict;
      } __else {
        // has block ownership?
        __if ((tags_.read(port0_).owners & saved_enq_data.owner) != 0) {
          // clear ownership
          tag_wenable_ = true;
          tag_value_ = tag_t(tags_.read(port0_).tag, tags_.read(port0_).owners & ~saved_enq_data.owner);
        };
        // done
        state->next = ch_state::ready;
      };
    }
    __case (ch_state::evict) {
      // evict unused dirty block
      port0_ = evict_block_idx;
      io.evict.data.owner = saved_enq_data.owner;
      io.evict.data.tag   = tags_.read(port0_).tag;
      io.evict.data.data  = data_.read(port0_);
      io.evict.valid = true;
      // wait for the LSU ack
      __if (io.evict.ready) {
        // done
        state->next = ch_state::ready;
      };
    }
    __case (ch_state::flush) {
      // evict all dirty blocks
      port0_ = flush_cntr_;
      __if (tags_.read(port0_).owners != 0) {
        io.evict.data.owner = saved_enq_data.owner;
        io.evict.data.tag   = tags_.read(port0_).tag;
        io.evict.data.data  = data_.read(port0_);
        io.evict.valid = true;
        // wait for the LSU ack
        __if (io.evict.ready) {
          advance_flush_cntr_ = true;
        };
      } __else {
        advance_flush_cntr_ = true;
      };
    };

    /*if (verbose) {
      ch_print("{0}: wrcache: state={1:s}, enq_val={2}, enq_tag={3}, enq_own={4}, enq_dat={5}, "
             "l_val={6}, mb_idx={7}, ob_idx={8}, fb_idx={9}, lu_idx={10}, "
             "flush={11}, evt_val={12}, evt_rdy={13}, evt_dat={14}, evt_cntr={15}",
             ch_now(), state, io.enq.valid, io.enq.data.tag, io.enq.data.owner, io.enq.data.data,
             lookup_valid, match_block_idx, owned_block_idx, free_block_idx, last_used_idx_,
             io.flush, io.evict.valid, io.evict.ready, io.evict.data.data, flush_cntr_);
   }
   if (verbose) {
      ch_print("{0}: *** data[0]={1}, data[1]={2}, data[2]={3}, data[3]={4}, tags[0]={5}, tags[1]={6}",
               ch_now(), data_[0], data_[1], data_[2], data_[3], tags_[0], tags_[1]);
    }*/
  }
};

}
}
