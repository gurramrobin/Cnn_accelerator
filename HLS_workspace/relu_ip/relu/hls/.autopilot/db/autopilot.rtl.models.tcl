set SynModuleInfo {
  {SRCNAME relu MODELNAME relu RTLNAME relu IS_TOP 1
    SUBMODULES {
      {MODELNAME relu_regslice_both RTLNAME relu_regslice_both BINDTYPE interface TYPE adapter IMPL reg_slice}
      {MODELNAME relu_flow_control_loop_pipe RTLNAME relu_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME relu_flow_control_loop_pipe_U}
    }
  }
}
