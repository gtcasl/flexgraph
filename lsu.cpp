#include "lsu.h"
#include "spmv.h"

using namespace spmv;
using namespace spmv::accelerator;

spmv_lsu::spmv_lsu()
  : m_writemask0_addr(PTR_MAX_VALUE)
  , m_writemask1_addr(PTR_MAX_VALUE) {
  // bind nested modules
  ctrl_.pbuf_module.io(ctrl_.pbuf_io);
  for (int i = 0; i < PE_COUNT; ++i) {
    pe_[i].axbuf_module.io(pe_[i].axbuf_io);
    pe_[i].asbuf_module.io(pe_[i].asbuf_io);
    pe_[i].aybuf_module.io(pe_[i].aybuf_io);
    pe_[i].avbuf_module.io(pe_[i].avbuf_io);
    pe_[i].xvbuf_module.io(pe_[i].xvbuf_io);
    pe_[i].xmbuf_module.io(pe_[i].xmbuf_io);
  }
}

spmv_lsu::~spmv_lsu() {
  //--
}

void spmv_lsu::describe() {
  this->read_req_thread();
  this->write_req_thread();
  this->read_rsp_thread();
  this->write_rsp0_thread();
  this->write_rsp1_thread();
  this->writemask_thread();

  //
  // return outputs
  //

}

ch_bit1 spmv_lsu::check_pe_buf_ready(uint32_t pe_id, const ch_rd_request& rq_type) {
  ch_bit1 ret;
  __switch (rq_type) (
  __case (ch_rd_request::a_xindices) (
    ret = (pe_[pe_id].axbuf_pending_size != AXBUF_SIZE);
  )
  __case (ch_rd_request::a_ystarts) (
    ret = (pe_[pe_id].asbuf_pending_size != ASBUF_SIZE);
  )
  __case (ch_rd_request::a_yindices) (
    ret = (pe_[pe_id].aybuf_pending_size != AYBUF_SIZE);
  )
  __case (ch_rd_request::a_values) (
    ret = (pe_[pe_id].avbuf_pending_size != AVBUF_SIZE);
  )
  __case (ch_rd_request::x_values) (
    ret = (pe_[pe_id].xvbuf_pending_size != XVBUF_SIZE);
  )
  __case (ch_rd_request::x_masks) (
    ret = (pe_[pe_id].xmbuf_pending_size != XMBUF_SIZE);
  )
  __default (
    ret = true;      
  ));
  return ret;
}

void spmv_lsu::update_pe_buf_pending_size(uint32_t pe_id, const ch_rd_request& rq_type) {
  __switch (rq_type) (
  __case (ch_rd_request::a_xindices) (
    pe_[pe_id].axbuf_pending_size.next = pe_[pe_id].axbuf_pending_size + 1 - ch_zext<32>(io.pe[pe_id].axbuf.ready);
  )
  __case (ch_rd_request::a_ystarts) (
    pe_[pe_id].asbuf_pending_size.next = pe_[pe_id].asbuf_pending_size + 1 - ch_zext<32>(io.pe[pe_id].asbuf.ready);
  )
  __case (ch_rd_request::a_yindices) (
    pe_[pe_id].aybuf_pending_size.next = pe_[pe_id].aybuf_pending_size + 1 - ch_zext<32>(io.pe[pe_id].aybuf.ready);
  )
  __case (ch_rd_request::a_values) (
    pe_[pe_id].avbuf_pending_size.next = pe_[pe_id].avbuf_pending_size + 1 - ch_zext<32>(io.pe[pe_id].avbuf.ready);
  )
  __case (ch_rd_request::x_values) (
    pe_[pe_id].xvbuf_pending_size.next = pe_[pe_id].xvbuf_pending_size + 1 - ch_zext<32>(io.pe[pe_id].xvbuf.ready);
  )
  __case (ch_rd_request::x_masks) (
    pe_[pe_id].xmbuf_pending_size.next = pe_[pe_id].xmbuf_pending_size + 1 - ch_zext<32>(io.pe[pe_id].xmbuf.ready);
  ));
}

