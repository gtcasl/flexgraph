#include "lsu.h"

using namespace spmv;
using namespace spmv::accelerator;

spmv_lsu::spmv_lsu()
  : m_writemask0_addr(PTR_MAX_VALUE)
  , m_writemask1_addr(PTR_MAX_VALUE) {
  //
  // bind modules
  //
  for (int i = 0; i < PE_COUNT; ++i) {
    rd_req_arb_.io.in[i](io.pe[i].rd_req);
    wr_req_arb_.io.in[i](io.pe[i].wr_req);
  }
  rd_req_arb_.io.in[PE_COUNT](io.ctrl.rd_req);
  wr_req_arb_.io.in[PE_COUNT](io.ctrl.wr_req);
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

void spmv_lsu::read_req_thread() {
  //--
  rd_req_arb_.io.out.ready = !io.qpi.rd_req.almostfull;

  //--
  auto qpi_rd_req_valid = io.qpi.rd_req.valid.asSeq();
  auto qpi_rd_req_addr  = io.qpi.rd_req.addr.asSeq();

  //--
  qpi_rd_req_valid.next = rd_req_arb_.io.out.valid;
  qpi_rd_req_addr.next  = get_baseaddr(rd_req_arb_.io.out.data.type) + rd_req_arb_.io.out.data.addr;

  //--
  ch_seq<ch_rd_mdata_t> qpi_rd_req_mdata;
  qpi_rd_req_mdata.next = ch_rd_mdata_t(rd_req_arb_.io.out.grant, rd_req_arb_.io.out.data.type);
  io.qpi.rd_req.mdata = ch_zext<aal::aal_qpi0::mdata_width>(qpi_rd_req_mdata.asBits());
    
  //--
  ch_print("{0}: lsu_rd_req: valid={1}, grant={2}, type={3}, addr={4}",
           ch_getTick(),
           rd_req_arb_.io.out.valid,
           rd_req_arb_.io.out.grant,
           rd_req_arb_.io.out.data.type,
           rd_req_arb_.io.out.data.addr);
} 

void spmv_lsu::write_req_thread() {
  //--
  ch_seq<ch_wr_req_state> state;

  //--
  wr_req_arb_.io.out.ready = (state == ch_wr_req_state::get_request);

  //--
  auto qpi_wr_req_valid = io.qpi.wr_req.valid.asSeq();
  auto qpi_wr_req_addr  = io.qpi.wr_req.addr.asSeq();
  auto qpi_wr_req_data  = io.qpi.wr_req.data.asSeq();

  //--
  ch_seq<ch_wr_mdata_t> qpi_wr_req_mdata;
  io.qpi.wr_req.mdata = ch_zext<aal::aal_qpi0::mdata_width>(qpi_wr_req_mdata.asBits());

  //--
  auto wr_rsp_cnt = ch_select(io.qpi.wr_rsp0.valid & io.qpi.wr_rsp1.valid, 0x2_h32)
                              (io.qpi.wr_rsp0.valid | io.qpi.wr_rsp1.valid, 0x1_h32)(0);

  //---
  auto outstanding_writes = io.ctrl.outstanding_writes.asSeq();
  
  //--
  __switch (state) (
  __case (ch_wr_req_state::get_request) (
    __if (wr_req_arb_.io.out.valid) (
      qpi_wr_req_data.next  = wr_req_arb_.io.out.data.data;
      qpi_wr_req_mdata.next = ch_wr_mdata_t(wr_req_arb_.io.out.grant, wr_req_arb_.io.out.data.type);
      qpi_wr_req_addr.next  = get_baseaddr(wr_req_arb_.io.out.data.type) + wr_req_arb_.io.out.data.addr;
      __if (wr_req_arb_.io.out.data.type == ch_wr_request::y_masks) (
        __if (wr_req_arb_.io.out.grant == CTRL_ID) (
          state.next = ch_wr_req_state::flush_writemask1;
        )__else (
          m_pe_writemask_in.next = ch_select(wr_req_arb_.io.out.grant == PE_ID(0), m_pe0_writemask, m_pe1_writemask);
          state.next = ch_wr_req_state::writemask;
        );
      )__else (
        state.next = ch_wr_req_state::submit;
      );
    );
  )
  __case (ch_wr_req_state::submit) (
    __if (!io.qpi.wr_req.almostfull) (
      qpi_wr_req_valid.next = true;
      outstanding_writes.next = outstanding_writes + 1 - wr_rsp_cnt;
      // move next
      state.next = ch_wr_req_state::get_request;
    );
  )
  __case (ch_wr_req_state::writemask) (
    // wait for the writemask controller to complete
    __if (m_writemask_state == ch_writemask_state::done) (
      ch_wr_mdata_t mdata(qpi_wr_req_mdata);
      __switch (mdata.owner) (
      __case (PE_ID(0)) (
        m_pe0_writemask.next = m_pe_writemask_out; // update mask assignment
        __if (m_writemask_flush_enable) (
          qpi_wr_req_data.next  = m_writemask_flush;
          qpi_wr_req_mdata.next = ch_wr_mdata_t(PE_ID(0), ch_wr_request::y_masks);
          qpi_wr_req_addr.next  = m_writemask_flush_addr;
          state.next = ch_wr_req_state::submit;    
        )
        __else (
          // move next
          state.next = ch_wr_req_state::get_request;
        );
      )
      __case (PE_ID(1)) (
        m_pe1_writemask.next = m_pe_writemask_out; // update mask assignment
        __if (m_writemask_flush_enable) (
          qpi_wr_req_data.next  = m_writemask_flush;
          qpi_wr_req_mdata.next = ch_wr_mdata_t(PE_ID(1), ch_wr_request::y_masks);
          qpi_wr_req_addr.next  = m_writemask_flush_addr;
          state.next = ch_wr_req_state::submit;    
        )
        __else (
          // move next
          state.next = ch_wr_req_state::get_request;
        );  
      ));      
    );    
  )
  __case (ch_wr_req_state::flush_writemask1) (
    // check if both writemasks are dirty
    __if ((m_writemask0_owners & m_writemask1_owners) != 0) (          
      qpi_wr_req_data.next  = m_writemask0;
      qpi_wr_req_mdata.next = ch_wr_mdata_t(CTRL_ID, ch_wr_request::y_masks);
      qpi_wr_req_addr.next  = m_writemask0_addr;
      // wait for QPI request ready
      __if (!io.qpi.wr_req.almostfull) (
        qpi_wr_req_valid.next = true;
        outstanding_writes.next = outstanding_writes + 1 - wr_rsp_cnt;
        // flush the other mask
        state.next = ch_wr_req_state::flush_writemask2;
      );
    )
    __elif (m_writemask0_owners != 0) (
      // submit writemask0
      qpi_wr_req_data.next  = m_writemask0;
      qpi_wr_req_mdata.next = ch_wr_mdata_t(CTRL_ID, ch_wr_request::y_masks);
      qpi_wr_req_addr.next  = m_writemask0_addr;
      state.next = ch_wr_req_state::submit;
    )
    __elif (m_writemask1_owners != 0) (
      // submit writemask1
      qpi_wr_req_data.next  = m_writemask1;
      qpi_wr_req_mdata.next = ch_wr_mdata_t(CTRL_ID, ch_wr_request::y_masks);
      qpi_wr_req_addr.next  = m_writemask1_addr;
      state.next = ch_wr_req_state::submit;
    )
    __else (
      // move next
      state.next = ch_wr_req_state::get_request;
    );
  )
  __case (ch_wr_req_state::flush_writemask2) (
    // submit writemask1
    qpi_wr_req_data.next = m_writemask1;
    qpi_wr_req_mdata.next = ch_wr_mdata_t(CTRL_ID, ch_wr_request::y_masks);
    qpi_wr_req_addr.next = m_writemask1_addr;
    state.next = ch_wr_req_state::submit;
  )
  __default (
    qpi_wr_req_valid.next = false;
    outstanding_writes.next = outstanding_writes - wr_rsp_cnt;
  ));    

  m_wr_req_state = state;
    
  //--
  ch_print("{0}: lsu_wr_req: state={1}, valid={2}, grant={3}, type={4}, addr={5}, data={6}",
           ch_getTick(),
           state,
           wr_req_arb_.io.out.valid,
           wr_req_arb_.io.out.grant,
           wr_req_arb_.io.out.data.type,
           wr_req_arb_.io.out.data.addr,
           wr_req_arb_.io.out.data.data);
}

void spmv_lsu::writemask_thread() {
  //--
  ch_seq<ch_writemask_state> state;
  
  auto mdata = io.qpi.wr_req.mdata.slice<ch_bitwidth_v<ch_wr_mdata_t>>().as<ch_wr_mdata_t>();
  ch_bit<2> owner_mask = ch_select(mdata.owner == PE_ID(0), 01_b2, 10_b2);
  
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
  
  //--
  ch_print("{0}: writemask: state={1}, m_i={2}, m_o={3}, m0_a={4}, m0_o={5}, m1_a={6}, m1_o={7}, m0={8}, m1={9}, owner={10}, addr={11}, f_e={12}, f_a={13}, f_v={14}",
             ch_getTick(), state, 
             m_pe_writemask_in, m_pe_writemask_out, m_writemask0_addr, m_writemask0_owners, m_writemask1_addr, m_writemask1_owners, m_writemask0, m_writemask1,
             io.qpi.wr_req.mdata.slice<2>(), io.qpi.wr_req.addr,
             m_writemask_flush_enable, m_writemask_flush_addr, m_writemask_flush);
}

void spmv_lsu::read_rsp_thread() {
  //--
  auto mdata = io.qpi.rd_rsp.mdata.slice<ch_bitwidth_v<ch_rd_mdata_t>>().as<ch_rd_mdata_t>();

  //--
  io.ctrl.rd_rsp.valid     = io.qpi.rd_rsp.valid & (mdata.owner == CTRL_ID);
  io.ctrl.rd_rsp.data.data = io.qpi.rd_rsp.data;
  io.ctrl.rd_rsp.data.type = mdata.type;

  //--
  for (int i = 0; i < PE_COUNT; ++i) {
    io.pe[i].rd_rsp.valid     = io.qpi.rd_rsp.valid & (mdata.owner == PE_ID(i));
    io.pe[i].rd_rsp.data.data = io.qpi.rd_rsp.data;
    io.pe[i].rd_rsp.data.type = mdata.type;
  }

  //--
  ch_print("{0}: lsu_rd_rsp: valid={1}, grant={2}, type={3}, data={4}",
           ch_getTick(), io.qpi.rd_rsp.valid, mdata.owner, mdata.type, io.qpi.rd_rsp.data);
}

void spmv_lsu::write_rsp0_thread() {
  //--
}

void spmv_lsu::write_rsp1_thread() {
  //--
}

ch_blk_addr spmv_lsu::get_baseaddr(const ch_rd_request& rq_type) {
  ch_blk_addr addr;
  __switch (rq_type) (
  __case (ch_rd_request::a_partition) (addr = io.ctx.a.partitions;)
  __case (ch_rd_request::a_xindices)  (addr = io.ctx.a.xindices;)
  __case (ch_rd_request::a_startys)   (addr = io.ctx.a.ystarts;)
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
