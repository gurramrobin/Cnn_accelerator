set SynModuleInfo {
  {SRCNAME conv2d_Pipeline_READ_INPUT MODELNAME conv2d_Pipeline_READ_INPUT RTLNAME conv2d_conv2d_Pipeline_READ_INPUT
    SUBMODULES {
      {MODELNAME conv2d_flow_control_loop_pipe_sequential_init RTLNAME conv2d_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME conv2d_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME conv2d_Pipeline_READ_WEIGHTS MODELNAME conv2d_Pipeline_READ_WEIGHTS RTLNAME conv2d_conv2d_Pipeline_READ_WEIGHTS}
  {SRCNAME conv2d_Pipeline_CONV_OR_CONV_OC2 MODELNAME conv2d_Pipeline_CONV_OR_CONV_OC2 RTLNAME conv2d_conv2d_Pipeline_CONV_OR_CONV_OC2
    SUBMODULES {
      {MODELNAME conv2d_sparsemux_7_2_16_1_1 RTLNAME conv2d_sparsemux_7_2_16_1_1 BINDTYPE op TYPE sparsemux IMPL onehotencoding_realdef}
      {MODELNAME conv2d_mac_muladd_16s_16s_24s_24_4_1 RTLNAME conv2d_mac_muladd_16s_16s_24s_24_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
    }
  }
  {SRCNAME conv2d_Pipeline_WRITE_OUTPUT MODELNAME conv2d_Pipeline_WRITE_OUTPUT RTLNAME conv2d_conv2d_Pipeline_WRITE_OUTPUT}
  {SRCNAME conv2d MODELNAME conv2d RTLNAME conv2d IS_TOP 1
    SUBMODULES {
      {MODELNAME conv2d_regslice_both RTLNAME conv2d_regslice_both BINDTYPE interface TYPE adapter IMPL reg_slice}
    }
  }
}