void spmv_lsu::read_req_thread() {
  ch_seq<ch_rd_req_state> state;
  
  ch_bit1 pe0_buf_ready = this->check_pe_buf_ready(0, io.pe[0].rd_req.type);
  ch_bit1 pe1_buf_ready = this->check_pe_buf_ready(1, io.pe[1].rd_req.type);
  
  __switch (state) (
  __case (ch_rd_req_state::ping_PE0) (
    __if (io.pe[0].rd_req.syn != pe_[0].rd_req_ack
       && pe0_buf_ready) (
      // TODO: check if we have space in destination buffer
      pe_[0].rd_req_ack.next = io.pe[0].rd_req.ack;
      const auto& rq_type = io.pe[0].rd_req.type;
      m_qpi_out.next.rd_req.mdata = ch_rd_mdata_t(rq_type, ch_rq_owner::PE0);
      m_qpi_out.next.rd_req.addr = get_baseaddr(rq_type) + io.pe[0].rd_req.addr;
      this->update_pe_buf_pending_size(0, rq_type);      
      //__if (rq_type == ch_rd_request::x_masks) (
      //  state.next = ch_rd_req_state::get_x_mask;
      //)
      //__elif (rq_type == ch_rd_request::x_values) (
      //  state.next = ch_rd_req_state::get_x_value;
      //)
      //__else (
        state.next = ch_rd_req_state::submit;
      //);
    )
    __else (
      if (g_singlecore)
          state.next = ch_rd_req_state::ping_ctrl;
       else
          state.next = ch_rd_req_state::ping_PE1;
    );
  )
  __case (ch_rd_req_state::ping_PE1) (
    __if (io.pe[1].rd_req.syn != pe_[1].rd_req_ack
       && pe1_buf_ready) (
      // TODO: check if we have space in destination buffer
      pe_[1].rd_req_ack.next = io.pe[1].rd_req.ack;
      const auto& rq_type = io.pe[1].rd_req.type;
      m_qpi_out.next.rd_req.mdata = ch_rd_mdata_t(rq_type, ch_rq_owner::PE1);
      m_qpi_out.next.rd_req.addr = get_baseaddr(rq_type) + io.pe[1].rd_req.addr;
      this->update_pe_buf_pending_size(1, rq_type);
      //__if (rq_type == ch_rd_request::x_masks) (
      //  state.next = ch_rd_req_state::get_x_mask;
      //)
      //__elif (rq_type == ch_rd_request::x_values) (
      //  state.next = ch_rd_req_state::get_x_value;
      //)
      //__else (
        state.next = ch_rd_req_state::submit;
      //);
    )
    __else (
      state.next = ch_rd_req_state::ping_ctrl;
    );
  )
  __case (ch_rd_req_state::ping_ctrl) (
    // check if a resuest is pending and we have space in destination buffer
    __if ((m_ctrl.get_lsu_rd_req_ack() != ctrl_.rd_req_ack)
       && (m_pbuf_pending_size != PBUF_SIZE)) (
      ctrl_.rd_req_ack.next = m_ctrl.get_lsu_rd_req_ack();
      const auto& rq_type = m_ctrl.get_lsu_rd_req_type();
      m_qpi_out.next.rd_req.mdata = ch_rd_mdata_t(rq_type, ch_rq_owner::ctrl);
      m_qpi_out.next.rd_req.addr = get_baseaddr(rq_type) + m_ctrl.get_lsu_rd_req_addr();
      m_pbuf_pending_size.next = m_pbuf_pending_size + 1 - ch_zext<32>(m_ctrl.get_pbuf_dequeue());
      state.next = ch_rd_req_state::submit;
    )
    __else (
      state.next = ch_rd_req_state::ping_PE0;
    );
  )
  __case (ch_rd_req_state::submit) (
    // wait for QPI request ready
    __if (!m_qpi_in.rd_req_almostfull) (
      m_qpi_out.next.rd_req.valid = true;
      ch_rd_mdata_t mdata(m_qpi_out.rd_req.mdata);
      // move next
      __switch (mdata.owner) (
      __case (ch_rq_owner::PE0) (
        state.next = ch_rd_req_state::ping_PE1;    
      )
      __case (ch_rq_owner::PE1) (
        state.next = ch_rd_req_state::ping_ctrl;        
      )
      __default (
        state.next = ch_rd_req_state::ping_PE0;        
      ));      
    );
  )
  //__case (ch_rd_req_state::get_x_mask) (
  //  //--
  //)
  //__case (ch_rd_req_state::get_x_value) (
  //  //--
  //)
  __default (
    state.next = state;
    m_pbuf_pending_size.next = m_pbuf_pending_size - ch_zext<32>(m_ctrl.get_pbuf_dequeue());
    ctrl_.rd_req_ack.next = ctrl_.rd_req_ack;
    for (int i = 0; i < PE_COUNT; ++i) {
      m_pe_rd_req_ack[i].next = m_pe_rd_req_ack[i];
      
      m_axbuf_pending_size[i].next = m_axbuf_pending_size[i] - ch_zext<32>(m_PEs[i]->get_axbuf_dequeue());
      m_asbuf_pending_size[i].next = m_asbuf_pending_size[i] - ch_zext<32>(m_PEs[i]->get_asbuf_dequeue());
      m_aybuf_pending_size[i].next = m_aybuf_pending_size[i] - ch_zext<32>(m_PEs[i]->get_aybuf_dequeue());
      m_avbuf_pending_size[i].next = m_avbuf_pending_size[i] - ch_zext<32>(m_PEs[i]->get_avbuf_dequeue());
      m_xvbuf_pending_size[i].next = m_xvbuf_pending_size[i] - ch_zext<32>(m_PEs[i]->get_xvbuf_dequeue());
      m_xmbuf_pending_size[i].next = m_xmbuf_pending_size[i] - ch_zext<32>(m_PEs[i]->get_xmbuf_dequeue());
    }    
    m_qpi_out.next.rd_req.addr  = m_qpi_out.rd_req.addr;
    m_qpi_out.next.rd_req.mdata = m_qpi_out.rd_req.mdata;    
    m_qpi_out.next.rd_req.valid = false; // off by default
  ));  
    
  /*//--
  ch_print("{0}: lsu_rd_req: state={1}, ctrl_req={2}, pe0_req={3}, pe1_req={4}, ctrl_ack={5}, pe0_ack={6}, pe1_ack={7}, submit={8}, addr={9}, mdata={10}",
           ch_getTick(), state,
           m_ctrl.get_lsu_rd_req_ack() != ctrl_.rd_req_ack,
           io.pe[0].rd_req.ack != pe_[0].rd_req_ack,
           io.pe[1].rd_req.ack != pe_[1].rd_req_ack,
           ctrl_.rd_req_ack, pe_[0].rd_req_ack, pe_[1].rd_req_ack,
           m_qpi_out.rd_req.valid, m_qpi_out.rd_req.addr, m_qpi_out.rd_req.mdata);*/
} 

