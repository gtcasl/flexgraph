#pragma once

#include "common.h"

namespace spmv {
namespace accelerator {

template <typename T, unsigned N, unsigned TagBits, unsigned LookupCycles = 1 + N/8>
class spmv_write_cache {
private:

  using ch_idx = ch_bit<log2ceil(N)>;
  using ch_tag = ch_bit<TagBits>;

  enum {
    MAX_TAG_VALUE = (1 << TagBits) - 1,
  };

  __enum (ch_state, 2, (
    ready,
    lookup,
    evict,
    flush
  ));

  __struct (tag_t, (
    (ch_bit<N>) owners,
    (ch_tag)    tag,
    (ch_bool)   valid
  ));

  ch_ram<tag_t, N>    tags_;
  ch_ram<ch_block, N> data_;
  ch_seq<ch_idx>      last_used_idx_;
  ch_seq<ch_tag>      last_used_tag_;

public:

  __struct (entry_t, (
    (ch_bit<N>) owner,  // one-hot representation
    (ch_tag)    tag,
    (T)         data
  ));

  __io (
    (ch_deq_io<entry_t>) enq,
    (ch_enq_io<entry_t>) evict,
    __in(ch_bool)        flush,
  );

  spmv_write_cache() : last_used_tag_(MAX_TAG_VALUE)
  {}

  void describe() {
    //--
    ch_idx match_block_idx(0);
    ch_idx owned_block_idx(0);
    ch_idx free_block_idx(0);
    ch_bool lookup_valid = io.enq.valid;

    // lookup thread
    {
      int step = CH_CEILDIV(N, LookupCycles);
      for (int i = 1; i < N; ++i) {
        match_block_idx = ch_select((tags_[i].tag == io.enq.data.tag), i, ch_clone(match_block_idx));
        owned_block_idx = ch_select((tags_[i].owners & io.enq.data.owner) != 0, i, ch_clone(owned_block_idx));
        free_block_idx  = ch_select(tags_[i].owners == 0, i, ch_clone(free_block_idx));
        if (0 == (i % step)) {
          match_block_idx = ch_reg(match_block_idx);
          owned_block_idx = ch_reg(owned_block_idx);
          free_block_idx  = ch_reg(free_block_idx);
          lookup_valid    = ch_reg(lookup_valid);
        }
      }
      match_block_idx = ch_reg(match_block_idx);
      owned_block_idx = ch_reg(owned_block_idx);
      free_block_idx  = ch_reg(free_block_idx);
      lookup_valid    = ch_reg(lookup_valid);
    }

    //--
    ch_seq<ch_state> state;
    ch_seq<entry_t> enq_data;

    //--
    io.enq.ready = (state == ch_state::ready);

    // control thread
    {
      __switch (state) (
      __case (ch_state::ready) (
        __if (io.enq.valid) (
          // check if last used block matches (fast path)
          __if (io.enq.data.tag == last_used_tag_) (
            data_[last_used_idx_] = data_[last_used_idx_] | io.enq.data.data;
            tags_[last_used_idx_].owners = tags_[last_used_idx_].owners | io.enq.data.owner;
          )__else (
            enq_data.next = io.enq.data;
            state.next = ch_state::lookup;
          );
        )__elif (io.flush) (
          state.next = ch_state::flush;
        );
      )
      __case (ch_state::lookup) (
        // wait for lookup to complete
        __if (lookup_valid) (
          // found a matching block?
          __if (tags_[match_block_idx].valid
            &&  tags_[match_block_idx].tag == enq_data.tag) (

            // append data to matching block
            data_[match_block_idx] = data_[match_block_idx] | enq_data.data;
            tags_[match_block_idx].owners = tags_[match_block_idx].owners | enq_data.owner;

            // udpate last used block
            last_used_tag_.next = enq_data.tag;
            last_used_idx_.next = match_block_idx;

            // check if previous owned block is different
            __if ((tags_[owned_block_idx].owners & enq_data.owner) != 0
               && owned_block_idx != match_block_idx) (
              // if sole owner
              __if (tags_[owned_block_idx].owners == enq_data.owner) (
                // reset ownerhip
                tags_[owned_block_idx].owners = 0;
                // evict the block
                state.next = ch_state::evict;
              )__else (
                // clear ownership
                tags_[owned_block_idx].owners = tags_[owned_block_idx].owners & ~enq_data.owner;
                // done
                state.next = ch_state::ready;
              );
            );
          )__else (
            // add data to existing free block
            data_[free_block_idx] = enq_data.data;
            tags_[free_block_idx].owners = enq_data.owner;

            // flag block as valid
            tags_[free_block_idx].valid = true;

            // udpate last used block
            last_used_tag_.next = enq_data.tag;
            last_used_idx_.next = free_block_idx;

            // done
            state.next = ch_state::ready;
          );
        );
      )
      __case (ch_state::evict) (
        // send evicted block to LSU
        io.evict.data.owner = enq_data.owner;
        io.evict.data.tag   = tags_[owned_block_idx].tag;
        io.evict.data.data  = data_[owned_block_idx];
        io.evict.valid = true;
        // wait for the LSU ack
        __if (io.evict.ready) (
          // done
          state.next = ch_state::ready;
        );
      )
      __case (ch_state::flush) (
        ch_seq<ch_idx> counter;
        // send evicted block to LSU
        io.evict.data.owner = 0;
        io.evict.data.tag   = tags_[counter].tag;
        io.evict.data.data  = data_[counter];

        // check if block is dirty
        __if (tags_[counter].owners != 0) (
          io.evict.valid = true;
          // wait for the LSU ack
          __if (io.evict.ready) (
            // advance counter
            counter.next = counter + 1;
            __if (counter == (N-1)) (
              // done
              state.next = ch_state::ready;
            );
          );
        )__else (
          // advance counter
          counter.next = counter + 1;
          __if (counter == (N-1)) (
            // done
            state.next = ch_state::ready;
          );
        );
      )
      __default (
        //--
        io.evict.data.owner = 0;
        io.evict.data.tag   = 0;
        io.evict.data.data  = 0;
        io.evict.valid = false;
      ));
    }
  }
};

}
}
