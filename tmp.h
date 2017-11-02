/*{
  // spmv_device FSM
  ch_seq<ch_ctrl_state> state;
     
  __switch (state) (
  __case (ch_ctrl_state::ready) (
    __if (m_start) (
      state.next = ch_ctrl_state::execute;
    );
  )
  __case (ch_ctrl_state::execute) (
    __if (m_PE.complete()) (
      state.next = ch_ctrl_state::write_hwcntrs;
    );
  )
  __case (ch_ctrl_state::write_hwcntrs) (
    __if (m_LSU.done()) (
      state.next = ch_ctrl_state::ready;
    );
  )
  __default (
    state.next = state;        
  ));
}*/