void spmv_lsu::write_req_thread() {
  ch_seq<ch_wr_req_state> state;
  
  auto wr_rsp_cnt = ch_select(m_qpi_in.wr_rsp0.valid & m_qpi_in.wr_rsp1.valid, 0x2_h32)
                                  (m_qpi_in.wr_rsp0.valid | m_qpi_in.wr_rsp1.valid, 0x1_h32)(0);
  
  __switch (state) (
  __case (ch_wr_req_state::ping_PE0) (
    __if (io.pe[0].wr_req.ack != pe_[0].wr_req_ack) (
      pe_[0].wr_req_ack.next = io.pe[0].wr_req.ack;
      const auto& rq_type = io.pe[0].wr_req.type;
      m_qpi_out.next.wr_req.data = io.pe[0].wr_req.data;
      m_qpi_out.next.wr_req.mdata = ch_wr_mdata_t(rq_type, ch_rq_owner::PE0);
      m_qpi_out.next.wr_req.addr = get_baseaddr(rq_type) + io.pe[0].wr_req.addr;
      __if (rq_type == ch_wr_request::y_masks) (
        m_pe_writemask_in.next = m_pe0_writemask;
        state.next = ch_wr_req_state::writemask;
      )
      __else (
        m_outstanding_writes.next = m_outstanding_writes + 1 - wr_rsp_cnt;
        state.next = ch_wr_req_state::submit;
      );
    )
    __else (
      if (g_singlecore)
          state.next = ch_wr_req_state::ping_ctrl;
       else
          state.next = ch_wr_req_state::ping_PE1;
    );
  )
  __case (ch_wr_req_state::ping_PE1) (
    __if (io.pe[1].wr_req.ack != pe_[1].wr_req_ack) (
      pe_[1].wr_req_ack.next = io.pe[1].wr_req.ack;
      const auto& rq_type = io.pe[1].wr_req.type;
      m_qpi_out.next.wr_req.data = io.pe[1].wr_req.data;
      m_qpi_out.next.wr_req.mdata = ch_wr_mdata_t(rq_type, ch_rq_owner::PE1);
      m_qpi_out.next.wr_req.addr = get_baseaddr(rq_type) + io.pe[1].wr_req.addr;
      __if (rq_type == ch_wr_request::y_masks) (
        m_pe_writemask_in.next = m_pe1_writemask;
        state.next = ch_wr_req_state::writemask;
      )
      __else (
        m_outstanding_writes.next = m_outstanding_writes + 1 - wr_rsp_cnt;
        state.next = ch_wr_req_state::submit;
      );
    )
    __else (
      state.next = ch_wr_req_state::ping_ctrl;
    );
  )
  __case (ch_wr_req_state::ping_ctrl) (
    __if (m_ctrl.get_lsu_wr_req_ack() != ctrl_.wr_req_ack) (
      ctrl_.wr_req_ack.next = m_ctrl.get_lsu_wr_req_ack();
      const auto& rq_type = m_ctrl.get_lsu_wr_req_type();
      m_qpi_out.next.wr_req.data = m_ctrl.get_lsu_wr_req_data();
      m_qpi_out.next.wr_req.mdata = ch_wr_mdata_t(rq_type, ch_rq_owner::ctrl);
      m_qpi_out.next.wr_req.addr = get_baseaddr(rq_type) + m_ctrl.get_lsu_wr_req_addr();
      __if (rq_type == ch_wr_request::y_masks) (
        state.next = ch_wr_req_state::flush_writemask1;
      )
      __else (
        m_outstanding_writes.next = m_outstanding_writes + 1 - wr_rsp_cnt;
        state.next = ch_wr_req_state::submit;
      );
    )
    __else (
      state.next = ch_wr_req_state::ping_PE0;
    );
  )
  __case (ch_wr_req_state::submit) (
    // wait for QPI request ready
    __if (!m_qpi_in.wr_req_almostfull) (
      m_qpi_out.next.wr_req.valid = true;      
      ch_wr_mdata_t mdata(m_qpi_out.wr_req.mdata);
      // move next
      __switch (mdata.owner) (
      __case (ch_rq_owner::PE0) (
        state.next = ch_wr_req_state::ping_PE1;    
      )
      __case (ch_rq_owner::PE1) (
        state.next = ch_wr_req_state::ping_ctrl;        
      )
      __default (
        state.next = ch_wr_req_state::ping_PE0;        
      ));
    );
  )
  __case (ch_wr_req_state::writemask) (
    // wait for the writemask controller to complete
    __if (m_writemask_state == ch_writemask_state::done) (
      ch_wr_mdata_t mdata(m_qpi_out.wr_req.mdata);
      __switch (mdata.owner) (
      __case (ch_rq_owner::PE0) (
        m_pe0_writemask.next = m_pe_writemask_out; // update mask assignment
        __if (m_writemask_flush_enable) (
          m_qpi_out.next.wr_req.data = m_writemask_flush;
          m_qpi_out.next.wr_req.mdata = ch_wr_mdata_t(ch_wr_request::y_masks, ch_rq_owner::PE0);
          m_qpi_out.next.wr_req.addr = m_writemask_flush_addr;
          m_outstanding_writes.next = m_outstanding_writes + 1 - wr_rsp_cnt;
          state.next = ch_wr_req_state::submit;    
        )
        __else (
          // move next
          state.next = ch_wr_req_state::ping_PE1;    
        );
      )
      __case (ch_rq_owner::PE1) (
        m_pe1_writemask.next = m_pe_writemask_out; // update mask assignment
        __if (m_writemask_flush_enable) (
          m_qpi_out.next.wr_req.data = m_writemask_flush;
          m_qpi_out.next.wr_req.mdata = ch_wr_mdata_t(ch_wr_request::y_masks, ch_rq_owner::PE1);
          m_qpi_out.next.wr_req.addr = m_writemask_flush_addr;
          m_outstanding_writes.next = m_outstanding_writes + 1 - wr_rsp_cnt;
          state.next = ch_wr_req_state::submit;    
        )
        __else (
          // move next
          state.next = ch_wr_req_state::ping_PE0;    
        );  
      ));      
    );    
  )
  __case (ch_wr_req_state::flush_writemask1) (
    // check if both writemasks are dirty
    __if ((m_writemask0_owners & m_writemask1_owners) != 0) (
      // wait for QPI request ready
      __if (!m_qpi_in.wr_req_almostfull) (
        m_qpi_out.next.wr_req.data = m_writemask0;
        m_qpi_out.next.wr_req.mdata = ch_wr_mdata_t(ch_wr_request::y_masks, ch_rq_owner::ctrl);
        m_qpi_out.next.wr_req.addr = m_writemask0_addr;
        m_qpi_out.next.wr_req.valid = true;
        m_outstanding_writes.next = m_outstanding_writes + 1 - wr_rsp_cnt;
        // flush the other mask
        state.next = ch_wr_req_state::flush_writemask2;
      );
    )
    __elif (m_writemask0_owners != 0) (
      // wait for QPI request ready
      __if (!m_qpi_in.wr_req_almostfull) (
        m_qpi_out.next.wr_req.data = m_writemask0;
        m_qpi_out.next.wr_req.mdata = ch_wr_mdata_t(ch_wr_request::y_masks, ch_rq_owner::ctrl);
        m_qpi_out.next.wr_req.addr = m_writemask0_addr;
        m_qpi_out.next.wr_req.valid = true;
        m_outstanding_writes.next = m_outstanding_writes + 1 - wr_rsp_cnt;
        // move next
        state.next = ch_wr_req_state::ping_PE0;
      );
    )
    __elif (m_writemask1_owners != 0) (
      // wait for QPI request ready
      __if (!m_qpi_in.wr_req_almostfull) (
        m_qpi_out.next.wr_req.data = m_writemask1;
        m_qpi_out.next.wr_req.mdata = ch_wr_mdata_t(ch_wr_request::y_masks, ch_rq_owner::ctrl);
        m_qpi_out.next.wr_req.addr = m_writemask1_addr;
        m_qpi_out.next.wr_req.valid = true;
        m_outstanding_writes.next = m_outstanding_writes + 1 - wr_rsp_cnt;
        // move next
        state.next = ch_wr_req_state::ping_PE0;
      );
    )
    __else (
      // move next
      state.next = ch_wr_req_state::ping_PE0;      
    );
  )
  __case (ch_wr_req_state::flush_writemask2) (
    // wait for QPI request ready
    __if (!m_qpi_in.wr_req_almostfull) (
      m_qpi_out.next.wr_req.data = m_writemask1;
      m_qpi_out.next.wr_req.mdata = ch_wr_mdata_t(ch_wr_request::y_masks, ch_rq_owner::ctrl);
      m_qpi_out.next.wr_req.addr = m_writemask1_addr;
      m_qpi_out.next.wr_req.valid = true;
      m_outstanding_writes.next = m_outstanding_writes + 1 - wr_rsp_cnt;
      state.next = ch_wr_req_state::ping_PE0;
    );     
  )
  __default (
    state.next = state;
    ctrl_.wr_req_ack.next = ctrl_.wr_req_ack;
    for (int i = 0; i < PE_COUNT; ++i) {
      m_pe_wr_req_ack[i].next = m_pe_wr_req_ack[i];
    }    
    m_qpi_out.next.wr_req.addr  = m_qpi_out.wr_req.addr;
    m_qpi_out.next.wr_req.mdata = m_qpi_out.wr_req.mdata;
    m_qpi_out.next.wr_req.data  = m_qpi_out.wr_req.data;
    m_qpi_out.next.wr_req.valid = false; // off by default
    
    m_pe0_writemask.next = m_pe0_writemask;
    m_pe1_writemask.next = m_pe1_writemask;
    m_pe_writemask_in.next = m_pe_writemask_in;
    
    m_outstanding_writes.next = m_outstanding_writes - wr_rsp_cnt;
  ));
    
  m_wr_req_state = state;
    
  /*//--
  ch_print("{0}: lsu_wr_req: state={1}, ctrl_ack={2}, pe0_ack={3}, pe1_ack={4}, submit={5}, addr={6}, mdata={7}, data={8}",
           ch_getTick(), state, ctrl_.wr_req_ack, pe_[0].wr_req_ack, pe_[1].wr_req_ack,
           m_qpi_out.wr_req.valid, m_qpi_out.wr_req.addr, m_qpi_out.wr_req.mdata, m_qpi_out.wr_req.data);*/
}

