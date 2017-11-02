#include "lsu.h"
#include "spmv.h"

using namespace spmv;
using namespace spmv::accelerator;

spmv_lsu::spmv_lsu()
  : m_writemask0_addr(PTR_MAX_VALUE)
  , m_writemask1_addr(PTR_MAX_VALUE) {
  //
  // io binding
  //
  io.ctrl.rd_req.ack = ctrl_.rd_req_ack;
  io.ctrl.wr_req.ack = ctrl_.wr_req_ack;
  io.ctrl.pbuf(ctrl_.pbuf.io.deq);
  ctrl_.pbuf.io.enq.data = io.qpi.rd_rsp.data;
  io.ctrl.outstanding_writes = outstanding_writes_;

  for (int i =0; i < PE_COUNT; ++i) {
    io.pe[i].rd_req.ack  = pe_[i].rd_req_ack;
    io.pe[i].rd_rsp.syn  = pe_[i].rd_rsp_valid;
    io.pe[i].rd_rsp.type = pe_[i].rd_rsp_type;

    io.pe[i].wr_req.ack  = pe_[i].wr_req_ack;

    io.pe[i].axbuf(pe_[i].axbuf.io.deq);    
    io.pe[i].asbuf(pe_[i].asbuf.io.deq);
    io.pe[i].aybuf(pe_[i].aybuf.io.deq);
    io.pe[i].avbuf(pe_[i].avbuf.io.deq);    
    io.pe[i].xvbuf(pe_[i].xvbuf.io.deq);
    io.pe[i].xmbuf(pe_[i].xmbuf.io.deq);

    io.pe[i].avbuf_size(pe_[i].avbuf.io.size);

    pe_[i].axbuf.io.enq.data = io.qpi.rd_rsp.data;
    pe_[i].asbuf.io.enq.data = io.qpi.rd_rsp.data;
    pe_[i].aybuf.io.enq.data = io.qpi.rd_rsp.data;
    pe_[i].avbuf.io.enq.data = io.qpi.rd_rsp.data;
    pe_[i].xvbuf.io.enq.data = io.qpi.rd_rsp.data;
    pe_[i].xmbuf.io.enq.data = io.qpi.rd_rsp.data;
  }
}

spmv_lsu::~spmv_lsu() {}

