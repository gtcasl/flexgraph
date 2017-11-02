#pragma once

#include "common.h"

namespace spmv {
namespace accelerator {

//
// Description:
// this code implements a vertex cache, entries are insert and evicted in fifo order.  
//

template <unsigned SIZE, unsigned DATA_WIDTH, unsigned TAG_WIDTH>
class vertex_cache {
public:
  
  enum {
    address_width = log2ceil(SIZE),
  };  
  
  using ch_addr_t = ch_bit<address_width>;
  using ch_tag_t  = ch_bit<TAG_WIDTH>;
  using ch_data_t = ch_bit<DATA_WIDTH>;  
  
  void emit() {
    // emit tag valid test
    ch_bit1 tag_valid[SIZE];
    ch_addr_t match_pos[SIZE];
    tag_valid[0] = (m_query_tag == (ch_tag_t)m_tags[0]);
    match_pos[0] = 0;
    for (int i = 1; i < SIZE; ++i) {
      tag_valid[i] = tag_valid[i-1] | (m_query_tag == (ch_tag_t)m_tags[i-1]);
      match_pos[i] = ch_select<address_width>((m_query_tag == (ch_tag_t)m_tags[i]), i, match_pos[i-1]);
    }
    m_query_valid.next = tag_valid[SIZE-1];
    m_query_pos.next = match_pos[SIZE-1];        
    
    // emit block insersion
    __if (m_enq_enable) (
      m_buf[m_pos] = m_enq_data;
      m_tags[m_pos] = m_enq_tag;  
      m_pos.next = m_pos + 1; // advance position
    )__else (
      m_pos.next = m_pos; 
    );    
      
    // match data
    m_query_data = m_buf[m_query_pos];
  }
  
  void enq_tag(const ch_tag_t& tag) {
    m_enq_tag = tag;
  }
  
  void enq_valid(const ch_bit1& enable) {
    m_enq_enable = enable;
  }
  
  void enq_data(const ch_data_t& data) {
    m_enq_data = data;
  }
  
  void query_tag(const ch_tag_t& tag) {
    m_query_tag = tag;
  }
  
  const ch_bit1& get_query_valid(const ch_tag_t& tag) const {
    return m_query_valid;
  }
  
  const ch_data_t& get_data() const {
    return m_query_data; 
  }

private:  
  
  ch_ram<DATA_WIDTH, address_width> m_buf;
  ch_ram<TAG_WIDTH, address_width> m_tags;
  ch_seq<ch_addr_t> m_pos;
    
  ch_bit1 m_enq_enable;
  ch_data_t m_enq_data;
  ch_tag_t m_enq_tag;
  
  ch_bit1 m_query_enable;
  ch_tag_t m_query_tag;
  ch_seq<ch_bit1> m_query_valid;
  ch_seq<ch_addr_t> m_query_pos;
  ch_data_t m_query_data;
};

}
}