void spmv_lsu::writemask_thread() {
  ch_seq<ch_writemask_state> state;
  
  ch_wr_mdata_t mdata(m_qpi_out.wr_req.mdata);
  ch_bit<2> owner_mask = ch_select(mdata.owner == ch_rq_owner::PE0, 01_b2, 10_b2);
  
  __switch (state) (
  __case (ch_writemask_state::ready) (
    __if (m_wr_req_state == ch_wr_req_state::writemask) (
      __if (m_pe_writemask_in == 0) (
        state.next = ch_writemask_state::check_mask0;
      )
      __else (
        state.next = ch_writemask_state::check_mask1;      
      );
    );
  )
  __case (ch_writemask_state::check_mask0) (
    // check if address matches    
    __if (m_writemask0_addr == m_qpi_out.wr_req.addr) (
      // update the block and we are done
      m_writemask0.next = m_writemask0 | m_qpi_out.wr_req.data;       
      m_writemask0_owners.next = m_writemask0_owners | owner_mask;
      m_pe_writemask_out.next = 0;
      state.next = ch_writemask_state::done;
    )
    __else (
      // check if owned    
      __if ((m_writemask0_owners & owner_mask) != 0) (
        // check if we are the sole owner of the block
        __if (m_writemask0_owners == owner_mask) (
          // flush current block  
          m_writemask_flush.next = m_writemask0;
          m_writemask_flush_addr.next = m_writemask0_addr;
          m_writemask_flush_enable.next = true;
          // check if the other block address matches
          __if (m_writemask1_addr == m_qpi_out.wr_req.addr) (
            // clear current block ownership
            m_writemask0_owners.next = 0;          
            // update the other block and we are done
            m_writemask1.next = m_writemask1 | m_qpi_out.wr_req.data;
            m_writemask1_owners.next = m_writemask1_owners | owner_mask;
            m_pe_writemask_out.next = 1;
            state.next = ch_writemask_state::done;
          )
          __else (
            // overwrite current block and we are done
            m_writemask0_addr.next = m_qpi_out.wr_req.addr;          
            m_writemask0.next = m_qpi_out.wr_req.data;
            //m_writemask0_owners.next = owner_mask; - keep the ownerhip
            m_pe_writemask_out.next = 0;
            state.next = ch_writemask_state::done;     
          );
        )
        __else (
          // clear current block ownership
          m_writemask0_owners.next = m_writemask0_owners & ~owner_mask;
          // if current block still in use, the other block should be free
          // overwrite the other block and we are done
          m_writemask1_addr.next = m_qpi_out.wr_req.addr;
          m_writemask1.next = m_qpi_out.wr_req.data;
          m_writemask1_owners.next = owner_mask;
          m_pe_writemask_out.next = 1;
          state.next = ch_writemask_state::done;     
        );
      )
      __else (
        // we don't own the assigned block (happens at start up)
        // check if the other block address matches
        __if (m_writemask1_addr == m_qpi_out.wr_req.addr) (
          // update the other block and we are done
          m_writemask1.next = m_writemask1 | m_qpi_out.wr_req.data;
          m_writemask1_owners.next = m_writemask1_owners | owner_mask;
          m_pe_writemask_out.next = 1;
          state.next = ch_writemask_state::done;
        )
        __else (
          // check if current block is free
          __if (m_writemask0_owners == 0) (
            // overwrite current block and we are done
            m_writemask0_addr.next = m_qpi_out.wr_req.addr;
            m_writemask0.next = m_qpi_out.wr_req.data;
            m_writemask0_owners.next = owner_mask;
            m_pe_writemask_out.next = 0;
            state.next = ch_writemask_state::done;                     
          )
          __else (
            // if current block still in use, the other block should be free
            // overwrite the other block and we are done
            m_writemask1_addr.next = m_qpi_out.wr_req.addr;
            m_writemask1.next = m_qpi_out.wr_req.data;
            m_writemask1_owners.next = owner_mask;
            m_pe_writemask_out.next = 1;
            state.next = ch_writemask_state::done;          
          );
        );
      );        
    );      
  )
  __case (ch_writemask_state::check_mask1) (
    // check if address matches    
    __if (m_writemask1_addr == m_qpi_out.wr_req.addr) (
      // update the block and we are done
      m_writemask1.next = m_writemask1 | m_qpi_out.wr_req.data;
      m_writemask1_owners.next = m_writemask1_owners | owner_mask;
      m_pe_writemask_out.next = 1;
      state.next = ch_writemask_state::done;
    )
    __else (
      // check if owned    
      __if ((m_writemask1_owners & owner_mask) != 0) (
        // check if we are the sole owner of the block
        __if (m_writemask1_owners == owner_mask) (
          // flush current block  
          m_writemask_flush.next = m_writemask1;
          m_writemask_flush_addr.next = m_writemask1_addr;
          m_writemask_flush_enable.next = true;
          // check if the other block address matches
          __if (m_writemask0_addr == m_qpi_out.wr_req.addr) (
            // clear current block ownership
            m_writemask1_owners.next = 0;          
            // update the other block and we are done
            m_writemask0.next = m_writemask0 | m_qpi_out.wr_req.data;
            m_writemask0_owners.next = m_writemask0_owners | owner_mask;
            m_pe_writemask_out.next = 0;
            state.next = ch_writemask_state::done;
          )
          __else (
            // overwrite current block and we are done
            m_writemask1_addr.next = m_qpi_out.wr_req.addr;          
            m_writemask1.next = m_qpi_out.wr_req.data;
            //m_writemask1_owners.next = owner_mask; - keep the ownerhip
            m_pe_writemask_out.next = 1;
            state.next = ch_writemask_state::done;     
          );
        )
        __else (
          // clear current block ownership
          m_writemask1_owners.next = m_writemask1_owners & ~owner_mask;
          // if current block still in use, the other block should be free
          // overwrite the other block and we are done
          m_writemask0_addr.next = m_qpi_out.wr_req.addr;
          m_writemask0.next = m_qpi_out.wr_req.data;
          m_writemask0_owners.next = owner_mask;
          m_pe_writemask_out.next = 0;
          state.next = ch_writemask_state::done;     
        );
      )
      __else (
        // we don't own the assigned block (happens at start up)
        // check if the other block address matches
        __if (m_writemask0_addr == m_qpi_out.wr_req.addr) (
          // update the other block and we are done
          m_writemask0.next = m_writemask0 | m_qpi_out.wr_req.data;
          m_writemask0_owners.next = m_writemask1_owners | owner_mask;
          m_pe_writemask_out.next = 0;
          state.next = ch_writemask_state::done;
        )
        __else (
          // check if current block is free
          __if (m_writemask1_owners == 0) (
            // overwrite current block and we are done
            m_writemask1_addr.next = m_qpi_out.wr_req.addr;
            m_writemask1.next = m_qpi_out.wr_req.data;
            m_writemask1_owners.next = owner_mask;
            m_pe_writemask_out.next = 1;
            state.next = ch_writemask_state::done;                     
          )
          __else (
            // if current block still in use, the other block should be free
            // overwrite the other block and we are done
            m_writemask0_addr.next = m_qpi_out.wr_req.addr;
            m_writemask0.next = m_qpi_out.wr_req.data;
            m_writemask0_owners.next = owner_mask;
            m_pe_writemask_out.next = 0;
            state.next = ch_writemask_state::done;          
          );
        );
      );        
    );       
  )
  __case (ch_writemask_state::done) (
    __if (m_wr_req_state != ch_wr_req_state::writemask) (
      state.next = ch_writemask_state::ready;  
    );
  )
  __default (
    state.next = state; 
    m_writemask0.next = m_writemask0;
    m_writemask1.next = m_writemask1;
    m_writemask0_addr.next = m_writemask0_addr;
    m_writemask1_addr.next = m_writemask1_addr;
    m_writemask0_owners.next = m_writemask0_owners;
    m_writemask1_owners.next = m_writemask1_owners;
    m_writemask_flush.next = m_writemask_flush;
    m_writemask_flush_addr.next = m_writemask_flush_addr;
    m_writemask_flush_enable.next = false; // off by default
    m_pe_writemask_out.next = m_pe_writemask_out;
  ));  
  
  m_writemask_state = state;
  
  /*ch_print("{0}: writemask: state={1}, m_i={2}, m_o={3}, m0_a={4}, m0_o={5}, m1_a={6}, m1_o={7}, m0={8}, m1={9}, owner={10}, addr={11}, f_e={12}, f_a={13}, f_v={14}",
             ch_getTick(), state, 
             m_pe_writemask_in, m_pe_writemask_out, m_writemask0_addr, m_writemask0_owners, m_writemask1_addr, m_writemask1_owners, m_writemask0, m_writemask1,
             m_qpi_out.wr_req.mdata.slice<2>(), m_qpi_out.wr_req.addr,
             m_writemask_flush_enable, m_writemask_flush_addr, m_writemask_flush);*/
}