void spmv_lsu::describe() {
  // emit threads
  this->read_req_thread();
  this->write_req_thread();
  this->read_rsp_thread();
  this->write_rsp0_thread();
  this->write_rsp1_thread();
  this->writemask_thread();
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

  ch_seq<ch_rd_mdata_t> qpi_rd_req_mdata;
  io.qpi.rd_req.mdata = ch_zext<aal::aal_qpi0::mdata_width>(qpi_rd_req_mdata.asBits());

  auto qpi_rd_req_addr  = io.qpi.rd_req.addr.asSeq();
  auto qpi_rd_req_valid = io.qpi.rd_req.valid.asSeq();
  
  __switch (state) (
  __case (ch_rd_req_state::ping_PE0) (
    __if (io.pe[0].rd_req.syn != pe_[0].rd_req_ack
       && pe0_buf_ready) (
      // TODO: check if we have space in destination buffer
      pe_[0].rd_req_ack.next = io.pe[0].rd_req.ack;
      const auto& rq_type = io.pe[0].rd_req.type;
      qpi_rd_req_mdata.next = ch_rd_mdata_t(ch_rq_owner::PE0, rq_type);
      qpi_rd_req_addr.next = get_baseaddr(rq_type) + io.pe[0].rd_req.addr;
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
      qpi_rd_req_mdata.next = ch_rd_mdata_t(ch_rq_owner::PE1, rq_type);
      qpi_rd_req_addr.next = get_baseaddr(rq_type) + io.pe[1].rd_req.addr;
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
    __if ((io.ctrl.rd_req.ack != ctrl_.rd_req_ack)
       && (ctrl_.pbuf_pending_size != PBUF_SIZE)) (
      ctrl_.rd_req_ack.next = io.ctrl.rd_req.ack;
      const auto& rq_type = io.ctrl.rd_req.type;
      qpi_rd_req_mdata.next = ch_rd_mdata_t(ch_rq_owner::ctrl, rq_type);
      qpi_rd_req_addr.next = get_baseaddr(rq_type) + io.ctrl.rd_req.addr;
      ctrl_.pbuf_pending_size.next = ctrl_.pbuf_pending_size + 1 - ch_zext<32>(io.ctrl.pbuf.ready);
      state.next = ch_rd_req_state::submit;
    )
    __else (
      state.next = ch_rd_req_state::ping_PE0;
    );
  )
  __case (ch_rd_req_state::submit) (
    // wait for QPI request ready
    __if (!io.qpi.rd_req.almostfull) (
      qpi_rd_req_valid.next = true;
      // move next
      __switch (qpi_rd_req_mdata.owner) (
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
    ctrl_.pbuf_pending_size.next = ctrl_.pbuf_pending_size - ch_zext<32>(io.ctrl.pbuf.ready);
    for (int i = 0; i < PE_COUNT; ++i) {
      pe_[i].axbuf_pending_size.next = pe_[i].axbuf_pending_size - ch_zext<32>(io.pe[i].axbuf.ready);
      pe_[i].asbuf_pending_size.next = pe_[i].asbuf_pending_size - ch_zext<32>(io.pe[i].asbuf.ready);
      pe_[i].aybuf_pending_size.next = pe_[i].aybuf_pending_size - ch_zext<32>(io.pe[i].aybuf.ready);
      pe_[i].avbuf_pending_size.next = pe_[i].avbuf_pending_size - ch_zext<32>(io.pe[i].avbuf.ready);
      pe_[i].xvbuf_pending_size.next = pe_[i].xvbuf_pending_size - ch_zext<32>(io.pe[i].xvbuf.ready);
      pe_[i].xmbuf_pending_size.next = pe_[i].xmbuf_pending_size - ch_zext<32>(io.pe[i].xmbuf.ready);
    }
    qpi_rd_req_valid.next = false; // off by default
  ));
    
  /*//--
  ch_print("{0}: lsu_rd_req: state={1}, ctrl_req={2}, pe0_req={3}, pe1_req={4}, ctrl_ack={5}, pe0_ack={6}, pe1_ack={7}, submit={8}, addr={9}, mdata={10}",
           ch_getTick(), state,
           m_ctrl.get_lsu_rd_req_ack() != ctrl_.rd_req_ack,
           io.pe[0].rd_req.ack != pe_[0].rd_req_ack,
           io.pe[1].rd_req.ack != pe_[1].rd_req_ack,
           ctrl_.rd_req_ack, pe_[0].rd_req_ack, pe_[1].rd_req_ack,
           io.qpi.rd_req.valid, io.qpi.rd_req.addr, io.qpi.rd_req.mdata);*/
} 

void spmv_lsu::write_req_thread() {
  ch_seq<ch_wr_req_state> state;

  ch_seq<ch_wr_mdata_t> qpi_wr_req_mdata;
  io.qpi.wr_req.mdata = ch_zext<aal::aal_qpi0::mdata_width>(qpi_wr_req_mdata.asBits());

  auto qpi_wr_req_addr  = io.qpi.wr_req.addr.asSeq();
  auto qpi_wr_req_data  = io.qpi.wr_req.data.asSeq();
  auto qpi_wr_req_valid = io.qpi.wr_req.valid.asSeq();
  
  auto wr_rsp_cnt = ch_select(io.qpi.wr_rsp0.valid & io.qpi.wr_rsp1.valid, 0x2_h32)
                                  (io.qpi.wr_rsp0.valid | io.qpi.wr_rsp1.valid, 0x1_h32)(0);
  
  __switch (state) (
  __case (ch_wr_req_state::ping_PE0) (
    __if (io.pe[0].wr_req.ack != pe_[0].wr_req_ack) (
      pe_[0].wr_req_ack.next = io.pe[0].wr_req.ack;
      const auto& rq_type = io.pe[0].wr_req.type;
      qpi_wr_req_data.next = io.pe[0].wr_req.data;
      qpi_wr_req_mdata.next = ch_wr_mdata_t(ch_rq_owner::PE0, rq_type);
      qpi_wr_req_addr.next = get_baseaddr(rq_type) + io.pe[0].wr_req.addr;
      __if (rq_type == ch_wr_request::y_masks) (
        m_pe_writemask_in.next = m_pe0_writemask;
        state.next = ch_wr_req_state::writemask;
      )
      __else (
        outstanding_writes_.next = outstanding_writes_ + 1 - wr_rsp_cnt;
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
      qpi_wr_req_data.next = io.pe[1].wr_req.data;
      qpi_wr_req_mdata.next = ch_wr_mdata_t(ch_rq_owner::PE1, rq_type);
      qpi_wr_req_addr.next = get_baseaddr(rq_type) + io.pe[1].wr_req.addr;
      __if (rq_type == ch_wr_request::y_masks) (
        m_pe_writemask_in.next = m_pe1_writemask;
        state.next = ch_wr_req_state::writemask;
      )
      __else (
        outstanding_writes_.next = outstanding_writes_ + 1 - wr_rsp_cnt;
        state.next = ch_wr_req_state::submit;
      );
    )
    __else (
      state.next = ch_wr_req_state::ping_ctrl;
    );
  )
  __case (ch_wr_req_state::ping_ctrl) (
    __if (io.ctrl.wr_req.ack != ctrl_.wr_req_ack) (
      ctrl_.wr_req_ack.next = io.ctrl.wr_req.ack;
      const auto& rq_type = io.ctrl.wr_req.type;
      qpi_wr_req_data.next = io.ctrl.wr_req.data;
      qpi_wr_req_mdata.next = ch_wr_mdata_t(ch_rq_owner::ctrl, rq_type);
      qpi_wr_req_addr.next = get_baseaddr(rq_type) + io.ctrl.wr_req.addr;
      __if (rq_type == ch_wr_request::y_masks) (
        state.next = ch_wr_req_state::flush_writemask1;
      )
      __else (
        outstanding_writes_.next = outstanding_writes_ + 1 - wr_rsp_cnt;
        state.next = ch_wr_req_state::submit;
      );
    )
    __else (
      state.next = ch_wr_req_state::ping_PE0;
    );
  )
  __case (ch_wr_req_state::submit) (
    // wait for QPI request ready
    __if (!io.qpi.wr_req.almostfull) (
      qpi_wr_req_valid.next = true;
      ch_wr_mdata_t mdata(qpi_wr_req_mdata);
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
      ch_wr_mdata_t mdata(qpi_wr_req_mdata);
      __switch (mdata.owner) (
      __case (ch_rq_owner::PE0) (
        m_pe0_writemask.next = m_pe_writemask_out; // update mask assignment
        __if (m_writemask_flush_enable) (
          qpi_wr_req_data.next = m_writemask_flush;
          qpi_wr_req_mdata.next = ch_wr_mdata_t(ch_rq_owner::PE0, ch_wr_request::y_masks);
          qpi_wr_req_addr.next = m_writemask_flush_addr;
          outstanding_writes_.next = outstanding_writes_ + 1 - wr_rsp_cnt;
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
          qpi_wr_req_data.next = m_writemask_flush;
          qpi_wr_req_mdata.next = ch_wr_mdata_t(ch_rq_owner::PE1, ch_wr_request::y_masks);
          qpi_wr_req_addr.next = m_writemask_flush_addr;
          outstanding_writes_.next = outstanding_writes_ + 1 - wr_rsp_cnt;
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
      __if (!io.qpi.wr_req.almostfull) (
        qpi_wr_req_data.next = m_writemask0;
        qpi_wr_req_mdata.next = ch_wr_mdata_t(ch_rq_owner::ctrl, ch_wr_request::y_masks);
        qpi_wr_req_addr.next = m_writemask0_addr;
        qpi_wr_req_valid.next = true;
        outstanding_writes_.next = outstanding_writes_ + 1 - wr_rsp_cnt;
        // flush the other mask
        state.next = ch_wr_req_state::flush_writemask2;
      );
    )
    __elif (m_writemask0_owners != 0) (
      // wait for QPI request ready
      __if (!io.qpi.wr_req.almostfull) (
        qpi_wr_req_data.next = m_writemask0;
        qpi_wr_req_mdata.next = ch_wr_mdata_t(ch_rq_owner::ctrl, ch_wr_request::y_masks);
        qpi_wr_req_addr.next = m_writemask0_addr;
        qpi_wr_req_valid.next = true;
        outstanding_writes_.next = outstanding_writes_ + 1 - wr_rsp_cnt;
        // move next
        state.next = ch_wr_req_state::ping_PE0;
      );
    )
    __elif (m_writemask1_owners != 0) (
      // wait for QPI request ready
      __if (!io.qpi.wr_req.almostfull) (
        qpi_wr_req_data.next = m_writemask1;
        qpi_wr_req_mdata.next = ch_wr_mdata_t(ch_rq_owner::ctrl, ch_wr_request::y_masks);
        qpi_wr_req_addr.next = m_writemask1_addr;
        qpi_wr_req_valid.next = true;
        outstanding_writes_.next = outstanding_writes_ + 1 - wr_rsp_cnt;
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
    __if (!io.qpi.wr_req.almostfull) (
      qpi_wr_req_data.next = m_writemask1;
      qpi_wr_req_mdata.next = ch_wr_mdata_t(ch_rq_owner::ctrl, ch_wr_request::y_masks);
      qpi_wr_req_addr.next = m_writemask1_addr;
      qpi_wr_req_valid.next = true;
      outstanding_writes_.next = outstanding_writes_ + 1 - wr_rsp_cnt;
      state.next = ch_wr_req_state::ping_PE0;
    );     
  )
  __default (
    qpi_wr_req_valid.next = false; // off by default
    outstanding_writes_.next = outstanding_writes_ - wr_rsp_cnt;
  ));    

  m_wr_req_state = state;
    
  /*//--
  ch_print("{0}: lsu_wr_req: state={1}, ctrl_ack={2}, pe0_ack={3}, pe1_ack={4}, submit={5}, addr={6}, mdata={7}, data={8}",
           ch_getTick(), state, ctrl_.wr_req_ack, pe_[0].wr_req_ack, pe_[1].wr_req_ack,
           io.qpi.wr_req.valid, io.qpi.wr_req.addr, io.qpi.wr_req.mdata, io.qpi.wr_req.data);*/
}

void spmv_lsu::writemask_thread() {
  ch_seq<ch_writemask_state> state;
  
  auto mdata = io.qpi.wr_req.mdata.slice<ch_bitwidth_v<ch_wr_mdata_t>>().as<ch_wr_mdata_t>();
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
    __if (m_writemask0_addr == io.qpi.wr_req.addr) (
      // update the block and we are done
      m_writemask0.next = m_writemask0 | io.qpi.wr_req.data;
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
          __if (m_writemask1_addr == io.qpi.wr_req.addr) (
            // clear current block ownership
            m_writemask0_owners.next = 0;          
            // update the other block and we are done
            m_writemask1.next = m_writemask1 | io.qpi.wr_req.data;
            m_writemask1_owners.next = m_writemask1_owners | owner_mask;
            m_pe_writemask_out.next = 1;
            state.next = ch_writemask_state::done;
          )
          __else (
            // overwrite current block and we are done
            m_writemask0_addr.next = io.qpi.wr_req.addr;
            m_writemask0.next = io.qpi.wr_req.data;
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
          m_writemask1_addr.next = io.qpi.wr_req.addr;
          m_writemask1.next = io.qpi.wr_req.data;
          m_writemask1_owners.next = owner_mask;
          m_pe_writemask_out.next = 1;
          state.next = ch_writemask_state::done;     
        );
      )
      __else (
        // we don't own the assigned block (happens at start up)
        // check if the other block address matches
        __if (m_writemask1_addr == io.qpi.wr_req.addr) (
          // update the other block and we are done
          m_writemask1.next = m_writemask1 | io.qpi.wr_req.data;
          m_writemask1_owners.next = m_writemask1_owners | owner_mask;
          m_pe_writemask_out.next = 1;
          state.next = ch_writemask_state::done;
        )
        __else (
          // check if current block is free
          __if (m_writemask0_owners == 0) (
            // overwrite current block and we are done
            m_writemask0_addr.next = io.qpi.wr_req.addr;
            m_writemask0.next = io.qpi.wr_req.data;
            m_writemask0_owners.next = owner_mask;
            m_pe_writemask_out.next = 0;
            state.next = ch_writemask_state::done;                     
          )
          __else (
            // if current block still in use, the other block should be free
            // overwrite the other block and we are done
            m_writemask1_addr.next = io.qpi.wr_req.addr;
            m_writemask1.next = io.qpi.wr_req.data;
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
    __if (m_writemask1_addr == io.qpi.wr_req.addr) (
      // update the block and we are done
      m_writemask1.next = m_writemask1 | io.qpi.wr_req.data;
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
          __if (m_writemask0_addr == io.qpi.wr_req.addr) (
            // clear current block ownership
            m_writemask1_owners.next = 0;          
            // update the other block and we are done
            m_writemask0.next = m_writemask0 | io.qpi.wr_req.data;
            m_writemask0_owners.next = m_writemask0_owners | owner_mask;
            m_pe_writemask_out.next = 0;
            state.next = ch_writemask_state::done;
          )
          __else (
            // overwrite current block and we are done
            m_writemask1_addr.next = io.qpi.wr_req.addr;
            m_writemask1.next = io.qpi.wr_req.data;
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
          m_writemask0_addr.next = io.qpi.wr_req.addr;
          m_writemask0.next = io.qpi.wr_req.data;
          m_writemask0_owners.next = owner_mask;
          m_pe_writemask_out.next = 0;
          state.next = ch_writemask_state::done;     
        );
      )
      __else (
        // we don't own the assigned block (happens at start up)
        // check if the other block address matches
        __if (m_writemask0_addr == io.qpi.wr_req.addr) (
          // update the other block and we are done
          m_writemask0.next = m_writemask0 | io.qpi.wr_req.data;
          m_writemask0_owners.next = m_writemask1_owners | owner_mask;
          m_pe_writemask_out.next = 0;
          state.next = ch_writemask_state::done;
        )
        __else (
          // check if current block is free
          __if (m_writemask1_owners == 0) (
            // overwrite current block and we are done
            m_writemask1_addr.next = io.qpi.wr_req.addr;
            m_writemask1.next = io.qpi.wr_req.data;
            m_writemask1_owners.next = owner_mask;
            m_pe_writemask_out.next = 1;
            state.next = ch_writemask_state::done;                     
          )
          __else (
            // if current block still in use, the other block should be free
            // overwrite the other block and we are done
            m_writemask0_addr.next = io.qpi.wr_req.addr;
            m_writemask0.next = io.qpi.wr_req.data;
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
             io.qpi.wr_req.mdata.slice<2>(), io.qpi.wr_req.addr,
             m_writemask_flush_enable, m_writemask_flush_addr, m_writemask_flush);*/
}

void spmv_lsu::read_rsp_thread() {
  auto mdata = io.qpi.rd_rsp.mdata.slice<ch_bitwidth_v<ch_rd_mdata_t>>().as<ch_rd_mdata_t>();
  __if (io.qpi.rd_rsp.valid) (    
    __switch (mdata.owner) (
    __case (ch_rq_owner::PE0) (
      __switch (mdata.type) (
      __case (ch_rd_request::a_xindices) (pe_[0].axbuf.io.enq.valid = true;)
      __case (ch_rd_request::a_ystarts) (pe_[0].asbuf.io.enq.valid = true;)
      __case (ch_rd_request::a_yindices) (pe_[0].aybuf.io.enq.valid = true;)
      __case (ch_rd_request::a_values) (pe_[0].avbuf.io.enq.valid = true;)
      __case (ch_rd_request::x_values) (pe_[0].xvbuf.io.enq.valid = true;)
      __case (ch_rd_request::x_masks) (pe_[0].xmbuf.io.enq.valid = true;)
      );
      pe_[0].rd_rsp_type.next = mdata.type;
      pe_[0].rd_rsp_valid.next = pe_[0].rd_req_ack;
    )
    __case (ch_rq_owner::PE1) (
      __switch (mdata.type) (
      __case (ch_rd_request::a_xindices) (pe_[1].axbuf.io.enq.valid = true;)
      __case (ch_rd_request::a_ystarts) (pe_[1].asbuf.io.enq.valid = true;)
      __case (ch_rd_request::a_yindices) (pe_[1].aybuf.io.enq.valid = true;)
      __case (ch_rd_request::a_values) (pe_[1].avbuf.io.enq.valid = true;)
      __case (ch_rd_request::x_values) (pe_[1].xvbuf.io.enq.valid = true;)
      __case (ch_rd_request::x_masks) (pe_[1].xmbuf.io.enq.valid = true;)
      );
      pe_[1].rd_rsp_type.next = mdata.type;
      pe_[1].rd_rsp_valid.next = pe_[1].rd_req_ack;
    )
    __default (
      ctrl_.pbuf.io.enq.valid = true;
      ctrl_.rd_rsp_type.next = mdata.type;
      ctrl_.rd_rsp_valid.next = ctrl_.rd_req_ack;
    ));    
  )
  __else (
    ctrl_.pbuf.io.enq.valid = false;
    for (int i = 0; i < PE_COUNT; ++i) {
      pe_[i].axbuf.io.enq.valid = false;
      pe_[i].asbuf.io.enq.valid = false;
      pe_[i].aybuf.io.enq.valid = false;
      pe_[i].avbuf.io.enq.valid = false;
      pe_[i].xvbuf.io.enq.valid = false;
      pe_[i].xmbuf.io.enq.valid = false;
    }
  );
    
  /*//--
  ch_print("{0}: lsu_rd_rsp: ctrl_ack={1}, pe0_ack={2}, pe1_ack={3}, pbuf_enq={4}, rsp_mdat={5}, rsp_dat={6}",
           ch_getTick(), ctrl_.rd_rsp_valid, pe_[0].rd_rsp_valid, pe_[1].rd_rsp_valid,
           m_pbuf.enq_valid(), io.qpi.rd_rsp.mdata, io.qpi.rd_rsp.data);*/
}

void spmv_lsu::write_rsp0_thread() {
  // QPI write responses can come from either channel0 or channel 1
  // we need to check both channels for a specific owner
  auto mdata = io.qpi.wr_rsp0.mdata.slice<ch_bitwidth_v<ch_wr_mdata_t>>().as<ch_wr_mdata_t>();
  __if (io.qpi.wr_rsp0.valid) (
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
    //--
  );

  /*
  ch_print("{0}: lsu_wr_rsp: ctrl_ack0={1}, ctrl_ack1={2}, pe0_ack0={3}, pe0_ack1={4}, pe1_ack0={5}, pe1_ack1={6}, rsp_val={7}, rsp0_mdat={8}, rsp1_mdat={9}",
           ch_getTick(), ctrl_.wr_rsp0_ack, ctrl_.wr_rsp1_ack,
           pe_[0].wr_rsp0_ack, pe_[0].wr_rsp1_ack,
           pe_[1].wr_rsp0_ack, pe_[1].wr_rsp1_ack,
           (io.qpi.wr_rsp0.valid, io.qpi.wr_rsp1.valid), io.qpi.wr_rsp0.mdata, io.qpi.wr_rsp1.mdata);*/
}

void spmv_lsu::write_rsp1_thread() {
  auto mdata = io.qpi.wr_rsp1.mdata.slice<ch_bitwidth_v<ch_wr_mdata_t>>().as<ch_wr_mdata_t>();
  __if (io.qpi.wr_rsp1.valid) (
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
    //--
  );

  /*
  ch_print("{0}: lsu_wr_rsp: ctrl_ack0={1}, ctrl_ack1={2}, pe0_ack0={3}, pe0_ack1={4}, pe1_ack0={5}, pe1_ack1={6}, rsp_val={7}, rsp0_mdat={8}, rsp1_mdat={9}",
           ch_getTick(), ctrl_.wr_rsp0_ack, ctrl_.wr_rsp1_ack,
           pe_[0].wr_rsp0_ack, pe_[0].wr_rsp1_ack,
           pe_[1].wr_rsp0_ack, pe_[1].wr_rsp1_ack,
           (io.qpi.wr_rsp0.valid, io.qpi.wr_rsp1.valid), io.qpi.wr_rsp0.mdata, io.qpi.wr_rsp1.mdata);*/
}

ch_blk_addr spmv_lsu::get_baseaddr(const ch_rd_request& rq_type) {
  ch_blk_addr addr;
  __switch (rq_type) (
  __case (ch_rd_request::a_partition) (addr = io.ctx.a.partitions;)
  __case (ch_rd_request::a_xindices)  (addr = io.ctx.a.xindices;)
  __case (ch_rd_request::a_ystarts)   (addr = io.ctx.a.ystarts;)
  __case (ch_rd_request::a_yindices)  (addr = io.ctx.a.yindices;)
  __case (ch_rd_request::a_values)    (addr = io.ctx.a.values;)
  __case (ch_rd_request::x_values)    (addr = io.ctx.x.values;)
  __default                           (addr = io.ctx.x.masks;)
  );
  return addr;
}

ch_blk_addr spmv_lsu::get_baseaddr(const ch_wr_request& rq_type) {
  ch_blk_addr addr;
  __switch (rq_type) (
  __case (ch_wr_request::y_values)   (addr = io.ctx.y.values;)
  __case (ch_wr_request::y_masks)    (addr = io.ctx.y.masks;)
  __default                          (addr = io.ctx.hwcntrs;)
  );
  return addr;
}
