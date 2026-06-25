set SynModuleInfo {
  {SRCNAME maxpool_Pipeline_READ_INPUT MODELNAME maxpool_Pipeline_READ_INPUT RTLNAME maxpool_maxpool_Pipeline_READ_INPUT
    SUBMODULES {
      {MODELNAME maxpool_flow_control_loop_pipe_sequential_init RTLNAME maxpool_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME maxpool_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME maxpool_Pipeline_POOL_OR_POOL_OC MODELNAME maxpool_Pipeline_POOL_OR_POOL_OC RTLNAME maxpool_maxpool_Pipeline_POOL_OR_POOL_OC}
  {SRCNAME maxpool_Pipeline_WRITE_OUTPUT MODELNAME maxpool_Pipeline_WRITE_OUTPUT RTLNAME maxpool_maxpool_Pipeline_WRITE_OUTPUT}
  {SRCNAME maxpool MODELNAME maxpool RTLNAME maxpool IS_TOP 1
    SUBMODULES {
      {MODELNAME maxpool_regslice_both RTLNAME maxpool_regslice_both BINDTYPE interface TYPE adapter IMPL reg_slice}
    }
  }
}