void spmv_lsu::read_rsp_thread() {
  __if (m_qpi_in.rd_rsp.valid) (
    ch_rd_mdata_t mdata = m_qpi_in.rd_rsp.mdata;
    __switch (mdata.owner) (
    __case (ch_rq_owner::PE0) (
      __switch (mdata.type) (
      __case (ch_rd_request::a_xindices) (pe_[0].axbuf.enq_valid(1_b);)
      __case (ch_rd_request::a_ystarts) (pe_[0].asbuf.enq_valid(1_b);)
      __case (ch_rd_request::a_yindices) (pe_[0].aybuf.enq_valid(1_b);)
      __case (ch_rd_request::a_values) (pe_[0].avbuf.enq_valid(1_b);)
      __case (ch_rd_request::x_values) (pe_[0].xvbuf.enq_valid(1_b);)
      __case (ch_rd_request::x_masks) (pe_[0].xmbuf.enq_valid(1_b);)
      );
      pe_[0].rd_rsp_type.next = mdata.type;
      pe_[0].rd_rsp_valid.next = pe_[0].rd_req_ack;
    )
    __case (ch_rq_owner::PE1) (
      __switch (mdata.type) (
      __case (ch_rd_request::a_xindices) (pe_[1].axbuf.enq_valid(1_b);)
      __case (ch_rd_request::a_ystarts) (pe_[1].asbuf.enq_valid(1_b);)
      __case (ch_rd_request::a_yindices) (pe_[1].aybuf.enq_valid(1_b);)
      __case (ch_rd_request::a_values) (pe_[1].avbuf.enq_valid(1_b);)
      __case (ch_rd_request::x_values) (pe_[1].xvbuf.enq_valid(1_b);)
      __case (ch_rd_request::x_masks) (pe_[1].xmbuf.enq_valid(1_b);)
      );
      pe_[1].rd_rsp_type.next = mdata.type;
      pe_[1].rd_rsp_valid.next = pe_[1].rd_req_ack;
    )
    __default (
      m_pbuf.enq_valid(1_b);
      ctrl_.rd_rsp_type.next = mdata.type;
      ctrl_.rd_rsp_valid.next = ctrl_.rd_req_ack;
    ));    
  )
  __else (
    m_pbuf.enq_valid(0_b);
    ctrl_.rd_rsp_valid.next = ctrl_.rd_rsp_valid;
    ctrl_.rd_rsp_type.next = ctrl_.rd_rsp_type;
    for (int i = 0; i < PE_COUNT; ++i) {
      m_pe_rd_rsp_valid[i].next = m_pe_rd_rsp_valid[i];
      m_pe_rd_rsp_type[i].next = m_pe_rd_rsp_type[i];
      m_pe_axbuf[i].enq_valid(0_b);
      m_pe_asbuf[i].enq_valid(0_b);
      m_pe_aybuf[i].enq_valid(0_b);
      m_pe_avbuf[i].enq_valid(0_b);
      m_pe_xvbuf[i].enq_valid(0_b);
      m_pe_xmbuf[i].enq_valid(0_b);
    }
  ); 
    
  /*//--
  ch_print("{0}: lsu_rd_rsp: ctrl_ack={1}, pe0_ack={2}, pe1_ack={3}, pbuf_enq={4}, rsp_mdat={5}, rsp_dat={6}",
           ch_getTick(), ctrl_.rd_rsp_valid, pe_[0].rd_rsp_valid, pe_[1].rd_rsp_valid,
           m_pbuf.enq_valid(), m_qpi_in.rd_rsp.mdata, m_qpi_in.rd_rsp.data);*/
}

