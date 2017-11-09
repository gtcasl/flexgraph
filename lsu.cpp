#include "lsu.h"

using namespace spmv;
using namespace spmv::accelerator;

__enum (ch_wr_req_state, 3, (
  get_request,
  submit,
  writemask,
  flush,
  wait_for_flush
));

spmv_lsu::spmv_lsu() {
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
  wr_cache_.io.evict.ready = (state == ch_wr_req_state::get_request);

  //--
  wr_req_arb_.io.out.ready = (state == ch_wr_req_state::get_request
                           && !wr_cache_.io.evict.valid);

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

  // QPI write thread
  {

    __switch (qstate) (
    __case (

    )

    );
  }
  
  // control thread
  __switch (state) (
  __case (ch_wr_req_state::get_request) (
    __if (wr_cache_.io.evict.valid) (
      qpi_wr_req_data.next  = wr_cache_.io.evict.data.data;
      qpi_wr_req_mdata.next = ch_wr_mdata_t(ch_zext<PE_COUNT+1>(wr_cache_.io.evict.data.owner), ch_wr_request::y_masks);
      qpi_wr_req_addr.next  = get_baseaddr(ch_wr_request::y_masks) + wr_cache_.io.evict.data.tag;
      state.next = ch_wr_req_state::submit;
    )
    __elif (wr_req_arb_.io.out.valid) (
      qpi_wr_req_data.next  = wr_req_arb_.io.out.data.data;
      qpi_wr_req_mdata.next = ch_wr_mdata_t(wr_req_arb_.io.out.grant, wr_req_arb_.io.out.data.type);
      qpi_wr_req_addr.next  = get_baseaddr(wr_req_arb_.io.out.data.type) + wr_req_arb_.io.out.data.addr;
      __if (wr_req_arb_.io.out.data.type == ch_wr_request::y_masks) (
        __if (wr_req_arb_.io.out.grant == CTRL_ID) (
          state.next = ch_wr_req_state::flush;
        )__else (
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
    // send the request to the write cache
    wr_cache_.io.enq.data.owner = ch_slice<PE_COUNT>(wr_req_arb_.io.out.grant); // remove ctrl's onehot bit
    wr_cache_.io.enq.data.tag   = wr_req_arb_.io.out.data.addr;
    wr_cache_.io.enq.data.data  = wr_req_arb_.io.out.data.data;
    wr_cache_.io.enq.valid = true;
    // wait for the cache ack
    __if (wr_cache_.io.enq.ready) (
      // move next
      state.next = ch_wr_req_state::get_request;
    );
  )
  __case (ch_wr_req_state::flush) (
    // enable cache flush
    wr_cache_.io.flush = true;
    // wait for the cache ack
    __if (wr_cache_.io.enq.ready) (
      // go wait for data
      state.next = ch_wr_req_state::wait_for_flush;
    );
  )
  __case (ch_wr_req_state::wait_for_flush) (
    // waitr for write flushes to complete
    __if (wr_cache_.io.enq.ready) (
      // return
      state.next = ch_wr_req_state::get_request;
    );
  )
  __default (
    //--
    wr_cache_.io.enq.data.owner = 0;
    wr_cache_.io.enq.data.tag   = 0;
    wr_cache_.io.enq.data.data  = 0;
    wr_cache_.io.enq.valid = false;
    wr_cache_.io.flush = false;
    //--
    qpi_wr_req_valid.next = false;
    outstanding_writes.next = outstanding_writes - wr_rsp_cnt;
  ));
    
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
