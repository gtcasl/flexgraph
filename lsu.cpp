#include "lsu.h"

using namespace spmv;
using namespace spmv::accelerator;

__enum (ch_wr_req_state, 3, (
  ready,
  write_value,
  write_mask,
  flush,
  wait_for_flush
));

__enum (ch_qpi_write_state, 1, (
  ready,
  write
));

spmv_lsu::spmv_lsu() {
  //
  // bind modules
  //
  for (int i = 0; i < PE_COUNT; ++i) {
    rd_req_arb_.io.in[i](io.walkers[i].rd_req);
    wr_req_arb_.io.in[i](io.PEs[i].wr_req);
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
  auto qpi_rd_req_mdata = io.qpi.rd_req.mdata.asSeq();

  //--
  qpi_rd_req_valid.next = rd_req_arb_.io.out.valid;
  qpi_rd_req_addr.next  = get_baseaddr(rd_req_arb_.io.out.data.type) + rd_req_arb_.io.out.data.addr;
  qpi_rd_req_mdata.next = ch_zext<qpi::mdata_width>(
        ch_rd_mdata_t(rd_req_arb_.io.out.grant, rd_req_arb_.io.out.data.type).asBits());
    
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
  ch_seq<ch_qpi_write_state> qw_state;

  //--
  ch_bool lsu_write_valid;
  auto qpi_write_ready = (qw_state == ch_qpi_write_state::ready);

  //--
  wr_req_arb_.io.out.ready = (state == ch_wr_req_state::ready);
  wr_cache_.io.evict.ready = (qpi_write_ready & !lsu_write_valid);

  ch_seq<ch_lsu_wr_req_t> req_data;
  ch_seq<ch_bit<PE_COUNT+1>> req_owner;

  // QPI write thread
  {
    auto wr_rsp_cnt = ch_select(io.qpi.wr_rsp0.valid & io.qpi.wr_rsp1.valid, 0x2_h32)
                                (io.qpi.wr_rsp0.valid | io.qpi.wr_rsp1.valid, 0x1_h32)(0);

    auto outstanding_writes = io.ctrl.outstanding_writes.asSeq();

    auto qpi_wr_req_valid = io.qpi.wr_req.valid.asSeq();
    auto qpi_wr_req_addr  = io.qpi.wr_req.addr.asSeq();
    auto qpi_wr_req_data  = io.qpi.wr_req.data.asSeq();
    auto qpi_wr_req_mdata = io.qpi.wr_req.mdata.asSeq();

    __switch (qw_state) (
    __case (ch_qpi_write_state::ready) (
      __if (lsu_write_valid) (
        // get the data
        ch_wr_mdata_t mdata(req_owner, req_data.type);
        qpi_wr_req_addr.next  = get_baseaddr(req_data.type) + req_data.addr;
        qpi_wr_req_data.next  = req_data.data;
        qpi_wr_req_mdata.next = ch_zext<qpi::mdata_width>(mdata.asBits());
        // go to write
        qw_state.next = ch_qpi_write_state::write;
      )__else (
        __if (wr_cache_.io.evict.valid) (
          // get the data
          auto owner = ch_zext<PE_COUNT+1>(wr_cache_.io.evict.data.owner); // add ctrl bit
          ch_wr_mdata_t mdata(owner, ch_wr_request::y_masks);
          qpi_wr_req_addr.next  = get_baseaddr(ch_wr_request::y_masks) + wr_cache_.io.evict.data.tag;
          qpi_wr_req_data.next  = wr_cache_.io.evict.data.data;
          qpi_wr_req_mdata.next = ch_zext<qpi::mdata_width>(mdata.asBits());
          // go to write
          qw_state.next = ch_qpi_write_state::write;
        );
      );
    )
    __case (ch_qpi_write_state::write) (
      __if (!io.qpi.wr_req.almostfull) (
        qpi_wr_req_valid.next = true; // QPI write enable
        outstanding_writes.next = outstanding_writes + 1 - wr_rsp_cnt;
        qw_state.next = ch_qpi_write_state::ready;
      );
    )
    __default (
      qpi_wr_req_valid.next = false; // valid signal is a pulse (goes off the following cycle)
      outstanding_writes.next = outstanding_writes - wr_rsp_cnt;
    ));

    //--
    ch_print("{0}: qpi_wr: state={1}, valid={2}, addr={3}, data={4}, mdata={5}",
             ch_getTick(),
             qw_state,
             io.qpi.wr_req.valid,
             io.qpi.wr_req.addr,
             io.qpi.wr_req.data,
             io.qpi.wr_req.mdata);
  }

  // control thread
  {
    __switch (state) (
    __case (ch_wr_req_state::ready) (
      __if (wr_req_arb_.io.out.valid) (
        req_data.next.addr = wr_req_arb_.io.out.data.addr;
        req_data.next.type = wr_req_arb_.io.out.data.type;
        req_data.next.data = wr_req_arb_.io.out.data.data;
        req_owner.next     = wr_req_arb_.io.out.grant;
        __if (wr_req_arb_.io.out.data.type == ch_wr_request::y_masks) (
          __if (wr_req_arb_.io.out.grant == CTRL_ID) (
            state.next = ch_wr_req_state::flush;
          )__else (
            state.next = ch_wr_req_state::write_mask;
          );
        )__else (
          state.next = ch_wr_req_state::write_value;
        );
      );
    )
    __case (ch_wr_req_state::write_value) (
      lsu_write_valid = true;
      // wait for QPI write ack
      __if (qpi_write_ready) (
        // return
        state.next = ch_wr_req_state::ready;
      );
    )
    __case (ch_wr_req_state::write_mask) (
      // send the request to the write cache
      wr_cache_.io.enq.data.owner = ch_slice<PE_COUNT>(req_owner); // remove ctrl's bit
      wr_cache_.io.enq.data.tag   = req_data.addr;
      wr_cache_.io.enq.data.data  = req_data.data;
      wr_cache_.io.enq.valid      = true;
      // wait for the cache ack
      __if (wr_cache_.io.enq.ready) (
        // return
        state.next = ch_wr_req_state::ready;
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
        state.next = ch_wr_req_state::ready;
      );
    )
    __default (
      //--
      wr_cache_.io.enq.data.owner = 0;
      wr_cache_.io.enq.data.tag   = 0;
      wr_cache_.io.enq.data.data  = 0;
      wr_cache_.io.enq.valid      = false;
      wr_cache_.io.flush          = false;
      //--
      lsu_write_valid = false;
    ));
  }
    
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
    io.walkers[i].rd_rsp.valid     = io.qpi.rd_rsp.valid & (mdata.owner == PE_ID(i));
    io.walkers[i].rd_rsp.data.data = io.qpi.rd_rsp.data;
    io.walkers[i].rd_rsp.data.type = mdata.type;
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
  __case (ch_rd_request::a_colptr) (addr = io.ctx.a.col_ptr;)
  __case (ch_rd_request::a_colind) (addr = io.ctx.a.col_ind;)
  __case (ch_rd_request::a_rowptr) (addr = io.ctx.a.row_ptr;)
  __case (ch_rd_request::a_rowind) (addr = io.ctx.a.row_ind;)
  __case (ch_rd_request::a_values) (addr = io.ctx.a.values;)
  __case (ch_rd_request::x_values) (addr = io.ctx.x.values;)
  __default                        (addr = io.ctx.x.masks;)
  );
  return addr;
}

ch_blk_addr spmv_lsu::get_baseaddr(const ch_wr_request& rq_type) {
  ch_blk_addr addr;
  __switch (rq_type) (
  __case (ch_wr_request::y_values)   (addr = io.ctx.y.values;)
  __case (ch_wr_request::y_masks)    (addr = io.ctx.y.masks;)
  __default                          (addr = io.ctx.stats;)
  );
  return addr;
}