void spmv_lsu::write_rsp0_thread() {
  // QPI write responses can come from either channel0 or channel 1
  // we need to check both channels for a specific owner
  
  __if (m_qpi_in.wr_rsp0.valid) (
    ch_wr_mdata_t mdata = m_qpi_in.wr_rsp0.mdata;
    __switch (mdata.owner) (
    __case (ch_rq_owner::PE0) (
      pe_[0].wr_rsp0_type.next = mdata.type;
      pe_[0].wr_rsp0_ack.next = pe_[0].wr_req_ack;
    )
    __case (ch_rq_owner::PE1) (
      pe_[1].wr_rsp0_type.next = mdata.type;
      pe_[1].wr_rsp0_ack.next = pe_[1].wr_req_ack;
    )
    __default (
      ctrl_.wr_rsp0_type.next = mdata.type;
      ctrl_.wr_rsp0_ack.next = ctrl_.wr_req_ack;
    ));        
  )
  __else (
    ctrl_.wr_rsp0_ack.next = ctrl_.wr_rsp0_ack;
    ctrl_.wr_rsp0_type.next = ctrl_.wr_rsp0_type;
    for (int i = 0; i < PE_COUNT; ++i) {
      m_pe_wr_rsp0_ack[i].next = m_pe_wr_rsp0_ack[i];
      m_pe_wr_rsp0_type[i].next = m_pe_wr_rsp0_type[i];
    }
  );

  /*
  ch_print("{0}: lsu_wr_rsp: ctrl_ack0={1}, ctrl_ack1={2}, pe0_ack0={3}, pe0_ack1={4}, pe1_ack0={5}, pe1_ack1={6}, rsp_val={7}, rsp0_mdat={8}, rsp1_mdat={9}",
           ch_getTick(), ctrl_.wr_rsp0_ack, ctrl_.wr_rsp1_ack,
           pe_[0].wr_rsp0_ack, pe_[0].wr_rsp1_ack,
           pe_[1].wr_rsp0_ack, pe_[1].wr_rsp1_ack,
           (m_qpi_in.wr_rsp0.valid, m_qpi_in.wr_rsp1.valid), m_qpi_in.wr_rsp0.mdata, m_qpi_in.wr_rsp1.mdata);*/
}

void spmv_lsu::write_rsp1_thread() {
  __if (m_qpi_in.wr_rsp1.valid) (
    ch_wr_mdata_t mdata = m_qpi_in.wr_rsp1.mdata;
    __switch (mdata.owner) (
    __case (ch_rq_owner::PE0) (
      pe_[0].wr_rsp1_type.next = mdata.type;
      pe_[0].wr_rsp1_ack.next = pe_[0].wr_req_ack;
    )
    __case (ch_rq_owner::PE1) (
      pe_[1].wr_rsp1_type.next = mdata.type;
      pe_[1].wr_rsp1_ack.next = pe_[1].wr_req_ack;
    )
    __default (
      ctrl_.wr_rsp1_type.next = mdata.type;
      ctrl_.wr_rsp1_ack.next = ctrl_.wr_req_ack;
    ));
  )
  __else (
    ctrl_.wr_rsp1_ack.next = ctrl_.wr_rsp1_ack;
    ctrl_.wr_rsp1_type.next = ctrl_.wr_rsp1_type;
    for (int i = 0; i < PE_COUNT; ++i) {
      m_pe_wr_rsp1_ack[i].next = m_pe_wr_rsp1_ack[i];
      m_pe_wr_rsp1_type[i].next = m_pe_wr_rsp1_type[i];
    }
  );

  /*
  ch_print("{0}: lsu_wr_rsp: ctrl_ack0={1}, ctrl_ack1={2}, pe0_ack0={3}, pe0_ack1={4}, pe1_ack0={5}, pe1_ack1={6}, rsp_val={7}, rsp0_mdat={8}, rsp1_mdat={9}",
           ch_getTick(), ctrl_.wr_rsp0_ack, ctrl_.wr_rsp1_ack,
           pe_[0].wr_rsp0_ack, pe_[0].wr_rsp1_ack,
           pe_[1].wr_rsp0_ack, pe_[1].wr_rsp1_ack,
           (m_qpi_in.wr_rsp0.valid, m_qpi_in.wr_rsp1.valid), m_qpi_in.wr_rsp0.mdata, m_qpi_in.wr_rsp1.mdata);*/
}

ch_blk_addr spmv_lsu::get_baseaddr(const ch_rd_request& rq_type) {
  ch_blk_addr addr;
  __switch (rq_type) (
  __case (ch_rd_request::a_partition) (addr = m_ctx.a.partitions;)
  __case (ch_rd_request::a_xindices)  (addr = m_ctx.a.xindices;)
  __case (ch_rd_request::a_ystarts)   (addr = m_ctx.a.ystarts;)
  __case (ch_rd_request::a_yindices)  (addr = m_ctx.a.yindices;)
  __case (ch_rd_request::a_values)    (addr = m_ctx.a.values;)
  __case (ch_rd_request::x_values)    (addr = m_ctx.x.values;)
  __default (addr = m_ctx.x.masks;)
  );
  return addr;
}

ch_blk_addr spmv_lsu::get_baseaddr(const ch_wr_request& rq_type) {
  ch_blk_addr addr;
  __switch (rq_type) (
  __case (ch_wr_request::y_values)   (addr = m_ctx.y.values;)
  __case (ch_wr_request::y_masks)    (addr = m_ctx.y.masks;)
  __default (addr = m_ctx.hwcntrs;)
  );
  return addr;
}
