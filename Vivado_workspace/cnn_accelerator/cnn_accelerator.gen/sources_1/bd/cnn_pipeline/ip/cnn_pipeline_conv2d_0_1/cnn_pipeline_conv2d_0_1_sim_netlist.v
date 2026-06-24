// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Fri Jun 12 17:37:26 2026
// Host        : DESKTOP-1HEQ2M2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/CHINNA/Vivado_workspace/cnn_accelerator/cnn_accelerator.gen/sources_1/bd/cnn_pipeline/ip/cnn_pipeline_conv2d_0_1/cnn_pipeline_conv2d_0_1_sim_netlist.v
// Design      : cnn_pipeline_conv2d_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "cnn_pipeline_conv2d_0_1,conv2d,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "HLS" *) 
(* X_CORE_INFO = "conv2d,Vivado 2025.2" *) (* hls_module = "yes" *) 
(* NotValidForBitStream *)
module cnn_pipeline_conv2d_0_1
   (ap_clk,
    ap_rst_n,
    ap_done,
    ap_idle,
    ap_ready,
    ap_start,
    in_stream_TDATA,
    in_stream_TKEEP,
    in_stream_TLAST,
    in_stream_TREADY,
    in_stream_TSTRB,
    in_stream_TVALID,
    weight_stream_TDATA,
    weight_stream_TKEEP,
    weight_stream_TLAST,
    weight_stream_TREADY,
    weight_stream_TSTRB,
    weight_stream_TVALID,
    bias,
    out_stream_TDATA,
    out_stream_TKEEP,
    out_stream_TLAST,
    out_stream_TREADY,
    out_stream_TSTRB,
    out_stream_TVALID);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF in_stream:weight_stream:out_stream, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 199998001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN cnn_pipeline_zynq_ultra_ps_e_0_1_pl_clk0, INSERT_VIP 0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done" *) (* X_INTERFACE_MODE = "slave" *) output ap_done;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle" *) output ap_idle;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready" *) output ap_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start" *) input ap_start;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_stream TDATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME in_stream, TUSER_WIDTH 0, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 199998001, PHASE 0.0, CLK_DOMAIN cnn_pipeline_zynq_ultra_ps_e_0_1_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0" *) input [15:0]in_stream_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_stream TKEEP" *) input [1:0]in_stream_TKEEP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_stream TLAST" *) input [0:0]in_stream_TLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_stream TREADY" *) output in_stream_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_stream TSTRB" *) input [1:0]in_stream_TSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in_stream TVALID" *) input in_stream_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 weight_stream TDATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME weight_stream, TUSER_WIDTH 0, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 199998001, PHASE 0.0, CLK_DOMAIN cnn_pipeline_zynq_ultra_ps_e_0_1_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0" *) input [15:0]weight_stream_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 weight_stream TKEEP" *) input [1:0]weight_stream_TKEEP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 weight_stream TLAST" *) input [0:0]weight_stream_TLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 weight_stream TREADY" *) output weight_stream_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 weight_stream TSTRB" *) input [1:0]weight_stream_TSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 weight_stream TVALID" *) input weight_stream_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 bias DATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME bias, LAYERED_METADATA undef" *) input [15:0]bias;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_stream TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME out_stream, TUSER_WIDTH 0, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 199998001, PHASE 0.0, CLK_DOMAIN cnn_pipeline_zynq_ultra_ps_e_0_1_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0" *) output [15:0]out_stream_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_stream TKEEP" *) output [1:0]out_stream_TKEEP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_stream TLAST" *) output [0:0]out_stream_TLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_stream TREADY" *) input out_stream_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_stream TSTRB" *) output [1:0]out_stream_TSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_stream TVALID" *) output out_stream_TVALID;

  wire ap_clk;
  wire ap_done;
  wire ap_idle;
  wire ap_ready;
  wire ap_rst_n;
  wire ap_start;
  wire [15:0]bias;
  wire [15:0]in_stream_TDATA;
  wire in_stream_TREADY;
  wire in_stream_TVALID;
  wire [15:0]out_stream_TDATA;
  wire [1:0]out_stream_TKEEP;
  wire [0:0]out_stream_TLAST;
  wire out_stream_TREADY;
  wire [1:0]out_stream_TSTRB;
  wire out_stream_TVALID;
  wire [15:0]weight_stream_TDATA;
  wire weight_stream_TREADY;
  wire weight_stream_TVALID;

  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* SDX_KERNEL = "true" *) 
  (* SDX_KERNEL_SYNTH_INST = "inst" *) 
  (* SDX_KERNEL_TYPE = "hls" *) 
  (* ap_ST_fsm_state1 = "8'b00000001" *) 
  (* ap_ST_fsm_state2 = "8'b00000010" *) 
  (* ap_ST_fsm_state3 = "8'b00000100" *) 
  (* ap_ST_fsm_state4 = "8'b00001000" *) 
  (* ap_ST_fsm_state5 = "8'b00010000" *) 
  (* ap_ST_fsm_state6 = "8'b00100000" *) 
  (* ap_ST_fsm_state7 = "8'b01000000" *) 
  (* ap_ST_fsm_state8 = "8'b10000000" *) 
  cnn_pipeline_conv2d_0_1_conv2d inst
       (.ap_clk(ap_clk),
        .ap_done(ap_done),
        .ap_idle(ap_idle),
        .ap_ready(ap_ready),
        .ap_rst_n(ap_rst_n),
        .ap_start(ap_start),
        .bias(bias),
        .in_stream_TDATA(in_stream_TDATA),
        .in_stream_TKEEP({1'b0,1'b0}),
        .in_stream_TLAST(1'b0),
        .in_stream_TREADY(in_stream_TREADY),
        .in_stream_TSTRB({1'b0,1'b0}),
        .in_stream_TVALID(in_stream_TVALID),
        .out_stream_TDATA(out_stream_TDATA),
        .out_stream_TKEEP(out_stream_TKEEP),
        .out_stream_TLAST(out_stream_TLAST),
        .out_stream_TREADY(out_stream_TREADY),
        .out_stream_TSTRB(out_stream_TSTRB),
        .out_stream_TVALID(out_stream_TVALID),
        .weight_stream_TDATA(weight_stream_TDATA),
        .weight_stream_TKEEP({1'b0,1'b0}),
        .weight_stream_TLAST(1'b0),
        .weight_stream_TREADY(weight_stream_TREADY),
        .weight_stream_TSTRB({1'b0,1'b0}),
        .weight_stream_TVALID(weight_stream_TVALID));
endmodule

(* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "conv2d" *) (* ap_ST_fsm_state1 = "8'b00000001" *) 
(* ap_ST_fsm_state2 = "8'b00000010" *) (* ap_ST_fsm_state3 = "8'b00000100" *) (* ap_ST_fsm_state4 = "8'b00001000" *) 
(* ap_ST_fsm_state5 = "8'b00010000" *) (* ap_ST_fsm_state6 = "8'b00100000" *) (* ap_ST_fsm_state7 = "8'b01000000" *) 
(* ap_ST_fsm_state8 = "8'b10000000" *) (* hls_module = "yes" *) 
module cnn_pipeline_conv2d_0_1_conv2d
   (ap_clk,
    ap_rst_n,
    ap_start,
    ap_done,
    ap_idle,
    ap_ready,
    in_stream_TDATA,
    in_stream_TVALID,
    in_stream_TREADY,
    in_stream_TKEEP,
    in_stream_TSTRB,
    in_stream_TLAST,
    weight_stream_TDATA,
    weight_stream_TVALID,
    weight_stream_TREADY,
    weight_stream_TKEEP,
    weight_stream_TSTRB,
    weight_stream_TLAST,
    bias,
    out_stream_TDATA,
    out_stream_TVALID,
    out_stream_TREADY,
    out_stream_TKEEP,
    out_stream_TSTRB,
    out_stream_TLAST);
  input ap_clk;
  input ap_rst_n;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  input [15:0]in_stream_TDATA;
  input in_stream_TVALID;
  output in_stream_TREADY;
  input [1:0]in_stream_TKEEP;
  input [1:0]in_stream_TSTRB;
  input [0:0]in_stream_TLAST;
  input [15:0]weight_stream_TDATA;
  input weight_stream_TVALID;
  output weight_stream_TREADY;
  input [1:0]weight_stream_TKEEP;
  input [1:0]weight_stream_TSTRB;
  input [0:0]weight_stream_TLAST;
  input [15:0]bias;
  output [15:0]out_stream_TDATA;
  output out_stream_TVALID;
  input out_stream_TREADY;
  output [1:0]out_stream_TKEEP;
  output [1:0]out_stream_TSTRB;
  output [0:0]out_stream_TLAST;

  wire [0:0]add_ln96_2_fu_653_p2;
  wire \ap_CS_fsm_reg_n_0_[0] ;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state3;
  wire ap_CS_fsm_state4;
  wire ap_CS_fsm_state5;
  wire ap_CS_fsm_state6;
  wire ap_CS_fsm_state7;
  wire ap_CS_fsm_state8;
  wire [7:0]ap_NS_fsm;
  wire ap_block_pp0_stage0_subdone;
  wire ap_block_pp0_stage0_subdone_3;
  wire ap_block_pp0_stage0_subdone_4;
  wire ap_clk;
  wire ap_done_reg1;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp0_iter1_1;
  wire ap_enable_reg_pp0_iter1_2;
  wire ap_idle;
  wire ap_ready;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire ap_start;
  wire [15:0]bias;
  wire [0:0]data_p2;
  wire [15:0]dout_tmp;
  wire [15:0]dout_tmp_0;
  wire empty_fu_940;
  wire \flow_control_loop_pipe_sequential_init_U/ap_done_cache ;
  wire grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_ap_start_reg;
  wire grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_n_1;
  wire grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_n_2;
  wire grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_n_26;
  wire grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_n_27;
  wire grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_n_3;
  wire grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_n_30;
  wire grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_n_31;
  wire grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_n_4;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_100;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_101;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_102;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_103;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_104;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_105;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_106;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_107;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_108;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_109;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_110;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_111;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_112;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_113;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_114;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_115;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_116;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_117;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_118;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_119;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_120;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_121;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_122;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_123;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_124;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_125;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_126;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_127;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_128;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_129;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_130;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_131;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_132;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_133;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_134;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_135;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_136;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_137;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_138;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_139;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_140;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_141;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_142;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_143;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_144;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_145;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_146;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_147;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_148;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_149;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_20;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_21;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_22;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_23;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_24;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_25;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_26;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_27;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_28;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_29;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_30;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_31;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_32;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_33;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_34;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_35;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_36;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_37;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_38;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_39;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_40;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_41;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_42;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_43;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_44;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_45;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_46;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_47;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_48;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_49;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_50;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_51;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_52;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_53;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_54;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_55;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_56;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_57;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_58;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_59;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_60;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_61;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_62;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_63;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_64;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_65;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_66;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_67;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_68;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_69;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_70;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_71;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_72;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_73;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_74;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_75;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_76;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_77;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_78;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_79;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_80;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_81;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_82;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_83;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_84;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_85;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_86;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_87;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_88;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_89;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_90;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_91;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_92;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_93;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_94;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_95;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_96;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_97;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_98;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_n_99;
  wire grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg;
  wire grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_n_1;
  wire grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_n_2;
  wire grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_n_4;
  wire grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_n_5;
  wire [15:0]grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_p_out;
  wire [15:0]grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_p_out1;
  wire [15:0]grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_p_out2;
  wire [15:0]grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_p_out3;
  wire [15:0]grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_p_out4;
  wire [15:0]grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_p_out5;
  wire [15:0]grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_p_out6;
  wire [15:0]grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_p_out7;
  wire grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg;
  wire grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_n_38;
  wire grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_n_39;
  wire grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_n_40;
  wire grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_n_41;
  wire grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_n_42;
  wire grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_n_43;
  wire grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_n_44;
  wire [15:0]grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_out_stream_TDATA;
  wire [0:0]grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_out_stream_TLAST;
  wire [15:0]in_stream_TDATA;
  wire [15:0]in_stream_TDATA_int_regslice;
  wire in_stream_TREADY;
  wire in_stream_TVALID;
  wire in_stream_TVALID_int_regslice;
  wire load_p2;
  wire [15:0]out_stream_TDATA;
  wire [15:0]out_stream_TDATA_int_regslice;
  wire [15:0]out_stream_TDATA_reg;
  wire [1:0]out_stream_TKEEP;
  wire [1:0]out_stream_TKEEP_reg;
  wire [0:0]out_stream_TLAST;
  wire [0:0]out_stream_TLAST_int_regslice;
  wire [0:0]out_stream_TLAST_reg;
  wire out_stream_TREADY;
  wire out_stream_TREADY_int_regslice;
  wire [1:0]out_stream_TSTRB;
  wire [1:0]out_stream_TSTRB_reg;
  wire out_stream_TVALID;
  wire regslice_both_in_stream_V_data_V_U_n_3;
  wire regslice_both_out_stream_V_data_V_U_n_10;
  wire regslice_both_out_stream_V_data_V_U_n_2;
  wire regslice_both_out_stream_V_data_V_U_n_3;
  wire regslice_both_out_stream_V_data_V_U_n_4;
  wire regslice_both_out_stream_V_data_V_U_n_5;
  wire regslice_both_out_stream_V_data_V_U_n_6;
  wire regslice_both_out_stream_V_last_V_U_n_0;
  wire regslice_both_weight_stream_V_data_V_U_n_3;
  wire [1:0]sel;
  wire [1:0]select_ln89_fu_561_p3;
  wire [15:0]weight_stream_TDATA;
  wire [15:0]weight_stream_TDATA_int_regslice;
  wire weight_stream_TREADY;
  wire weight_stream_TVALID;
  wire weight_stream_TVALID_int_regslice;

  assign ap_done = ap_ready;
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(ap_start),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .O(ap_NS_fsm[1]));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(\ap_CS_fsm_reg_n_0_[0] ),
        .S(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_state2),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(ap_CS_fsm_state3),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_n_5),
        .Q(ap_CS_fsm_state4),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[4]),
        .Q(ap_CS_fsm_state5),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[5]),
        .Q(ap_CS_fsm_state6),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[6]),
        .Q(ap_CS_fsm_state7),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[7]),
        .Q(ap_CS_fsm_state8),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h2)) 
    ap_idle_INST_0
       (.I0(\ap_CS_fsm_reg_n_0_[0] ),
        .I1(ap_start),
        .O(ap_idle));
  cnn_pipeline_conv2d_0_1_conv2d_conv2d_Pipeline_CONV_OR_CONV_OC2 grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310
       (.A(dout_tmp_0),
        .CEB1(empty_fu_940),
        .D(dout_tmp),
        .DSP_ALU_INST(weight_stream_TDATA_int_regslice),
        .DSP_ALU_INST_0(grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_p_out7),
        .DSP_ALU_INST_1({grp_conv2d_Pipeline_READ_INPUT_fu_252_n_52,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_53,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_54,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_55,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_56,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_57,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_58,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_59,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_60,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_61,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_62,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_63,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_64,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_65,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_66,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_67}),
        .DSP_ALU_INST_2(grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_p_out6),
        .DSP_ALU_INST_3({grp_conv2d_Pipeline_READ_INPUT_fu_252_n_100,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_101,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_102,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_103,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_104,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_105,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_106,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_107,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_108,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_109,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_110,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_111,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_112,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_113,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_114,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_115}),
        .DSP_ALU_INST_4(grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_p_out5),
        .DSP_ALU_INST_5(grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_p_out4),
        .DSP_ALU_INST_6(grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_p_out3),
        .DSP_ALU_INST_7(grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_p_out2),
        .DSP_ALU_INST_8(grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_p_out1),
        .DSP_ALU_INST_9(grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_p_out),
        .Q({ap_CS_fsm_state5,ap_CS_fsm_state4}),
        .\ap_CS_fsm_reg[3] (grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_n_26),
        .\ap_CS_fsm_reg[4] (ap_NS_fsm[5:4]),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .bias(bias),
        .grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_ap_start_reg(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_ap_start_reg),
        .\oc_s_fu_140_reg[0]_0 (grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_n_27),
        .\oc_s_fu_140_reg[1]_0 (add_ln96_2_fu_653_p2),
        .\p_0_reg_377_reg[0] (grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_n_41),
        .\p_0_reg_377_reg[0]_0 (grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_n_42),
        .\p_0_reg_377_reg[14] (grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_n_40),
        .\p_0_reg_377_reg[14]_0 (grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_n_38),
        .\p_0_reg_377_reg[14]_1 (grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_n_39),
        .sel(sel),
        .\select_ln49_reg_1599_pp0_iter1_reg_reg[0]_0 (grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_n_2),
        .\select_ln49_reg_1599_pp0_iter1_reg_reg[1]_0 (grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_n_1),
        .select_ln89_fu_561_p3(select_ln89_fu_561_p3),
        .\select_ln89_reg_1613_pp0_iter1_reg_reg[0]_0 (grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_n_4),
        .\select_ln89_reg_1613_pp0_iter1_reg_reg[1]_0 (grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_n_3),
        .\select_ln89_reg_1613_reg[0]_0 (grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_n_31),
        .\select_ln89_reg_1613_reg[1]_0 (grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_n_30),
        .\tmp_15_reg_1628_reg[0]_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_50),
        .\tmp_15_reg_1628_reg[10]_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_30),
        .\tmp_15_reg_1628_reg[11]_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_28),
        .\tmp_15_reg_1628_reg[12]_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_26),
        .\tmp_15_reg_1628_reg[13]_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_24),
        .\tmp_15_reg_1628_reg[14]_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_22),
        .\tmp_15_reg_1628_reg[15]_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_20),
        .\tmp_15_reg_1628_reg[1]_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_48),
        .\tmp_15_reg_1628_reg[2]_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_46),
        .\tmp_15_reg_1628_reg[3]_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_44),
        .\tmp_15_reg_1628_reg[4]_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_42),
        .\tmp_15_reg_1628_reg[5]_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_40),
        .\tmp_15_reg_1628_reg[6]_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_38),
        .\tmp_15_reg_1628_reg[7]_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_36),
        .\tmp_15_reg_1628_reg[8]_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_34),
        .\tmp_15_reg_1628_reg[9]_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_32),
        .\tmp_18_reg_1643_reg[0]_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_98),
        .\tmp_18_reg_1643_reg[10]_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_78),
        .\tmp_18_reg_1643_reg[11]_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_76),
        .\tmp_18_reg_1643_reg[12]_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_74),
        .\tmp_18_reg_1643_reg[13]_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_72),
        .\tmp_18_reg_1643_reg[14]_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_70),
        .\tmp_18_reg_1643_reg[15]_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_68),
        .\tmp_18_reg_1643_reg[1]_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_96),
        .\tmp_18_reg_1643_reg[2]_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_94),
        .\tmp_18_reg_1643_reg[3]_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_92),
        .\tmp_18_reg_1643_reg[4]_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_90),
        .\tmp_18_reg_1643_reg[5]_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_88),
        .\tmp_18_reg_1643_reg[6]_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_86),
        .\tmp_18_reg_1643_reg[7]_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_84),
        .\tmp_18_reg_1643_reg[8]_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_82),
        .\tmp_18_reg_1643_reg[9]_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_80),
        .\tmp_20_reg_1658_reg[15]_0 ({grp_conv2d_Pipeline_READ_INPUT_fu_252_n_116,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_117,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_118,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_119,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_120,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_121,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_122,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_123,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_124,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_125,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_126,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_127,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_128,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_129,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_130,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_131}),
        .\tmp_22_reg_1633_pp0_iter4_reg_reg[0]__0_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_51),
        .\tmp_22_reg_1633_pp0_iter4_reg_reg[10]__0_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_31),
        .\tmp_22_reg_1633_pp0_iter4_reg_reg[11]__0_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_29),
        .\tmp_22_reg_1633_pp0_iter4_reg_reg[12]__0_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_27),
        .\tmp_22_reg_1633_pp0_iter4_reg_reg[13]__0_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_25),
        .\tmp_22_reg_1633_pp0_iter4_reg_reg[14]__0_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_23),
        .\tmp_22_reg_1633_pp0_iter4_reg_reg[15]__0_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_21),
        .\tmp_22_reg_1633_pp0_iter4_reg_reg[1]__0_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_49),
        .\tmp_22_reg_1633_pp0_iter4_reg_reg[2]__0_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_47),
        .\tmp_22_reg_1633_pp0_iter4_reg_reg[3]__0_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_45),
        .\tmp_22_reg_1633_pp0_iter4_reg_reg[4]__0_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_43),
        .\tmp_22_reg_1633_pp0_iter4_reg_reg[5]__0_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_41),
        .\tmp_22_reg_1633_pp0_iter4_reg_reg[6]__0_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_39),
        .\tmp_22_reg_1633_pp0_iter4_reg_reg[7]__0_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_37),
        .\tmp_22_reg_1633_pp0_iter4_reg_reg[8]__0_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_35),
        .\tmp_22_reg_1633_pp0_iter4_reg_reg[9]__0_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_33),
        .\tmp_24_reg_1648_pp0_iter5_reg_reg[0]__0_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_99),
        .\tmp_24_reg_1648_pp0_iter5_reg_reg[10]__0_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_79),
        .\tmp_24_reg_1648_pp0_iter5_reg_reg[11]__0_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_77),
        .\tmp_24_reg_1648_pp0_iter5_reg_reg[12]__0_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_75),
        .\tmp_24_reg_1648_pp0_iter5_reg_reg[13]__0_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_73),
        .\tmp_24_reg_1648_pp0_iter5_reg_reg[14]__0_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_71),
        .\tmp_24_reg_1648_pp0_iter5_reg_reg[15]__0_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_69),
        .\tmp_24_reg_1648_pp0_iter5_reg_reg[1]__0_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_97),
        .\tmp_24_reg_1648_pp0_iter5_reg_reg[2]__0_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_95),
        .\tmp_24_reg_1648_pp0_iter5_reg_reg[3]__0_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_93),
        .\tmp_24_reg_1648_pp0_iter5_reg_reg[4]__0_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_91),
        .\tmp_24_reg_1648_pp0_iter5_reg_reg[5]__0_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_89),
        .\tmp_24_reg_1648_pp0_iter5_reg_reg[6]__0_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_87),
        .\tmp_24_reg_1648_pp0_iter5_reg_reg[7]__0_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_85),
        .\tmp_24_reg_1648_pp0_iter5_reg_reg[8]__0_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_83),
        .\tmp_24_reg_1648_pp0_iter5_reg_reg[9]__0_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_81),
        .\tmp_26_reg_1663_pp0_iter6_reg_reg[0]__0_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_147),
        .\tmp_26_reg_1663_pp0_iter6_reg_reg[10]__0_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_137),
        .\tmp_26_reg_1663_pp0_iter6_reg_reg[11]__0_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_136),
        .\tmp_26_reg_1663_pp0_iter6_reg_reg[12]__0_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_135),
        .\tmp_26_reg_1663_pp0_iter6_reg_reg[13]__0_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_134),
        .\tmp_26_reg_1663_pp0_iter6_reg_reg[14]__0_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_133),
        .\tmp_26_reg_1663_pp0_iter6_reg_reg[15]__0_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_132),
        .\tmp_26_reg_1663_pp0_iter6_reg_reg[1]__0_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_146),
        .\tmp_26_reg_1663_pp0_iter6_reg_reg[2]__0_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_145),
        .\tmp_26_reg_1663_pp0_iter6_reg_reg[3]__0_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_144),
        .\tmp_26_reg_1663_pp0_iter6_reg_reg[4]__0_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_143),
        .\tmp_26_reg_1663_pp0_iter6_reg_reg[5]__0_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_142),
        .\tmp_26_reg_1663_pp0_iter6_reg_reg[6]__0_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_141),
        .\tmp_26_reg_1663_pp0_iter6_reg_reg[7]__0_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_140),
        .\tmp_26_reg_1663_pp0_iter6_reg_reg[8]__0_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_139),
        .\tmp_26_reg_1663_pp0_iter6_reg_reg[9]__0_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_138));
  FDRE #(
    .INIT(1'b0)) 
    grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_ap_start_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_n_26),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_ap_start_reg),
        .R(ap_rst_n_inv));
  cnn_pipeline_conv2d_0_1_conv2d_conv2d_Pipeline_READ_INPUT grp_conv2d_Pipeline_READ_INPUT_fu_252
       (.A(dout_tmp_0),
        .D(ap_NS_fsm[2]),
        .E(ap_block_pp0_stage0_subdone),
        .Q(in_stream_TVALID_int_regslice),
        .\ap_CS_fsm_reg[1] (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_148),
        .\ap_CS_fsm_reg[2] ({ap_CS_fsm_state3,ap_CS_fsm_state2}),
        .\ap_CS_fsm_reg[2]_0 (grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_n_1),
        .\ap_CS_fsm_reg[2]_1 (regslice_both_in_stream_V_data_V_U_n_3),
        .ap_clk(ap_clk),
        .ap_done_cache(\flow_control_loop_pipe_sequential_init_U/ap_done_cache ),
        .ap_done_reg1(ap_done_reg1),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .ap_enable_reg_pp0_iter1_reg_0(grp_conv2d_Pipeline_READ_INPUT_fu_252_n_149),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg(grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg),
        .\input_17_fu_198_reg[0]_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_50),
        .\input_17_fu_198_reg[10]_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_30),
        .\input_17_fu_198_reg[11]_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_28),
        .\input_17_fu_198_reg[12]_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_26),
        .\input_17_fu_198_reg[13]_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_24),
        .\input_17_fu_198_reg[14]_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_22),
        .\input_17_fu_198_reg[15]_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_20),
        .\input_17_fu_198_reg[1]_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_48),
        .\input_17_fu_198_reg[2]_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_46),
        .\input_17_fu_198_reg[3]_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_44),
        .\input_17_fu_198_reg[4]_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_42),
        .\input_17_fu_198_reg[5]_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_40),
        .\input_17_fu_198_reg[6]_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_38),
        .\input_17_fu_198_reg[7]_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_36),
        .\input_17_fu_198_reg[8]_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_34),
        .\input_17_fu_198_reg[9]_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_32),
        .\input_22_fu_218_reg[0]_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_51),
        .\input_22_fu_218_reg[10]_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_31),
        .\input_22_fu_218_reg[11]_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_29),
        .\input_22_fu_218_reg[12]_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_27),
        .\input_22_fu_218_reg[13]_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_25),
        .\input_22_fu_218_reg[14]_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_23),
        .\input_22_fu_218_reg[15]_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_21),
        .\input_22_fu_218_reg[1]_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_49),
        .\input_22_fu_218_reg[2]_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_47),
        .\input_22_fu_218_reg[3]_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_45),
        .\input_22_fu_218_reg[4]_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_43),
        .\input_22_fu_218_reg[5]_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_41),
        .\input_22_fu_218_reg[6]_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_39),
        .\input_22_fu_218_reg[7]_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_37),
        .\input_22_fu_218_reg[8]_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_35),
        .\input_22_fu_218_reg[9]_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_33),
        .\input_24_fu_226_reg[15]_0 (in_stream_TDATA_int_regslice),
        .sel(sel),
        .select_ln89_fu_561_p3(select_ln89_fu_561_p3),
        .\select_ln89_reg_1613_pp0_iter1_reg_reg[1] ({grp_conv2d_Pipeline_READ_INPUT_fu_252_n_100,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_101,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_102,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_103,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_104,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_105,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_106,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_107,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_108,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_109,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_110,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_111,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_112,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_113,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_114,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_115}),
        .\select_ln89_reg_1613_pp0_iter1_reg_reg[1]_0 ({grp_conv2d_Pipeline_READ_INPUT_fu_252_n_116,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_117,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_118,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_119,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_120,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_121,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_122,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_123,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_124,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_125,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_126,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_127,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_128,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_129,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_130,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_131}),
        .\select_ln89_reg_1613_pp0_iter1_reg_reg[1]_1 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_132),
        .\select_ln89_reg_1613_pp0_iter1_reg_reg[1]_10 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_141),
        .\select_ln89_reg_1613_pp0_iter1_reg_reg[1]_11 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_142),
        .\select_ln89_reg_1613_pp0_iter1_reg_reg[1]_12 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_143),
        .\select_ln89_reg_1613_pp0_iter1_reg_reg[1]_13 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_144),
        .\select_ln89_reg_1613_pp0_iter1_reg_reg[1]_14 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_145),
        .\select_ln89_reg_1613_pp0_iter1_reg_reg[1]_15 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_146),
        .\select_ln89_reg_1613_pp0_iter1_reg_reg[1]_16 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_147),
        .\select_ln89_reg_1613_pp0_iter1_reg_reg[1]_2 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_133),
        .\select_ln89_reg_1613_pp0_iter1_reg_reg[1]_3 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_134),
        .\select_ln89_reg_1613_pp0_iter1_reg_reg[1]_4 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_135),
        .\select_ln89_reg_1613_pp0_iter1_reg_reg[1]_5 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_136),
        .\select_ln89_reg_1613_pp0_iter1_reg_reg[1]_6 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_137),
        .\select_ln89_reg_1613_pp0_iter1_reg_reg[1]_7 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_138),
        .\select_ln89_reg_1613_pp0_iter1_reg_reg[1]_8 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_139),
        .\select_ln89_reg_1613_pp0_iter1_reg_reg[1]_9 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_140),
        .\select_ln89_reg_1613_reg[1] ({grp_conv2d_Pipeline_READ_INPUT_fu_252_n_52,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_53,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_54,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_55,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_56,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_57,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_58,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_59,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_60,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_61,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_62,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_63,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_64,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_65,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_66,grp_conv2d_Pipeline_READ_INPUT_fu_252_n_67}),
        .\select_ln89_reg_1613_reg[1]_0 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_68),
        .\select_ln89_reg_1613_reg[1]_1 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_69),
        .\select_ln89_reg_1613_reg[1]_10 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_78),
        .\select_ln89_reg_1613_reg[1]_11 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_79),
        .\select_ln89_reg_1613_reg[1]_12 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_80),
        .\select_ln89_reg_1613_reg[1]_13 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_81),
        .\select_ln89_reg_1613_reg[1]_14 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_82),
        .\select_ln89_reg_1613_reg[1]_15 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_83),
        .\select_ln89_reg_1613_reg[1]_16 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_84),
        .\select_ln89_reg_1613_reg[1]_17 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_85),
        .\select_ln89_reg_1613_reg[1]_18 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_86),
        .\select_ln89_reg_1613_reg[1]_19 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_87),
        .\select_ln89_reg_1613_reg[1]_2 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_70),
        .\select_ln89_reg_1613_reg[1]_20 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_88),
        .\select_ln89_reg_1613_reg[1]_21 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_89),
        .\select_ln89_reg_1613_reg[1]_22 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_90),
        .\select_ln89_reg_1613_reg[1]_23 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_91),
        .\select_ln89_reg_1613_reg[1]_24 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_92),
        .\select_ln89_reg_1613_reg[1]_25 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_93),
        .\select_ln89_reg_1613_reg[1]_26 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_94),
        .\select_ln89_reg_1613_reg[1]_27 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_95),
        .\select_ln89_reg_1613_reg[1]_28 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_96),
        .\select_ln89_reg_1613_reg[1]_29 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_97),
        .\select_ln89_reg_1613_reg[1]_3 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_71),
        .\select_ln89_reg_1613_reg[1]_30 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_98),
        .\select_ln89_reg_1613_reg[1]_31 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_99),
        .\select_ln89_reg_1613_reg[1]_4 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_72),
        .\select_ln89_reg_1613_reg[1]_5 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_73),
        .\select_ln89_reg_1613_reg[1]_6 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_74),
        .\select_ln89_reg_1613_reg[1]_7 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_75),
        .\select_ln89_reg_1613_reg[1]_8 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_76),
        .\select_ln89_reg_1613_reg[1]_9 (grp_conv2d_Pipeline_READ_INPUT_fu_252_n_77),
        .\tmp_15_reg_1628_reg[15] (grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_n_27),
        .\tmp_15_reg_1628_reg[15]_0 (add_ln96_2_fu_653_p2),
        .\tmp_18_reg_1643_reg[15] (grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_n_30),
        .\tmp_18_reg_1643_reg[15]_0 (grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_n_31),
        .\tmp_20_reg_1658_reg[15] (grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_n_3),
        .\tmp_20_reg_1658_reg[15]_0 (grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_n_4),
        .\tmp_20_reg_1658_reg[15]_1 (grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_n_1),
        .\tmp_20_reg_1658_reg[15]_2 (grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_n_2));
  FDRE #(
    .INIT(1'b0)) 
    grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(grp_conv2d_Pipeline_READ_INPUT_fu_252_n_148),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg),
        .R(ap_rst_n_inv));
  cnn_pipeline_conv2d_0_1_conv2d_conv2d_Pipeline_READ_WEIGHTS grp_conv2d_Pipeline_READ_WEIGHTS_fu_289
       (.CEB1(empty_fu_940),
        .D(grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_n_5),
        .E(ap_block_pp0_stage0_subdone_4),
        .Q(weight_stream_TVALID_int_regslice),
        .\ap_CS_fsm_reg[1] (grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_n_4),
        .\ap_CS_fsm_reg[2] (grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_n_2),
        .\ap_CS_fsm_reg[3] ({ap_CS_fsm_state3,ap_CS_fsm_state2}),
        .ap_clk(ap_clk),
        .ap_done_cache(\flow_control_loop_pipe_sequential_init_U/ap_done_cache ),
        .ap_done_reg1(ap_done_reg1),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1_1),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .\empty_19_fu_98_reg[15]_0 (grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_p_out7),
        .\empty_20_fu_102_reg[15]_0 (grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_p_out6),
        .\empty_21_fu_106_reg[15]_0 (grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_p_out5),
        .\empty_22_fu_110_reg[15]_0 (grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_p_out4),
        .\empty_23_fu_114_reg[15]_0 (grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_p_out3),
        .\empty_24_fu_118_reg[15]_0 (grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_p_out2),
        .\empty_25_fu_122_reg[15]_0 (grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_p_out1),
        .\empty_26_fu_126_reg[15]_0 (grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_p_out),
        .\empty_26_fu_126_reg[15]_1 (weight_stream_TDATA_int_regslice),
        .grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg(grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg),
        .grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg(grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg),
        .\phi_mul14_fu_86_reg[1]_0 (regslice_both_weight_stream_V_data_V_U_n_3),
        .\state_reg[0] (grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_n_1));
  FDRE #(
    .INIT(1'b0)) 
    grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_n_4),
        .Q(grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg),
        .R(ap_rst_n_inv));
  cnn_pipeline_conv2d_0_1_conv2d_conv2d_Pipeline_WRITE_OUTPUT grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358
       (.D(out_stream_TDATA_int_regslice),
        .E(ap_block_pp0_stage0_subdone_3),
        .Q({ap_CS_fsm_state8,ap_CS_fsm_state7,ap_CS_fsm_state6}),
        .\ap_CS_fsm_reg[5] (grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_n_43),
        .\ap_CS_fsm_reg[7] (ap_NS_fsm[7:6]),
        .\ap_CS_fsm_reg[7]_0 (regslice_both_out_stream_V_data_V_U_n_10),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1_2),
        .ap_loop_init_int_reg(grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_n_42),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .data_p2(data_p2),
        .\data_p2_reg[0] (regslice_both_out_stream_V_last_V_U_n_0),
        .\data_p2_reg[15] (out_stream_TDATA_reg),
        .grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg(grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg),
        .grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg_reg(grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_n_38),
        .grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_out_stream_TLAST(grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_out_stream_TLAST),
        .\icmp_ln118_reg_382_reg[0]_0 (grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_n_44),
        .load_p2(load_p2),
        .out_stream_TLAST_int_regslice(out_stream_TLAST_int_regslice),
        .out_stream_TLAST_reg(out_stream_TLAST_reg),
        .out_stream_TREADY_int_regslice(out_stream_TREADY_int_regslice),
        .\p_0_reg_377_reg[15]_0 (grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_out_stream_TDATA),
        .\p_0_reg_377_reg[15]_1 (dout_tmp),
        .\phi_mul22_fu_96_reg[6]_0 (grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_n_39),
        .\phi_mul22_fu_96_reg[7]_0 (grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_n_40),
        .\phi_urem24_fu_92_reg[1]_0 (grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_n_41),
        .\rem_fu_100_reg[3]_0 (regslice_both_out_stream_V_data_V_U_n_6));
  FDRE #(
    .INIT(1'b0)) 
    grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_n_43),
        .Q(grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg),
        .R(ap_rst_n_inv));
  FDRE \out_stream_TDATA_reg_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(out_stream_TDATA_int_regslice[0]),
        .Q(out_stream_TDATA_reg[0]),
        .R(1'b0));
  FDRE \out_stream_TDATA_reg_reg[10] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(out_stream_TDATA_int_regslice[10]),
        .Q(out_stream_TDATA_reg[10]),
        .R(1'b0));
  FDRE \out_stream_TDATA_reg_reg[11] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(out_stream_TDATA_int_regslice[11]),
        .Q(out_stream_TDATA_reg[11]),
        .R(1'b0));
  FDRE \out_stream_TDATA_reg_reg[12] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(out_stream_TDATA_int_regslice[12]),
        .Q(out_stream_TDATA_reg[12]),
        .R(1'b0));
  FDRE \out_stream_TDATA_reg_reg[13] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(out_stream_TDATA_int_regslice[13]),
        .Q(out_stream_TDATA_reg[13]),
        .R(1'b0));
  FDRE \out_stream_TDATA_reg_reg[14] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(out_stream_TDATA_int_regslice[14]),
        .Q(out_stream_TDATA_reg[14]),
        .R(1'b0));
  FDRE \out_stream_TDATA_reg_reg[15] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(out_stream_TDATA_int_regslice[15]),
        .Q(out_stream_TDATA_reg[15]),
        .R(1'b0));
  FDRE \out_stream_TDATA_reg_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(out_stream_TDATA_int_regslice[1]),
        .Q(out_stream_TDATA_reg[1]),
        .R(1'b0));
  FDRE \out_stream_TDATA_reg_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(out_stream_TDATA_int_regslice[2]),
        .Q(out_stream_TDATA_reg[2]),
        .R(1'b0));
  FDRE \out_stream_TDATA_reg_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(out_stream_TDATA_int_regslice[3]),
        .Q(out_stream_TDATA_reg[3]),
        .R(1'b0));
  FDRE \out_stream_TDATA_reg_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(out_stream_TDATA_int_regslice[4]),
        .Q(out_stream_TDATA_reg[4]),
        .R(1'b0));
  FDRE \out_stream_TDATA_reg_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(out_stream_TDATA_int_regslice[5]),
        .Q(out_stream_TDATA_reg[5]),
        .R(1'b0));
  FDRE \out_stream_TDATA_reg_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(out_stream_TDATA_int_regslice[6]),
        .Q(out_stream_TDATA_reg[6]),
        .R(1'b0));
  FDRE \out_stream_TDATA_reg_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(out_stream_TDATA_int_regslice[7]),
        .Q(out_stream_TDATA_reg[7]),
        .R(1'b0));
  FDRE \out_stream_TDATA_reg_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(out_stream_TDATA_int_regslice[8]),
        .Q(out_stream_TDATA_reg[8]),
        .R(1'b0));
  FDRE \out_stream_TDATA_reg_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(out_stream_TDATA_int_regslice[9]),
        .Q(out_stream_TDATA_reg[9]),
        .R(1'b0));
  FDRE \out_stream_TKEEP_reg_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(regslice_both_out_stream_V_data_V_U_n_3),
        .Q(out_stream_TKEEP_reg[0]),
        .R(1'b0));
  FDRE \out_stream_TKEEP_reg_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(regslice_both_out_stream_V_data_V_U_n_2),
        .Q(out_stream_TKEEP_reg[1]),
        .R(1'b0));
  FDRE \out_stream_TLAST_reg_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(out_stream_TLAST_int_regslice),
        .Q(out_stream_TLAST_reg),
        .R(1'b0));
  FDRE \out_stream_TSTRB_reg_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(regslice_both_out_stream_V_data_V_U_n_5),
        .Q(out_stream_TSTRB_reg[0]),
        .R(1'b0));
  FDRE \out_stream_TSTRB_reg_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(regslice_both_out_stream_V_data_V_U_n_4),
        .Q(out_stream_TSTRB_reg[1]),
        .R(1'b0));
  cnn_pipeline_conv2d_0_1_conv2d_regslice_both regslice_both_in_stream_V_data_V_U
       (.E(ap_block_pp0_stage0_subdone),
        .\FSM_sequential_state_reg[0]_0 (ap_CS_fsm_state3),
        .Q(in_stream_TVALID_int_regslice),
        .ack_in_t_reg_0(in_stream_TREADY),
        .ack_in_t_reg_1(grp_conv2d_Pipeline_READ_INPUT_fu_252_n_149),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .ap_rst_n_inv(ap_rst_n_inv),
        .\data_p1_reg[15]_0 (in_stream_TDATA_int_regslice),
        .grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg(grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg),
        .in_stream_TDATA(in_stream_TDATA),
        .in_stream_TVALID(in_stream_TVALID),
        .\state_reg[0]_0 (regslice_both_in_stream_V_data_V_U_n_3));
  cnn_pipeline_conv2d_0_1_conv2d_regslice_both_0 regslice_both_out_stream_V_data_V_U
       (.D({regslice_both_out_stream_V_data_V_U_n_2,regslice_both_out_stream_V_data_V_U_n_3}),
        .E(ap_block_pp0_stage0_subdone_3),
        .\FSM_sequential_state_reg[0]_0 (ap_NS_fsm[0]),
        .\FSM_sequential_state_reg[0]_1 (regslice_both_out_stream_V_data_V_U_n_10),
        .Q({ap_CS_fsm_state8,ap_CS_fsm_state7,\ap_CS_fsm_reg_n_0_[0] }),
        .ack_in_t_reg_0(regslice_both_out_stream_V_data_V_U_n_6),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1_2),
        .ap_ready(ap_ready),
        .ap_rst_n_inv(ap_rst_n_inv),
        .ap_start(ap_start),
        .\data_p1_reg[15]_0 (grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_out_stream_TDATA),
        .\data_p1_reg[15]_1 (out_stream_TDATA_reg),
        .\data_p2_reg[15]_0 (out_stream_TDATA_int_regslice),
        .\data_p2_reg[1]_0 (out_stream_TKEEP_reg),
        .\data_p2_reg[1]_1 (out_stream_TSTRB_reg),
        .grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg(grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg),
        .load_p2(load_p2),
        .out_stream_TDATA(out_stream_TDATA),
        .out_stream_TREADY(out_stream_TREADY),
        .out_stream_TREADY_int_regslice(out_stream_TREADY_int_regslice),
        .\out_stream_TSTRB_reg_reg[1] ({regslice_both_out_stream_V_data_V_U_n_4,regslice_both_out_stream_V_data_V_U_n_5}),
        .out_stream_TVALID(out_stream_TVALID));
  cnn_pipeline_conv2d_0_1_conv2d_regslice_both__parameterized0 regslice_both_out_stream_V_keep_V_U
       (.D({regslice_both_out_stream_V_data_V_U_n_2,regslice_both_out_stream_V_data_V_U_n_3}),
        .Q(ap_CS_fsm_state7),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1_2),
        .ap_rst_n_inv(ap_rst_n_inv),
        .\data_p1_reg[1]_0 (out_stream_TKEEP_reg),
        .load_p2(load_p2),
        .out_stream_TKEEP(out_stream_TKEEP),
        .out_stream_TREADY(out_stream_TREADY),
        .out_stream_TREADY_int_regslice(out_stream_TREADY_int_regslice));
  cnn_pipeline_conv2d_0_1_conv2d_regslice_both__parameterized1 regslice_both_out_stream_V_last_V_U
       (.Q(ap_CS_fsm_state7),
        .ack_in_t_reg_0(regslice_both_out_stream_V_last_V_U_n_0),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1_2),
        .ap_rst_n_inv(ap_rst_n_inv),
        .data_p2(data_p2),
        .\data_p2_reg[0]_0 (grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_n_44),
        .grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_out_stream_TLAST(grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_out_stream_TLAST),
        .load_p2(load_p2),
        .out_stream_TLAST(out_stream_TLAST),
        .out_stream_TLAST_reg(out_stream_TLAST_reg),
        .out_stream_TREADY(out_stream_TREADY),
        .out_stream_TREADY_int_regslice(out_stream_TREADY_int_regslice));
  cnn_pipeline_conv2d_0_1_conv2d_regslice_both__parameterized0_1 regslice_both_out_stream_V_strb_V_U
       (.D({regslice_both_out_stream_V_data_V_U_n_4,regslice_both_out_stream_V_data_V_U_n_5}),
        .Q(ap_CS_fsm_state7),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1_2),
        .ap_rst_n_inv(ap_rst_n_inv),
        .\data_p1_reg[1]_0 (out_stream_TSTRB_reg),
        .load_p2(load_p2),
        .out_stream_TREADY(out_stream_TREADY),
        .out_stream_TREADY_int_regslice(out_stream_TREADY_int_regslice),
        .out_stream_TSTRB(out_stream_TSTRB));
  cnn_pipeline_conv2d_0_1_conv2d_regslice_both_2 regslice_both_weight_stream_V_data_V_U
       (.E(ap_block_pp0_stage0_subdone_4),
        .Q(weight_stream_TVALID_int_regslice),
        .ack_in_t_reg_0(weight_stream_TREADY),
        .ack_in_t_reg_1(grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_n_2),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1_1),
        .ap_rst_n_inv(ap_rst_n_inv),
        .\data_p1_reg[15]_0 (weight_stream_TDATA_int_regslice),
        .grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg(grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg),
        .\state_reg[0]_0 (regslice_both_weight_stream_V_data_V_U_n_3),
        .\state_reg[0]_1 (ap_CS_fsm_state3),
        .weight_stream_TDATA(weight_stream_TDATA),
        .weight_stream_TVALID(weight_stream_TVALID));
endmodule

(* ORIG_REF_NAME = "conv2d_conv2d_Pipeline_CONV_OR_CONV_OC2" *) 
module cnn_pipeline_conv2d_0_1_conv2d_conv2d_Pipeline_CONV_OR_CONV_OC2
   (ap_rst_n_inv,
    \select_ln49_reg_1599_pp0_iter1_reg_reg[1]_0 ,
    \select_ln49_reg_1599_pp0_iter1_reg_reg[0]_0 ,
    \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_0 ,
    \select_ln89_reg_1613_pp0_iter1_reg_reg[0]_0 ,
    \oc_s_fu_140_reg[1]_0 ,
    select_ln89_fu_561_p3,
    D,
    \ap_CS_fsm_reg[4] ,
    \ap_CS_fsm_reg[3] ,
    \oc_s_fu_140_reg[0]_0 ,
    sel,
    \select_ln89_reg_1613_reg[1]_0 ,
    \select_ln89_reg_1613_reg[0]_0 ,
    ap_clk,
    CEB1,
    Q,
    DSP_ALU_INST,
    A,
    bias,
    DSP_ALU_INST_0,
    DSP_ALU_INST_1,
    DSP_ALU_INST_2,
    DSP_ALU_INST_3,
    DSP_ALU_INST_4,
    DSP_ALU_INST_5,
    DSP_ALU_INST_6,
    DSP_ALU_INST_7,
    DSP_ALU_INST_8,
    DSP_ALU_INST_9,
    \tmp_22_reg_1633_pp0_iter4_reg_reg[15]__0_0 ,
    \tmp_22_reg_1633_pp0_iter4_reg_reg[14]__0_0 ,
    \tmp_22_reg_1633_pp0_iter4_reg_reg[13]__0_0 ,
    \tmp_22_reg_1633_pp0_iter4_reg_reg[12]__0_0 ,
    \tmp_22_reg_1633_pp0_iter4_reg_reg[11]__0_0 ,
    \tmp_22_reg_1633_pp0_iter4_reg_reg[10]__0_0 ,
    \tmp_22_reg_1633_pp0_iter4_reg_reg[9]__0_0 ,
    \tmp_22_reg_1633_pp0_iter4_reg_reg[8]__0_0 ,
    \tmp_22_reg_1633_pp0_iter4_reg_reg[7]__0_0 ,
    \tmp_22_reg_1633_pp0_iter4_reg_reg[6]__0_0 ,
    \tmp_22_reg_1633_pp0_iter4_reg_reg[5]__0_0 ,
    \tmp_22_reg_1633_pp0_iter4_reg_reg[4]__0_0 ,
    \tmp_22_reg_1633_pp0_iter4_reg_reg[3]__0_0 ,
    \tmp_22_reg_1633_pp0_iter4_reg_reg[2]__0_0 ,
    \tmp_22_reg_1633_pp0_iter4_reg_reg[1]__0_0 ,
    \tmp_22_reg_1633_pp0_iter4_reg_reg[0]__0_0 ,
    \tmp_24_reg_1648_pp0_iter5_reg_reg[15]__0_0 ,
    \tmp_24_reg_1648_pp0_iter5_reg_reg[14]__0_0 ,
    \tmp_24_reg_1648_pp0_iter5_reg_reg[13]__0_0 ,
    \tmp_24_reg_1648_pp0_iter5_reg_reg[12]__0_0 ,
    \tmp_24_reg_1648_pp0_iter5_reg_reg[11]__0_0 ,
    \tmp_24_reg_1648_pp0_iter5_reg_reg[10]__0_0 ,
    \tmp_24_reg_1648_pp0_iter5_reg_reg[9]__0_0 ,
    \tmp_24_reg_1648_pp0_iter5_reg_reg[8]__0_0 ,
    \tmp_24_reg_1648_pp0_iter5_reg_reg[7]__0_0 ,
    \tmp_24_reg_1648_pp0_iter5_reg_reg[6]__0_0 ,
    \tmp_24_reg_1648_pp0_iter5_reg_reg[5]__0_0 ,
    \tmp_24_reg_1648_pp0_iter5_reg_reg[4]__0_0 ,
    \tmp_24_reg_1648_pp0_iter5_reg_reg[3]__0_0 ,
    \tmp_24_reg_1648_pp0_iter5_reg_reg[2]__0_0 ,
    \tmp_24_reg_1648_pp0_iter5_reg_reg[1]__0_0 ,
    \tmp_24_reg_1648_pp0_iter5_reg_reg[0]__0_0 ,
    \tmp_26_reg_1663_pp0_iter6_reg_reg[15]__0_0 ,
    \tmp_26_reg_1663_pp0_iter6_reg_reg[14]__0_0 ,
    \tmp_26_reg_1663_pp0_iter6_reg_reg[13]__0_0 ,
    \tmp_26_reg_1663_pp0_iter6_reg_reg[12]__0_0 ,
    \tmp_26_reg_1663_pp0_iter6_reg_reg[11]__0_0 ,
    \tmp_26_reg_1663_pp0_iter6_reg_reg[10]__0_0 ,
    \tmp_26_reg_1663_pp0_iter6_reg_reg[9]__0_0 ,
    \tmp_26_reg_1663_pp0_iter6_reg_reg[8]__0_0 ,
    \tmp_26_reg_1663_pp0_iter6_reg_reg[7]__0_0 ,
    \tmp_26_reg_1663_pp0_iter6_reg_reg[6]__0_0 ,
    \tmp_26_reg_1663_pp0_iter6_reg_reg[5]__0_0 ,
    \tmp_26_reg_1663_pp0_iter6_reg_reg[4]__0_0 ,
    \tmp_26_reg_1663_pp0_iter6_reg_reg[3]__0_0 ,
    \tmp_26_reg_1663_pp0_iter6_reg_reg[2]__0_0 ,
    \tmp_26_reg_1663_pp0_iter6_reg_reg[1]__0_0 ,
    \tmp_26_reg_1663_pp0_iter6_reg_reg[0]__0_0 ,
    ap_rst_n,
    grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_ap_start_reg,
    \p_0_reg_377_reg[14] ,
    \p_0_reg_377_reg[14]_0 ,
    \p_0_reg_377_reg[14]_1 ,
    \p_0_reg_377_reg[0] ,
    \p_0_reg_377_reg[0]_0 ,
    \tmp_15_reg_1628_reg[15]_0 ,
    \tmp_15_reg_1628_reg[14]_0 ,
    \tmp_15_reg_1628_reg[13]_0 ,
    \tmp_15_reg_1628_reg[12]_0 ,
    \tmp_15_reg_1628_reg[11]_0 ,
    \tmp_15_reg_1628_reg[10]_0 ,
    \tmp_15_reg_1628_reg[9]_0 ,
    \tmp_15_reg_1628_reg[8]_0 ,
    \tmp_15_reg_1628_reg[7]_0 ,
    \tmp_15_reg_1628_reg[6]_0 ,
    \tmp_15_reg_1628_reg[5]_0 ,
    \tmp_15_reg_1628_reg[4]_0 ,
    \tmp_15_reg_1628_reg[3]_0 ,
    \tmp_15_reg_1628_reg[2]_0 ,
    \tmp_15_reg_1628_reg[1]_0 ,
    \tmp_15_reg_1628_reg[0]_0 ,
    \tmp_18_reg_1643_reg[15]_0 ,
    \tmp_18_reg_1643_reg[14]_0 ,
    \tmp_18_reg_1643_reg[13]_0 ,
    \tmp_18_reg_1643_reg[12]_0 ,
    \tmp_18_reg_1643_reg[11]_0 ,
    \tmp_18_reg_1643_reg[10]_0 ,
    \tmp_18_reg_1643_reg[9]_0 ,
    \tmp_18_reg_1643_reg[8]_0 ,
    \tmp_18_reg_1643_reg[7]_0 ,
    \tmp_18_reg_1643_reg[6]_0 ,
    \tmp_18_reg_1643_reg[5]_0 ,
    \tmp_18_reg_1643_reg[4]_0 ,
    \tmp_18_reg_1643_reg[3]_0 ,
    \tmp_18_reg_1643_reg[2]_0 ,
    \tmp_18_reg_1643_reg[1]_0 ,
    \tmp_18_reg_1643_reg[0]_0 ,
    \tmp_20_reg_1658_reg[15]_0 );
  output ap_rst_n_inv;
  output \select_ln49_reg_1599_pp0_iter1_reg_reg[1]_0 ;
  output \select_ln49_reg_1599_pp0_iter1_reg_reg[0]_0 ;
  output \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_0 ;
  output \select_ln89_reg_1613_pp0_iter1_reg_reg[0]_0 ;
  output [0:0]\oc_s_fu_140_reg[1]_0 ;
  output [1:0]select_ln89_fu_561_p3;
  output [15:0]D;
  output [1:0]\ap_CS_fsm_reg[4] ;
  output \ap_CS_fsm_reg[3] ;
  output \oc_s_fu_140_reg[0]_0 ;
  output [1:0]sel;
  output \select_ln89_reg_1613_reg[1]_0 ;
  output \select_ln89_reg_1613_reg[0]_0 ;
  input ap_clk;
  input CEB1;
  input [1:0]Q;
  input [15:0]DSP_ALU_INST;
  input [15:0]A;
  input [15:0]bias;
  input [15:0]DSP_ALU_INST_0;
  input [15:0]DSP_ALU_INST_1;
  input [15:0]DSP_ALU_INST_2;
  input [15:0]DSP_ALU_INST_3;
  input [15:0]DSP_ALU_INST_4;
  input [15:0]DSP_ALU_INST_5;
  input [15:0]DSP_ALU_INST_6;
  input [15:0]DSP_ALU_INST_7;
  input [15:0]DSP_ALU_INST_8;
  input [15:0]DSP_ALU_INST_9;
  input \tmp_22_reg_1633_pp0_iter4_reg_reg[15]__0_0 ;
  input \tmp_22_reg_1633_pp0_iter4_reg_reg[14]__0_0 ;
  input \tmp_22_reg_1633_pp0_iter4_reg_reg[13]__0_0 ;
  input \tmp_22_reg_1633_pp0_iter4_reg_reg[12]__0_0 ;
  input \tmp_22_reg_1633_pp0_iter4_reg_reg[11]__0_0 ;
  input \tmp_22_reg_1633_pp0_iter4_reg_reg[10]__0_0 ;
  input \tmp_22_reg_1633_pp0_iter4_reg_reg[9]__0_0 ;
  input \tmp_22_reg_1633_pp0_iter4_reg_reg[8]__0_0 ;
  input \tmp_22_reg_1633_pp0_iter4_reg_reg[7]__0_0 ;
  input \tmp_22_reg_1633_pp0_iter4_reg_reg[6]__0_0 ;
  input \tmp_22_reg_1633_pp0_iter4_reg_reg[5]__0_0 ;
  input \tmp_22_reg_1633_pp0_iter4_reg_reg[4]__0_0 ;
  input \tmp_22_reg_1633_pp0_iter4_reg_reg[3]__0_0 ;
  input \tmp_22_reg_1633_pp0_iter4_reg_reg[2]__0_0 ;
  input \tmp_22_reg_1633_pp0_iter4_reg_reg[1]__0_0 ;
  input \tmp_22_reg_1633_pp0_iter4_reg_reg[0]__0_0 ;
  input \tmp_24_reg_1648_pp0_iter5_reg_reg[15]__0_0 ;
  input \tmp_24_reg_1648_pp0_iter5_reg_reg[14]__0_0 ;
  input \tmp_24_reg_1648_pp0_iter5_reg_reg[13]__0_0 ;
  input \tmp_24_reg_1648_pp0_iter5_reg_reg[12]__0_0 ;
  input \tmp_24_reg_1648_pp0_iter5_reg_reg[11]__0_0 ;
  input \tmp_24_reg_1648_pp0_iter5_reg_reg[10]__0_0 ;
  input \tmp_24_reg_1648_pp0_iter5_reg_reg[9]__0_0 ;
  input \tmp_24_reg_1648_pp0_iter5_reg_reg[8]__0_0 ;
  input \tmp_24_reg_1648_pp0_iter5_reg_reg[7]__0_0 ;
  input \tmp_24_reg_1648_pp0_iter5_reg_reg[6]__0_0 ;
  input \tmp_24_reg_1648_pp0_iter5_reg_reg[5]__0_0 ;
  input \tmp_24_reg_1648_pp0_iter5_reg_reg[4]__0_0 ;
  input \tmp_24_reg_1648_pp0_iter5_reg_reg[3]__0_0 ;
  input \tmp_24_reg_1648_pp0_iter5_reg_reg[2]__0_0 ;
  input \tmp_24_reg_1648_pp0_iter5_reg_reg[1]__0_0 ;
  input \tmp_24_reg_1648_pp0_iter5_reg_reg[0]__0_0 ;
  input \tmp_26_reg_1663_pp0_iter6_reg_reg[15]__0_0 ;
  input \tmp_26_reg_1663_pp0_iter6_reg_reg[14]__0_0 ;
  input \tmp_26_reg_1663_pp0_iter6_reg_reg[13]__0_0 ;
  input \tmp_26_reg_1663_pp0_iter6_reg_reg[12]__0_0 ;
  input \tmp_26_reg_1663_pp0_iter6_reg_reg[11]__0_0 ;
  input \tmp_26_reg_1663_pp0_iter6_reg_reg[10]__0_0 ;
  input \tmp_26_reg_1663_pp0_iter6_reg_reg[9]__0_0 ;
  input \tmp_26_reg_1663_pp0_iter6_reg_reg[8]__0_0 ;
  input \tmp_26_reg_1663_pp0_iter6_reg_reg[7]__0_0 ;
  input \tmp_26_reg_1663_pp0_iter6_reg_reg[6]__0_0 ;
  input \tmp_26_reg_1663_pp0_iter6_reg_reg[5]__0_0 ;
  input \tmp_26_reg_1663_pp0_iter6_reg_reg[4]__0_0 ;
  input \tmp_26_reg_1663_pp0_iter6_reg_reg[3]__0_0 ;
  input \tmp_26_reg_1663_pp0_iter6_reg_reg[2]__0_0 ;
  input \tmp_26_reg_1663_pp0_iter6_reg_reg[1]__0_0 ;
  input \tmp_26_reg_1663_pp0_iter6_reg_reg[0]__0_0 ;
  input ap_rst_n;
  input grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_ap_start_reg;
  input \p_0_reg_377_reg[14] ;
  input \p_0_reg_377_reg[14]_0 ;
  input \p_0_reg_377_reg[14]_1 ;
  input \p_0_reg_377_reg[0] ;
  input \p_0_reg_377_reg[0]_0 ;
  input \tmp_15_reg_1628_reg[15]_0 ;
  input \tmp_15_reg_1628_reg[14]_0 ;
  input \tmp_15_reg_1628_reg[13]_0 ;
  input \tmp_15_reg_1628_reg[12]_0 ;
  input \tmp_15_reg_1628_reg[11]_0 ;
  input \tmp_15_reg_1628_reg[10]_0 ;
  input \tmp_15_reg_1628_reg[9]_0 ;
  input \tmp_15_reg_1628_reg[8]_0 ;
  input \tmp_15_reg_1628_reg[7]_0 ;
  input \tmp_15_reg_1628_reg[6]_0 ;
  input \tmp_15_reg_1628_reg[5]_0 ;
  input \tmp_15_reg_1628_reg[4]_0 ;
  input \tmp_15_reg_1628_reg[3]_0 ;
  input \tmp_15_reg_1628_reg[2]_0 ;
  input \tmp_15_reg_1628_reg[1]_0 ;
  input \tmp_15_reg_1628_reg[0]_0 ;
  input \tmp_18_reg_1643_reg[15]_0 ;
  input \tmp_18_reg_1643_reg[14]_0 ;
  input \tmp_18_reg_1643_reg[13]_0 ;
  input \tmp_18_reg_1643_reg[12]_0 ;
  input \tmp_18_reg_1643_reg[11]_0 ;
  input \tmp_18_reg_1643_reg[10]_0 ;
  input \tmp_18_reg_1643_reg[9]_0 ;
  input \tmp_18_reg_1643_reg[8]_0 ;
  input \tmp_18_reg_1643_reg[7]_0 ;
  input \tmp_18_reg_1643_reg[6]_0 ;
  input \tmp_18_reg_1643_reg[5]_0 ;
  input \tmp_18_reg_1643_reg[4]_0 ;
  input \tmp_18_reg_1643_reg[3]_0 ;
  input \tmp_18_reg_1643_reg[2]_0 ;
  input \tmp_18_reg_1643_reg[1]_0 ;
  input \tmp_18_reg_1643_reg[0]_0 ;
  input [15:0]\tmp_20_reg_1658_reg[15]_0 ;

  wire [15:0]A;
  wire [23:8]C;
  wire CEB1;
  wire [15:0]D;
  wire [15:0]DSP_ALU_INST;
  wire [15:0]DSP_ALU_INST_0;
  wire [15:0]DSP_ALU_INST_1;
  wire [15:0]DSP_ALU_INST_2;
  wire [15:0]DSP_ALU_INST_3;
  wire [15:0]DSP_ALU_INST_4;
  wire [15:0]DSP_ALU_INST_5;
  wire [15:0]DSP_ALU_INST_6;
  wire [15:0]DSP_ALU_INST_7;
  wire [15:0]DSP_ALU_INST_8;
  wire [15:0]DSP_ALU_INST_9;
  wire [1:0]Q;
  wire [3:0]add_ln89_fu_528_p2;
  wire [1:1]add_ln96_2_fu_653_p2;
  wire \ap_CS_fsm_reg[3] ;
  wire [1:0]\ap_CS_fsm_reg[4] ;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp0_iter10;
  wire ap_enable_reg_pp0_iter11;
  wire ap_enable_reg_pp0_iter2;
  wire ap_enable_reg_pp0_iter3;
  wire ap_enable_reg_pp0_iter4;
  wire ap_enable_reg_pp0_iter5;
  wire ap_enable_reg_pp0_iter6;
  wire ap_enable_reg_pp0_iter7;
  wire ap_enable_reg_pp0_iter8;
  wire ap_enable_reg_pp0_iter9;
  wire ap_loop_exit_ready_pp0_iter10_reg;
  wire ap_loop_exit_ready_pp0_iter9_reg_reg_srl9_n_0;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire [15:0]bias;
  wire flow_control_loop_pipe_sequential_init_U_n_16;
  wire flow_control_loop_pipe_sequential_init_U_n_17;
  wire grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_ap_ready;
  wire grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_ap_start_reg;
  wire [15:0]grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_1_out;
  wire [15:0]grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_2_out;
  wire [15:0]grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_3_out;
  wire [15:0]grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_4_out;
  wire [15:0]grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_5_out;
  wire [15:0]grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_6_out;
  wire [15:0]grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_7_out;
  wire [15:0]grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_8_out;
  wire [15:0]grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_out;
  wire indvar_flatten_fu_1480;
  wire \indvar_flatten_fu_148_reg_n_0_[0] ;
  wire \indvar_flatten_fu_148_reg_n_0_[1] ;
  wire \indvar_flatten_fu_148_reg_n_0_[2] ;
  wire \indvar_flatten_fu_148_reg_n_0_[3] ;
  wire mac_muladd_16s_16s_24s_24_4_1_U67_n_0;
  wire mac_muladd_16s_16s_24s_24_4_1_U67_n_1;
  wire mac_muladd_16s_16s_24s_24_4_1_U67_n_10;
  wire mac_muladd_16s_16s_24s_24_4_1_U67_n_11;
  wire mac_muladd_16s_16s_24s_24_4_1_U67_n_12;
  wire mac_muladd_16s_16s_24s_24_4_1_U67_n_13;
  wire mac_muladd_16s_16s_24s_24_4_1_U67_n_14;
  wire mac_muladd_16s_16s_24s_24_4_1_U67_n_15;
  wire mac_muladd_16s_16s_24s_24_4_1_U67_n_2;
  wire mac_muladd_16s_16s_24s_24_4_1_U67_n_3;
  wire mac_muladd_16s_16s_24s_24_4_1_U67_n_4;
  wire mac_muladd_16s_16s_24s_24_4_1_U67_n_5;
  wire mac_muladd_16s_16s_24s_24_4_1_U67_n_6;
  wire mac_muladd_16s_16s_24s_24_4_1_U67_n_7;
  wire mac_muladd_16s_16s_24s_24_4_1_U67_n_8;
  wire mac_muladd_16s_16s_24s_24_4_1_U67_n_9;
  wire mac_muladd_16s_16s_24s_24_4_1_U68_n_0;
  wire mac_muladd_16s_16s_24s_24_4_1_U68_n_1;
  wire mac_muladd_16s_16s_24s_24_4_1_U68_n_10;
  wire mac_muladd_16s_16s_24s_24_4_1_U68_n_11;
  wire mac_muladd_16s_16s_24s_24_4_1_U68_n_12;
  wire mac_muladd_16s_16s_24s_24_4_1_U68_n_13;
  wire mac_muladd_16s_16s_24s_24_4_1_U68_n_14;
  wire mac_muladd_16s_16s_24s_24_4_1_U68_n_15;
  wire mac_muladd_16s_16s_24s_24_4_1_U68_n_2;
  wire mac_muladd_16s_16s_24s_24_4_1_U68_n_3;
  wire mac_muladd_16s_16s_24s_24_4_1_U68_n_4;
  wire mac_muladd_16s_16s_24s_24_4_1_U68_n_5;
  wire mac_muladd_16s_16s_24s_24_4_1_U68_n_6;
  wire mac_muladd_16s_16s_24s_24_4_1_U68_n_7;
  wire mac_muladd_16s_16s_24s_24_4_1_U68_n_8;
  wire mac_muladd_16s_16s_24s_24_4_1_U68_n_9;
  wire mac_muladd_16s_16s_24s_24_4_1_U69_n_0;
  wire mac_muladd_16s_16s_24s_24_4_1_U69_n_1;
  wire mac_muladd_16s_16s_24s_24_4_1_U69_n_10;
  wire mac_muladd_16s_16s_24s_24_4_1_U69_n_11;
  wire mac_muladd_16s_16s_24s_24_4_1_U69_n_12;
  wire mac_muladd_16s_16s_24s_24_4_1_U69_n_13;
  wire mac_muladd_16s_16s_24s_24_4_1_U69_n_14;
  wire mac_muladd_16s_16s_24s_24_4_1_U69_n_15;
  wire mac_muladd_16s_16s_24s_24_4_1_U69_n_2;
  wire mac_muladd_16s_16s_24s_24_4_1_U69_n_3;
  wire mac_muladd_16s_16s_24s_24_4_1_U69_n_4;
  wire mac_muladd_16s_16s_24s_24_4_1_U69_n_5;
  wire mac_muladd_16s_16s_24s_24_4_1_U69_n_6;
  wire mac_muladd_16s_16s_24s_24_4_1_U69_n_7;
  wire mac_muladd_16s_16s_24s_24_4_1_U69_n_8;
  wire mac_muladd_16s_16s_24s_24_4_1_U69_n_9;
  wire mac_muladd_16s_16s_24s_24_4_1_U70_n_0;
  wire mac_muladd_16s_16s_24s_24_4_1_U70_n_1;
  wire mac_muladd_16s_16s_24s_24_4_1_U70_n_10;
  wire mac_muladd_16s_16s_24s_24_4_1_U70_n_11;
  wire mac_muladd_16s_16s_24s_24_4_1_U70_n_12;
  wire mac_muladd_16s_16s_24s_24_4_1_U70_n_13;
  wire mac_muladd_16s_16s_24s_24_4_1_U70_n_14;
  wire mac_muladd_16s_16s_24s_24_4_1_U70_n_15;
  wire mac_muladd_16s_16s_24s_24_4_1_U70_n_2;
  wire mac_muladd_16s_16s_24s_24_4_1_U70_n_3;
  wire mac_muladd_16s_16s_24s_24_4_1_U70_n_4;
  wire mac_muladd_16s_16s_24s_24_4_1_U70_n_5;
  wire mac_muladd_16s_16s_24s_24_4_1_U70_n_6;
  wire mac_muladd_16s_16s_24s_24_4_1_U70_n_7;
  wire mac_muladd_16s_16s_24s_24_4_1_U70_n_8;
  wire mac_muladd_16s_16s_24s_24_4_1_U70_n_9;
  wire mac_muladd_16s_16s_24s_24_4_1_U71_n_0;
  wire mac_muladd_16s_16s_24s_24_4_1_U71_n_1;
  wire mac_muladd_16s_16s_24s_24_4_1_U71_n_10;
  wire mac_muladd_16s_16s_24s_24_4_1_U71_n_11;
  wire mac_muladd_16s_16s_24s_24_4_1_U71_n_12;
  wire mac_muladd_16s_16s_24s_24_4_1_U71_n_13;
  wire mac_muladd_16s_16s_24s_24_4_1_U71_n_14;
  wire mac_muladd_16s_16s_24s_24_4_1_U71_n_15;
  wire mac_muladd_16s_16s_24s_24_4_1_U71_n_2;
  wire mac_muladd_16s_16s_24s_24_4_1_U71_n_3;
  wire mac_muladd_16s_16s_24s_24_4_1_U71_n_4;
  wire mac_muladd_16s_16s_24s_24_4_1_U71_n_5;
  wire mac_muladd_16s_16s_24s_24_4_1_U71_n_6;
  wire mac_muladd_16s_16s_24s_24_4_1_U71_n_7;
  wire mac_muladd_16s_16s_24s_24_4_1_U71_n_8;
  wire mac_muladd_16s_16s_24s_24_4_1_U71_n_9;
  wire mac_muladd_16s_16s_24s_24_4_1_U72_n_0;
  wire mac_muladd_16s_16s_24s_24_4_1_U72_n_1;
  wire mac_muladd_16s_16s_24s_24_4_1_U72_n_10;
  wire mac_muladd_16s_16s_24s_24_4_1_U72_n_11;
  wire mac_muladd_16s_16s_24s_24_4_1_U72_n_12;
  wire mac_muladd_16s_16s_24s_24_4_1_U72_n_13;
  wire mac_muladd_16s_16s_24s_24_4_1_U72_n_14;
  wire mac_muladd_16s_16s_24s_24_4_1_U72_n_15;
  wire mac_muladd_16s_16s_24s_24_4_1_U72_n_2;
  wire mac_muladd_16s_16s_24s_24_4_1_U72_n_3;
  wire mac_muladd_16s_16s_24s_24_4_1_U72_n_4;
  wire mac_muladd_16s_16s_24s_24_4_1_U72_n_5;
  wire mac_muladd_16s_16s_24s_24_4_1_U72_n_6;
  wire mac_muladd_16s_16s_24s_24_4_1_U72_n_7;
  wire mac_muladd_16s_16s_24s_24_4_1_U72_n_8;
  wire mac_muladd_16s_16s_24s_24_4_1_U72_n_9;
  wire mac_muladd_16s_16s_24s_24_4_1_U73_n_0;
  wire mac_muladd_16s_16s_24s_24_4_1_U73_n_1;
  wire mac_muladd_16s_16s_24s_24_4_1_U73_n_10;
  wire mac_muladd_16s_16s_24s_24_4_1_U73_n_11;
  wire mac_muladd_16s_16s_24s_24_4_1_U73_n_12;
  wire mac_muladd_16s_16s_24s_24_4_1_U73_n_13;
  wire mac_muladd_16s_16s_24s_24_4_1_U73_n_14;
  wire mac_muladd_16s_16s_24s_24_4_1_U73_n_15;
  wire mac_muladd_16s_16s_24s_24_4_1_U73_n_2;
  wire mac_muladd_16s_16s_24s_24_4_1_U73_n_3;
  wire mac_muladd_16s_16s_24s_24_4_1_U73_n_4;
  wire mac_muladd_16s_16s_24s_24_4_1_U73_n_5;
  wire mac_muladd_16s_16s_24s_24_4_1_U73_n_6;
  wire mac_muladd_16s_16s_24s_24_4_1_U73_n_7;
  wire mac_muladd_16s_16s_24s_24_4_1_U73_n_8;
  wire mac_muladd_16s_16s_24s_24_4_1_U73_n_9;
  wire [1:0]oc_s_fu_140;
  wire \oc_s_fu_140_reg[0]_0 ;
  wire [0:0]\oc_s_fu_140_reg[1]_0 ;
  wire \or_s_fu_144_reg_n_0_[0] ;
  wire \or_s_fu_144_reg_n_0_[1] ;
  wire output_1_fu_1560;
  wire output_2_fu_1600;
  wire output_3_fu_1640;
  wire output_4_fu_1680;
  wire output_5_fu_1720;
  wire output_6_fu_1760;
  wire output_7_fu_1800;
  wire output_8_fu_1840;
  wire output_fu_1520;
  wire [15:0]p_0_in__0;
  wire \p_0_reg_377[0]_i_2_n_0 ;
  wire \p_0_reg_377[0]_i_3_n_0 ;
  wire \p_0_reg_377[0]_i_4_n_0 ;
  wire \p_0_reg_377[10]_i_2_n_0 ;
  wire \p_0_reg_377[10]_i_3_n_0 ;
  wire \p_0_reg_377[10]_i_4_n_0 ;
  wire \p_0_reg_377[11]_i_2_n_0 ;
  wire \p_0_reg_377[11]_i_3_n_0 ;
  wire \p_0_reg_377[11]_i_4_n_0 ;
  wire \p_0_reg_377[12]_i_2_n_0 ;
  wire \p_0_reg_377[12]_i_3_n_0 ;
  wire \p_0_reg_377[12]_i_4_n_0 ;
  wire \p_0_reg_377[13]_i_2_n_0 ;
  wire \p_0_reg_377[13]_i_3_n_0 ;
  wire \p_0_reg_377[13]_i_4_n_0 ;
  wire \p_0_reg_377[14]_i_2_n_0 ;
  wire \p_0_reg_377[14]_i_3_n_0 ;
  wire \p_0_reg_377[14]_i_4_n_0 ;
  wire \p_0_reg_377[15]_i_3_n_0 ;
  wire \p_0_reg_377[15]_i_4_n_0 ;
  wire \p_0_reg_377[15]_i_5_n_0 ;
  wire \p_0_reg_377[1]_i_2_n_0 ;
  wire \p_0_reg_377[1]_i_3_n_0 ;
  wire \p_0_reg_377[1]_i_4_n_0 ;
  wire \p_0_reg_377[2]_i_2_n_0 ;
  wire \p_0_reg_377[2]_i_3_n_0 ;
  wire \p_0_reg_377[2]_i_4_n_0 ;
  wire \p_0_reg_377[3]_i_2_n_0 ;
  wire \p_0_reg_377[3]_i_3_n_0 ;
  wire \p_0_reg_377[3]_i_4_n_0 ;
  wire \p_0_reg_377[4]_i_2_n_0 ;
  wire \p_0_reg_377[4]_i_3_n_0 ;
  wire \p_0_reg_377[4]_i_4_n_0 ;
  wire \p_0_reg_377[5]_i_2_n_0 ;
  wire \p_0_reg_377[5]_i_3_n_0 ;
  wire \p_0_reg_377[5]_i_4_n_0 ;
  wire \p_0_reg_377[6]_i_2_n_0 ;
  wire \p_0_reg_377[6]_i_3_n_0 ;
  wire \p_0_reg_377[6]_i_4_n_0 ;
  wire \p_0_reg_377[7]_i_2_n_0 ;
  wire \p_0_reg_377[7]_i_3_n_0 ;
  wire \p_0_reg_377[7]_i_4_n_0 ;
  wire \p_0_reg_377[8]_i_2_n_0 ;
  wire \p_0_reg_377[8]_i_3_n_0 ;
  wire \p_0_reg_377[8]_i_4_n_0 ;
  wire \p_0_reg_377[9]_i_2_n_0 ;
  wire \p_0_reg_377[9]_i_3_n_0 ;
  wire \p_0_reg_377[9]_i_4_n_0 ;
  wire \p_0_reg_377_reg[0] ;
  wire \p_0_reg_377_reg[0]_0 ;
  wire \p_0_reg_377_reg[14] ;
  wire \p_0_reg_377_reg[14]_0 ;
  wire \p_0_reg_377_reg[14]_1 ;
  wire [1:0]sel;
  wire [0:0]select_ln49_fu_546_p3;
  wire [1:0]select_ln49_reg_1599_pp0_iter10_reg;
  wire \select_ln49_reg_1599_pp0_iter1_reg_reg[0]_0 ;
  wire \select_ln49_reg_1599_pp0_iter1_reg_reg[1]_0 ;
  wire \select_ln49_reg_1599_pp0_iter9_reg_reg[0]_srl8_n_0 ;
  wire \select_ln49_reg_1599_pp0_iter9_reg_reg[1]_srl8_n_0 ;
  wire [1:0]select_ln89_fu_561_p3;
  wire [1:0]select_ln89_reg_1613_pp0_iter10_reg;
  wire \select_ln89_reg_1613_pp0_iter1_reg_reg[0]_0 ;
  wire \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_0 ;
  wire \select_ln89_reg_1613_pp0_iter9_reg_reg[0]_srl8_n_0 ;
  wire \select_ln89_reg_1613_pp0_iter9_reg_reg[1]_srl8_n_0 ;
  wire \select_ln89_reg_1613_reg[0]_0 ;
  wire \select_ln89_reg_1613_reg[1]_0 ;
  wire [15:0]tmp_15_reg_1628;
  wire [15:0]tmp_15_reg_1628_pp0_iter1_reg;
  wire \tmp_15_reg_1628_reg[0]_0 ;
  wire \tmp_15_reg_1628_reg[10]_0 ;
  wire \tmp_15_reg_1628_reg[11]_0 ;
  wire \tmp_15_reg_1628_reg[12]_0 ;
  wire \tmp_15_reg_1628_reg[13]_0 ;
  wire \tmp_15_reg_1628_reg[14]_0 ;
  wire \tmp_15_reg_1628_reg[15]_0 ;
  wire \tmp_15_reg_1628_reg[1]_0 ;
  wire \tmp_15_reg_1628_reg[2]_0 ;
  wire \tmp_15_reg_1628_reg[3]_0 ;
  wire \tmp_15_reg_1628_reg[4]_0 ;
  wire \tmp_15_reg_1628_reg[5]_0 ;
  wire \tmp_15_reg_1628_reg[6]_0 ;
  wire \tmp_15_reg_1628_reg[7]_0 ;
  wire \tmp_15_reg_1628_reg[8]_0 ;
  wire \tmp_15_reg_1628_reg[9]_0 ;
  wire [15:0]tmp_18_reg_1643;
  wire [15:0]tmp_18_reg_1643_pp0_iter2_reg;
  wire \tmp_18_reg_1643_reg[0]_0 ;
  wire \tmp_18_reg_1643_reg[10]_0 ;
  wire \tmp_18_reg_1643_reg[11]_0 ;
  wire \tmp_18_reg_1643_reg[12]_0 ;
  wire \tmp_18_reg_1643_reg[13]_0 ;
  wire \tmp_18_reg_1643_reg[14]_0 ;
  wire \tmp_18_reg_1643_reg[15]_0 ;
  wire \tmp_18_reg_1643_reg[1]_0 ;
  wire \tmp_18_reg_1643_reg[2]_0 ;
  wire \tmp_18_reg_1643_reg[3]_0 ;
  wire \tmp_18_reg_1643_reg[4]_0 ;
  wire \tmp_18_reg_1643_reg[5]_0 ;
  wire \tmp_18_reg_1643_reg[6]_0 ;
  wire \tmp_18_reg_1643_reg[7]_0 ;
  wire \tmp_18_reg_1643_reg[8]_0 ;
  wire \tmp_18_reg_1643_reg[9]_0 ;
  wire [15:0]tmp_20_reg_1658;
  wire [15:0]tmp_20_reg_1658_pp0_iter3_reg;
  wire [15:0]\tmp_20_reg_1658_reg[15]_0 ;
  wire \tmp_22_reg_1633_pp0_iter3_reg_reg[0]_srl4_n_0 ;
  wire \tmp_22_reg_1633_pp0_iter3_reg_reg[10]_srl4_n_0 ;
  wire \tmp_22_reg_1633_pp0_iter3_reg_reg[11]_srl4_n_0 ;
  wire \tmp_22_reg_1633_pp0_iter3_reg_reg[12]_srl4_n_0 ;
  wire \tmp_22_reg_1633_pp0_iter3_reg_reg[13]_srl4_n_0 ;
  wire \tmp_22_reg_1633_pp0_iter3_reg_reg[14]_srl4_n_0 ;
  wire \tmp_22_reg_1633_pp0_iter3_reg_reg[15]_srl4_n_0 ;
  wire \tmp_22_reg_1633_pp0_iter3_reg_reg[1]_srl4_n_0 ;
  wire \tmp_22_reg_1633_pp0_iter3_reg_reg[2]_srl4_n_0 ;
  wire \tmp_22_reg_1633_pp0_iter3_reg_reg[3]_srl4_n_0 ;
  wire \tmp_22_reg_1633_pp0_iter3_reg_reg[4]_srl4_n_0 ;
  wire \tmp_22_reg_1633_pp0_iter3_reg_reg[5]_srl4_n_0 ;
  wire \tmp_22_reg_1633_pp0_iter3_reg_reg[6]_srl4_n_0 ;
  wire \tmp_22_reg_1633_pp0_iter3_reg_reg[7]_srl4_n_0 ;
  wire \tmp_22_reg_1633_pp0_iter3_reg_reg[8]_srl4_n_0 ;
  wire \tmp_22_reg_1633_pp0_iter3_reg_reg[9]_srl4_n_0 ;
  wire [15:0]tmp_22_reg_1633_pp0_iter4_reg;
  wire \tmp_22_reg_1633_pp0_iter4_reg_reg[0]__0_0 ;
  wire \tmp_22_reg_1633_pp0_iter4_reg_reg[10]__0_0 ;
  wire \tmp_22_reg_1633_pp0_iter4_reg_reg[11]__0_0 ;
  wire \tmp_22_reg_1633_pp0_iter4_reg_reg[12]__0_0 ;
  wire \tmp_22_reg_1633_pp0_iter4_reg_reg[13]__0_0 ;
  wire \tmp_22_reg_1633_pp0_iter4_reg_reg[14]__0_0 ;
  wire \tmp_22_reg_1633_pp0_iter4_reg_reg[15]__0_0 ;
  wire \tmp_22_reg_1633_pp0_iter4_reg_reg[1]__0_0 ;
  wire \tmp_22_reg_1633_pp0_iter4_reg_reg[2]__0_0 ;
  wire \tmp_22_reg_1633_pp0_iter4_reg_reg[3]__0_0 ;
  wire \tmp_22_reg_1633_pp0_iter4_reg_reg[4]__0_0 ;
  wire \tmp_22_reg_1633_pp0_iter4_reg_reg[5]__0_0 ;
  wire \tmp_22_reg_1633_pp0_iter4_reg_reg[6]__0_0 ;
  wire \tmp_22_reg_1633_pp0_iter4_reg_reg[7]__0_0 ;
  wire \tmp_22_reg_1633_pp0_iter4_reg_reg[8]__0_0 ;
  wire \tmp_22_reg_1633_pp0_iter4_reg_reg[9]__0_0 ;
  wire \tmp_24_reg_1648_pp0_iter4_reg_reg[0]_srl4_n_0 ;
  wire \tmp_24_reg_1648_pp0_iter4_reg_reg[10]_srl4_n_0 ;
  wire \tmp_24_reg_1648_pp0_iter4_reg_reg[11]_srl4_n_0 ;
  wire \tmp_24_reg_1648_pp0_iter4_reg_reg[12]_srl4_n_0 ;
  wire \tmp_24_reg_1648_pp0_iter4_reg_reg[13]_srl4_n_0 ;
  wire \tmp_24_reg_1648_pp0_iter4_reg_reg[14]_srl4_n_0 ;
  wire \tmp_24_reg_1648_pp0_iter4_reg_reg[15]_srl4_n_0 ;
  wire \tmp_24_reg_1648_pp0_iter4_reg_reg[1]_srl4_n_0 ;
  wire \tmp_24_reg_1648_pp0_iter4_reg_reg[2]_srl4_n_0 ;
  wire \tmp_24_reg_1648_pp0_iter4_reg_reg[3]_srl4_n_0 ;
  wire \tmp_24_reg_1648_pp0_iter4_reg_reg[4]_srl4_n_0 ;
  wire \tmp_24_reg_1648_pp0_iter4_reg_reg[5]_srl4_n_0 ;
  wire \tmp_24_reg_1648_pp0_iter4_reg_reg[6]_srl4_n_0 ;
  wire \tmp_24_reg_1648_pp0_iter4_reg_reg[7]_srl4_n_0 ;
  wire \tmp_24_reg_1648_pp0_iter4_reg_reg[8]_srl4_n_0 ;
  wire \tmp_24_reg_1648_pp0_iter4_reg_reg[9]_srl4_n_0 ;
  wire [15:0]tmp_24_reg_1648_pp0_iter5_reg;
  wire \tmp_24_reg_1648_pp0_iter5_reg_reg[0]__0_0 ;
  wire \tmp_24_reg_1648_pp0_iter5_reg_reg[10]__0_0 ;
  wire \tmp_24_reg_1648_pp0_iter5_reg_reg[11]__0_0 ;
  wire \tmp_24_reg_1648_pp0_iter5_reg_reg[12]__0_0 ;
  wire \tmp_24_reg_1648_pp0_iter5_reg_reg[13]__0_0 ;
  wire \tmp_24_reg_1648_pp0_iter5_reg_reg[14]__0_0 ;
  wire \tmp_24_reg_1648_pp0_iter5_reg_reg[15]__0_0 ;
  wire \tmp_24_reg_1648_pp0_iter5_reg_reg[1]__0_0 ;
  wire \tmp_24_reg_1648_pp0_iter5_reg_reg[2]__0_0 ;
  wire \tmp_24_reg_1648_pp0_iter5_reg_reg[3]__0_0 ;
  wire \tmp_24_reg_1648_pp0_iter5_reg_reg[4]__0_0 ;
  wire \tmp_24_reg_1648_pp0_iter5_reg_reg[5]__0_0 ;
  wire \tmp_24_reg_1648_pp0_iter5_reg_reg[6]__0_0 ;
  wire \tmp_24_reg_1648_pp0_iter5_reg_reg[7]__0_0 ;
  wire \tmp_24_reg_1648_pp0_iter5_reg_reg[8]__0_0 ;
  wire \tmp_24_reg_1648_pp0_iter5_reg_reg[9]__0_0 ;
  wire \tmp_26_reg_1663_pp0_iter5_reg_reg[0]_srl4_n_0 ;
  wire \tmp_26_reg_1663_pp0_iter5_reg_reg[10]_srl4_n_0 ;
  wire \tmp_26_reg_1663_pp0_iter5_reg_reg[11]_srl4_n_0 ;
  wire \tmp_26_reg_1663_pp0_iter5_reg_reg[12]_srl4_n_0 ;
  wire \tmp_26_reg_1663_pp0_iter5_reg_reg[13]_srl4_n_0 ;
  wire \tmp_26_reg_1663_pp0_iter5_reg_reg[14]_srl4_n_0 ;
  wire \tmp_26_reg_1663_pp0_iter5_reg_reg[15]_srl4_n_0 ;
  wire \tmp_26_reg_1663_pp0_iter5_reg_reg[1]_srl4_n_0 ;
  wire \tmp_26_reg_1663_pp0_iter5_reg_reg[2]_srl4_n_0 ;
  wire \tmp_26_reg_1663_pp0_iter5_reg_reg[3]_srl4_n_0 ;
  wire \tmp_26_reg_1663_pp0_iter5_reg_reg[4]_srl4_n_0 ;
  wire \tmp_26_reg_1663_pp0_iter5_reg_reg[5]_srl4_n_0 ;
  wire \tmp_26_reg_1663_pp0_iter5_reg_reg[6]_srl4_n_0 ;
  wire \tmp_26_reg_1663_pp0_iter5_reg_reg[7]_srl4_n_0 ;
  wire \tmp_26_reg_1663_pp0_iter5_reg_reg[8]_srl4_n_0 ;
  wire \tmp_26_reg_1663_pp0_iter5_reg_reg[9]_srl4_n_0 ;
  wire [15:0]tmp_26_reg_1663_pp0_iter6_reg;
  wire \tmp_26_reg_1663_pp0_iter6_reg_reg[0]__0_0 ;
  wire \tmp_26_reg_1663_pp0_iter6_reg_reg[10]__0_0 ;
  wire \tmp_26_reg_1663_pp0_iter6_reg_reg[11]__0_0 ;
  wire \tmp_26_reg_1663_pp0_iter6_reg_reg[12]__0_0 ;
  wire \tmp_26_reg_1663_pp0_iter6_reg_reg[13]__0_0 ;
  wire \tmp_26_reg_1663_pp0_iter6_reg_reg[14]__0_0 ;
  wire \tmp_26_reg_1663_pp0_iter6_reg_reg[15]__0_0 ;
  wire \tmp_26_reg_1663_pp0_iter6_reg_reg[1]__0_0 ;
  wire \tmp_26_reg_1663_pp0_iter6_reg_reg[2]__0_0 ;
  wire \tmp_26_reg_1663_pp0_iter6_reg_reg[3]__0_0 ;
  wire \tmp_26_reg_1663_pp0_iter6_reg_reg[4]__0_0 ;
  wire \tmp_26_reg_1663_pp0_iter6_reg_reg[5]__0_0 ;
  wire \tmp_26_reg_1663_pp0_iter6_reg_reg[6]__0_0 ;
  wire \tmp_26_reg_1663_pp0_iter6_reg_reg[7]__0_0 ;
  wire \tmp_26_reg_1663_pp0_iter6_reg_reg[8]__0_0 ;
  wire \tmp_26_reg_1663_pp0_iter6_reg_reg[9]__0_0 ;

  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter10_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter9),
        .Q(ap_enable_reg_pp0_iter10),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter11_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter10),
        .Q(ap_enable_reg_pp0_iter11),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(flow_control_loop_pipe_sequential_init_U_n_16),
        .Q(ap_enable_reg_pp0_iter1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter2_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter1),
        .Q(ap_enable_reg_pp0_iter2),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter3_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter2),
        .Q(ap_enable_reg_pp0_iter3),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter4_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter3),
        .Q(ap_enable_reg_pp0_iter4),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter5_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter4),
        .Q(ap_enable_reg_pp0_iter5),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter6_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter5),
        .Q(ap_enable_reg_pp0_iter6),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter7_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter6),
        .Q(ap_enable_reg_pp0_iter7),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter8_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter7),
        .Q(ap_enable_reg_pp0_iter8),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter9_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter8),
        .Q(ap_enable_reg_pp0_iter9),
        .R(ap_rst_n_inv));
  FDRE ap_loop_exit_ready_pp0_iter10_reg_reg__0
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_exit_ready_pp0_iter9_reg_reg_srl9_n_0),
        .Q(ap_loop_exit_ready_pp0_iter10_reg),
        .R(1'b0));
  (* srl_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/ap_loop_exit_ready_pp0_iter9_reg_reg_srl9 " *) 
  SRL16E ap_loop_exit_ready_pp0_iter9_reg_reg_srl9
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_ap_ready),
        .Q(ap_loop_exit_ready_pp0_iter9_reg_reg_srl9_n_0));
  cnn_pipeline_conv2d_0_1_conv2d_flow_control_loop_pipe_sequential_init_5 flow_control_loop_pipe_sequential_init_U
       (.D(flow_control_loop_pipe_sequential_init_U_n_17),
        .E(indvar_flatten_fu_1480),
        .Q({\or_s_fu_144_reg_n_0_[1] ,\or_s_fu_144_reg_n_0_[0] }),
        .add_ln89_fu_528_p2(add_ln89_fu_528_p2),
        .add_ln96_2_fu_653_p2(add_ln96_2_fu_653_p2),
        .\ap_CS_fsm_reg[3] (\ap_CS_fsm_reg[3] ),
        .\ap_CS_fsm_reg[4] (\ap_CS_fsm_reg[4] ),
        .\ap_CS_fsm_reg[5] (Q),
        .ap_clk(ap_clk),
        .ap_loop_exit_ready_pp0_iter10_reg(ap_loop_exit_ready_pp0_iter10_reg),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_0(ap_rst_n_inv),
        .ap_rst_n_1(flow_control_loop_pipe_sequential_init_U_n_16),
        .grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_ap_ready(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_ap_ready),
        .grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_ap_start_reg(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_ap_start_reg),
        .oc_s_fu_140(oc_s_fu_140),
        .\oc_s_fu_140_reg[0] (\oc_s_fu_140_reg[0]_0 ),
        .\oc_s_fu_140_reg[1] (\oc_s_fu_140_reg[1]_0 ),
        .\or_s_fu_144_reg[1] (\indvar_flatten_fu_148_reg_n_0_[2] ),
        .\or_s_fu_144_reg[1]_0 (\indvar_flatten_fu_148_reg_n_0_[3] ),
        .\or_s_fu_144_reg[1]_1 (\indvar_flatten_fu_148_reg_n_0_[1] ),
        .\or_s_fu_144_reg[1]_2 (\indvar_flatten_fu_148_reg_n_0_[0] ),
        .select_ln49_fu_546_p3(select_ln49_fu_546_p3),
        .select_ln89_fu_561_p3(select_ln89_fu_561_p3));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_148_reg[0] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_1480),
        .D(add_ln89_fu_528_p2[0]),
        .Q(\indvar_flatten_fu_148_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_148_reg[1] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_1480),
        .D(add_ln89_fu_528_p2[1]),
        .Q(\indvar_flatten_fu_148_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_148_reg[2] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_1480),
        .D(add_ln89_fu_528_p2[2]),
        .Q(\indvar_flatten_fu_148_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_148_reg[3] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_1480),
        .D(add_ln89_fu_528_p2[3]),
        .Q(\indvar_flatten_fu_148_reg_n_0_[3] ),
        .R(1'b0));
  cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1 mac_muladd_16s_16s_24s_24_4_1_U67
       (.A(A),
        .CEB1(CEB1),
        .DSP_ALU_INST(DSP_ALU_INST),
        .P({mac_muladd_16s_16s_24s_24_4_1_U67_n_0,mac_muladd_16s_16s_24s_24_4_1_U67_n_1,mac_muladd_16s_16s_24s_24_4_1_U67_n_2,mac_muladd_16s_16s_24s_24_4_1_U67_n_3,mac_muladd_16s_16s_24s_24_4_1_U67_n_4,mac_muladd_16s_16s_24s_24_4_1_U67_n_5,mac_muladd_16s_16s_24s_24_4_1_U67_n_6,mac_muladd_16s_16s_24s_24_4_1_U67_n_7,mac_muladd_16s_16s_24s_24_4_1_U67_n_8,mac_muladd_16s_16s_24s_24_4_1_U67_n_9,mac_muladd_16s_16s_24s_24_4_1_U67_n_10,mac_muladd_16s_16s_24s_24_4_1_U67_n_11,mac_muladd_16s_16s_24s_24_4_1_U67_n_12,mac_muladd_16s_16s_24s_24_4_1_U67_n_13,mac_muladd_16s_16s_24s_24_4_1_U67_n_14,mac_muladd_16s_16s_24s_24_4_1_U67_n_15}),
        .Q(Q[0]),
        .ap_clk(ap_clk),
        .bias(bias));
  cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_6 mac_muladd_16s_16s_24s_24_4_1_U68
       (.DSP_ALU_INST(DSP_ALU_INST_0),
        .DSP_ALU_INST_0(DSP_ALU_INST_1),
        .DSP_ALU_INST_1({mac_muladd_16s_16s_24s_24_4_1_U67_n_0,mac_muladd_16s_16s_24s_24_4_1_U67_n_1,mac_muladd_16s_16s_24s_24_4_1_U67_n_2,mac_muladd_16s_16s_24s_24_4_1_U67_n_3,mac_muladd_16s_16s_24s_24_4_1_U67_n_4,mac_muladd_16s_16s_24s_24_4_1_U67_n_5,mac_muladd_16s_16s_24s_24_4_1_U67_n_6,mac_muladd_16s_16s_24s_24_4_1_U67_n_7,mac_muladd_16s_16s_24s_24_4_1_U67_n_8,mac_muladd_16s_16s_24s_24_4_1_U67_n_9,mac_muladd_16s_16s_24s_24_4_1_U67_n_10,mac_muladd_16s_16s_24s_24_4_1_U67_n_11,mac_muladd_16s_16s_24s_24_4_1_U67_n_12,mac_muladd_16s_16s_24s_24_4_1_U67_n_13,mac_muladd_16s_16s_24s_24_4_1_U67_n_14,mac_muladd_16s_16s_24s_24_4_1_U67_n_15}),
        .P({mac_muladd_16s_16s_24s_24_4_1_U68_n_0,mac_muladd_16s_16s_24s_24_4_1_U68_n_1,mac_muladd_16s_16s_24s_24_4_1_U68_n_2,mac_muladd_16s_16s_24s_24_4_1_U68_n_3,mac_muladd_16s_16s_24s_24_4_1_U68_n_4,mac_muladd_16s_16s_24s_24_4_1_U68_n_5,mac_muladd_16s_16s_24s_24_4_1_U68_n_6,mac_muladd_16s_16s_24s_24_4_1_U68_n_7,mac_muladd_16s_16s_24s_24_4_1_U68_n_8,mac_muladd_16s_16s_24s_24_4_1_U68_n_9,mac_muladd_16s_16s_24s_24_4_1_U68_n_10,mac_muladd_16s_16s_24s_24_4_1_U68_n_11,mac_muladd_16s_16s_24s_24_4_1_U68_n_12,mac_muladd_16s_16s_24s_24_4_1_U68_n_13,mac_muladd_16s_16s_24s_24_4_1_U68_n_14,mac_muladd_16s_16s_24s_24_4_1_U68_n_15}),
        .ap_clk(ap_clk));
  cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_7 mac_muladd_16s_16s_24s_24_4_1_U69
       (.DSP_ALU_INST(DSP_ALU_INST_2),
        .DSP_ALU_INST_0(DSP_ALU_INST_3),
        .DSP_ALU_INST_1({mac_muladd_16s_16s_24s_24_4_1_U68_n_0,mac_muladd_16s_16s_24s_24_4_1_U68_n_1,mac_muladd_16s_16s_24s_24_4_1_U68_n_2,mac_muladd_16s_16s_24s_24_4_1_U68_n_3,mac_muladd_16s_16s_24s_24_4_1_U68_n_4,mac_muladd_16s_16s_24s_24_4_1_U68_n_5,mac_muladd_16s_16s_24s_24_4_1_U68_n_6,mac_muladd_16s_16s_24s_24_4_1_U68_n_7,mac_muladd_16s_16s_24s_24_4_1_U68_n_8,mac_muladd_16s_16s_24s_24_4_1_U68_n_9,mac_muladd_16s_16s_24s_24_4_1_U68_n_10,mac_muladd_16s_16s_24s_24_4_1_U68_n_11,mac_muladd_16s_16s_24s_24_4_1_U68_n_12,mac_muladd_16s_16s_24s_24_4_1_U68_n_13,mac_muladd_16s_16s_24s_24_4_1_U68_n_14,mac_muladd_16s_16s_24s_24_4_1_U68_n_15}),
        .P({mac_muladd_16s_16s_24s_24_4_1_U69_n_0,mac_muladd_16s_16s_24s_24_4_1_U69_n_1,mac_muladd_16s_16s_24s_24_4_1_U69_n_2,mac_muladd_16s_16s_24s_24_4_1_U69_n_3,mac_muladd_16s_16s_24s_24_4_1_U69_n_4,mac_muladd_16s_16s_24s_24_4_1_U69_n_5,mac_muladd_16s_16s_24s_24_4_1_U69_n_6,mac_muladd_16s_16s_24s_24_4_1_U69_n_7,mac_muladd_16s_16s_24s_24_4_1_U69_n_8,mac_muladd_16s_16s_24s_24_4_1_U69_n_9,mac_muladd_16s_16s_24s_24_4_1_U69_n_10,mac_muladd_16s_16s_24s_24_4_1_U69_n_11,mac_muladd_16s_16s_24s_24_4_1_U69_n_12,mac_muladd_16s_16s_24s_24_4_1_U69_n_13,mac_muladd_16s_16s_24s_24_4_1_U69_n_14,mac_muladd_16s_16s_24s_24_4_1_U69_n_15}),
        .ap_clk(ap_clk));
  cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_8 mac_muladd_16s_16s_24s_24_4_1_U70
       (.A(tmp_15_reg_1628_pp0_iter1_reg),
        .DSP_ALU_INST(DSP_ALU_INST_4),
        .DSP_ALU_INST_0({mac_muladd_16s_16s_24s_24_4_1_U69_n_0,mac_muladd_16s_16s_24s_24_4_1_U69_n_1,mac_muladd_16s_16s_24s_24_4_1_U69_n_2,mac_muladd_16s_16s_24s_24_4_1_U69_n_3,mac_muladd_16s_16s_24s_24_4_1_U69_n_4,mac_muladd_16s_16s_24s_24_4_1_U69_n_5,mac_muladd_16s_16s_24s_24_4_1_U69_n_6,mac_muladd_16s_16s_24s_24_4_1_U69_n_7,mac_muladd_16s_16s_24s_24_4_1_U69_n_8,mac_muladd_16s_16s_24s_24_4_1_U69_n_9,mac_muladd_16s_16s_24s_24_4_1_U69_n_10,mac_muladd_16s_16s_24s_24_4_1_U69_n_11,mac_muladd_16s_16s_24s_24_4_1_U69_n_12,mac_muladd_16s_16s_24s_24_4_1_U69_n_13,mac_muladd_16s_16s_24s_24_4_1_U69_n_14,mac_muladd_16s_16s_24s_24_4_1_U69_n_15}),
        .P({mac_muladd_16s_16s_24s_24_4_1_U70_n_0,mac_muladd_16s_16s_24s_24_4_1_U70_n_1,mac_muladd_16s_16s_24s_24_4_1_U70_n_2,mac_muladd_16s_16s_24s_24_4_1_U70_n_3,mac_muladd_16s_16s_24s_24_4_1_U70_n_4,mac_muladd_16s_16s_24s_24_4_1_U70_n_5,mac_muladd_16s_16s_24s_24_4_1_U70_n_6,mac_muladd_16s_16s_24s_24_4_1_U70_n_7,mac_muladd_16s_16s_24s_24_4_1_U70_n_8,mac_muladd_16s_16s_24s_24_4_1_U70_n_9,mac_muladd_16s_16s_24s_24_4_1_U70_n_10,mac_muladd_16s_16s_24s_24_4_1_U70_n_11,mac_muladd_16s_16s_24s_24_4_1_U70_n_12,mac_muladd_16s_16s_24s_24_4_1_U70_n_13,mac_muladd_16s_16s_24s_24_4_1_U70_n_14,mac_muladd_16s_16s_24s_24_4_1_U70_n_15}),
        .ap_clk(ap_clk));
  cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_9 mac_muladd_16s_16s_24s_24_4_1_U71
       (.DSP_ALU_INST(DSP_ALU_INST_5),
        .DSP_ALU_INST_0({mac_muladd_16s_16s_24s_24_4_1_U70_n_0,mac_muladd_16s_16s_24s_24_4_1_U70_n_1,mac_muladd_16s_16s_24s_24_4_1_U70_n_2,mac_muladd_16s_16s_24s_24_4_1_U70_n_3,mac_muladd_16s_16s_24s_24_4_1_U70_n_4,mac_muladd_16s_16s_24s_24_4_1_U70_n_5,mac_muladd_16s_16s_24s_24_4_1_U70_n_6,mac_muladd_16s_16s_24s_24_4_1_U70_n_7,mac_muladd_16s_16s_24s_24_4_1_U70_n_8,mac_muladd_16s_16s_24s_24_4_1_U70_n_9,mac_muladd_16s_16s_24s_24_4_1_U70_n_10,mac_muladd_16s_16s_24s_24_4_1_U70_n_11,mac_muladd_16s_16s_24s_24_4_1_U70_n_12,mac_muladd_16s_16s_24s_24_4_1_U70_n_13,mac_muladd_16s_16s_24s_24_4_1_U70_n_14,mac_muladd_16s_16s_24s_24_4_1_U70_n_15}),
        .P({mac_muladd_16s_16s_24s_24_4_1_U71_n_0,mac_muladd_16s_16s_24s_24_4_1_U71_n_1,mac_muladd_16s_16s_24s_24_4_1_U71_n_2,mac_muladd_16s_16s_24s_24_4_1_U71_n_3,mac_muladd_16s_16s_24s_24_4_1_U71_n_4,mac_muladd_16s_16s_24s_24_4_1_U71_n_5,mac_muladd_16s_16s_24s_24_4_1_U71_n_6,mac_muladd_16s_16s_24s_24_4_1_U71_n_7,mac_muladd_16s_16s_24s_24_4_1_U71_n_8,mac_muladd_16s_16s_24s_24_4_1_U71_n_9,mac_muladd_16s_16s_24s_24_4_1_U71_n_10,mac_muladd_16s_16s_24s_24_4_1_U71_n_11,mac_muladd_16s_16s_24s_24_4_1_U71_n_12,mac_muladd_16s_16s_24s_24_4_1_U71_n_13,mac_muladd_16s_16s_24s_24_4_1_U71_n_14,mac_muladd_16s_16s_24s_24_4_1_U71_n_15}),
        .Q(tmp_18_reg_1643_pp0_iter2_reg),
        .ap_clk(ap_clk));
  cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_10 mac_muladd_16s_16s_24s_24_4_1_U72
       (.DSP_ALU_INST(DSP_ALU_INST_6),
        .DSP_ALU_INST_0({mac_muladd_16s_16s_24s_24_4_1_U71_n_0,mac_muladd_16s_16s_24s_24_4_1_U71_n_1,mac_muladd_16s_16s_24s_24_4_1_U71_n_2,mac_muladd_16s_16s_24s_24_4_1_U71_n_3,mac_muladd_16s_16s_24s_24_4_1_U71_n_4,mac_muladd_16s_16s_24s_24_4_1_U71_n_5,mac_muladd_16s_16s_24s_24_4_1_U71_n_6,mac_muladd_16s_16s_24s_24_4_1_U71_n_7,mac_muladd_16s_16s_24s_24_4_1_U71_n_8,mac_muladd_16s_16s_24s_24_4_1_U71_n_9,mac_muladd_16s_16s_24s_24_4_1_U71_n_10,mac_muladd_16s_16s_24s_24_4_1_U71_n_11,mac_muladd_16s_16s_24s_24_4_1_U71_n_12,mac_muladd_16s_16s_24s_24_4_1_U71_n_13,mac_muladd_16s_16s_24s_24_4_1_U71_n_14,mac_muladd_16s_16s_24s_24_4_1_U71_n_15}),
        .P({mac_muladd_16s_16s_24s_24_4_1_U72_n_0,mac_muladd_16s_16s_24s_24_4_1_U72_n_1,mac_muladd_16s_16s_24s_24_4_1_U72_n_2,mac_muladd_16s_16s_24s_24_4_1_U72_n_3,mac_muladd_16s_16s_24s_24_4_1_U72_n_4,mac_muladd_16s_16s_24s_24_4_1_U72_n_5,mac_muladd_16s_16s_24s_24_4_1_U72_n_6,mac_muladd_16s_16s_24s_24_4_1_U72_n_7,mac_muladd_16s_16s_24s_24_4_1_U72_n_8,mac_muladd_16s_16s_24s_24_4_1_U72_n_9,mac_muladd_16s_16s_24s_24_4_1_U72_n_10,mac_muladd_16s_16s_24s_24_4_1_U72_n_11,mac_muladd_16s_16s_24s_24_4_1_U72_n_12,mac_muladd_16s_16s_24s_24_4_1_U72_n_13,mac_muladd_16s_16s_24s_24_4_1_U72_n_14,mac_muladd_16s_16s_24s_24_4_1_U72_n_15}),
        .Q(tmp_20_reg_1658_pp0_iter3_reg),
        .ap_clk(ap_clk));
  cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_11 mac_muladd_16s_16s_24s_24_4_1_U73
       (.A(tmp_22_reg_1633_pp0_iter4_reg),
        .DSP_ALU_INST(DSP_ALU_INST_7),
        .DSP_ALU_INST_0({mac_muladd_16s_16s_24s_24_4_1_U72_n_0,mac_muladd_16s_16s_24s_24_4_1_U72_n_1,mac_muladd_16s_16s_24s_24_4_1_U72_n_2,mac_muladd_16s_16s_24s_24_4_1_U72_n_3,mac_muladd_16s_16s_24s_24_4_1_U72_n_4,mac_muladd_16s_16s_24s_24_4_1_U72_n_5,mac_muladd_16s_16s_24s_24_4_1_U72_n_6,mac_muladd_16s_16s_24s_24_4_1_U72_n_7,mac_muladd_16s_16s_24s_24_4_1_U72_n_8,mac_muladd_16s_16s_24s_24_4_1_U72_n_9,mac_muladd_16s_16s_24s_24_4_1_U72_n_10,mac_muladd_16s_16s_24s_24_4_1_U72_n_11,mac_muladd_16s_16s_24s_24_4_1_U72_n_12,mac_muladd_16s_16s_24s_24_4_1_U72_n_13,mac_muladd_16s_16s_24s_24_4_1_U72_n_14,mac_muladd_16s_16s_24s_24_4_1_U72_n_15}),
        .P({mac_muladd_16s_16s_24s_24_4_1_U73_n_0,mac_muladd_16s_16s_24s_24_4_1_U73_n_1,mac_muladd_16s_16s_24s_24_4_1_U73_n_2,mac_muladd_16s_16s_24s_24_4_1_U73_n_3,mac_muladd_16s_16s_24s_24_4_1_U73_n_4,mac_muladd_16s_16s_24s_24_4_1_U73_n_5,mac_muladd_16s_16s_24s_24_4_1_U73_n_6,mac_muladd_16s_16s_24s_24_4_1_U73_n_7,mac_muladd_16s_16s_24s_24_4_1_U73_n_8,mac_muladd_16s_16s_24s_24_4_1_U73_n_9,mac_muladd_16s_16s_24s_24_4_1_U73_n_10,mac_muladd_16s_16s_24s_24_4_1_U73_n_11,mac_muladd_16s_16s_24s_24_4_1_U73_n_12,mac_muladd_16s_16s_24s_24_4_1_U73_n_13,mac_muladd_16s_16s_24s_24_4_1_U73_n_14,mac_muladd_16s_16s_24s_24_4_1_U73_n_15}),
        .ap_clk(ap_clk));
  cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_12 mac_muladd_16s_16s_24s_24_4_1_U74
       (.A(tmp_24_reg_1648_pp0_iter5_reg),
        .DSP_ALU_INST(DSP_ALU_INST_8),
        .DSP_ALU_INST_0({mac_muladd_16s_16s_24s_24_4_1_U73_n_0,mac_muladd_16s_16s_24s_24_4_1_U73_n_1,mac_muladd_16s_16s_24s_24_4_1_U73_n_2,mac_muladd_16s_16s_24s_24_4_1_U73_n_3,mac_muladd_16s_16s_24s_24_4_1_U73_n_4,mac_muladd_16s_16s_24s_24_4_1_U73_n_5,mac_muladd_16s_16s_24s_24_4_1_U73_n_6,mac_muladd_16s_16s_24s_24_4_1_U73_n_7,mac_muladd_16s_16s_24s_24_4_1_U73_n_8,mac_muladd_16s_16s_24s_24_4_1_U73_n_9,mac_muladd_16s_16s_24s_24_4_1_U73_n_10,mac_muladd_16s_16s_24s_24_4_1_U73_n_11,mac_muladd_16s_16s_24s_24_4_1_U73_n_12,mac_muladd_16s_16s_24s_24_4_1_U73_n_13,mac_muladd_16s_16s_24s_24_4_1_U73_n_14,mac_muladd_16s_16s_24s_24_4_1_U73_n_15}),
        .P(C),
        .ap_clk(ap_clk));
  cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_13 mac_muladd_16s_16s_24s_24_4_1_U75
       (.A(tmp_26_reg_1663_pp0_iter6_reg),
        .D(p_0_in__0),
        .DSP_ALU_INST(DSP_ALU_INST_9),
        .P(C),
        .ap_clk(ap_clk));
  FDRE #(
    .INIT(1'b0)) 
    \oc_s_fu_140_reg[0] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_1480),
        .D(\oc_s_fu_140_reg[1]_0 ),
        .Q(oc_s_fu_140[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \oc_s_fu_140_reg[1] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_1480),
        .D(add_ln96_2_fu_653_p2),
        .Q(oc_s_fu_140[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \or_s_fu_144_reg[0] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_1480),
        .D(flow_control_loop_pipe_sequential_init_U_n_17),
        .Q(\or_s_fu_144_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \or_s_fu_144_reg[1] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_1480),
        .D(select_ln89_fu_561_p3[1]),
        .Q(\or_s_fu_144_reg_n_0_[1] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00040000)) 
    \output_1_fu_156[15]_i_1 
       (.I0(select_ln49_reg_1599_pp0_iter10_reg[1]),
        .I1(select_ln49_reg_1599_pp0_iter10_reg[0]),
        .I2(select_ln89_reg_1613_pp0_iter10_reg[1]),
        .I3(select_ln89_reg_1613_pp0_iter10_reg[0]),
        .I4(ap_enable_reg_pp0_iter11),
        .O(output_1_fu_1560));
  FDRE #(
    .INIT(1'b0)) 
    \output_1_fu_156_reg[0] 
       (.C(ap_clk),
        .CE(output_1_fu_1560),
        .D(p_0_in__0[0]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_1_out[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_1_fu_156_reg[10] 
       (.C(ap_clk),
        .CE(output_1_fu_1560),
        .D(p_0_in__0[10]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_1_out[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_1_fu_156_reg[11] 
       (.C(ap_clk),
        .CE(output_1_fu_1560),
        .D(p_0_in__0[11]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_1_out[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_1_fu_156_reg[12] 
       (.C(ap_clk),
        .CE(output_1_fu_1560),
        .D(p_0_in__0[12]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_1_out[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_1_fu_156_reg[13] 
       (.C(ap_clk),
        .CE(output_1_fu_1560),
        .D(p_0_in__0[13]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_1_out[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_1_fu_156_reg[14] 
       (.C(ap_clk),
        .CE(output_1_fu_1560),
        .D(p_0_in__0[14]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_1_out[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_1_fu_156_reg[15] 
       (.C(ap_clk),
        .CE(output_1_fu_1560),
        .D(p_0_in__0[15]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_1_out[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_1_fu_156_reg[1] 
       (.C(ap_clk),
        .CE(output_1_fu_1560),
        .D(p_0_in__0[1]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_1_out[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_1_fu_156_reg[2] 
       (.C(ap_clk),
        .CE(output_1_fu_1560),
        .D(p_0_in__0[2]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_1_out[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_1_fu_156_reg[3] 
       (.C(ap_clk),
        .CE(output_1_fu_1560),
        .D(p_0_in__0[3]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_1_out[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_1_fu_156_reg[4] 
       (.C(ap_clk),
        .CE(output_1_fu_1560),
        .D(p_0_in__0[4]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_1_out[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_1_fu_156_reg[5] 
       (.C(ap_clk),
        .CE(output_1_fu_1560),
        .D(p_0_in__0[5]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_1_out[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_1_fu_156_reg[6] 
       (.C(ap_clk),
        .CE(output_1_fu_1560),
        .D(p_0_in__0[6]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_1_out[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_1_fu_156_reg[7] 
       (.C(ap_clk),
        .CE(output_1_fu_1560),
        .D(p_0_in__0[7]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_1_out[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_1_fu_156_reg[8] 
       (.C(ap_clk),
        .CE(output_1_fu_1560),
        .D(p_0_in__0[8]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_1_out[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_1_fu_156_reg[9] 
       (.C(ap_clk),
        .CE(output_1_fu_1560),
        .D(p_0_in__0[9]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_1_out[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0008)) 
    \output_2_fu_160[15]_i_1 
       (.I0(ap_enable_reg_pp0_iter11),
        .I1(select_ln49_reg_1599_pp0_iter10_reg[1]),
        .I2(select_ln89_reg_1613_pp0_iter10_reg[0]),
        .I3(select_ln89_reg_1613_pp0_iter10_reg[1]),
        .O(output_2_fu_1600));
  FDRE #(
    .INIT(1'b0)) 
    \output_2_fu_160_reg[0] 
       (.C(ap_clk),
        .CE(output_2_fu_1600),
        .D(p_0_in__0[0]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_2_out[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_2_fu_160_reg[10] 
       (.C(ap_clk),
        .CE(output_2_fu_1600),
        .D(p_0_in__0[10]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_2_out[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_2_fu_160_reg[11] 
       (.C(ap_clk),
        .CE(output_2_fu_1600),
        .D(p_0_in__0[11]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_2_out[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_2_fu_160_reg[12] 
       (.C(ap_clk),
        .CE(output_2_fu_1600),
        .D(p_0_in__0[12]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_2_out[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_2_fu_160_reg[13] 
       (.C(ap_clk),
        .CE(output_2_fu_1600),
        .D(p_0_in__0[13]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_2_out[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_2_fu_160_reg[14] 
       (.C(ap_clk),
        .CE(output_2_fu_1600),
        .D(p_0_in__0[14]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_2_out[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_2_fu_160_reg[15] 
       (.C(ap_clk),
        .CE(output_2_fu_1600),
        .D(p_0_in__0[15]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_2_out[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_2_fu_160_reg[1] 
       (.C(ap_clk),
        .CE(output_2_fu_1600),
        .D(p_0_in__0[1]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_2_out[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_2_fu_160_reg[2] 
       (.C(ap_clk),
        .CE(output_2_fu_1600),
        .D(p_0_in__0[2]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_2_out[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_2_fu_160_reg[3] 
       (.C(ap_clk),
        .CE(output_2_fu_1600),
        .D(p_0_in__0[3]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_2_out[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_2_fu_160_reg[4] 
       (.C(ap_clk),
        .CE(output_2_fu_1600),
        .D(p_0_in__0[4]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_2_out[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_2_fu_160_reg[5] 
       (.C(ap_clk),
        .CE(output_2_fu_1600),
        .D(p_0_in__0[5]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_2_out[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_2_fu_160_reg[6] 
       (.C(ap_clk),
        .CE(output_2_fu_1600),
        .D(p_0_in__0[6]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_2_out[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_2_fu_160_reg[7] 
       (.C(ap_clk),
        .CE(output_2_fu_1600),
        .D(p_0_in__0[7]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_2_out[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_2_fu_160_reg[8] 
       (.C(ap_clk),
        .CE(output_2_fu_1600),
        .D(p_0_in__0[8]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_2_out[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_2_fu_160_reg[9] 
       (.C(ap_clk),
        .CE(output_2_fu_1600),
        .D(p_0_in__0[9]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_2_out[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00100000)) 
    \output_3_fu_164[15]_i_1 
       (.I0(select_ln49_reg_1599_pp0_iter10_reg[1]),
        .I1(select_ln49_reg_1599_pp0_iter10_reg[0]),
        .I2(select_ln89_reg_1613_pp0_iter10_reg[0]),
        .I3(select_ln89_reg_1613_pp0_iter10_reg[1]),
        .I4(ap_enable_reg_pp0_iter11),
        .O(output_3_fu_1640));
  FDRE #(
    .INIT(1'b0)) 
    \output_3_fu_164_reg[0] 
       (.C(ap_clk),
        .CE(output_3_fu_1640),
        .D(p_0_in__0[0]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_3_out[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_3_fu_164_reg[10] 
       (.C(ap_clk),
        .CE(output_3_fu_1640),
        .D(p_0_in__0[10]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_3_out[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_3_fu_164_reg[11] 
       (.C(ap_clk),
        .CE(output_3_fu_1640),
        .D(p_0_in__0[11]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_3_out[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_3_fu_164_reg[12] 
       (.C(ap_clk),
        .CE(output_3_fu_1640),
        .D(p_0_in__0[12]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_3_out[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_3_fu_164_reg[13] 
       (.C(ap_clk),
        .CE(output_3_fu_1640),
        .D(p_0_in__0[13]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_3_out[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_3_fu_164_reg[14] 
       (.C(ap_clk),
        .CE(output_3_fu_1640),
        .D(p_0_in__0[14]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_3_out[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_3_fu_164_reg[15] 
       (.C(ap_clk),
        .CE(output_3_fu_1640),
        .D(p_0_in__0[15]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_3_out[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_3_fu_164_reg[1] 
       (.C(ap_clk),
        .CE(output_3_fu_1640),
        .D(p_0_in__0[1]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_3_out[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_3_fu_164_reg[2] 
       (.C(ap_clk),
        .CE(output_3_fu_1640),
        .D(p_0_in__0[2]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_3_out[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_3_fu_164_reg[3] 
       (.C(ap_clk),
        .CE(output_3_fu_1640),
        .D(p_0_in__0[3]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_3_out[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_3_fu_164_reg[4] 
       (.C(ap_clk),
        .CE(output_3_fu_1640),
        .D(p_0_in__0[4]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_3_out[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_3_fu_164_reg[5] 
       (.C(ap_clk),
        .CE(output_3_fu_1640),
        .D(p_0_in__0[5]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_3_out[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_3_fu_164_reg[6] 
       (.C(ap_clk),
        .CE(output_3_fu_1640),
        .D(p_0_in__0[6]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_3_out[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_3_fu_164_reg[7] 
       (.C(ap_clk),
        .CE(output_3_fu_1640),
        .D(p_0_in__0[7]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_3_out[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_3_fu_164_reg[8] 
       (.C(ap_clk),
        .CE(output_3_fu_1640),
        .D(p_0_in__0[8]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_3_out[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_3_fu_164_reg[9] 
       (.C(ap_clk),
        .CE(output_3_fu_1640),
        .D(p_0_in__0[9]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_3_out[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00200000)) 
    \output_4_fu_168[15]_i_1 
       (.I0(select_ln89_reg_1613_pp0_iter10_reg[0]),
        .I1(select_ln89_reg_1613_pp0_iter10_reg[1]),
        .I2(ap_enable_reg_pp0_iter11),
        .I3(select_ln49_reg_1599_pp0_iter10_reg[1]),
        .I4(select_ln49_reg_1599_pp0_iter10_reg[0]),
        .O(output_4_fu_1680));
  FDRE #(
    .INIT(1'b0)) 
    \output_4_fu_168_reg[0] 
       (.C(ap_clk),
        .CE(output_4_fu_1680),
        .D(p_0_in__0[0]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_4_out[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_4_fu_168_reg[10] 
       (.C(ap_clk),
        .CE(output_4_fu_1680),
        .D(p_0_in__0[10]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_4_out[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_4_fu_168_reg[11] 
       (.C(ap_clk),
        .CE(output_4_fu_1680),
        .D(p_0_in__0[11]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_4_out[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_4_fu_168_reg[12] 
       (.C(ap_clk),
        .CE(output_4_fu_1680),
        .D(p_0_in__0[12]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_4_out[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_4_fu_168_reg[13] 
       (.C(ap_clk),
        .CE(output_4_fu_1680),
        .D(p_0_in__0[13]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_4_out[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_4_fu_168_reg[14] 
       (.C(ap_clk),
        .CE(output_4_fu_1680),
        .D(p_0_in__0[14]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_4_out[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_4_fu_168_reg[15] 
       (.C(ap_clk),
        .CE(output_4_fu_1680),
        .D(p_0_in__0[15]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_4_out[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_4_fu_168_reg[1] 
       (.C(ap_clk),
        .CE(output_4_fu_1680),
        .D(p_0_in__0[1]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_4_out[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_4_fu_168_reg[2] 
       (.C(ap_clk),
        .CE(output_4_fu_1680),
        .D(p_0_in__0[2]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_4_out[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_4_fu_168_reg[3] 
       (.C(ap_clk),
        .CE(output_4_fu_1680),
        .D(p_0_in__0[3]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_4_out[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_4_fu_168_reg[4] 
       (.C(ap_clk),
        .CE(output_4_fu_1680),
        .D(p_0_in__0[4]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_4_out[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_4_fu_168_reg[5] 
       (.C(ap_clk),
        .CE(output_4_fu_1680),
        .D(p_0_in__0[5]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_4_out[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_4_fu_168_reg[6] 
       (.C(ap_clk),
        .CE(output_4_fu_1680),
        .D(p_0_in__0[6]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_4_out[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_4_fu_168_reg[7] 
       (.C(ap_clk),
        .CE(output_4_fu_1680),
        .D(p_0_in__0[7]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_4_out[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_4_fu_168_reg[8] 
       (.C(ap_clk),
        .CE(output_4_fu_1680),
        .D(p_0_in__0[8]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_4_out[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_4_fu_168_reg[9] 
       (.C(ap_clk),
        .CE(output_4_fu_1680),
        .D(p_0_in__0[9]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_4_out[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0800)) 
    \output_5_fu_172[15]_i_1 
       (.I0(ap_enable_reg_pp0_iter11),
        .I1(select_ln49_reg_1599_pp0_iter10_reg[1]),
        .I2(select_ln89_reg_1613_pp0_iter10_reg[1]),
        .I3(select_ln89_reg_1613_pp0_iter10_reg[0]),
        .O(output_5_fu_1720));
  FDRE #(
    .INIT(1'b0)) 
    \output_5_fu_172_reg[0] 
       (.C(ap_clk),
        .CE(output_5_fu_1720),
        .D(p_0_in__0[0]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_5_out[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_5_fu_172_reg[10] 
       (.C(ap_clk),
        .CE(output_5_fu_1720),
        .D(p_0_in__0[10]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_5_out[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_5_fu_172_reg[11] 
       (.C(ap_clk),
        .CE(output_5_fu_1720),
        .D(p_0_in__0[11]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_5_out[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_5_fu_172_reg[12] 
       (.C(ap_clk),
        .CE(output_5_fu_1720),
        .D(p_0_in__0[12]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_5_out[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_5_fu_172_reg[13] 
       (.C(ap_clk),
        .CE(output_5_fu_1720),
        .D(p_0_in__0[13]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_5_out[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_5_fu_172_reg[14] 
       (.C(ap_clk),
        .CE(output_5_fu_1720),
        .D(p_0_in__0[14]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_5_out[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_5_fu_172_reg[15] 
       (.C(ap_clk),
        .CE(output_5_fu_1720),
        .D(p_0_in__0[15]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_5_out[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_5_fu_172_reg[1] 
       (.C(ap_clk),
        .CE(output_5_fu_1720),
        .D(p_0_in__0[1]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_5_out[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_5_fu_172_reg[2] 
       (.C(ap_clk),
        .CE(output_5_fu_1720),
        .D(p_0_in__0[2]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_5_out[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_5_fu_172_reg[3] 
       (.C(ap_clk),
        .CE(output_5_fu_1720),
        .D(p_0_in__0[3]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_5_out[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_5_fu_172_reg[4] 
       (.C(ap_clk),
        .CE(output_5_fu_1720),
        .D(p_0_in__0[4]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_5_out[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_5_fu_172_reg[5] 
       (.C(ap_clk),
        .CE(output_5_fu_1720),
        .D(p_0_in__0[5]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_5_out[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_5_fu_172_reg[6] 
       (.C(ap_clk),
        .CE(output_5_fu_1720),
        .D(p_0_in__0[6]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_5_out[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_5_fu_172_reg[7] 
       (.C(ap_clk),
        .CE(output_5_fu_1720),
        .D(p_0_in__0[7]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_5_out[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_5_fu_172_reg[8] 
       (.C(ap_clk),
        .CE(output_5_fu_1720),
        .D(p_0_in__0[8]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_5_out[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_5_fu_172_reg[9] 
       (.C(ap_clk),
        .CE(output_5_fu_1720),
        .D(p_0_in__0[9]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_5_out[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0008)) 
    \output_6_fu_176[15]_i_1 
       (.I0(select_ln89_reg_1613_pp0_iter10_reg[1]),
        .I1(ap_enable_reg_pp0_iter11),
        .I2(select_ln49_reg_1599_pp0_iter10_reg[1]),
        .I3(select_ln49_reg_1599_pp0_iter10_reg[0]),
        .O(output_6_fu_1760));
  FDRE #(
    .INIT(1'b0)) 
    \output_6_fu_176_reg[0] 
       (.C(ap_clk),
        .CE(output_6_fu_1760),
        .D(p_0_in__0[0]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_6_out[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_6_fu_176_reg[10] 
       (.C(ap_clk),
        .CE(output_6_fu_1760),
        .D(p_0_in__0[10]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_6_out[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_6_fu_176_reg[11] 
       (.C(ap_clk),
        .CE(output_6_fu_1760),
        .D(p_0_in__0[11]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_6_out[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_6_fu_176_reg[12] 
       (.C(ap_clk),
        .CE(output_6_fu_1760),
        .D(p_0_in__0[12]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_6_out[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_6_fu_176_reg[13] 
       (.C(ap_clk),
        .CE(output_6_fu_1760),
        .D(p_0_in__0[13]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_6_out[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_6_fu_176_reg[14] 
       (.C(ap_clk),
        .CE(output_6_fu_1760),
        .D(p_0_in__0[14]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_6_out[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_6_fu_176_reg[15] 
       (.C(ap_clk),
        .CE(output_6_fu_1760),
        .D(p_0_in__0[15]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_6_out[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_6_fu_176_reg[1] 
       (.C(ap_clk),
        .CE(output_6_fu_1760),
        .D(p_0_in__0[1]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_6_out[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_6_fu_176_reg[2] 
       (.C(ap_clk),
        .CE(output_6_fu_1760),
        .D(p_0_in__0[2]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_6_out[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_6_fu_176_reg[3] 
       (.C(ap_clk),
        .CE(output_6_fu_1760),
        .D(p_0_in__0[3]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_6_out[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_6_fu_176_reg[4] 
       (.C(ap_clk),
        .CE(output_6_fu_1760),
        .D(p_0_in__0[4]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_6_out[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_6_fu_176_reg[5] 
       (.C(ap_clk),
        .CE(output_6_fu_1760),
        .D(p_0_in__0[5]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_6_out[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_6_fu_176_reg[6] 
       (.C(ap_clk),
        .CE(output_6_fu_1760),
        .D(p_0_in__0[6]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_6_out[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_6_fu_176_reg[7] 
       (.C(ap_clk),
        .CE(output_6_fu_1760),
        .D(p_0_in__0[7]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_6_out[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_6_fu_176_reg[8] 
       (.C(ap_clk),
        .CE(output_6_fu_1760),
        .D(p_0_in__0[8]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_6_out[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_6_fu_176_reg[9] 
       (.C(ap_clk),
        .CE(output_6_fu_1760),
        .D(p_0_in__0[9]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_6_out[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0800)) 
    \output_7_fu_180[15]_i_1 
       (.I0(select_ln89_reg_1613_pp0_iter10_reg[1]),
        .I1(ap_enable_reg_pp0_iter11),
        .I2(select_ln49_reg_1599_pp0_iter10_reg[1]),
        .I3(select_ln49_reg_1599_pp0_iter10_reg[0]),
        .O(output_7_fu_1800));
  FDRE #(
    .INIT(1'b0)) 
    \output_7_fu_180_reg[0] 
       (.C(ap_clk),
        .CE(output_7_fu_1800),
        .D(p_0_in__0[0]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_7_out[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_7_fu_180_reg[10] 
       (.C(ap_clk),
        .CE(output_7_fu_1800),
        .D(p_0_in__0[10]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_7_out[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_7_fu_180_reg[11] 
       (.C(ap_clk),
        .CE(output_7_fu_1800),
        .D(p_0_in__0[11]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_7_out[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_7_fu_180_reg[12] 
       (.C(ap_clk),
        .CE(output_7_fu_1800),
        .D(p_0_in__0[12]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_7_out[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_7_fu_180_reg[13] 
       (.C(ap_clk),
        .CE(output_7_fu_1800),
        .D(p_0_in__0[13]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_7_out[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_7_fu_180_reg[14] 
       (.C(ap_clk),
        .CE(output_7_fu_1800),
        .D(p_0_in__0[14]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_7_out[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_7_fu_180_reg[15] 
       (.C(ap_clk),
        .CE(output_7_fu_1800),
        .D(p_0_in__0[15]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_7_out[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_7_fu_180_reg[1] 
       (.C(ap_clk),
        .CE(output_7_fu_1800),
        .D(p_0_in__0[1]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_7_out[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_7_fu_180_reg[2] 
       (.C(ap_clk),
        .CE(output_7_fu_1800),
        .D(p_0_in__0[2]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_7_out[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_7_fu_180_reg[3] 
       (.C(ap_clk),
        .CE(output_7_fu_1800),
        .D(p_0_in__0[3]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_7_out[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_7_fu_180_reg[4] 
       (.C(ap_clk),
        .CE(output_7_fu_1800),
        .D(p_0_in__0[4]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_7_out[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_7_fu_180_reg[5] 
       (.C(ap_clk),
        .CE(output_7_fu_1800),
        .D(p_0_in__0[5]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_7_out[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_7_fu_180_reg[6] 
       (.C(ap_clk),
        .CE(output_7_fu_1800),
        .D(p_0_in__0[6]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_7_out[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_7_fu_180_reg[7] 
       (.C(ap_clk),
        .CE(output_7_fu_1800),
        .D(p_0_in__0[7]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_7_out[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_7_fu_180_reg[8] 
       (.C(ap_clk),
        .CE(output_7_fu_1800),
        .D(p_0_in__0[8]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_7_out[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_7_fu_180_reg[9] 
       (.C(ap_clk),
        .CE(output_7_fu_1800),
        .D(p_0_in__0[9]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_7_out[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h80)) 
    \output_8_fu_184[15]_i_1 
       (.I0(select_ln89_reg_1613_pp0_iter10_reg[1]),
        .I1(ap_enable_reg_pp0_iter11),
        .I2(select_ln49_reg_1599_pp0_iter10_reg[1]),
        .O(output_8_fu_1840));
  FDRE #(
    .INIT(1'b0)) 
    \output_8_fu_184_reg[0] 
       (.C(ap_clk),
        .CE(output_8_fu_1840),
        .D(p_0_in__0[0]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_8_out[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_8_fu_184_reg[10] 
       (.C(ap_clk),
        .CE(output_8_fu_1840),
        .D(p_0_in__0[10]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_8_out[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_8_fu_184_reg[11] 
       (.C(ap_clk),
        .CE(output_8_fu_1840),
        .D(p_0_in__0[11]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_8_out[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_8_fu_184_reg[12] 
       (.C(ap_clk),
        .CE(output_8_fu_1840),
        .D(p_0_in__0[12]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_8_out[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_8_fu_184_reg[13] 
       (.C(ap_clk),
        .CE(output_8_fu_1840),
        .D(p_0_in__0[13]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_8_out[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_8_fu_184_reg[14] 
       (.C(ap_clk),
        .CE(output_8_fu_1840),
        .D(p_0_in__0[14]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_8_out[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_8_fu_184_reg[15] 
       (.C(ap_clk),
        .CE(output_8_fu_1840),
        .D(p_0_in__0[15]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_8_out[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_8_fu_184_reg[1] 
       (.C(ap_clk),
        .CE(output_8_fu_1840),
        .D(p_0_in__0[1]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_8_out[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_8_fu_184_reg[2] 
       (.C(ap_clk),
        .CE(output_8_fu_1840),
        .D(p_0_in__0[2]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_8_out[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_8_fu_184_reg[3] 
       (.C(ap_clk),
        .CE(output_8_fu_1840),
        .D(p_0_in__0[3]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_8_out[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_8_fu_184_reg[4] 
       (.C(ap_clk),
        .CE(output_8_fu_1840),
        .D(p_0_in__0[4]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_8_out[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_8_fu_184_reg[5] 
       (.C(ap_clk),
        .CE(output_8_fu_1840),
        .D(p_0_in__0[5]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_8_out[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_8_fu_184_reg[6] 
       (.C(ap_clk),
        .CE(output_8_fu_1840),
        .D(p_0_in__0[6]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_8_out[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_8_fu_184_reg[7] 
       (.C(ap_clk),
        .CE(output_8_fu_1840),
        .D(p_0_in__0[7]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_8_out[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_8_fu_184_reg[8] 
       (.C(ap_clk),
        .CE(output_8_fu_1840),
        .D(p_0_in__0[8]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_8_out[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_8_fu_184_reg[9] 
       (.C(ap_clk),
        .CE(output_8_fu_1840),
        .D(p_0_in__0[9]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_8_out[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00000010)) 
    \output_fu_152[15]_i_1 
       (.I0(select_ln89_reg_1613_pp0_iter10_reg[1]),
        .I1(select_ln89_reg_1613_pp0_iter10_reg[0]),
        .I2(ap_enable_reg_pp0_iter11),
        .I3(select_ln49_reg_1599_pp0_iter10_reg[1]),
        .I4(select_ln49_reg_1599_pp0_iter10_reg[0]),
        .O(output_fu_1520));
  FDRE #(
    .INIT(1'b0)) 
    \output_fu_152_reg[0] 
       (.C(ap_clk),
        .CE(output_fu_1520),
        .D(p_0_in__0[0]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_out[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_fu_152_reg[10] 
       (.C(ap_clk),
        .CE(output_fu_1520),
        .D(p_0_in__0[10]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_out[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_fu_152_reg[11] 
       (.C(ap_clk),
        .CE(output_fu_1520),
        .D(p_0_in__0[11]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_out[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_fu_152_reg[12] 
       (.C(ap_clk),
        .CE(output_fu_1520),
        .D(p_0_in__0[12]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_out[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_fu_152_reg[13] 
       (.C(ap_clk),
        .CE(output_fu_1520),
        .D(p_0_in__0[13]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_out[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_fu_152_reg[14] 
       (.C(ap_clk),
        .CE(output_fu_1520),
        .D(p_0_in__0[14]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_out[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_fu_152_reg[15] 
       (.C(ap_clk),
        .CE(output_fu_1520),
        .D(p_0_in__0[15]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_out[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_fu_152_reg[1] 
       (.C(ap_clk),
        .CE(output_fu_1520),
        .D(p_0_in__0[1]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_out[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_fu_152_reg[2] 
       (.C(ap_clk),
        .CE(output_fu_1520),
        .D(p_0_in__0[2]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_out[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_fu_152_reg[3] 
       (.C(ap_clk),
        .CE(output_fu_1520),
        .D(p_0_in__0[3]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_out[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_fu_152_reg[4] 
       (.C(ap_clk),
        .CE(output_fu_1520),
        .D(p_0_in__0[4]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_out[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_fu_152_reg[5] 
       (.C(ap_clk),
        .CE(output_fu_1520),
        .D(p_0_in__0[5]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_out[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_fu_152_reg[6] 
       (.C(ap_clk),
        .CE(output_fu_1520),
        .D(p_0_in__0[6]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_out[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_fu_152_reg[7] 
       (.C(ap_clk),
        .CE(output_fu_1520),
        .D(p_0_in__0[7]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_out[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_fu_152_reg[8] 
       (.C(ap_clk),
        .CE(output_fu_1520),
        .D(p_0_in__0[8]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_out[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_fu_152_reg[9] 
       (.C(ap_clk),
        .CE(output_fu_1520),
        .D(p_0_in__0[9]),
        .Q(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_out[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFBF8FBFB0B080808)) 
    \p_0_reg_377[0]_i_1 
       (.I0(\p_0_reg_377[0]_i_2_n_0 ),
        .I1(\p_0_reg_377_reg[14] ),
        .I2(\p_0_reg_377_reg[14]_0 ),
        .I3(\p_0_reg_377[0]_i_3_n_0 ),
        .I4(\p_0_reg_377_reg[14]_1 ),
        .I5(\p_0_reg_377[0]_i_4_n_0 ),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \p_0_reg_377[0]_i_2 
       (.I0(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_8_out[0]),
        .I1(\p_0_reg_377_reg[0] ),
        .I2(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_6_out[0]),
        .I3(\p_0_reg_377_reg[0]_0 ),
        .I4(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_7_out[0]),
        .O(\p_0_reg_377[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \p_0_reg_377[0]_i_3 
       (.I0(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_5_out[0]),
        .I1(\p_0_reg_377_reg[0] ),
        .I2(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_3_out[0]),
        .I3(\p_0_reg_377_reg[0]_0 ),
        .I4(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_4_out[0]),
        .O(\p_0_reg_377[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \p_0_reg_377[0]_i_4 
       (.I0(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_2_out[0]),
        .I1(\p_0_reg_377_reg[0] ),
        .I2(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_out[0]),
        .I3(\p_0_reg_377_reg[0]_0 ),
        .I4(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_1_out[0]),
        .O(\p_0_reg_377[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFBF8FBFB0B080808)) 
    \p_0_reg_377[10]_i_1 
       (.I0(\p_0_reg_377[10]_i_2_n_0 ),
        .I1(\p_0_reg_377_reg[14] ),
        .I2(\p_0_reg_377_reg[14]_0 ),
        .I3(\p_0_reg_377[10]_i_3_n_0 ),
        .I4(\p_0_reg_377_reg[14]_1 ),
        .I5(\p_0_reg_377[10]_i_4_n_0 ),
        .O(D[10]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \p_0_reg_377[10]_i_2 
       (.I0(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_8_out[10]),
        .I1(\p_0_reg_377_reg[0] ),
        .I2(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_6_out[10]),
        .I3(\p_0_reg_377_reg[0]_0 ),
        .I4(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_7_out[10]),
        .O(\p_0_reg_377[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \p_0_reg_377[10]_i_3 
       (.I0(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_5_out[10]),
        .I1(\p_0_reg_377_reg[0] ),
        .I2(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_3_out[10]),
        .I3(\p_0_reg_377_reg[0]_0 ),
        .I4(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_4_out[10]),
        .O(\p_0_reg_377[10]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \p_0_reg_377[10]_i_4 
       (.I0(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_2_out[10]),
        .I1(\p_0_reg_377_reg[0] ),
        .I2(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_out[10]),
        .I3(\p_0_reg_377_reg[0]_0 ),
        .I4(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_1_out[10]),
        .O(\p_0_reg_377[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFBF8FBFB0B080808)) 
    \p_0_reg_377[11]_i_1 
       (.I0(\p_0_reg_377[11]_i_2_n_0 ),
        .I1(\p_0_reg_377_reg[14] ),
        .I2(\p_0_reg_377_reg[14]_0 ),
        .I3(\p_0_reg_377[11]_i_3_n_0 ),
        .I4(\p_0_reg_377_reg[14]_1 ),
        .I5(\p_0_reg_377[11]_i_4_n_0 ),
        .O(D[11]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \p_0_reg_377[11]_i_2 
       (.I0(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_8_out[11]),
        .I1(\p_0_reg_377_reg[0] ),
        .I2(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_6_out[11]),
        .I3(\p_0_reg_377_reg[0]_0 ),
        .I4(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_7_out[11]),
        .O(\p_0_reg_377[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \p_0_reg_377[11]_i_3 
       (.I0(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_5_out[11]),
        .I1(\p_0_reg_377_reg[0] ),
        .I2(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_3_out[11]),
        .I3(\p_0_reg_377_reg[0]_0 ),
        .I4(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_4_out[11]),
        .O(\p_0_reg_377[11]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \p_0_reg_377[11]_i_4 
       (.I0(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_2_out[11]),
        .I1(\p_0_reg_377_reg[0] ),
        .I2(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_out[11]),
        .I3(\p_0_reg_377_reg[0]_0 ),
        .I4(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_1_out[11]),
        .O(\p_0_reg_377[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFBF8FBFB0B080808)) 
    \p_0_reg_377[12]_i_1 
       (.I0(\p_0_reg_377[12]_i_2_n_0 ),
        .I1(\p_0_reg_377_reg[14] ),
        .I2(\p_0_reg_377_reg[14]_0 ),
        .I3(\p_0_reg_377[12]_i_3_n_0 ),
        .I4(\p_0_reg_377_reg[14]_1 ),
        .I5(\p_0_reg_377[12]_i_4_n_0 ),
        .O(D[12]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \p_0_reg_377[12]_i_2 
       (.I0(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_8_out[12]),
        .I1(\p_0_reg_377_reg[0] ),
        .I2(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_6_out[12]),
        .I3(\p_0_reg_377_reg[0]_0 ),
        .I4(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_7_out[12]),
        .O(\p_0_reg_377[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \p_0_reg_377[12]_i_3 
       (.I0(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_5_out[12]),
        .I1(\p_0_reg_377_reg[0] ),
        .I2(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_3_out[12]),
        .I3(\p_0_reg_377_reg[0]_0 ),
        .I4(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_4_out[12]),
        .O(\p_0_reg_377[12]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \p_0_reg_377[12]_i_4 
       (.I0(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_2_out[12]),
        .I1(\p_0_reg_377_reg[0] ),
        .I2(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_out[12]),
        .I3(\p_0_reg_377_reg[0]_0 ),
        .I4(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_1_out[12]),
        .O(\p_0_reg_377[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFBF8FBFB0B080808)) 
    \p_0_reg_377[13]_i_1 
       (.I0(\p_0_reg_377[13]_i_2_n_0 ),
        .I1(\p_0_reg_377_reg[14] ),
        .I2(\p_0_reg_377_reg[14]_0 ),
        .I3(\p_0_reg_377[13]_i_3_n_0 ),
        .I4(\p_0_reg_377_reg[14]_1 ),
        .I5(\p_0_reg_377[13]_i_4_n_0 ),
        .O(D[13]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \p_0_reg_377[13]_i_2 
       (.I0(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_8_out[13]),
        .I1(\p_0_reg_377_reg[0] ),
        .I2(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_6_out[13]),
        .I3(\p_0_reg_377_reg[0]_0 ),
        .I4(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_7_out[13]),
        .O(\p_0_reg_377[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \p_0_reg_377[13]_i_3 
       (.I0(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_5_out[13]),
        .I1(\p_0_reg_377_reg[0] ),
        .I2(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_3_out[13]),
        .I3(\p_0_reg_377_reg[0]_0 ),
        .I4(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_4_out[13]),
        .O(\p_0_reg_377[13]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \p_0_reg_377[13]_i_4 
       (.I0(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_2_out[13]),
        .I1(\p_0_reg_377_reg[0] ),
        .I2(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_out[13]),
        .I3(\p_0_reg_377_reg[0]_0 ),
        .I4(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_1_out[13]),
        .O(\p_0_reg_377[13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFBF8FBFB0B080808)) 
    \p_0_reg_377[14]_i_1 
       (.I0(\p_0_reg_377[14]_i_2_n_0 ),
        .I1(\p_0_reg_377_reg[14] ),
        .I2(\p_0_reg_377_reg[14]_0 ),
        .I3(\p_0_reg_377[14]_i_3_n_0 ),
        .I4(\p_0_reg_377_reg[14]_1 ),
        .I5(\p_0_reg_377[14]_i_4_n_0 ),
        .O(D[14]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \p_0_reg_377[14]_i_2 
       (.I0(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_8_out[14]),
        .I1(\p_0_reg_377_reg[0] ),
        .I2(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_6_out[14]),
        .I3(\p_0_reg_377_reg[0]_0 ),
        .I4(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_7_out[14]),
        .O(\p_0_reg_377[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \p_0_reg_377[14]_i_3 
       (.I0(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_5_out[14]),
        .I1(\p_0_reg_377_reg[0] ),
        .I2(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_3_out[14]),
        .I3(\p_0_reg_377_reg[0]_0 ),
        .I4(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_4_out[14]),
        .O(\p_0_reg_377[14]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \p_0_reg_377[14]_i_4 
       (.I0(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_2_out[14]),
        .I1(\p_0_reg_377_reg[0] ),
        .I2(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_out[14]),
        .I3(\p_0_reg_377_reg[0]_0 ),
        .I4(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_1_out[14]),
        .O(\p_0_reg_377[14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFBF8FBFB0B080808)) 
    \p_0_reg_377[15]_i_2 
       (.I0(\p_0_reg_377[15]_i_3_n_0 ),
        .I1(\p_0_reg_377_reg[14] ),
        .I2(\p_0_reg_377_reg[14]_0 ),
        .I3(\p_0_reg_377[15]_i_4_n_0 ),
        .I4(\p_0_reg_377_reg[14]_1 ),
        .I5(\p_0_reg_377[15]_i_5_n_0 ),
        .O(D[15]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \p_0_reg_377[15]_i_3 
       (.I0(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_8_out[15]),
        .I1(\p_0_reg_377_reg[0] ),
        .I2(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_6_out[15]),
        .I3(\p_0_reg_377_reg[0]_0 ),
        .I4(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_7_out[15]),
        .O(\p_0_reg_377[15]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \p_0_reg_377[15]_i_4 
       (.I0(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_5_out[15]),
        .I1(\p_0_reg_377_reg[0] ),
        .I2(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_3_out[15]),
        .I3(\p_0_reg_377_reg[0]_0 ),
        .I4(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_4_out[15]),
        .O(\p_0_reg_377[15]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \p_0_reg_377[15]_i_5 
       (.I0(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_2_out[15]),
        .I1(\p_0_reg_377_reg[0] ),
        .I2(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_out[15]),
        .I3(\p_0_reg_377_reg[0]_0 ),
        .I4(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_1_out[15]),
        .O(\p_0_reg_377[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFBF8FBFB0B080808)) 
    \p_0_reg_377[1]_i_1 
       (.I0(\p_0_reg_377[1]_i_2_n_0 ),
        .I1(\p_0_reg_377_reg[14] ),
        .I2(\p_0_reg_377_reg[14]_0 ),
        .I3(\p_0_reg_377[1]_i_3_n_0 ),
        .I4(\p_0_reg_377_reg[14]_1 ),
        .I5(\p_0_reg_377[1]_i_4_n_0 ),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \p_0_reg_377[1]_i_2 
       (.I0(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_8_out[1]),
        .I1(\p_0_reg_377_reg[0] ),
        .I2(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_6_out[1]),
        .I3(\p_0_reg_377_reg[0]_0 ),
        .I4(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_7_out[1]),
        .O(\p_0_reg_377[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \p_0_reg_377[1]_i_3 
       (.I0(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_5_out[1]),
        .I1(\p_0_reg_377_reg[0] ),
        .I2(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_3_out[1]),
        .I3(\p_0_reg_377_reg[0]_0 ),
        .I4(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_4_out[1]),
        .O(\p_0_reg_377[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \p_0_reg_377[1]_i_4 
       (.I0(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_2_out[1]),
        .I1(\p_0_reg_377_reg[0] ),
        .I2(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_out[1]),
        .I3(\p_0_reg_377_reg[0]_0 ),
        .I4(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_1_out[1]),
        .O(\p_0_reg_377[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFBF8FBFB0B080808)) 
    \p_0_reg_377[2]_i_1 
       (.I0(\p_0_reg_377[2]_i_2_n_0 ),
        .I1(\p_0_reg_377_reg[14] ),
        .I2(\p_0_reg_377_reg[14]_0 ),
        .I3(\p_0_reg_377[2]_i_3_n_0 ),
        .I4(\p_0_reg_377_reg[14]_1 ),
        .I5(\p_0_reg_377[2]_i_4_n_0 ),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \p_0_reg_377[2]_i_2 
       (.I0(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_8_out[2]),
        .I1(\p_0_reg_377_reg[0] ),
        .I2(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_6_out[2]),
        .I3(\p_0_reg_377_reg[0]_0 ),
        .I4(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_7_out[2]),
        .O(\p_0_reg_377[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \p_0_reg_377[2]_i_3 
       (.I0(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_5_out[2]),
        .I1(\p_0_reg_377_reg[0] ),
        .I2(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_3_out[2]),
        .I3(\p_0_reg_377_reg[0]_0 ),
        .I4(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_4_out[2]),
        .O(\p_0_reg_377[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \p_0_reg_377[2]_i_4 
       (.I0(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_2_out[2]),
        .I1(\p_0_reg_377_reg[0] ),
        .I2(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_out[2]),
        .I3(\p_0_reg_377_reg[0]_0 ),
        .I4(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_1_out[2]),
        .O(\p_0_reg_377[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFBF8FBFB0B080808)) 
    \p_0_reg_377[3]_i_1 
       (.I0(\p_0_reg_377[3]_i_2_n_0 ),
        .I1(\p_0_reg_377_reg[14] ),
        .I2(\p_0_reg_377_reg[14]_0 ),
        .I3(\p_0_reg_377[3]_i_3_n_0 ),
        .I4(\p_0_reg_377_reg[14]_1 ),
        .I5(\p_0_reg_377[3]_i_4_n_0 ),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \p_0_reg_377[3]_i_2 
       (.I0(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_8_out[3]),
        .I1(\p_0_reg_377_reg[0] ),
        .I2(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_6_out[3]),
        .I3(\p_0_reg_377_reg[0]_0 ),
        .I4(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_7_out[3]),
        .O(\p_0_reg_377[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \p_0_reg_377[3]_i_3 
       (.I0(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_5_out[3]),
        .I1(\p_0_reg_377_reg[0] ),
        .I2(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_3_out[3]),
        .I3(\p_0_reg_377_reg[0]_0 ),
        .I4(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_4_out[3]),
        .O(\p_0_reg_377[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \p_0_reg_377[3]_i_4 
       (.I0(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_2_out[3]),
        .I1(\p_0_reg_377_reg[0] ),
        .I2(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_out[3]),
        .I3(\p_0_reg_377_reg[0]_0 ),
        .I4(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_1_out[3]),
        .O(\p_0_reg_377[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFBF8FBFB0B080808)) 
    \p_0_reg_377[4]_i_1 
       (.I0(\p_0_reg_377[4]_i_2_n_0 ),
        .I1(\p_0_reg_377_reg[14] ),
        .I2(\p_0_reg_377_reg[14]_0 ),
        .I3(\p_0_reg_377[4]_i_3_n_0 ),
        .I4(\p_0_reg_377_reg[14]_1 ),
        .I5(\p_0_reg_377[4]_i_4_n_0 ),
        .O(D[4]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \p_0_reg_377[4]_i_2 
       (.I0(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_8_out[4]),
        .I1(\p_0_reg_377_reg[0] ),
        .I2(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_6_out[4]),
        .I3(\p_0_reg_377_reg[0]_0 ),
        .I4(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_7_out[4]),
        .O(\p_0_reg_377[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \p_0_reg_377[4]_i_3 
       (.I0(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_5_out[4]),
        .I1(\p_0_reg_377_reg[0] ),
        .I2(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_3_out[4]),
        .I3(\p_0_reg_377_reg[0]_0 ),
        .I4(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_4_out[4]),
        .O(\p_0_reg_377[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \p_0_reg_377[4]_i_4 
       (.I0(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_2_out[4]),
        .I1(\p_0_reg_377_reg[0] ),
        .I2(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_out[4]),
        .I3(\p_0_reg_377_reg[0]_0 ),
        .I4(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_1_out[4]),
        .O(\p_0_reg_377[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFBF8FBFB0B080808)) 
    \p_0_reg_377[5]_i_1 
       (.I0(\p_0_reg_377[5]_i_2_n_0 ),
        .I1(\p_0_reg_377_reg[14] ),
        .I2(\p_0_reg_377_reg[14]_0 ),
        .I3(\p_0_reg_377[5]_i_3_n_0 ),
        .I4(\p_0_reg_377_reg[14]_1 ),
        .I5(\p_0_reg_377[5]_i_4_n_0 ),
        .O(D[5]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \p_0_reg_377[5]_i_2 
       (.I0(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_8_out[5]),
        .I1(\p_0_reg_377_reg[0] ),
        .I2(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_6_out[5]),
        .I3(\p_0_reg_377_reg[0]_0 ),
        .I4(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_7_out[5]),
        .O(\p_0_reg_377[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \p_0_reg_377[5]_i_3 
       (.I0(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_5_out[5]),
        .I1(\p_0_reg_377_reg[0] ),
        .I2(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_3_out[5]),
        .I3(\p_0_reg_377_reg[0]_0 ),
        .I4(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_4_out[5]),
        .O(\p_0_reg_377[5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \p_0_reg_377[5]_i_4 
       (.I0(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_2_out[5]),
        .I1(\p_0_reg_377_reg[0] ),
        .I2(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_out[5]),
        .I3(\p_0_reg_377_reg[0]_0 ),
        .I4(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_1_out[5]),
        .O(\p_0_reg_377[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFBF8FBFB0B080808)) 
    \p_0_reg_377[6]_i_1 
       (.I0(\p_0_reg_377[6]_i_2_n_0 ),
        .I1(\p_0_reg_377_reg[14] ),
        .I2(\p_0_reg_377_reg[14]_0 ),
        .I3(\p_0_reg_377[6]_i_3_n_0 ),
        .I4(\p_0_reg_377_reg[14]_1 ),
        .I5(\p_0_reg_377[6]_i_4_n_0 ),
        .O(D[6]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \p_0_reg_377[6]_i_2 
       (.I0(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_8_out[6]),
        .I1(\p_0_reg_377_reg[0] ),
        .I2(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_6_out[6]),
        .I3(\p_0_reg_377_reg[0]_0 ),
        .I4(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_7_out[6]),
        .O(\p_0_reg_377[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \p_0_reg_377[6]_i_3 
       (.I0(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_5_out[6]),
        .I1(\p_0_reg_377_reg[0] ),
        .I2(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_3_out[6]),
        .I3(\p_0_reg_377_reg[0]_0 ),
        .I4(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_4_out[6]),
        .O(\p_0_reg_377[6]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \p_0_reg_377[6]_i_4 
       (.I0(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_2_out[6]),
        .I1(\p_0_reg_377_reg[0] ),
        .I2(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_out[6]),
        .I3(\p_0_reg_377_reg[0]_0 ),
        .I4(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_1_out[6]),
        .O(\p_0_reg_377[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFBF8FBFB0B080808)) 
    \p_0_reg_377[7]_i_1 
       (.I0(\p_0_reg_377[7]_i_2_n_0 ),
        .I1(\p_0_reg_377_reg[14] ),
        .I2(\p_0_reg_377_reg[14]_0 ),
        .I3(\p_0_reg_377[7]_i_3_n_0 ),
        .I4(\p_0_reg_377_reg[14]_1 ),
        .I5(\p_0_reg_377[7]_i_4_n_0 ),
        .O(D[7]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \p_0_reg_377[7]_i_2 
       (.I0(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_8_out[7]),
        .I1(\p_0_reg_377_reg[0] ),
        .I2(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_6_out[7]),
        .I3(\p_0_reg_377_reg[0]_0 ),
        .I4(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_7_out[7]),
        .O(\p_0_reg_377[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \p_0_reg_377[7]_i_3 
       (.I0(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_5_out[7]),
        .I1(\p_0_reg_377_reg[0] ),
        .I2(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_3_out[7]),
        .I3(\p_0_reg_377_reg[0]_0 ),
        .I4(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_4_out[7]),
        .O(\p_0_reg_377[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \p_0_reg_377[7]_i_4 
       (.I0(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_2_out[7]),
        .I1(\p_0_reg_377_reg[0] ),
        .I2(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_out[7]),
        .I3(\p_0_reg_377_reg[0]_0 ),
        .I4(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_1_out[7]),
        .O(\p_0_reg_377[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFBF8FBFB0B080808)) 
    \p_0_reg_377[8]_i_1 
       (.I0(\p_0_reg_377[8]_i_2_n_0 ),
        .I1(\p_0_reg_377_reg[14] ),
        .I2(\p_0_reg_377_reg[14]_0 ),
        .I3(\p_0_reg_377[8]_i_3_n_0 ),
        .I4(\p_0_reg_377_reg[14]_1 ),
        .I5(\p_0_reg_377[8]_i_4_n_0 ),
        .O(D[8]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \p_0_reg_377[8]_i_2 
       (.I0(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_8_out[8]),
        .I1(\p_0_reg_377_reg[0] ),
        .I2(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_6_out[8]),
        .I3(\p_0_reg_377_reg[0]_0 ),
        .I4(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_7_out[8]),
        .O(\p_0_reg_377[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \p_0_reg_377[8]_i_3 
       (.I0(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_5_out[8]),
        .I1(\p_0_reg_377_reg[0] ),
        .I2(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_3_out[8]),
        .I3(\p_0_reg_377_reg[0]_0 ),
        .I4(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_4_out[8]),
        .O(\p_0_reg_377[8]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \p_0_reg_377[8]_i_4 
       (.I0(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_2_out[8]),
        .I1(\p_0_reg_377_reg[0] ),
        .I2(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_out[8]),
        .I3(\p_0_reg_377_reg[0]_0 ),
        .I4(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_1_out[8]),
        .O(\p_0_reg_377[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFBF8FBFB0B080808)) 
    \p_0_reg_377[9]_i_1 
       (.I0(\p_0_reg_377[9]_i_2_n_0 ),
        .I1(\p_0_reg_377_reg[14] ),
        .I2(\p_0_reg_377_reg[14]_0 ),
        .I3(\p_0_reg_377[9]_i_3_n_0 ),
        .I4(\p_0_reg_377_reg[14]_1 ),
        .I5(\p_0_reg_377[9]_i_4_n_0 ),
        .O(D[9]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \p_0_reg_377[9]_i_2 
       (.I0(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_8_out[9]),
        .I1(\p_0_reg_377_reg[0] ),
        .I2(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_6_out[9]),
        .I3(\p_0_reg_377_reg[0]_0 ),
        .I4(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_7_out[9]),
        .O(\p_0_reg_377[9]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \p_0_reg_377[9]_i_3 
       (.I0(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_5_out[9]),
        .I1(\p_0_reg_377_reg[0] ),
        .I2(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_3_out[9]),
        .I3(\p_0_reg_377_reg[0]_0 ),
        .I4(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_4_out[9]),
        .O(\p_0_reg_377[9]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \p_0_reg_377[9]_i_4 
       (.I0(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_2_out[9]),
        .I1(\p_0_reg_377_reg[0] ),
        .I2(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_out[9]),
        .I3(\p_0_reg_377_reg[0]_0 ),
        .I4(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_output_1_out[9]),
        .O(\p_0_reg_377[9]_i_4_n_0 ));
  FDRE \select_ln49_reg_1599_pp0_iter10_reg_reg[0]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\select_ln49_reg_1599_pp0_iter9_reg_reg[0]_srl8_n_0 ),
        .Q(select_ln49_reg_1599_pp0_iter10_reg[0]),
        .R(1'b0));
  FDRE \select_ln49_reg_1599_pp0_iter10_reg_reg[1]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\select_ln49_reg_1599_pp0_iter9_reg_reg[1]_srl8_n_0 ),
        .Q(select_ln49_reg_1599_pp0_iter10_reg[1]),
        .R(1'b0));
  FDRE \select_ln49_reg_1599_pp0_iter1_reg_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(sel[0]),
        .Q(\select_ln49_reg_1599_pp0_iter1_reg_reg[0]_0 ),
        .R(1'b0));
  FDRE \select_ln49_reg_1599_pp0_iter1_reg_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(sel[1]),
        .Q(\select_ln49_reg_1599_pp0_iter1_reg_reg[1]_0 ),
        .R(1'b0));
  (* srl_bus_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/select_ln49_reg_1599_pp0_iter9_reg_reg " *) 
  (* srl_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/select_ln49_reg_1599_pp0_iter9_reg_reg[0]_srl8 " *) 
  SRL16E \select_ln49_reg_1599_pp0_iter9_reg_reg[0]_srl8 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(\select_ln49_reg_1599_pp0_iter1_reg_reg[0]_0 ),
        .Q(\select_ln49_reg_1599_pp0_iter9_reg_reg[0]_srl8_n_0 ));
  (* srl_bus_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/select_ln49_reg_1599_pp0_iter9_reg_reg " *) 
  (* srl_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/select_ln49_reg_1599_pp0_iter9_reg_reg[1]_srl8 " *) 
  SRL16E \select_ln49_reg_1599_pp0_iter9_reg_reg[1]_srl8 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(\select_ln49_reg_1599_pp0_iter1_reg_reg[1]_0 ),
        .Q(\select_ln49_reg_1599_pp0_iter9_reg_reg[1]_srl8_n_0 ));
  FDRE \select_ln49_reg_1599_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(select_ln49_fu_546_p3),
        .Q(sel[0]),
        .R(1'b0));
  FDRE \select_ln49_reg_1599_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\oc_s_fu_140_reg[0]_0 ),
        .Q(sel[1]),
        .R(1'b0));
  FDRE \select_ln89_reg_1613_pp0_iter10_reg_reg[0]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\select_ln89_reg_1613_pp0_iter9_reg_reg[0]_srl8_n_0 ),
        .Q(select_ln89_reg_1613_pp0_iter10_reg[0]),
        .R(1'b0));
  FDRE \select_ln89_reg_1613_pp0_iter10_reg_reg[1]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\select_ln89_reg_1613_pp0_iter9_reg_reg[1]_srl8_n_0 ),
        .Q(select_ln89_reg_1613_pp0_iter10_reg[1]),
        .R(1'b0));
  FDRE \select_ln89_reg_1613_pp0_iter1_reg_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\select_ln89_reg_1613_reg[0]_0 ),
        .Q(\select_ln89_reg_1613_pp0_iter1_reg_reg[0]_0 ),
        .R(1'b0));
  FDRE \select_ln89_reg_1613_pp0_iter1_reg_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\select_ln89_reg_1613_reg[1]_0 ),
        .Q(\select_ln89_reg_1613_pp0_iter1_reg_reg[1]_0 ),
        .R(1'b0));
  (* srl_bus_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/select_ln89_reg_1613_pp0_iter9_reg_reg " *) 
  (* srl_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/select_ln89_reg_1613_pp0_iter9_reg_reg[0]_srl8 " *) 
  SRL16E \select_ln89_reg_1613_pp0_iter9_reg_reg[0]_srl8 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(\select_ln89_reg_1613_pp0_iter1_reg_reg[0]_0 ),
        .Q(\select_ln89_reg_1613_pp0_iter9_reg_reg[0]_srl8_n_0 ));
  (* srl_bus_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/select_ln89_reg_1613_pp0_iter9_reg_reg " *) 
  (* srl_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/select_ln89_reg_1613_pp0_iter9_reg_reg[1]_srl8 " *) 
  SRL16E \select_ln89_reg_1613_pp0_iter9_reg_reg[1]_srl8 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(\select_ln89_reg_1613_pp0_iter1_reg_reg[1]_0 ),
        .Q(\select_ln89_reg_1613_pp0_iter9_reg_reg[1]_srl8_n_0 ));
  FDRE \select_ln89_reg_1613_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(select_ln89_fu_561_p3[0]),
        .Q(\select_ln89_reg_1613_reg[0]_0 ),
        .R(1'b0));
  FDRE \select_ln89_reg_1613_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(select_ln89_fu_561_p3[1]),
        .Q(\select_ln89_reg_1613_reg[1]_0 ),
        .R(1'b0));
  FDRE \tmp_15_reg_1628_pp0_iter1_reg_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_15_reg_1628[0]),
        .Q(tmp_15_reg_1628_pp0_iter1_reg[0]),
        .R(1'b0));
  FDRE \tmp_15_reg_1628_pp0_iter1_reg_reg[10] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_15_reg_1628[10]),
        .Q(tmp_15_reg_1628_pp0_iter1_reg[10]),
        .R(1'b0));
  FDRE \tmp_15_reg_1628_pp0_iter1_reg_reg[11] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_15_reg_1628[11]),
        .Q(tmp_15_reg_1628_pp0_iter1_reg[11]),
        .R(1'b0));
  FDRE \tmp_15_reg_1628_pp0_iter1_reg_reg[12] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_15_reg_1628[12]),
        .Q(tmp_15_reg_1628_pp0_iter1_reg[12]),
        .R(1'b0));
  FDRE \tmp_15_reg_1628_pp0_iter1_reg_reg[13] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_15_reg_1628[13]),
        .Q(tmp_15_reg_1628_pp0_iter1_reg[13]),
        .R(1'b0));
  FDRE \tmp_15_reg_1628_pp0_iter1_reg_reg[14] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_15_reg_1628[14]),
        .Q(tmp_15_reg_1628_pp0_iter1_reg[14]),
        .R(1'b0));
  FDRE \tmp_15_reg_1628_pp0_iter1_reg_reg[15] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_15_reg_1628[15]),
        .Q(tmp_15_reg_1628_pp0_iter1_reg[15]),
        .R(1'b0));
  FDRE \tmp_15_reg_1628_pp0_iter1_reg_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_15_reg_1628[1]),
        .Q(tmp_15_reg_1628_pp0_iter1_reg[1]),
        .R(1'b0));
  FDRE \tmp_15_reg_1628_pp0_iter1_reg_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_15_reg_1628[2]),
        .Q(tmp_15_reg_1628_pp0_iter1_reg[2]),
        .R(1'b0));
  FDRE \tmp_15_reg_1628_pp0_iter1_reg_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_15_reg_1628[3]),
        .Q(tmp_15_reg_1628_pp0_iter1_reg[3]),
        .R(1'b0));
  FDRE \tmp_15_reg_1628_pp0_iter1_reg_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_15_reg_1628[4]),
        .Q(tmp_15_reg_1628_pp0_iter1_reg[4]),
        .R(1'b0));
  FDRE \tmp_15_reg_1628_pp0_iter1_reg_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_15_reg_1628[5]),
        .Q(tmp_15_reg_1628_pp0_iter1_reg[5]),
        .R(1'b0));
  FDRE \tmp_15_reg_1628_pp0_iter1_reg_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_15_reg_1628[6]),
        .Q(tmp_15_reg_1628_pp0_iter1_reg[6]),
        .R(1'b0));
  FDRE \tmp_15_reg_1628_pp0_iter1_reg_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_15_reg_1628[7]),
        .Q(tmp_15_reg_1628_pp0_iter1_reg[7]),
        .R(1'b0));
  FDRE \tmp_15_reg_1628_pp0_iter1_reg_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_15_reg_1628[8]),
        .Q(tmp_15_reg_1628_pp0_iter1_reg[8]),
        .R(1'b0));
  FDRE \tmp_15_reg_1628_pp0_iter1_reg_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_15_reg_1628[9]),
        .Q(tmp_15_reg_1628_pp0_iter1_reg[9]),
        .R(1'b0));
  FDRE \tmp_15_reg_1628_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_15_reg_1628_reg[0]_0 ),
        .Q(tmp_15_reg_1628[0]),
        .R(1'b0));
  FDRE \tmp_15_reg_1628_reg[10] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_15_reg_1628_reg[10]_0 ),
        .Q(tmp_15_reg_1628[10]),
        .R(1'b0));
  FDRE \tmp_15_reg_1628_reg[11] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_15_reg_1628_reg[11]_0 ),
        .Q(tmp_15_reg_1628[11]),
        .R(1'b0));
  FDRE \tmp_15_reg_1628_reg[12] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_15_reg_1628_reg[12]_0 ),
        .Q(tmp_15_reg_1628[12]),
        .R(1'b0));
  FDRE \tmp_15_reg_1628_reg[13] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_15_reg_1628_reg[13]_0 ),
        .Q(tmp_15_reg_1628[13]),
        .R(1'b0));
  FDRE \tmp_15_reg_1628_reg[14] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_15_reg_1628_reg[14]_0 ),
        .Q(tmp_15_reg_1628[14]),
        .R(1'b0));
  FDRE \tmp_15_reg_1628_reg[15] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_15_reg_1628_reg[15]_0 ),
        .Q(tmp_15_reg_1628[15]),
        .R(1'b0));
  FDRE \tmp_15_reg_1628_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_15_reg_1628_reg[1]_0 ),
        .Q(tmp_15_reg_1628[1]),
        .R(1'b0));
  FDRE \tmp_15_reg_1628_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_15_reg_1628_reg[2]_0 ),
        .Q(tmp_15_reg_1628[2]),
        .R(1'b0));
  FDRE \tmp_15_reg_1628_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_15_reg_1628_reg[3]_0 ),
        .Q(tmp_15_reg_1628[3]),
        .R(1'b0));
  FDRE \tmp_15_reg_1628_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_15_reg_1628_reg[4]_0 ),
        .Q(tmp_15_reg_1628[4]),
        .R(1'b0));
  FDRE \tmp_15_reg_1628_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_15_reg_1628_reg[5]_0 ),
        .Q(tmp_15_reg_1628[5]),
        .R(1'b0));
  FDRE \tmp_15_reg_1628_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_15_reg_1628_reg[6]_0 ),
        .Q(tmp_15_reg_1628[6]),
        .R(1'b0));
  FDRE \tmp_15_reg_1628_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_15_reg_1628_reg[7]_0 ),
        .Q(tmp_15_reg_1628[7]),
        .R(1'b0));
  FDRE \tmp_15_reg_1628_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_15_reg_1628_reg[8]_0 ),
        .Q(tmp_15_reg_1628[8]),
        .R(1'b0));
  FDRE \tmp_15_reg_1628_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_15_reg_1628_reg[9]_0 ),
        .Q(tmp_15_reg_1628[9]),
        .R(1'b0));
  FDRE \tmp_18_reg_1643_pp0_iter2_reg_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_18_reg_1643[0]),
        .Q(tmp_18_reg_1643_pp0_iter2_reg[0]),
        .R(1'b0));
  FDRE \tmp_18_reg_1643_pp0_iter2_reg_reg[10] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_18_reg_1643[10]),
        .Q(tmp_18_reg_1643_pp0_iter2_reg[10]),
        .R(1'b0));
  FDRE \tmp_18_reg_1643_pp0_iter2_reg_reg[11] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_18_reg_1643[11]),
        .Q(tmp_18_reg_1643_pp0_iter2_reg[11]),
        .R(1'b0));
  FDRE \tmp_18_reg_1643_pp0_iter2_reg_reg[12] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_18_reg_1643[12]),
        .Q(tmp_18_reg_1643_pp0_iter2_reg[12]),
        .R(1'b0));
  FDRE \tmp_18_reg_1643_pp0_iter2_reg_reg[13] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_18_reg_1643[13]),
        .Q(tmp_18_reg_1643_pp0_iter2_reg[13]),
        .R(1'b0));
  FDRE \tmp_18_reg_1643_pp0_iter2_reg_reg[14] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_18_reg_1643[14]),
        .Q(tmp_18_reg_1643_pp0_iter2_reg[14]),
        .R(1'b0));
  FDRE \tmp_18_reg_1643_pp0_iter2_reg_reg[15] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_18_reg_1643[15]),
        .Q(tmp_18_reg_1643_pp0_iter2_reg[15]),
        .R(1'b0));
  FDRE \tmp_18_reg_1643_pp0_iter2_reg_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_18_reg_1643[1]),
        .Q(tmp_18_reg_1643_pp0_iter2_reg[1]),
        .R(1'b0));
  FDRE \tmp_18_reg_1643_pp0_iter2_reg_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_18_reg_1643[2]),
        .Q(tmp_18_reg_1643_pp0_iter2_reg[2]),
        .R(1'b0));
  FDRE \tmp_18_reg_1643_pp0_iter2_reg_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_18_reg_1643[3]),
        .Q(tmp_18_reg_1643_pp0_iter2_reg[3]),
        .R(1'b0));
  FDRE \tmp_18_reg_1643_pp0_iter2_reg_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_18_reg_1643[4]),
        .Q(tmp_18_reg_1643_pp0_iter2_reg[4]),
        .R(1'b0));
  FDRE \tmp_18_reg_1643_pp0_iter2_reg_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_18_reg_1643[5]),
        .Q(tmp_18_reg_1643_pp0_iter2_reg[5]),
        .R(1'b0));
  FDRE \tmp_18_reg_1643_pp0_iter2_reg_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_18_reg_1643[6]),
        .Q(tmp_18_reg_1643_pp0_iter2_reg[6]),
        .R(1'b0));
  FDRE \tmp_18_reg_1643_pp0_iter2_reg_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_18_reg_1643[7]),
        .Q(tmp_18_reg_1643_pp0_iter2_reg[7]),
        .R(1'b0));
  FDRE \tmp_18_reg_1643_pp0_iter2_reg_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_18_reg_1643[8]),
        .Q(tmp_18_reg_1643_pp0_iter2_reg[8]),
        .R(1'b0));
  FDRE \tmp_18_reg_1643_pp0_iter2_reg_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_18_reg_1643[9]),
        .Q(tmp_18_reg_1643_pp0_iter2_reg[9]),
        .R(1'b0));
  FDRE \tmp_18_reg_1643_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_18_reg_1643_reg[0]_0 ),
        .Q(tmp_18_reg_1643[0]),
        .R(1'b0));
  FDRE \tmp_18_reg_1643_reg[10] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_18_reg_1643_reg[10]_0 ),
        .Q(tmp_18_reg_1643[10]),
        .R(1'b0));
  FDRE \tmp_18_reg_1643_reg[11] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_18_reg_1643_reg[11]_0 ),
        .Q(tmp_18_reg_1643[11]),
        .R(1'b0));
  FDRE \tmp_18_reg_1643_reg[12] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_18_reg_1643_reg[12]_0 ),
        .Q(tmp_18_reg_1643[12]),
        .R(1'b0));
  FDRE \tmp_18_reg_1643_reg[13] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_18_reg_1643_reg[13]_0 ),
        .Q(tmp_18_reg_1643[13]),
        .R(1'b0));
  FDRE \tmp_18_reg_1643_reg[14] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_18_reg_1643_reg[14]_0 ),
        .Q(tmp_18_reg_1643[14]),
        .R(1'b0));
  FDRE \tmp_18_reg_1643_reg[15] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_18_reg_1643_reg[15]_0 ),
        .Q(tmp_18_reg_1643[15]),
        .R(1'b0));
  FDRE \tmp_18_reg_1643_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_18_reg_1643_reg[1]_0 ),
        .Q(tmp_18_reg_1643[1]),
        .R(1'b0));
  FDRE \tmp_18_reg_1643_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_18_reg_1643_reg[2]_0 ),
        .Q(tmp_18_reg_1643[2]),
        .R(1'b0));
  FDRE \tmp_18_reg_1643_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_18_reg_1643_reg[3]_0 ),
        .Q(tmp_18_reg_1643[3]),
        .R(1'b0));
  FDRE \tmp_18_reg_1643_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_18_reg_1643_reg[4]_0 ),
        .Q(tmp_18_reg_1643[4]),
        .R(1'b0));
  FDRE \tmp_18_reg_1643_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_18_reg_1643_reg[5]_0 ),
        .Q(tmp_18_reg_1643[5]),
        .R(1'b0));
  FDRE \tmp_18_reg_1643_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_18_reg_1643_reg[6]_0 ),
        .Q(tmp_18_reg_1643[6]),
        .R(1'b0));
  FDRE \tmp_18_reg_1643_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_18_reg_1643_reg[7]_0 ),
        .Q(tmp_18_reg_1643[7]),
        .R(1'b0));
  FDRE \tmp_18_reg_1643_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_18_reg_1643_reg[8]_0 ),
        .Q(tmp_18_reg_1643[8]),
        .R(1'b0));
  FDRE \tmp_18_reg_1643_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_18_reg_1643_reg[9]_0 ),
        .Q(tmp_18_reg_1643[9]),
        .R(1'b0));
  FDRE \tmp_20_reg_1658_pp0_iter3_reg_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_20_reg_1658[0]),
        .Q(tmp_20_reg_1658_pp0_iter3_reg[0]),
        .R(1'b0));
  FDRE \tmp_20_reg_1658_pp0_iter3_reg_reg[10] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_20_reg_1658[10]),
        .Q(tmp_20_reg_1658_pp0_iter3_reg[10]),
        .R(1'b0));
  FDRE \tmp_20_reg_1658_pp0_iter3_reg_reg[11] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_20_reg_1658[11]),
        .Q(tmp_20_reg_1658_pp0_iter3_reg[11]),
        .R(1'b0));
  FDRE \tmp_20_reg_1658_pp0_iter3_reg_reg[12] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_20_reg_1658[12]),
        .Q(tmp_20_reg_1658_pp0_iter3_reg[12]),
        .R(1'b0));
  FDRE \tmp_20_reg_1658_pp0_iter3_reg_reg[13] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_20_reg_1658[13]),
        .Q(tmp_20_reg_1658_pp0_iter3_reg[13]),
        .R(1'b0));
  FDRE \tmp_20_reg_1658_pp0_iter3_reg_reg[14] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_20_reg_1658[14]),
        .Q(tmp_20_reg_1658_pp0_iter3_reg[14]),
        .R(1'b0));
  FDRE \tmp_20_reg_1658_pp0_iter3_reg_reg[15] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_20_reg_1658[15]),
        .Q(tmp_20_reg_1658_pp0_iter3_reg[15]),
        .R(1'b0));
  FDRE \tmp_20_reg_1658_pp0_iter3_reg_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_20_reg_1658[1]),
        .Q(tmp_20_reg_1658_pp0_iter3_reg[1]),
        .R(1'b0));
  FDRE \tmp_20_reg_1658_pp0_iter3_reg_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_20_reg_1658[2]),
        .Q(tmp_20_reg_1658_pp0_iter3_reg[2]),
        .R(1'b0));
  FDRE \tmp_20_reg_1658_pp0_iter3_reg_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_20_reg_1658[3]),
        .Q(tmp_20_reg_1658_pp0_iter3_reg[3]),
        .R(1'b0));
  FDRE \tmp_20_reg_1658_pp0_iter3_reg_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_20_reg_1658[4]),
        .Q(tmp_20_reg_1658_pp0_iter3_reg[4]),
        .R(1'b0));
  FDRE \tmp_20_reg_1658_pp0_iter3_reg_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_20_reg_1658[5]),
        .Q(tmp_20_reg_1658_pp0_iter3_reg[5]),
        .R(1'b0));
  FDRE \tmp_20_reg_1658_pp0_iter3_reg_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_20_reg_1658[6]),
        .Q(tmp_20_reg_1658_pp0_iter3_reg[6]),
        .R(1'b0));
  FDRE \tmp_20_reg_1658_pp0_iter3_reg_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_20_reg_1658[7]),
        .Q(tmp_20_reg_1658_pp0_iter3_reg[7]),
        .R(1'b0));
  FDRE \tmp_20_reg_1658_pp0_iter3_reg_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_20_reg_1658[8]),
        .Q(tmp_20_reg_1658_pp0_iter3_reg[8]),
        .R(1'b0));
  FDRE \tmp_20_reg_1658_pp0_iter3_reg_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_20_reg_1658[9]),
        .Q(tmp_20_reg_1658_pp0_iter3_reg[9]),
        .R(1'b0));
  FDRE \tmp_20_reg_1658_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_20_reg_1658_reg[15]_0 [0]),
        .Q(tmp_20_reg_1658[0]),
        .R(1'b0));
  FDRE \tmp_20_reg_1658_reg[10] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_20_reg_1658_reg[15]_0 [10]),
        .Q(tmp_20_reg_1658[10]),
        .R(1'b0));
  FDRE \tmp_20_reg_1658_reg[11] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_20_reg_1658_reg[15]_0 [11]),
        .Q(tmp_20_reg_1658[11]),
        .R(1'b0));
  FDRE \tmp_20_reg_1658_reg[12] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_20_reg_1658_reg[15]_0 [12]),
        .Q(tmp_20_reg_1658[12]),
        .R(1'b0));
  FDRE \tmp_20_reg_1658_reg[13] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_20_reg_1658_reg[15]_0 [13]),
        .Q(tmp_20_reg_1658[13]),
        .R(1'b0));
  FDRE \tmp_20_reg_1658_reg[14] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_20_reg_1658_reg[15]_0 [14]),
        .Q(tmp_20_reg_1658[14]),
        .R(1'b0));
  FDRE \tmp_20_reg_1658_reg[15] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_20_reg_1658_reg[15]_0 [15]),
        .Q(tmp_20_reg_1658[15]),
        .R(1'b0));
  FDRE \tmp_20_reg_1658_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_20_reg_1658_reg[15]_0 [1]),
        .Q(tmp_20_reg_1658[1]),
        .R(1'b0));
  FDRE \tmp_20_reg_1658_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_20_reg_1658_reg[15]_0 [2]),
        .Q(tmp_20_reg_1658[2]),
        .R(1'b0));
  FDRE \tmp_20_reg_1658_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_20_reg_1658_reg[15]_0 [3]),
        .Q(tmp_20_reg_1658[3]),
        .R(1'b0));
  FDRE \tmp_20_reg_1658_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_20_reg_1658_reg[15]_0 [4]),
        .Q(tmp_20_reg_1658[4]),
        .R(1'b0));
  FDRE \tmp_20_reg_1658_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_20_reg_1658_reg[15]_0 [5]),
        .Q(tmp_20_reg_1658[5]),
        .R(1'b0));
  FDRE \tmp_20_reg_1658_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_20_reg_1658_reg[15]_0 [6]),
        .Q(tmp_20_reg_1658[6]),
        .R(1'b0));
  FDRE \tmp_20_reg_1658_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_20_reg_1658_reg[15]_0 [7]),
        .Q(tmp_20_reg_1658[7]),
        .R(1'b0));
  FDRE \tmp_20_reg_1658_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_20_reg_1658_reg[15]_0 [8]),
        .Q(tmp_20_reg_1658[8]),
        .R(1'b0));
  FDRE \tmp_20_reg_1658_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_20_reg_1658_reg[15]_0 [9]),
        .Q(tmp_20_reg_1658[9]),
        .R(1'b0));
  (* srl_bus_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_22_reg_1633_pp0_iter3_reg_reg " *) 
  (* srl_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_22_reg_1633_pp0_iter3_reg_reg[0]_srl4 " *) 
  SRL16E \tmp_22_reg_1633_pp0_iter3_reg_reg[0]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(\tmp_22_reg_1633_pp0_iter4_reg_reg[0]__0_0 ),
        .Q(\tmp_22_reg_1633_pp0_iter3_reg_reg[0]_srl4_n_0 ));
  (* srl_bus_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_22_reg_1633_pp0_iter3_reg_reg " *) 
  (* srl_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_22_reg_1633_pp0_iter3_reg_reg[10]_srl4 " *) 
  SRL16E \tmp_22_reg_1633_pp0_iter3_reg_reg[10]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(\tmp_22_reg_1633_pp0_iter4_reg_reg[10]__0_0 ),
        .Q(\tmp_22_reg_1633_pp0_iter3_reg_reg[10]_srl4_n_0 ));
  (* srl_bus_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_22_reg_1633_pp0_iter3_reg_reg " *) 
  (* srl_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_22_reg_1633_pp0_iter3_reg_reg[11]_srl4 " *) 
  SRL16E \tmp_22_reg_1633_pp0_iter3_reg_reg[11]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(\tmp_22_reg_1633_pp0_iter4_reg_reg[11]__0_0 ),
        .Q(\tmp_22_reg_1633_pp0_iter3_reg_reg[11]_srl4_n_0 ));
  (* srl_bus_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_22_reg_1633_pp0_iter3_reg_reg " *) 
  (* srl_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_22_reg_1633_pp0_iter3_reg_reg[12]_srl4 " *) 
  SRL16E \tmp_22_reg_1633_pp0_iter3_reg_reg[12]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(\tmp_22_reg_1633_pp0_iter4_reg_reg[12]__0_0 ),
        .Q(\tmp_22_reg_1633_pp0_iter3_reg_reg[12]_srl4_n_0 ));
  (* srl_bus_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_22_reg_1633_pp0_iter3_reg_reg " *) 
  (* srl_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_22_reg_1633_pp0_iter3_reg_reg[13]_srl4 " *) 
  SRL16E \tmp_22_reg_1633_pp0_iter3_reg_reg[13]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(\tmp_22_reg_1633_pp0_iter4_reg_reg[13]__0_0 ),
        .Q(\tmp_22_reg_1633_pp0_iter3_reg_reg[13]_srl4_n_0 ));
  (* srl_bus_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_22_reg_1633_pp0_iter3_reg_reg " *) 
  (* srl_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_22_reg_1633_pp0_iter3_reg_reg[14]_srl4 " *) 
  SRL16E \tmp_22_reg_1633_pp0_iter3_reg_reg[14]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(\tmp_22_reg_1633_pp0_iter4_reg_reg[14]__0_0 ),
        .Q(\tmp_22_reg_1633_pp0_iter3_reg_reg[14]_srl4_n_0 ));
  (* srl_bus_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_22_reg_1633_pp0_iter3_reg_reg " *) 
  (* srl_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_22_reg_1633_pp0_iter3_reg_reg[15]_srl4 " *) 
  SRL16E \tmp_22_reg_1633_pp0_iter3_reg_reg[15]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(\tmp_22_reg_1633_pp0_iter4_reg_reg[15]__0_0 ),
        .Q(\tmp_22_reg_1633_pp0_iter3_reg_reg[15]_srl4_n_0 ));
  (* srl_bus_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_22_reg_1633_pp0_iter3_reg_reg " *) 
  (* srl_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_22_reg_1633_pp0_iter3_reg_reg[1]_srl4 " *) 
  SRL16E \tmp_22_reg_1633_pp0_iter3_reg_reg[1]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(\tmp_22_reg_1633_pp0_iter4_reg_reg[1]__0_0 ),
        .Q(\tmp_22_reg_1633_pp0_iter3_reg_reg[1]_srl4_n_0 ));
  (* srl_bus_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_22_reg_1633_pp0_iter3_reg_reg " *) 
  (* srl_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_22_reg_1633_pp0_iter3_reg_reg[2]_srl4 " *) 
  SRL16E \tmp_22_reg_1633_pp0_iter3_reg_reg[2]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(\tmp_22_reg_1633_pp0_iter4_reg_reg[2]__0_0 ),
        .Q(\tmp_22_reg_1633_pp0_iter3_reg_reg[2]_srl4_n_0 ));
  (* srl_bus_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_22_reg_1633_pp0_iter3_reg_reg " *) 
  (* srl_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_22_reg_1633_pp0_iter3_reg_reg[3]_srl4 " *) 
  SRL16E \tmp_22_reg_1633_pp0_iter3_reg_reg[3]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(\tmp_22_reg_1633_pp0_iter4_reg_reg[3]__0_0 ),
        .Q(\tmp_22_reg_1633_pp0_iter3_reg_reg[3]_srl4_n_0 ));
  (* srl_bus_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_22_reg_1633_pp0_iter3_reg_reg " *) 
  (* srl_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_22_reg_1633_pp0_iter3_reg_reg[4]_srl4 " *) 
  SRL16E \tmp_22_reg_1633_pp0_iter3_reg_reg[4]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(\tmp_22_reg_1633_pp0_iter4_reg_reg[4]__0_0 ),
        .Q(\tmp_22_reg_1633_pp0_iter3_reg_reg[4]_srl4_n_0 ));
  (* srl_bus_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_22_reg_1633_pp0_iter3_reg_reg " *) 
  (* srl_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_22_reg_1633_pp0_iter3_reg_reg[5]_srl4 " *) 
  SRL16E \tmp_22_reg_1633_pp0_iter3_reg_reg[5]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(\tmp_22_reg_1633_pp0_iter4_reg_reg[5]__0_0 ),
        .Q(\tmp_22_reg_1633_pp0_iter3_reg_reg[5]_srl4_n_0 ));
  (* srl_bus_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_22_reg_1633_pp0_iter3_reg_reg " *) 
  (* srl_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_22_reg_1633_pp0_iter3_reg_reg[6]_srl4 " *) 
  SRL16E \tmp_22_reg_1633_pp0_iter3_reg_reg[6]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(\tmp_22_reg_1633_pp0_iter4_reg_reg[6]__0_0 ),
        .Q(\tmp_22_reg_1633_pp0_iter3_reg_reg[6]_srl4_n_0 ));
  (* srl_bus_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_22_reg_1633_pp0_iter3_reg_reg " *) 
  (* srl_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_22_reg_1633_pp0_iter3_reg_reg[7]_srl4 " *) 
  SRL16E \tmp_22_reg_1633_pp0_iter3_reg_reg[7]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(\tmp_22_reg_1633_pp0_iter4_reg_reg[7]__0_0 ),
        .Q(\tmp_22_reg_1633_pp0_iter3_reg_reg[7]_srl4_n_0 ));
  (* srl_bus_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_22_reg_1633_pp0_iter3_reg_reg " *) 
  (* srl_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_22_reg_1633_pp0_iter3_reg_reg[8]_srl4 " *) 
  SRL16E \tmp_22_reg_1633_pp0_iter3_reg_reg[8]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(\tmp_22_reg_1633_pp0_iter4_reg_reg[8]__0_0 ),
        .Q(\tmp_22_reg_1633_pp0_iter3_reg_reg[8]_srl4_n_0 ));
  (* srl_bus_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_22_reg_1633_pp0_iter3_reg_reg " *) 
  (* srl_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_22_reg_1633_pp0_iter3_reg_reg[9]_srl4 " *) 
  SRL16E \tmp_22_reg_1633_pp0_iter3_reg_reg[9]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(\tmp_22_reg_1633_pp0_iter4_reg_reg[9]__0_0 ),
        .Q(\tmp_22_reg_1633_pp0_iter3_reg_reg[9]_srl4_n_0 ));
  FDRE \tmp_22_reg_1633_pp0_iter4_reg_reg[0]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_22_reg_1633_pp0_iter3_reg_reg[0]_srl4_n_0 ),
        .Q(tmp_22_reg_1633_pp0_iter4_reg[0]),
        .R(1'b0));
  FDRE \tmp_22_reg_1633_pp0_iter4_reg_reg[10]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_22_reg_1633_pp0_iter3_reg_reg[10]_srl4_n_0 ),
        .Q(tmp_22_reg_1633_pp0_iter4_reg[10]),
        .R(1'b0));
  FDRE \tmp_22_reg_1633_pp0_iter4_reg_reg[11]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_22_reg_1633_pp0_iter3_reg_reg[11]_srl4_n_0 ),
        .Q(tmp_22_reg_1633_pp0_iter4_reg[11]),
        .R(1'b0));
  FDRE \tmp_22_reg_1633_pp0_iter4_reg_reg[12]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_22_reg_1633_pp0_iter3_reg_reg[12]_srl4_n_0 ),
        .Q(tmp_22_reg_1633_pp0_iter4_reg[12]),
        .R(1'b0));
  FDRE \tmp_22_reg_1633_pp0_iter4_reg_reg[13]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_22_reg_1633_pp0_iter3_reg_reg[13]_srl4_n_0 ),
        .Q(tmp_22_reg_1633_pp0_iter4_reg[13]),
        .R(1'b0));
  FDRE \tmp_22_reg_1633_pp0_iter4_reg_reg[14]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_22_reg_1633_pp0_iter3_reg_reg[14]_srl4_n_0 ),
        .Q(tmp_22_reg_1633_pp0_iter4_reg[14]),
        .R(1'b0));
  FDRE \tmp_22_reg_1633_pp0_iter4_reg_reg[15]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_22_reg_1633_pp0_iter3_reg_reg[15]_srl4_n_0 ),
        .Q(tmp_22_reg_1633_pp0_iter4_reg[15]),
        .R(1'b0));
  FDRE \tmp_22_reg_1633_pp0_iter4_reg_reg[1]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_22_reg_1633_pp0_iter3_reg_reg[1]_srl4_n_0 ),
        .Q(tmp_22_reg_1633_pp0_iter4_reg[1]),
        .R(1'b0));
  FDRE \tmp_22_reg_1633_pp0_iter4_reg_reg[2]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_22_reg_1633_pp0_iter3_reg_reg[2]_srl4_n_0 ),
        .Q(tmp_22_reg_1633_pp0_iter4_reg[2]),
        .R(1'b0));
  FDRE \tmp_22_reg_1633_pp0_iter4_reg_reg[3]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_22_reg_1633_pp0_iter3_reg_reg[3]_srl4_n_0 ),
        .Q(tmp_22_reg_1633_pp0_iter4_reg[3]),
        .R(1'b0));
  FDRE \tmp_22_reg_1633_pp0_iter4_reg_reg[4]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_22_reg_1633_pp0_iter3_reg_reg[4]_srl4_n_0 ),
        .Q(tmp_22_reg_1633_pp0_iter4_reg[4]),
        .R(1'b0));
  FDRE \tmp_22_reg_1633_pp0_iter4_reg_reg[5]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_22_reg_1633_pp0_iter3_reg_reg[5]_srl4_n_0 ),
        .Q(tmp_22_reg_1633_pp0_iter4_reg[5]),
        .R(1'b0));
  FDRE \tmp_22_reg_1633_pp0_iter4_reg_reg[6]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_22_reg_1633_pp0_iter3_reg_reg[6]_srl4_n_0 ),
        .Q(tmp_22_reg_1633_pp0_iter4_reg[6]),
        .R(1'b0));
  FDRE \tmp_22_reg_1633_pp0_iter4_reg_reg[7]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_22_reg_1633_pp0_iter3_reg_reg[7]_srl4_n_0 ),
        .Q(tmp_22_reg_1633_pp0_iter4_reg[7]),
        .R(1'b0));
  FDRE \tmp_22_reg_1633_pp0_iter4_reg_reg[8]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_22_reg_1633_pp0_iter3_reg_reg[8]_srl4_n_0 ),
        .Q(tmp_22_reg_1633_pp0_iter4_reg[8]),
        .R(1'b0));
  FDRE \tmp_22_reg_1633_pp0_iter4_reg_reg[9]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_22_reg_1633_pp0_iter3_reg_reg[9]_srl4_n_0 ),
        .Q(tmp_22_reg_1633_pp0_iter4_reg[9]),
        .R(1'b0));
  (* srl_bus_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_24_reg_1648_pp0_iter4_reg_reg " *) 
  (* srl_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_24_reg_1648_pp0_iter4_reg_reg[0]_srl4 " *) 
  SRL16E \tmp_24_reg_1648_pp0_iter4_reg_reg[0]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(\tmp_24_reg_1648_pp0_iter5_reg_reg[0]__0_0 ),
        .Q(\tmp_24_reg_1648_pp0_iter4_reg_reg[0]_srl4_n_0 ));
  (* srl_bus_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_24_reg_1648_pp0_iter4_reg_reg " *) 
  (* srl_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_24_reg_1648_pp0_iter4_reg_reg[10]_srl4 " *) 
  SRL16E \tmp_24_reg_1648_pp0_iter4_reg_reg[10]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(\tmp_24_reg_1648_pp0_iter5_reg_reg[10]__0_0 ),
        .Q(\tmp_24_reg_1648_pp0_iter4_reg_reg[10]_srl4_n_0 ));
  (* srl_bus_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_24_reg_1648_pp0_iter4_reg_reg " *) 
  (* srl_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_24_reg_1648_pp0_iter4_reg_reg[11]_srl4 " *) 
  SRL16E \tmp_24_reg_1648_pp0_iter4_reg_reg[11]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(\tmp_24_reg_1648_pp0_iter5_reg_reg[11]__0_0 ),
        .Q(\tmp_24_reg_1648_pp0_iter4_reg_reg[11]_srl4_n_0 ));
  (* srl_bus_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_24_reg_1648_pp0_iter4_reg_reg " *) 
  (* srl_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_24_reg_1648_pp0_iter4_reg_reg[12]_srl4 " *) 
  SRL16E \tmp_24_reg_1648_pp0_iter4_reg_reg[12]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(\tmp_24_reg_1648_pp0_iter5_reg_reg[12]__0_0 ),
        .Q(\tmp_24_reg_1648_pp0_iter4_reg_reg[12]_srl4_n_0 ));
  (* srl_bus_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_24_reg_1648_pp0_iter4_reg_reg " *) 
  (* srl_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_24_reg_1648_pp0_iter4_reg_reg[13]_srl4 " *) 
  SRL16E \tmp_24_reg_1648_pp0_iter4_reg_reg[13]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(\tmp_24_reg_1648_pp0_iter5_reg_reg[13]__0_0 ),
        .Q(\tmp_24_reg_1648_pp0_iter4_reg_reg[13]_srl4_n_0 ));
  (* srl_bus_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_24_reg_1648_pp0_iter4_reg_reg " *) 
  (* srl_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_24_reg_1648_pp0_iter4_reg_reg[14]_srl4 " *) 
  SRL16E \tmp_24_reg_1648_pp0_iter4_reg_reg[14]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(\tmp_24_reg_1648_pp0_iter5_reg_reg[14]__0_0 ),
        .Q(\tmp_24_reg_1648_pp0_iter4_reg_reg[14]_srl4_n_0 ));
  (* srl_bus_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_24_reg_1648_pp0_iter4_reg_reg " *) 
  (* srl_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_24_reg_1648_pp0_iter4_reg_reg[15]_srl4 " *) 
  SRL16E \tmp_24_reg_1648_pp0_iter4_reg_reg[15]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(\tmp_24_reg_1648_pp0_iter5_reg_reg[15]__0_0 ),
        .Q(\tmp_24_reg_1648_pp0_iter4_reg_reg[15]_srl4_n_0 ));
  (* srl_bus_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_24_reg_1648_pp0_iter4_reg_reg " *) 
  (* srl_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_24_reg_1648_pp0_iter4_reg_reg[1]_srl4 " *) 
  SRL16E \tmp_24_reg_1648_pp0_iter4_reg_reg[1]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(\tmp_24_reg_1648_pp0_iter5_reg_reg[1]__0_0 ),
        .Q(\tmp_24_reg_1648_pp0_iter4_reg_reg[1]_srl4_n_0 ));
  (* srl_bus_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_24_reg_1648_pp0_iter4_reg_reg " *) 
  (* srl_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_24_reg_1648_pp0_iter4_reg_reg[2]_srl4 " *) 
  SRL16E \tmp_24_reg_1648_pp0_iter4_reg_reg[2]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(\tmp_24_reg_1648_pp0_iter5_reg_reg[2]__0_0 ),
        .Q(\tmp_24_reg_1648_pp0_iter4_reg_reg[2]_srl4_n_0 ));
  (* srl_bus_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_24_reg_1648_pp0_iter4_reg_reg " *) 
  (* srl_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_24_reg_1648_pp0_iter4_reg_reg[3]_srl4 " *) 
  SRL16E \tmp_24_reg_1648_pp0_iter4_reg_reg[3]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(\tmp_24_reg_1648_pp0_iter5_reg_reg[3]__0_0 ),
        .Q(\tmp_24_reg_1648_pp0_iter4_reg_reg[3]_srl4_n_0 ));
  (* srl_bus_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_24_reg_1648_pp0_iter4_reg_reg " *) 
  (* srl_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_24_reg_1648_pp0_iter4_reg_reg[4]_srl4 " *) 
  SRL16E \tmp_24_reg_1648_pp0_iter4_reg_reg[4]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(\tmp_24_reg_1648_pp0_iter5_reg_reg[4]__0_0 ),
        .Q(\tmp_24_reg_1648_pp0_iter4_reg_reg[4]_srl4_n_0 ));
  (* srl_bus_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_24_reg_1648_pp0_iter4_reg_reg " *) 
  (* srl_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_24_reg_1648_pp0_iter4_reg_reg[5]_srl4 " *) 
  SRL16E \tmp_24_reg_1648_pp0_iter4_reg_reg[5]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(\tmp_24_reg_1648_pp0_iter5_reg_reg[5]__0_0 ),
        .Q(\tmp_24_reg_1648_pp0_iter4_reg_reg[5]_srl4_n_0 ));
  (* srl_bus_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_24_reg_1648_pp0_iter4_reg_reg " *) 
  (* srl_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_24_reg_1648_pp0_iter4_reg_reg[6]_srl4 " *) 
  SRL16E \tmp_24_reg_1648_pp0_iter4_reg_reg[6]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(\tmp_24_reg_1648_pp0_iter5_reg_reg[6]__0_0 ),
        .Q(\tmp_24_reg_1648_pp0_iter4_reg_reg[6]_srl4_n_0 ));
  (* srl_bus_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_24_reg_1648_pp0_iter4_reg_reg " *) 
  (* srl_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_24_reg_1648_pp0_iter4_reg_reg[7]_srl4 " *) 
  SRL16E \tmp_24_reg_1648_pp0_iter4_reg_reg[7]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(\tmp_24_reg_1648_pp0_iter5_reg_reg[7]__0_0 ),
        .Q(\tmp_24_reg_1648_pp0_iter4_reg_reg[7]_srl4_n_0 ));
  (* srl_bus_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_24_reg_1648_pp0_iter4_reg_reg " *) 
  (* srl_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_24_reg_1648_pp0_iter4_reg_reg[8]_srl4 " *) 
  SRL16E \tmp_24_reg_1648_pp0_iter4_reg_reg[8]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(\tmp_24_reg_1648_pp0_iter5_reg_reg[8]__0_0 ),
        .Q(\tmp_24_reg_1648_pp0_iter4_reg_reg[8]_srl4_n_0 ));
  (* srl_bus_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_24_reg_1648_pp0_iter4_reg_reg " *) 
  (* srl_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_24_reg_1648_pp0_iter4_reg_reg[9]_srl4 " *) 
  SRL16E \tmp_24_reg_1648_pp0_iter4_reg_reg[9]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(\tmp_24_reg_1648_pp0_iter5_reg_reg[9]__0_0 ),
        .Q(\tmp_24_reg_1648_pp0_iter4_reg_reg[9]_srl4_n_0 ));
  FDRE \tmp_24_reg_1648_pp0_iter5_reg_reg[0]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_24_reg_1648_pp0_iter4_reg_reg[0]_srl4_n_0 ),
        .Q(tmp_24_reg_1648_pp0_iter5_reg[0]),
        .R(1'b0));
  FDRE \tmp_24_reg_1648_pp0_iter5_reg_reg[10]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_24_reg_1648_pp0_iter4_reg_reg[10]_srl4_n_0 ),
        .Q(tmp_24_reg_1648_pp0_iter5_reg[10]),
        .R(1'b0));
  FDRE \tmp_24_reg_1648_pp0_iter5_reg_reg[11]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_24_reg_1648_pp0_iter4_reg_reg[11]_srl4_n_0 ),
        .Q(tmp_24_reg_1648_pp0_iter5_reg[11]),
        .R(1'b0));
  FDRE \tmp_24_reg_1648_pp0_iter5_reg_reg[12]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_24_reg_1648_pp0_iter4_reg_reg[12]_srl4_n_0 ),
        .Q(tmp_24_reg_1648_pp0_iter5_reg[12]),
        .R(1'b0));
  FDRE \tmp_24_reg_1648_pp0_iter5_reg_reg[13]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_24_reg_1648_pp0_iter4_reg_reg[13]_srl4_n_0 ),
        .Q(tmp_24_reg_1648_pp0_iter5_reg[13]),
        .R(1'b0));
  FDRE \tmp_24_reg_1648_pp0_iter5_reg_reg[14]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_24_reg_1648_pp0_iter4_reg_reg[14]_srl4_n_0 ),
        .Q(tmp_24_reg_1648_pp0_iter5_reg[14]),
        .R(1'b0));
  FDRE \tmp_24_reg_1648_pp0_iter5_reg_reg[15]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_24_reg_1648_pp0_iter4_reg_reg[15]_srl4_n_0 ),
        .Q(tmp_24_reg_1648_pp0_iter5_reg[15]),
        .R(1'b0));
  FDRE \tmp_24_reg_1648_pp0_iter5_reg_reg[1]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_24_reg_1648_pp0_iter4_reg_reg[1]_srl4_n_0 ),
        .Q(tmp_24_reg_1648_pp0_iter5_reg[1]),
        .R(1'b0));
  FDRE \tmp_24_reg_1648_pp0_iter5_reg_reg[2]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_24_reg_1648_pp0_iter4_reg_reg[2]_srl4_n_0 ),
        .Q(tmp_24_reg_1648_pp0_iter5_reg[2]),
        .R(1'b0));
  FDRE \tmp_24_reg_1648_pp0_iter5_reg_reg[3]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_24_reg_1648_pp0_iter4_reg_reg[3]_srl4_n_0 ),
        .Q(tmp_24_reg_1648_pp0_iter5_reg[3]),
        .R(1'b0));
  FDRE \tmp_24_reg_1648_pp0_iter5_reg_reg[4]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_24_reg_1648_pp0_iter4_reg_reg[4]_srl4_n_0 ),
        .Q(tmp_24_reg_1648_pp0_iter5_reg[4]),
        .R(1'b0));
  FDRE \tmp_24_reg_1648_pp0_iter5_reg_reg[5]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_24_reg_1648_pp0_iter4_reg_reg[5]_srl4_n_0 ),
        .Q(tmp_24_reg_1648_pp0_iter5_reg[5]),
        .R(1'b0));
  FDRE \tmp_24_reg_1648_pp0_iter5_reg_reg[6]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_24_reg_1648_pp0_iter4_reg_reg[6]_srl4_n_0 ),
        .Q(tmp_24_reg_1648_pp0_iter5_reg[6]),
        .R(1'b0));
  FDRE \tmp_24_reg_1648_pp0_iter5_reg_reg[7]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_24_reg_1648_pp0_iter4_reg_reg[7]_srl4_n_0 ),
        .Q(tmp_24_reg_1648_pp0_iter5_reg[7]),
        .R(1'b0));
  FDRE \tmp_24_reg_1648_pp0_iter5_reg_reg[8]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_24_reg_1648_pp0_iter4_reg_reg[8]_srl4_n_0 ),
        .Q(tmp_24_reg_1648_pp0_iter5_reg[8]),
        .R(1'b0));
  FDRE \tmp_24_reg_1648_pp0_iter5_reg_reg[9]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_24_reg_1648_pp0_iter4_reg_reg[9]_srl4_n_0 ),
        .Q(tmp_24_reg_1648_pp0_iter5_reg[9]),
        .R(1'b0));
  (* srl_bus_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_26_reg_1663_pp0_iter5_reg_reg " *) 
  (* srl_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_26_reg_1663_pp0_iter5_reg_reg[0]_srl4 " *) 
  SRL16E \tmp_26_reg_1663_pp0_iter5_reg_reg[0]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(\tmp_26_reg_1663_pp0_iter6_reg_reg[0]__0_0 ),
        .Q(\tmp_26_reg_1663_pp0_iter5_reg_reg[0]_srl4_n_0 ));
  (* srl_bus_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_26_reg_1663_pp0_iter5_reg_reg " *) 
  (* srl_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_26_reg_1663_pp0_iter5_reg_reg[10]_srl4 " *) 
  SRL16E \tmp_26_reg_1663_pp0_iter5_reg_reg[10]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(\tmp_26_reg_1663_pp0_iter6_reg_reg[10]__0_0 ),
        .Q(\tmp_26_reg_1663_pp0_iter5_reg_reg[10]_srl4_n_0 ));
  (* srl_bus_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_26_reg_1663_pp0_iter5_reg_reg " *) 
  (* srl_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_26_reg_1663_pp0_iter5_reg_reg[11]_srl4 " *) 
  SRL16E \tmp_26_reg_1663_pp0_iter5_reg_reg[11]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(\tmp_26_reg_1663_pp0_iter6_reg_reg[11]__0_0 ),
        .Q(\tmp_26_reg_1663_pp0_iter5_reg_reg[11]_srl4_n_0 ));
  (* srl_bus_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_26_reg_1663_pp0_iter5_reg_reg " *) 
  (* srl_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_26_reg_1663_pp0_iter5_reg_reg[12]_srl4 " *) 
  SRL16E \tmp_26_reg_1663_pp0_iter5_reg_reg[12]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(\tmp_26_reg_1663_pp0_iter6_reg_reg[12]__0_0 ),
        .Q(\tmp_26_reg_1663_pp0_iter5_reg_reg[12]_srl4_n_0 ));
  (* srl_bus_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_26_reg_1663_pp0_iter5_reg_reg " *) 
  (* srl_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_26_reg_1663_pp0_iter5_reg_reg[13]_srl4 " *) 
  SRL16E \tmp_26_reg_1663_pp0_iter5_reg_reg[13]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(\tmp_26_reg_1663_pp0_iter6_reg_reg[13]__0_0 ),
        .Q(\tmp_26_reg_1663_pp0_iter5_reg_reg[13]_srl4_n_0 ));
  (* srl_bus_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_26_reg_1663_pp0_iter5_reg_reg " *) 
  (* srl_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_26_reg_1663_pp0_iter5_reg_reg[14]_srl4 " *) 
  SRL16E \tmp_26_reg_1663_pp0_iter5_reg_reg[14]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(\tmp_26_reg_1663_pp0_iter6_reg_reg[14]__0_0 ),
        .Q(\tmp_26_reg_1663_pp0_iter5_reg_reg[14]_srl4_n_0 ));
  (* srl_bus_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_26_reg_1663_pp0_iter5_reg_reg " *) 
  (* srl_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_26_reg_1663_pp0_iter5_reg_reg[15]_srl4 " *) 
  SRL16E \tmp_26_reg_1663_pp0_iter5_reg_reg[15]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(\tmp_26_reg_1663_pp0_iter6_reg_reg[15]__0_0 ),
        .Q(\tmp_26_reg_1663_pp0_iter5_reg_reg[15]_srl4_n_0 ));
  (* srl_bus_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_26_reg_1663_pp0_iter5_reg_reg " *) 
  (* srl_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_26_reg_1663_pp0_iter5_reg_reg[1]_srl4 " *) 
  SRL16E \tmp_26_reg_1663_pp0_iter5_reg_reg[1]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(\tmp_26_reg_1663_pp0_iter6_reg_reg[1]__0_0 ),
        .Q(\tmp_26_reg_1663_pp0_iter5_reg_reg[1]_srl4_n_0 ));
  (* srl_bus_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_26_reg_1663_pp0_iter5_reg_reg " *) 
  (* srl_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_26_reg_1663_pp0_iter5_reg_reg[2]_srl4 " *) 
  SRL16E \tmp_26_reg_1663_pp0_iter5_reg_reg[2]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(\tmp_26_reg_1663_pp0_iter6_reg_reg[2]__0_0 ),
        .Q(\tmp_26_reg_1663_pp0_iter5_reg_reg[2]_srl4_n_0 ));
  (* srl_bus_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_26_reg_1663_pp0_iter5_reg_reg " *) 
  (* srl_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_26_reg_1663_pp0_iter5_reg_reg[3]_srl4 " *) 
  SRL16E \tmp_26_reg_1663_pp0_iter5_reg_reg[3]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(\tmp_26_reg_1663_pp0_iter6_reg_reg[3]__0_0 ),
        .Q(\tmp_26_reg_1663_pp0_iter5_reg_reg[3]_srl4_n_0 ));
  (* srl_bus_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_26_reg_1663_pp0_iter5_reg_reg " *) 
  (* srl_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_26_reg_1663_pp0_iter5_reg_reg[4]_srl4 " *) 
  SRL16E \tmp_26_reg_1663_pp0_iter5_reg_reg[4]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(\tmp_26_reg_1663_pp0_iter6_reg_reg[4]__0_0 ),
        .Q(\tmp_26_reg_1663_pp0_iter5_reg_reg[4]_srl4_n_0 ));
  (* srl_bus_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_26_reg_1663_pp0_iter5_reg_reg " *) 
  (* srl_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_26_reg_1663_pp0_iter5_reg_reg[5]_srl4 " *) 
  SRL16E \tmp_26_reg_1663_pp0_iter5_reg_reg[5]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(\tmp_26_reg_1663_pp0_iter6_reg_reg[5]__0_0 ),
        .Q(\tmp_26_reg_1663_pp0_iter5_reg_reg[5]_srl4_n_0 ));
  (* srl_bus_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_26_reg_1663_pp0_iter5_reg_reg " *) 
  (* srl_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_26_reg_1663_pp0_iter5_reg_reg[6]_srl4 " *) 
  SRL16E \tmp_26_reg_1663_pp0_iter5_reg_reg[6]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(\tmp_26_reg_1663_pp0_iter6_reg_reg[6]__0_0 ),
        .Q(\tmp_26_reg_1663_pp0_iter5_reg_reg[6]_srl4_n_0 ));
  (* srl_bus_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_26_reg_1663_pp0_iter5_reg_reg " *) 
  (* srl_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_26_reg_1663_pp0_iter5_reg_reg[7]_srl4 " *) 
  SRL16E \tmp_26_reg_1663_pp0_iter5_reg_reg[7]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(\tmp_26_reg_1663_pp0_iter6_reg_reg[7]__0_0 ),
        .Q(\tmp_26_reg_1663_pp0_iter5_reg_reg[7]_srl4_n_0 ));
  (* srl_bus_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_26_reg_1663_pp0_iter5_reg_reg " *) 
  (* srl_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_26_reg_1663_pp0_iter5_reg_reg[8]_srl4 " *) 
  SRL16E \tmp_26_reg_1663_pp0_iter5_reg_reg[8]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(\tmp_26_reg_1663_pp0_iter6_reg_reg[8]__0_0 ),
        .Q(\tmp_26_reg_1663_pp0_iter5_reg_reg[8]_srl4_n_0 ));
  (* srl_bus_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_26_reg_1663_pp0_iter5_reg_reg " *) 
  (* srl_name = "inst/\\grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310/tmp_26_reg_1663_pp0_iter5_reg_reg[9]_srl4 " *) 
  SRL16E \tmp_26_reg_1663_pp0_iter5_reg_reg[9]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(ap_clk),
        .D(\tmp_26_reg_1663_pp0_iter6_reg_reg[9]__0_0 ),
        .Q(\tmp_26_reg_1663_pp0_iter5_reg_reg[9]_srl4_n_0 ));
  FDRE \tmp_26_reg_1663_pp0_iter6_reg_reg[0]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_26_reg_1663_pp0_iter5_reg_reg[0]_srl4_n_0 ),
        .Q(tmp_26_reg_1663_pp0_iter6_reg[0]),
        .R(1'b0));
  FDRE \tmp_26_reg_1663_pp0_iter6_reg_reg[10]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_26_reg_1663_pp0_iter5_reg_reg[10]_srl4_n_0 ),
        .Q(tmp_26_reg_1663_pp0_iter6_reg[10]),
        .R(1'b0));
  FDRE \tmp_26_reg_1663_pp0_iter6_reg_reg[11]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_26_reg_1663_pp0_iter5_reg_reg[11]_srl4_n_0 ),
        .Q(tmp_26_reg_1663_pp0_iter6_reg[11]),
        .R(1'b0));
  FDRE \tmp_26_reg_1663_pp0_iter6_reg_reg[12]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_26_reg_1663_pp0_iter5_reg_reg[12]_srl4_n_0 ),
        .Q(tmp_26_reg_1663_pp0_iter6_reg[12]),
        .R(1'b0));
  FDRE \tmp_26_reg_1663_pp0_iter6_reg_reg[13]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_26_reg_1663_pp0_iter5_reg_reg[13]_srl4_n_0 ),
        .Q(tmp_26_reg_1663_pp0_iter6_reg[13]),
        .R(1'b0));
  FDRE \tmp_26_reg_1663_pp0_iter6_reg_reg[14]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_26_reg_1663_pp0_iter5_reg_reg[14]_srl4_n_0 ),
        .Q(tmp_26_reg_1663_pp0_iter6_reg[14]),
        .R(1'b0));
  FDRE \tmp_26_reg_1663_pp0_iter6_reg_reg[15]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_26_reg_1663_pp0_iter5_reg_reg[15]_srl4_n_0 ),
        .Q(tmp_26_reg_1663_pp0_iter6_reg[15]),
        .R(1'b0));
  FDRE \tmp_26_reg_1663_pp0_iter6_reg_reg[1]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_26_reg_1663_pp0_iter5_reg_reg[1]_srl4_n_0 ),
        .Q(tmp_26_reg_1663_pp0_iter6_reg[1]),
        .R(1'b0));
  FDRE \tmp_26_reg_1663_pp0_iter6_reg_reg[2]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_26_reg_1663_pp0_iter5_reg_reg[2]_srl4_n_0 ),
        .Q(tmp_26_reg_1663_pp0_iter6_reg[2]),
        .R(1'b0));
  FDRE \tmp_26_reg_1663_pp0_iter6_reg_reg[3]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_26_reg_1663_pp0_iter5_reg_reg[3]_srl4_n_0 ),
        .Q(tmp_26_reg_1663_pp0_iter6_reg[3]),
        .R(1'b0));
  FDRE \tmp_26_reg_1663_pp0_iter6_reg_reg[4]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_26_reg_1663_pp0_iter5_reg_reg[4]_srl4_n_0 ),
        .Q(tmp_26_reg_1663_pp0_iter6_reg[4]),
        .R(1'b0));
  FDRE \tmp_26_reg_1663_pp0_iter6_reg_reg[5]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_26_reg_1663_pp0_iter5_reg_reg[5]_srl4_n_0 ),
        .Q(tmp_26_reg_1663_pp0_iter6_reg[5]),
        .R(1'b0));
  FDRE \tmp_26_reg_1663_pp0_iter6_reg_reg[6]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_26_reg_1663_pp0_iter5_reg_reg[6]_srl4_n_0 ),
        .Q(tmp_26_reg_1663_pp0_iter6_reg[6]),
        .R(1'b0));
  FDRE \tmp_26_reg_1663_pp0_iter6_reg_reg[7]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_26_reg_1663_pp0_iter5_reg_reg[7]_srl4_n_0 ),
        .Q(tmp_26_reg_1663_pp0_iter6_reg[7]),
        .R(1'b0));
  FDRE \tmp_26_reg_1663_pp0_iter6_reg_reg[8]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_26_reg_1663_pp0_iter5_reg_reg[8]_srl4_n_0 ),
        .Q(tmp_26_reg_1663_pp0_iter6_reg[8]),
        .R(1'b0));
  FDRE \tmp_26_reg_1663_pp0_iter6_reg_reg[9]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_26_reg_1663_pp0_iter5_reg_reg[9]_srl4_n_0 ),
        .Q(tmp_26_reg_1663_pp0_iter6_reg[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "conv2d_conv2d_Pipeline_READ_INPUT" *) 
module cnn_pipeline_conv2d_0_1_conv2d_conv2d_Pipeline_READ_INPUT
   (ap_done_cache,
    ap_enable_reg_pp0_iter1,
    D,
    ap_done_reg1,
    A,
    \input_17_fu_198_reg[15]_0 ,
    \input_22_fu_218_reg[15]_0 ,
    \input_17_fu_198_reg[14]_0 ,
    \input_22_fu_218_reg[14]_0 ,
    \input_17_fu_198_reg[13]_0 ,
    \input_22_fu_218_reg[13]_0 ,
    \input_17_fu_198_reg[12]_0 ,
    \input_22_fu_218_reg[12]_0 ,
    \input_17_fu_198_reg[11]_0 ,
    \input_22_fu_218_reg[11]_0 ,
    \input_17_fu_198_reg[10]_0 ,
    \input_22_fu_218_reg[10]_0 ,
    \input_17_fu_198_reg[9]_0 ,
    \input_22_fu_218_reg[9]_0 ,
    \input_17_fu_198_reg[8]_0 ,
    \input_22_fu_218_reg[8]_0 ,
    \input_17_fu_198_reg[7]_0 ,
    \input_22_fu_218_reg[7]_0 ,
    \input_17_fu_198_reg[6]_0 ,
    \input_22_fu_218_reg[6]_0 ,
    \input_17_fu_198_reg[5]_0 ,
    \input_22_fu_218_reg[5]_0 ,
    \input_17_fu_198_reg[4]_0 ,
    \input_22_fu_218_reg[4]_0 ,
    \input_17_fu_198_reg[3]_0 ,
    \input_22_fu_218_reg[3]_0 ,
    \input_17_fu_198_reg[2]_0 ,
    \input_22_fu_218_reg[2]_0 ,
    \input_17_fu_198_reg[1]_0 ,
    \input_22_fu_218_reg[1]_0 ,
    \input_17_fu_198_reg[0]_0 ,
    \input_22_fu_218_reg[0]_0 ,
    \select_ln89_reg_1613_reg[1] ,
    \select_ln89_reg_1613_reg[1]_0 ,
    \select_ln89_reg_1613_reg[1]_1 ,
    \select_ln89_reg_1613_reg[1]_2 ,
    \select_ln89_reg_1613_reg[1]_3 ,
    \select_ln89_reg_1613_reg[1]_4 ,
    \select_ln89_reg_1613_reg[1]_5 ,
    \select_ln89_reg_1613_reg[1]_6 ,
    \select_ln89_reg_1613_reg[1]_7 ,
    \select_ln89_reg_1613_reg[1]_8 ,
    \select_ln89_reg_1613_reg[1]_9 ,
    \select_ln89_reg_1613_reg[1]_10 ,
    \select_ln89_reg_1613_reg[1]_11 ,
    \select_ln89_reg_1613_reg[1]_12 ,
    \select_ln89_reg_1613_reg[1]_13 ,
    \select_ln89_reg_1613_reg[1]_14 ,
    \select_ln89_reg_1613_reg[1]_15 ,
    \select_ln89_reg_1613_reg[1]_16 ,
    \select_ln89_reg_1613_reg[1]_17 ,
    \select_ln89_reg_1613_reg[1]_18 ,
    \select_ln89_reg_1613_reg[1]_19 ,
    \select_ln89_reg_1613_reg[1]_20 ,
    \select_ln89_reg_1613_reg[1]_21 ,
    \select_ln89_reg_1613_reg[1]_22 ,
    \select_ln89_reg_1613_reg[1]_23 ,
    \select_ln89_reg_1613_reg[1]_24 ,
    \select_ln89_reg_1613_reg[1]_25 ,
    \select_ln89_reg_1613_reg[1]_26 ,
    \select_ln89_reg_1613_reg[1]_27 ,
    \select_ln89_reg_1613_reg[1]_28 ,
    \select_ln89_reg_1613_reg[1]_29 ,
    \select_ln89_reg_1613_reg[1]_30 ,
    \select_ln89_reg_1613_reg[1]_31 ,
    \select_ln89_reg_1613_pp0_iter1_reg_reg[1] ,
    \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_0 ,
    \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_1 ,
    \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_2 ,
    \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_3 ,
    \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_4 ,
    \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_5 ,
    \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_6 ,
    \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_7 ,
    \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_8 ,
    \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_9 ,
    \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_10 ,
    \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_11 ,
    \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_12 ,
    \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_13 ,
    \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_14 ,
    \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_15 ,
    \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_16 ,
    \ap_CS_fsm_reg[1] ,
    ap_enable_reg_pp0_iter1_reg_0,
    ap_rst_n_inv,
    ap_clk,
    ap_rst_n,
    grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg,
    Q,
    \ap_CS_fsm_reg[2] ,
    \ap_CS_fsm_reg[2]_0 ,
    \ap_CS_fsm_reg[2]_1 ,
    select_ln89_fu_561_p3,
    \tmp_15_reg_1628_reg[15] ,
    \tmp_15_reg_1628_reg[15]_0 ,
    \tmp_18_reg_1643_reg[15] ,
    \tmp_18_reg_1643_reg[15]_0 ,
    sel,
    \tmp_20_reg_1658_reg[15] ,
    \tmp_20_reg_1658_reg[15]_0 ,
    \tmp_20_reg_1658_reg[15]_1 ,
    \tmp_20_reg_1658_reg[15]_2 ,
    E,
    \input_24_fu_226_reg[15]_0 );
  output ap_done_cache;
  output ap_enable_reg_pp0_iter1;
  output [0:0]D;
  output ap_done_reg1;
  output [15:0]A;
  output \input_17_fu_198_reg[15]_0 ;
  output \input_22_fu_218_reg[15]_0 ;
  output \input_17_fu_198_reg[14]_0 ;
  output \input_22_fu_218_reg[14]_0 ;
  output \input_17_fu_198_reg[13]_0 ;
  output \input_22_fu_218_reg[13]_0 ;
  output \input_17_fu_198_reg[12]_0 ;
  output \input_22_fu_218_reg[12]_0 ;
  output \input_17_fu_198_reg[11]_0 ;
  output \input_22_fu_218_reg[11]_0 ;
  output \input_17_fu_198_reg[10]_0 ;
  output \input_22_fu_218_reg[10]_0 ;
  output \input_17_fu_198_reg[9]_0 ;
  output \input_22_fu_218_reg[9]_0 ;
  output \input_17_fu_198_reg[8]_0 ;
  output \input_22_fu_218_reg[8]_0 ;
  output \input_17_fu_198_reg[7]_0 ;
  output \input_22_fu_218_reg[7]_0 ;
  output \input_17_fu_198_reg[6]_0 ;
  output \input_22_fu_218_reg[6]_0 ;
  output \input_17_fu_198_reg[5]_0 ;
  output \input_22_fu_218_reg[5]_0 ;
  output \input_17_fu_198_reg[4]_0 ;
  output \input_22_fu_218_reg[4]_0 ;
  output \input_17_fu_198_reg[3]_0 ;
  output \input_22_fu_218_reg[3]_0 ;
  output \input_17_fu_198_reg[2]_0 ;
  output \input_22_fu_218_reg[2]_0 ;
  output \input_17_fu_198_reg[1]_0 ;
  output \input_22_fu_218_reg[1]_0 ;
  output \input_17_fu_198_reg[0]_0 ;
  output \input_22_fu_218_reg[0]_0 ;
  output [15:0]\select_ln89_reg_1613_reg[1] ;
  output \select_ln89_reg_1613_reg[1]_0 ;
  output \select_ln89_reg_1613_reg[1]_1 ;
  output \select_ln89_reg_1613_reg[1]_2 ;
  output \select_ln89_reg_1613_reg[1]_3 ;
  output \select_ln89_reg_1613_reg[1]_4 ;
  output \select_ln89_reg_1613_reg[1]_5 ;
  output \select_ln89_reg_1613_reg[1]_6 ;
  output \select_ln89_reg_1613_reg[1]_7 ;
  output \select_ln89_reg_1613_reg[1]_8 ;
  output \select_ln89_reg_1613_reg[1]_9 ;
  output \select_ln89_reg_1613_reg[1]_10 ;
  output \select_ln89_reg_1613_reg[1]_11 ;
  output \select_ln89_reg_1613_reg[1]_12 ;
  output \select_ln89_reg_1613_reg[1]_13 ;
  output \select_ln89_reg_1613_reg[1]_14 ;
  output \select_ln89_reg_1613_reg[1]_15 ;
  output \select_ln89_reg_1613_reg[1]_16 ;
  output \select_ln89_reg_1613_reg[1]_17 ;
  output \select_ln89_reg_1613_reg[1]_18 ;
  output \select_ln89_reg_1613_reg[1]_19 ;
  output \select_ln89_reg_1613_reg[1]_20 ;
  output \select_ln89_reg_1613_reg[1]_21 ;
  output \select_ln89_reg_1613_reg[1]_22 ;
  output \select_ln89_reg_1613_reg[1]_23 ;
  output \select_ln89_reg_1613_reg[1]_24 ;
  output \select_ln89_reg_1613_reg[1]_25 ;
  output \select_ln89_reg_1613_reg[1]_26 ;
  output \select_ln89_reg_1613_reg[1]_27 ;
  output \select_ln89_reg_1613_reg[1]_28 ;
  output \select_ln89_reg_1613_reg[1]_29 ;
  output \select_ln89_reg_1613_reg[1]_30 ;
  output \select_ln89_reg_1613_reg[1]_31 ;
  output [15:0]\select_ln89_reg_1613_pp0_iter1_reg_reg[1] ;
  output [15:0]\select_ln89_reg_1613_pp0_iter1_reg_reg[1]_0 ;
  output \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_1 ;
  output \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_2 ;
  output \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_3 ;
  output \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_4 ;
  output \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_5 ;
  output \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_6 ;
  output \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_7 ;
  output \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_8 ;
  output \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_9 ;
  output \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_10 ;
  output \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_11 ;
  output \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_12 ;
  output \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_13 ;
  output \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_14 ;
  output \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_15 ;
  output \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_16 ;
  output \ap_CS_fsm_reg[1] ;
  output ap_enable_reg_pp0_iter1_reg_0;
  input ap_rst_n_inv;
  input ap_clk;
  input ap_rst_n;
  input grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg;
  input [0:0]Q;
  input [1:0]\ap_CS_fsm_reg[2] ;
  input \ap_CS_fsm_reg[2]_0 ;
  input \ap_CS_fsm_reg[2]_1 ;
  input [1:0]select_ln89_fu_561_p3;
  input \tmp_15_reg_1628_reg[15] ;
  input [0:0]\tmp_15_reg_1628_reg[15]_0 ;
  input \tmp_18_reg_1643_reg[15] ;
  input \tmp_18_reg_1643_reg[15]_0 ;
  input [1:0]sel;
  input \tmp_20_reg_1658_reg[15] ;
  input \tmp_20_reg_1658_reg[15]_0 ;
  input \tmp_20_reg_1658_reg[15]_1 ;
  input \tmp_20_reg_1658_reg[15]_2 ;
  input [0:0]E;
  input [15:0]\input_24_fu_226_reg[15]_0 ;

  wire [15:0]A;
  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [10:2]add_ln66_fu_464_p2;
  wire \ap_CS_fsm_reg[1] ;
  wire [1:0]\ap_CS_fsm_reg[2] ;
  wire \ap_CS_fsm_reg[2]_0 ;
  wire \ap_CS_fsm_reg[2]_1 ;
  wire ap_clk;
  wire ap_done_cache;
  wire ap_done_reg1;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp0_iter1_reg_0;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire [10:8]ap_sig_allocacmp_phi_mul_load;
  wire [2:0]ap_sig_allocacmp_phi_urem_load;
  wire flow_control_loop_pipe_sequential_init_U_n_1;
  wire flow_control_loop_pipe_sequential_init_U_n_26;
  wire flow_control_loop_pipe_sequential_init_U_n_27;
  wire flow_control_loop_pipe_sequential_init_U_n_28;
  wire flow_control_loop_pipe_sequential_init_U_n_29;
  wire flow_control_loop_pipe_sequential_init_U_n_30;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg;
  wire [15:0]grp_conv2d_Pipeline_READ_INPUT_fu_252_input_10_out;
  wire [15:0]grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out;
  wire [15:0]grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out;
  wire [15:0]grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out;
  wire [15:0]grp_conv2d_Pipeline_READ_INPUT_fu_252_input_14_out;
  wire [15:0]grp_conv2d_Pipeline_READ_INPUT_fu_252_input_15_out;
  wire [15:0]grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out;
  wire [15:0]grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out;
  wire [15:0]grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out;
  wire [15:0]grp_conv2d_Pipeline_READ_INPUT_fu_252_input_19_out;
  wire [15:0]grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out;
  wire [15:0]grp_conv2d_Pipeline_READ_INPUT_fu_252_input_20_out;
  wire [15:0]grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out;
  wire [15:0]grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out;
  wire [15:0]grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out;
  wire [15:0]grp_conv2d_Pipeline_READ_INPUT_fu_252_input_24_out;
  wire [15:0]grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out;
  wire [15:0]grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out;
  wire [15:0]grp_conv2d_Pipeline_READ_INPUT_fu_252_input_4_out;
  wire [15:0]grp_conv2d_Pipeline_READ_INPUT_fu_252_input_5_out;
  wire [15:0]grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out;
  wire [15:0]grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out;
  wire [15:0]grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out;
  wire [15:0]grp_conv2d_Pipeline_READ_INPUT_fu_252_input_9_out;
  wire [15:0]grp_conv2d_Pipeline_READ_INPUT_fu_252_input_out;
  wire [4:0]i_fu_455_p2;
  wire input_10_fu_1700;
  wire input_11_fu_1740;
  wire input_12_fu_1780;
  wire input_13_fu_1820;
  wire input_14_fu_1860;
  wire \input_15_fu_190[15]_i_1_n_0 ;
  wire \input_15_fu_190[15]_i_2_n_0 ;
  wire \input_16_fu_194[15]_i_1_n_0 ;
  wire \input_16_fu_194[15]_i_2_n_0 ;
  wire \input_17_fu_198[15]_i_1_n_0 ;
  wire \input_17_fu_198[15]_i_2_n_0 ;
  wire \input_17_fu_198_reg[0]_0 ;
  wire \input_17_fu_198_reg[10]_0 ;
  wire \input_17_fu_198_reg[11]_0 ;
  wire \input_17_fu_198_reg[12]_0 ;
  wire \input_17_fu_198_reg[13]_0 ;
  wire \input_17_fu_198_reg[14]_0 ;
  wire \input_17_fu_198_reg[15]_0 ;
  wire \input_17_fu_198_reg[1]_0 ;
  wire \input_17_fu_198_reg[2]_0 ;
  wire \input_17_fu_198_reg[3]_0 ;
  wire \input_17_fu_198_reg[4]_0 ;
  wire \input_17_fu_198_reg[5]_0 ;
  wire \input_17_fu_198_reg[6]_0 ;
  wire \input_17_fu_198_reg[7]_0 ;
  wire \input_17_fu_198_reg[8]_0 ;
  wire \input_17_fu_198_reg[9]_0 ;
  wire \input_18_fu_202[15]_i_1_n_0 ;
  wire \input_18_fu_202[15]_i_2_n_0 ;
  wire input_19_fu_2060;
  wire input_1_fu_1340;
  wire input_20_fu_2100;
  wire input_21_fu_2140;
  wire input_22_fu_2180;
  wire \input_22_fu_218_reg[0]_0 ;
  wire \input_22_fu_218_reg[10]_0 ;
  wire \input_22_fu_218_reg[11]_0 ;
  wire \input_22_fu_218_reg[12]_0 ;
  wire \input_22_fu_218_reg[13]_0 ;
  wire \input_22_fu_218_reg[14]_0 ;
  wire \input_22_fu_218_reg[15]_0 ;
  wire \input_22_fu_218_reg[1]_0 ;
  wire \input_22_fu_218_reg[2]_0 ;
  wire \input_22_fu_218_reg[3]_0 ;
  wire \input_22_fu_218_reg[4]_0 ;
  wire \input_22_fu_218_reg[5]_0 ;
  wire \input_22_fu_218_reg[6]_0 ;
  wire \input_22_fu_218_reg[7]_0 ;
  wire \input_22_fu_218_reg[8]_0 ;
  wire \input_22_fu_218_reg[9]_0 ;
  wire input_23_fu_2220;
  wire input_24_fu_2260;
  wire [15:0]\input_24_fu_226_reg[15]_0 ;
  wire input_2_fu_1380;
  wire input_3_fu_1420;
  wire input_4_fu_1460;
  wire input_5_fu_1500;
  wire input_6_fu_1540;
  wire input_7_fu_1580;
  wire input_8_fu_1620;
  wire input_9_fu_1660;
  wire input_fu_1300;
  wire p_reg_reg_i_17__0_n_0;
  wire p_reg_reg_i_17__1_n_0;
  wire p_reg_reg_i_18__0_n_0;
  wire p_reg_reg_i_18__1_n_0;
  wire p_reg_reg_i_18_n_0;
  wire p_reg_reg_i_19__0_n_0;
  wire p_reg_reg_i_19__1_n_0;
  wire p_reg_reg_i_19_n_0;
  wire p_reg_reg_i_20__0_n_0;
  wire p_reg_reg_i_20__1_n_0;
  wire p_reg_reg_i_20_n_0;
  wire p_reg_reg_i_21__0_n_0;
  wire p_reg_reg_i_21__1_n_0;
  wire p_reg_reg_i_21_n_0;
  wire p_reg_reg_i_22__0_n_0;
  wire p_reg_reg_i_22__1_n_0;
  wire p_reg_reg_i_22_n_0;
  wire p_reg_reg_i_23__0_n_0;
  wire p_reg_reg_i_23__1_n_0;
  wire p_reg_reg_i_23_n_0;
  wire p_reg_reg_i_24__0_n_0;
  wire p_reg_reg_i_24__1_n_0;
  wire p_reg_reg_i_24_n_0;
  wire p_reg_reg_i_25__0_n_0;
  wire p_reg_reg_i_25__1_n_0;
  wire p_reg_reg_i_25_n_0;
  wire p_reg_reg_i_26__0_n_0;
  wire p_reg_reg_i_26__1_n_0;
  wire p_reg_reg_i_26_n_0;
  wire p_reg_reg_i_27__0_n_0;
  wire p_reg_reg_i_27__1_n_0;
  wire p_reg_reg_i_27_n_0;
  wire p_reg_reg_i_28__0_n_0;
  wire p_reg_reg_i_28__1_n_0;
  wire p_reg_reg_i_28_n_0;
  wire p_reg_reg_i_29__0_n_0;
  wire p_reg_reg_i_29__1_n_0;
  wire p_reg_reg_i_29_n_0;
  wire p_reg_reg_i_30__0_n_0;
  wire p_reg_reg_i_30__1_n_0;
  wire p_reg_reg_i_30_n_0;
  wire p_reg_reg_i_31__0_n_0;
  wire p_reg_reg_i_31__1_n_0;
  wire p_reg_reg_i_31_n_0;
  wire p_reg_reg_i_32__0_n_0;
  wire p_reg_reg_i_32__1_n_0;
  wire p_reg_reg_i_32_n_0;
  wire p_reg_reg_i_33__0_n_0;
  wire p_reg_reg_i_33__1_n_0;
  wire p_reg_reg_i_33_n_0;
  wire p_reg_reg_i_34__0_n_0;
  wire p_reg_reg_i_34__1_n_0;
  wire p_reg_reg_i_34_n_0;
  wire p_reg_reg_i_35__0_n_0;
  wire p_reg_reg_i_35__1_n_0;
  wire p_reg_reg_i_35_n_0;
  wire p_reg_reg_i_36__0_n_0;
  wire p_reg_reg_i_36__1_n_0;
  wire p_reg_reg_i_36_n_0;
  wire p_reg_reg_i_37__0_n_0;
  wire p_reg_reg_i_37__1_n_0;
  wire p_reg_reg_i_37_n_0;
  wire p_reg_reg_i_38__0_n_0;
  wire p_reg_reg_i_38__1_n_0;
  wire p_reg_reg_i_38_n_0;
  wire p_reg_reg_i_39__0_n_0;
  wire p_reg_reg_i_39__1_n_0;
  wire p_reg_reg_i_39_n_0;
  wire p_reg_reg_i_40__0_n_0;
  wire p_reg_reg_i_40__1_n_0;
  wire p_reg_reg_i_40_n_0;
  wire p_reg_reg_i_41__0_n_0;
  wire p_reg_reg_i_41__1_n_0;
  wire p_reg_reg_i_41_n_0;
  wire p_reg_reg_i_42__0_n_0;
  wire p_reg_reg_i_42__1_n_0;
  wire p_reg_reg_i_42_n_0;
  wire p_reg_reg_i_43__0_n_0;
  wire p_reg_reg_i_43__1_n_0;
  wire p_reg_reg_i_43_n_0;
  wire p_reg_reg_i_44__0_n_0;
  wire p_reg_reg_i_44__1_n_0;
  wire p_reg_reg_i_44_n_0;
  wire p_reg_reg_i_45__0_n_0;
  wire p_reg_reg_i_45__1_n_0;
  wire p_reg_reg_i_45_n_0;
  wire p_reg_reg_i_46__0_n_0;
  wire p_reg_reg_i_46__1_n_0;
  wire p_reg_reg_i_46_n_0;
  wire p_reg_reg_i_47__0_n_0;
  wire p_reg_reg_i_47__1_n_0;
  wire p_reg_reg_i_47_n_0;
  wire p_reg_reg_i_48__0_n_0;
  wire p_reg_reg_i_48__1_n_0;
  wire p_reg_reg_i_48_n_0;
  wire p_reg_reg_i_49__0_n_0;
  wire p_reg_reg_i_49__1_n_0;
  wire p_reg_reg_i_49_n_0;
  wire p_reg_reg_i_50__0_n_0;
  wire p_reg_reg_i_50__1_n_0;
  wire p_reg_reg_i_50_n_0;
  wire p_reg_reg_i_51__0_n_0;
  wire p_reg_reg_i_51__1_n_0;
  wire p_reg_reg_i_51_n_0;
  wire p_reg_reg_i_52__0_n_0;
  wire p_reg_reg_i_52__1_n_0;
  wire p_reg_reg_i_52_n_0;
  wire p_reg_reg_i_53__0_n_0;
  wire p_reg_reg_i_53__1_n_0;
  wire p_reg_reg_i_53_n_0;
  wire p_reg_reg_i_54__0_n_0;
  wire p_reg_reg_i_54__1_n_0;
  wire p_reg_reg_i_54_n_0;
  wire p_reg_reg_i_55__0_n_0;
  wire p_reg_reg_i_55__1_n_0;
  wire p_reg_reg_i_55_n_0;
  wire p_reg_reg_i_56__0_n_0;
  wire p_reg_reg_i_56__1_n_0;
  wire p_reg_reg_i_56_n_0;
  wire p_reg_reg_i_57__0_n_0;
  wire p_reg_reg_i_57__1_n_0;
  wire p_reg_reg_i_57_n_0;
  wire p_reg_reg_i_58__0_n_0;
  wire p_reg_reg_i_58__1_n_0;
  wire p_reg_reg_i_58_n_0;
  wire p_reg_reg_i_59__0_n_0;
  wire p_reg_reg_i_59__1_n_0;
  wire p_reg_reg_i_59_n_0;
  wire p_reg_reg_i_60__0_n_0;
  wire p_reg_reg_i_60__1_n_0;
  wire p_reg_reg_i_60_n_0;
  wire p_reg_reg_i_61__0_n_0;
  wire p_reg_reg_i_61__1_n_0;
  wire p_reg_reg_i_61_n_0;
  wire p_reg_reg_i_62__0_n_0;
  wire p_reg_reg_i_62__1_n_0;
  wire p_reg_reg_i_62_n_0;
  wire p_reg_reg_i_63__0_n_0;
  wire p_reg_reg_i_63__1_n_0;
  wire p_reg_reg_i_63_n_0;
  wire p_reg_reg_i_64__0_n_0;
  wire p_reg_reg_i_64__1_n_0;
  wire p_reg_reg_i_64_n_0;
  wire p_reg_reg_i_65_n_0;
  wire \phi_mul_fu_122_reg_n_0_[10] ;
  wire \phi_mul_fu_122_reg_n_0_[2] ;
  wire \phi_mul_fu_122_reg_n_0_[3] ;
  wire \phi_mul_fu_122_reg_n_0_[4] ;
  wire \phi_mul_fu_122_reg_n_0_[5] ;
  wire \phi_mul_fu_122_reg_n_0_[6] ;
  wire \phi_mul_fu_122_reg_n_0_[7] ;
  wire \phi_mul_fu_122_reg_n_0_[8] ;
  wire \phi_mul_fu_122_reg_n_0_[9] ;
  wire [4:0]phi_urem_fu_118;
  wire [4:0]rem_fu_126;
  wire [1:0]sel;
  wire [4:0]select_ln47_fu_509_p3;
  wire [1:0]select_ln89_fu_561_p3;
  wire [15:0]\select_ln89_reg_1613_pp0_iter1_reg_reg[1] ;
  wire [15:0]\select_ln89_reg_1613_pp0_iter1_reg_reg[1]_0 ;
  wire \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_1 ;
  wire \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_10 ;
  wire \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_11 ;
  wire \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_12 ;
  wire \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_13 ;
  wire \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_14 ;
  wire \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_15 ;
  wire \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_16 ;
  wire \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_2 ;
  wire \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_3 ;
  wire \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_4 ;
  wire \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_5 ;
  wire \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_6 ;
  wire \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_7 ;
  wire \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_8 ;
  wire \select_ln89_reg_1613_pp0_iter1_reg_reg[1]_9 ;
  wire [15:0]\select_ln89_reg_1613_reg[1] ;
  wire \select_ln89_reg_1613_reg[1]_0 ;
  wire \select_ln89_reg_1613_reg[1]_1 ;
  wire \select_ln89_reg_1613_reg[1]_10 ;
  wire \select_ln89_reg_1613_reg[1]_11 ;
  wire \select_ln89_reg_1613_reg[1]_12 ;
  wire \select_ln89_reg_1613_reg[1]_13 ;
  wire \select_ln89_reg_1613_reg[1]_14 ;
  wire \select_ln89_reg_1613_reg[1]_15 ;
  wire \select_ln89_reg_1613_reg[1]_16 ;
  wire \select_ln89_reg_1613_reg[1]_17 ;
  wire \select_ln89_reg_1613_reg[1]_18 ;
  wire \select_ln89_reg_1613_reg[1]_19 ;
  wire \select_ln89_reg_1613_reg[1]_2 ;
  wire \select_ln89_reg_1613_reg[1]_20 ;
  wire \select_ln89_reg_1613_reg[1]_21 ;
  wire \select_ln89_reg_1613_reg[1]_22 ;
  wire \select_ln89_reg_1613_reg[1]_23 ;
  wire \select_ln89_reg_1613_reg[1]_24 ;
  wire \select_ln89_reg_1613_reg[1]_25 ;
  wire \select_ln89_reg_1613_reg[1]_26 ;
  wire \select_ln89_reg_1613_reg[1]_27 ;
  wire \select_ln89_reg_1613_reg[1]_28 ;
  wire \select_ln89_reg_1613_reg[1]_29 ;
  wire \select_ln89_reg_1613_reg[1]_3 ;
  wire \select_ln89_reg_1613_reg[1]_30 ;
  wire \select_ln89_reg_1613_reg[1]_31 ;
  wire \select_ln89_reg_1613_reg[1]_4 ;
  wire \select_ln89_reg_1613_reg[1]_5 ;
  wire \select_ln89_reg_1613_reg[1]_6 ;
  wire \select_ln89_reg_1613_reg[1]_7 ;
  wire \select_ln89_reg_1613_reg[1]_8 ;
  wire \select_ln89_reg_1613_reg[1]_9 ;
  wire \tmp_15_reg_1628[0]_i_2_n_0 ;
  wire \tmp_15_reg_1628[10]_i_2_n_0 ;
  wire \tmp_15_reg_1628[11]_i_2_n_0 ;
  wire \tmp_15_reg_1628[12]_i_2_n_0 ;
  wire \tmp_15_reg_1628[13]_i_2_n_0 ;
  wire \tmp_15_reg_1628[14]_i_2_n_0 ;
  wire \tmp_15_reg_1628[15]_i_2_n_0 ;
  wire \tmp_15_reg_1628[1]_i_2_n_0 ;
  wire \tmp_15_reg_1628[2]_i_2_n_0 ;
  wire \tmp_15_reg_1628[3]_i_2_n_0 ;
  wire \tmp_15_reg_1628[4]_i_2_n_0 ;
  wire \tmp_15_reg_1628[5]_i_2_n_0 ;
  wire \tmp_15_reg_1628[6]_i_2_n_0 ;
  wire \tmp_15_reg_1628[7]_i_2_n_0 ;
  wire \tmp_15_reg_1628[8]_i_2_n_0 ;
  wire \tmp_15_reg_1628[9]_i_2_n_0 ;
  wire \tmp_15_reg_1628_reg[15] ;
  wire [0:0]\tmp_15_reg_1628_reg[15]_0 ;
  wire \tmp_18_reg_1643[0]_i_2_n_0 ;
  wire \tmp_18_reg_1643[10]_i_2_n_0 ;
  wire \tmp_18_reg_1643[11]_i_2_n_0 ;
  wire \tmp_18_reg_1643[12]_i_2_n_0 ;
  wire \tmp_18_reg_1643[13]_i_2_n_0 ;
  wire \tmp_18_reg_1643[14]_i_2_n_0 ;
  wire \tmp_18_reg_1643[15]_i_2_n_0 ;
  wire \tmp_18_reg_1643[1]_i_2_n_0 ;
  wire \tmp_18_reg_1643[2]_i_2_n_0 ;
  wire \tmp_18_reg_1643[3]_i_2_n_0 ;
  wire \tmp_18_reg_1643[4]_i_2_n_0 ;
  wire \tmp_18_reg_1643[5]_i_2_n_0 ;
  wire \tmp_18_reg_1643[6]_i_2_n_0 ;
  wire \tmp_18_reg_1643[7]_i_2_n_0 ;
  wire \tmp_18_reg_1643[8]_i_2_n_0 ;
  wire \tmp_18_reg_1643[9]_i_2_n_0 ;
  wire \tmp_18_reg_1643_reg[15] ;
  wire \tmp_18_reg_1643_reg[15]_0 ;
  wire \tmp_20_reg_1658[0]_i_2_n_0 ;
  wire \tmp_20_reg_1658[10]_i_2_n_0 ;
  wire \tmp_20_reg_1658[11]_i_2_n_0 ;
  wire \tmp_20_reg_1658[12]_i_2_n_0 ;
  wire \tmp_20_reg_1658[13]_i_2_n_0 ;
  wire \tmp_20_reg_1658[14]_i_2_n_0 ;
  wire \tmp_20_reg_1658[15]_i_2_n_0 ;
  wire \tmp_20_reg_1658[1]_i_2_n_0 ;
  wire \tmp_20_reg_1658[2]_i_2_n_0 ;
  wire \tmp_20_reg_1658[3]_i_2_n_0 ;
  wire \tmp_20_reg_1658[4]_i_2_n_0 ;
  wire \tmp_20_reg_1658[5]_i_2_n_0 ;
  wire \tmp_20_reg_1658[6]_i_2_n_0 ;
  wire \tmp_20_reg_1658[7]_i_2_n_0 ;
  wire \tmp_20_reg_1658[8]_i_2_n_0 ;
  wire \tmp_20_reg_1658[9]_i_2_n_0 ;
  wire \tmp_20_reg_1658_reg[15] ;
  wire \tmp_20_reg_1658_reg[15]_0 ;
  wire \tmp_20_reg_1658_reg[15]_1 ;
  wire \tmp_20_reg_1658_reg[15]_2 ;
  wire \tmp_22_reg_1633_pp0_iter3_reg_reg[0]_srl4_i_2_n_0 ;
  wire \tmp_22_reg_1633_pp0_iter3_reg_reg[10]_srl4_i_2_n_0 ;
  wire \tmp_22_reg_1633_pp0_iter3_reg_reg[11]_srl4_i_2_n_0 ;
  wire \tmp_22_reg_1633_pp0_iter3_reg_reg[12]_srl4_i_2_n_0 ;
  wire \tmp_22_reg_1633_pp0_iter3_reg_reg[13]_srl4_i_2_n_0 ;
  wire \tmp_22_reg_1633_pp0_iter3_reg_reg[14]_srl4_i_2_n_0 ;
  wire \tmp_22_reg_1633_pp0_iter3_reg_reg[15]_srl4_i_2_n_0 ;
  wire \tmp_22_reg_1633_pp0_iter3_reg_reg[1]_srl4_i_2_n_0 ;
  wire \tmp_22_reg_1633_pp0_iter3_reg_reg[2]_srl4_i_2_n_0 ;
  wire \tmp_22_reg_1633_pp0_iter3_reg_reg[3]_srl4_i_2_n_0 ;
  wire \tmp_22_reg_1633_pp0_iter3_reg_reg[4]_srl4_i_2_n_0 ;
  wire \tmp_22_reg_1633_pp0_iter3_reg_reg[5]_srl4_i_2_n_0 ;
  wire \tmp_22_reg_1633_pp0_iter3_reg_reg[6]_srl4_i_2_n_0 ;
  wire \tmp_22_reg_1633_pp0_iter3_reg_reg[7]_srl4_i_2_n_0 ;
  wire \tmp_22_reg_1633_pp0_iter3_reg_reg[8]_srl4_i_2_n_0 ;
  wire \tmp_22_reg_1633_pp0_iter3_reg_reg[9]_srl4_i_2_n_0 ;
  wire \tmp_24_reg_1648_pp0_iter4_reg_reg[0]_srl4_i_2_n_0 ;
  wire \tmp_24_reg_1648_pp0_iter4_reg_reg[10]_srl4_i_2_n_0 ;
  wire \tmp_24_reg_1648_pp0_iter4_reg_reg[11]_srl4_i_2_n_0 ;
  wire \tmp_24_reg_1648_pp0_iter4_reg_reg[12]_srl4_i_2_n_0 ;
  wire \tmp_24_reg_1648_pp0_iter4_reg_reg[13]_srl4_i_2_n_0 ;
  wire \tmp_24_reg_1648_pp0_iter4_reg_reg[14]_srl4_i_2_n_0 ;
  wire \tmp_24_reg_1648_pp0_iter4_reg_reg[15]_srl4_i_2_n_0 ;
  wire \tmp_24_reg_1648_pp0_iter4_reg_reg[1]_srl4_i_2_n_0 ;
  wire \tmp_24_reg_1648_pp0_iter4_reg_reg[2]_srl4_i_2_n_0 ;
  wire \tmp_24_reg_1648_pp0_iter4_reg_reg[3]_srl4_i_2_n_0 ;
  wire \tmp_24_reg_1648_pp0_iter4_reg_reg[4]_srl4_i_2_n_0 ;
  wire \tmp_24_reg_1648_pp0_iter4_reg_reg[5]_srl4_i_2_n_0 ;
  wire \tmp_24_reg_1648_pp0_iter4_reg_reg[6]_srl4_i_2_n_0 ;
  wire \tmp_24_reg_1648_pp0_iter4_reg_reg[7]_srl4_i_2_n_0 ;
  wire \tmp_24_reg_1648_pp0_iter4_reg_reg[8]_srl4_i_2_n_0 ;
  wire \tmp_24_reg_1648_pp0_iter4_reg_reg[9]_srl4_i_2_n_0 ;
  wire \tmp_26_reg_1663_pp0_iter5_reg_reg[0]_srl4_i_2_n_0 ;
  wire \tmp_26_reg_1663_pp0_iter5_reg_reg[10]_srl4_i_2_n_0 ;
  wire \tmp_26_reg_1663_pp0_iter5_reg_reg[11]_srl4_i_2_n_0 ;
  wire \tmp_26_reg_1663_pp0_iter5_reg_reg[12]_srl4_i_2_n_0 ;
  wire \tmp_26_reg_1663_pp0_iter5_reg_reg[13]_srl4_i_2_n_0 ;
  wire \tmp_26_reg_1663_pp0_iter5_reg_reg[14]_srl4_i_2_n_0 ;
  wire \tmp_26_reg_1663_pp0_iter5_reg_reg[15]_srl4_i_2_n_0 ;
  wire \tmp_26_reg_1663_pp0_iter5_reg_reg[1]_srl4_i_2_n_0 ;
  wire \tmp_26_reg_1663_pp0_iter5_reg_reg[2]_srl4_i_2_n_0 ;
  wire \tmp_26_reg_1663_pp0_iter5_reg_reg[3]_srl4_i_2_n_0 ;
  wire \tmp_26_reg_1663_pp0_iter5_reg_reg[4]_srl4_i_2_n_0 ;
  wire \tmp_26_reg_1663_pp0_iter5_reg_reg[5]_srl4_i_2_n_0 ;
  wire \tmp_26_reg_1663_pp0_iter5_reg_reg[6]_srl4_i_2_n_0 ;
  wire \tmp_26_reg_1663_pp0_iter5_reg_reg[7]_srl4_i_2_n_0 ;
  wire \tmp_26_reg_1663_pp0_iter5_reg_reg[8]_srl4_i_2_n_0 ;
  wire \tmp_26_reg_1663_pp0_iter5_reg_reg[9]_srl4_i_2_n_0 ;
  wire [2:0]trunc_ln1_reg_935;
  wire [2:0]trunc_ln68_reg_939;

  LUT3 #(
    .INIT(8'h80)) 
    ack_in_t_i_3
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(Q),
        .I2(\ap_CS_fsm_reg[2] [1]),
        .O(ap_enable_reg_pp0_iter1_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(flow_control_loop_pipe_sequential_init_U_n_1),
        .Q(ap_enable_reg_pp0_iter1),
        .R(1'b0));
  cnn_pipeline_conv2d_0_1_conv2d_flow_control_loop_pipe_sequential_init_4 flow_control_loop_pipe_sequential_init_U
       (.D(D),
        .Q(Q),
        .add_ln66_fu_464_p2({add_ln66_fu_464_p2[10:4],add_ln66_fu_464_p2[2]}),
        .\ap_CS_fsm_reg[1] (\ap_CS_fsm_reg[1] ),
        .\ap_CS_fsm_reg[2] (\ap_CS_fsm_reg[2] ),
        .\ap_CS_fsm_reg[2]_0 (\ap_CS_fsm_reg[2]_0 ),
        .\ap_CS_fsm_reg[2]_1 (\ap_CS_fsm_reg[2]_1 ),
        .ap_clk(ap_clk),
        .ap_done_cache(ap_done_cache),
        .ap_done_reg1(ap_done_reg1),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_0(flow_control_loop_pipe_sequential_init_U_n_1),
        .ap_rst_n_inv(ap_rst_n_inv),
        .grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg(grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg),
        .grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg_reg(flow_control_loop_pipe_sequential_init_U_n_26),
        .i_fu_455_p2({i_fu_455_p2[4:3],i_fu_455_p2[0]}),
        .\phi_mul_fu_122_reg[10] (ap_sig_allocacmp_phi_mul_load),
        .\phi_mul_fu_122_reg[10]_0 (\phi_mul_fu_122_reg_n_0_[10] ),
        .\phi_mul_fu_122_reg[10]_1 (\phi_mul_fu_122_reg_n_0_[8] ),
        .\phi_mul_fu_122_reg[10]_2 (\phi_mul_fu_122_reg_n_0_[7] ),
        .\phi_mul_fu_122_reg[10]_3 (\phi_mul_fu_122_reg_n_0_[9] ),
        .\phi_mul_fu_122_reg[3] (flow_control_loop_pipe_sequential_init_U_n_29),
        .\phi_mul_fu_122_reg[6] (\phi_mul_fu_122_reg_n_0_[2] ),
        .\phi_mul_fu_122_reg[6]_0 (\phi_mul_fu_122_reg_n_0_[3] ),
        .\phi_mul_fu_122_reg[6]_1 (\phi_mul_fu_122_reg_n_0_[4] ),
        .\phi_mul_fu_122_reg[6]_2 (\phi_mul_fu_122_reg_n_0_[5] ),
        .\phi_mul_fu_122_reg[6]_3 (\phi_mul_fu_122_reg_n_0_[6] ),
        .phi_urem_fu_118(phi_urem_fu_118),
        .\phi_urem_fu_118_reg[1] (flow_control_loop_pipe_sequential_init_U_n_30),
        .\phi_urem_fu_118_reg[2] (ap_sig_allocacmp_phi_urem_load),
        .rem_fu_126(rem_fu_126),
        .\rem_fu_126_reg[0] (flow_control_loop_pipe_sequential_init_U_n_28),
        .\rem_fu_126_reg[2] (flow_control_loop_pipe_sequential_init_U_n_27),
        .\rem_fu_126_reg[4] (ap_enable_reg_pp0_iter1),
        .select_ln47_fu_509_p3({select_ln47_fu_509_p3[4:2],select_ln47_fu_509_p3[0]}));
  LUT4 #(
    .INIT(16'h0020)) 
    \input_10_fu_170[15]_i_1 
       (.I0(\input_15_fu_190[15]_i_2_n_0 ),
        .I1(trunc_ln1_reg_935[2]),
        .I2(trunc_ln1_reg_935[1]),
        .I3(trunc_ln1_reg_935[0]),
        .O(input_10_fu_1700));
  FDRE #(
    .INIT(1'b0)) 
    \input_10_fu_170_reg[0] 
       (.C(ap_clk),
        .CE(input_10_fu_1700),
        .D(\input_24_fu_226_reg[15]_0 [0]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_10_out[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_10_fu_170_reg[10] 
       (.C(ap_clk),
        .CE(input_10_fu_1700),
        .D(\input_24_fu_226_reg[15]_0 [10]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_10_out[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_10_fu_170_reg[11] 
       (.C(ap_clk),
        .CE(input_10_fu_1700),
        .D(\input_24_fu_226_reg[15]_0 [11]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_10_out[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_10_fu_170_reg[12] 
       (.C(ap_clk),
        .CE(input_10_fu_1700),
        .D(\input_24_fu_226_reg[15]_0 [12]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_10_out[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_10_fu_170_reg[13] 
       (.C(ap_clk),
        .CE(input_10_fu_1700),
        .D(\input_24_fu_226_reg[15]_0 [13]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_10_out[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_10_fu_170_reg[14] 
       (.C(ap_clk),
        .CE(input_10_fu_1700),
        .D(\input_24_fu_226_reg[15]_0 [14]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_10_out[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_10_fu_170_reg[15] 
       (.C(ap_clk),
        .CE(input_10_fu_1700),
        .D(\input_24_fu_226_reg[15]_0 [15]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_10_out[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_10_fu_170_reg[1] 
       (.C(ap_clk),
        .CE(input_10_fu_1700),
        .D(\input_24_fu_226_reg[15]_0 [1]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_10_out[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_10_fu_170_reg[2] 
       (.C(ap_clk),
        .CE(input_10_fu_1700),
        .D(\input_24_fu_226_reg[15]_0 [2]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_10_out[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_10_fu_170_reg[3] 
       (.C(ap_clk),
        .CE(input_10_fu_1700),
        .D(\input_24_fu_226_reg[15]_0 [3]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_10_out[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_10_fu_170_reg[4] 
       (.C(ap_clk),
        .CE(input_10_fu_1700),
        .D(\input_24_fu_226_reg[15]_0 [4]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_10_out[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_10_fu_170_reg[5] 
       (.C(ap_clk),
        .CE(input_10_fu_1700),
        .D(\input_24_fu_226_reg[15]_0 [5]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_10_out[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_10_fu_170_reg[6] 
       (.C(ap_clk),
        .CE(input_10_fu_1700),
        .D(\input_24_fu_226_reg[15]_0 [6]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_10_out[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_10_fu_170_reg[7] 
       (.C(ap_clk),
        .CE(input_10_fu_1700),
        .D(\input_24_fu_226_reg[15]_0 [7]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_10_out[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_10_fu_170_reg[8] 
       (.C(ap_clk),
        .CE(input_10_fu_1700),
        .D(\input_24_fu_226_reg[15]_0 [8]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_10_out[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_10_fu_170_reg[9] 
       (.C(ap_clk),
        .CE(input_10_fu_1700),
        .D(\input_24_fu_226_reg[15]_0 [9]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_10_out[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0020)) 
    \input_11_fu_174[15]_i_1 
       (.I0(\input_16_fu_194[15]_i_2_n_0 ),
        .I1(trunc_ln1_reg_935[2]),
        .I2(trunc_ln1_reg_935[1]),
        .I3(trunc_ln1_reg_935[0]),
        .O(input_11_fu_1740));
  FDRE #(
    .INIT(1'b0)) 
    \input_11_fu_174_reg[0] 
       (.C(ap_clk),
        .CE(input_11_fu_1740),
        .D(\input_24_fu_226_reg[15]_0 [0]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_11_fu_174_reg[10] 
       (.C(ap_clk),
        .CE(input_11_fu_1740),
        .D(\input_24_fu_226_reg[15]_0 [10]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_11_fu_174_reg[11] 
       (.C(ap_clk),
        .CE(input_11_fu_1740),
        .D(\input_24_fu_226_reg[15]_0 [11]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_11_fu_174_reg[12] 
       (.C(ap_clk),
        .CE(input_11_fu_1740),
        .D(\input_24_fu_226_reg[15]_0 [12]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_11_fu_174_reg[13] 
       (.C(ap_clk),
        .CE(input_11_fu_1740),
        .D(\input_24_fu_226_reg[15]_0 [13]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_11_fu_174_reg[14] 
       (.C(ap_clk),
        .CE(input_11_fu_1740),
        .D(\input_24_fu_226_reg[15]_0 [14]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_11_fu_174_reg[15] 
       (.C(ap_clk),
        .CE(input_11_fu_1740),
        .D(\input_24_fu_226_reg[15]_0 [15]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_11_fu_174_reg[1] 
       (.C(ap_clk),
        .CE(input_11_fu_1740),
        .D(\input_24_fu_226_reg[15]_0 [1]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_11_fu_174_reg[2] 
       (.C(ap_clk),
        .CE(input_11_fu_1740),
        .D(\input_24_fu_226_reg[15]_0 [2]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_11_fu_174_reg[3] 
       (.C(ap_clk),
        .CE(input_11_fu_1740),
        .D(\input_24_fu_226_reg[15]_0 [3]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_11_fu_174_reg[4] 
       (.C(ap_clk),
        .CE(input_11_fu_1740),
        .D(\input_24_fu_226_reg[15]_0 [4]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_11_fu_174_reg[5] 
       (.C(ap_clk),
        .CE(input_11_fu_1740),
        .D(\input_24_fu_226_reg[15]_0 [5]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_11_fu_174_reg[6] 
       (.C(ap_clk),
        .CE(input_11_fu_1740),
        .D(\input_24_fu_226_reg[15]_0 [6]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_11_fu_174_reg[7] 
       (.C(ap_clk),
        .CE(input_11_fu_1740),
        .D(\input_24_fu_226_reg[15]_0 [7]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_11_fu_174_reg[8] 
       (.C(ap_clk),
        .CE(input_11_fu_1740),
        .D(\input_24_fu_226_reg[15]_0 [8]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_11_fu_174_reg[9] 
       (.C(ap_clk),
        .CE(input_11_fu_1740),
        .D(\input_24_fu_226_reg[15]_0 [9]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0020)) 
    \input_12_fu_178[15]_i_1 
       (.I0(\input_17_fu_198[15]_i_2_n_0 ),
        .I1(trunc_ln1_reg_935[2]),
        .I2(trunc_ln1_reg_935[1]),
        .I3(trunc_ln1_reg_935[0]),
        .O(input_12_fu_1780));
  FDRE #(
    .INIT(1'b0)) 
    \input_12_fu_178_reg[0] 
       (.C(ap_clk),
        .CE(input_12_fu_1780),
        .D(\input_24_fu_226_reg[15]_0 [0]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_12_fu_178_reg[10] 
       (.C(ap_clk),
        .CE(input_12_fu_1780),
        .D(\input_24_fu_226_reg[15]_0 [10]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_12_fu_178_reg[11] 
       (.C(ap_clk),
        .CE(input_12_fu_1780),
        .D(\input_24_fu_226_reg[15]_0 [11]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_12_fu_178_reg[12] 
       (.C(ap_clk),
        .CE(input_12_fu_1780),
        .D(\input_24_fu_226_reg[15]_0 [12]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_12_fu_178_reg[13] 
       (.C(ap_clk),
        .CE(input_12_fu_1780),
        .D(\input_24_fu_226_reg[15]_0 [13]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_12_fu_178_reg[14] 
       (.C(ap_clk),
        .CE(input_12_fu_1780),
        .D(\input_24_fu_226_reg[15]_0 [14]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_12_fu_178_reg[15] 
       (.C(ap_clk),
        .CE(input_12_fu_1780),
        .D(\input_24_fu_226_reg[15]_0 [15]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_12_fu_178_reg[1] 
       (.C(ap_clk),
        .CE(input_12_fu_1780),
        .D(\input_24_fu_226_reg[15]_0 [1]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_12_fu_178_reg[2] 
       (.C(ap_clk),
        .CE(input_12_fu_1780),
        .D(\input_24_fu_226_reg[15]_0 [2]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_12_fu_178_reg[3] 
       (.C(ap_clk),
        .CE(input_12_fu_1780),
        .D(\input_24_fu_226_reg[15]_0 [3]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_12_fu_178_reg[4] 
       (.C(ap_clk),
        .CE(input_12_fu_1780),
        .D(\input_24_fu_226_reg[15]_0 [4]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_12_fu_178_reg[5] 
       (.C(ap_clk),
        .CE(input_12_fu_1780),
        .D(\input_24_fu_226_reg[15]_0 [5]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_12_fu_178_reg[6] 
       (.C(ap_clk),
        .CE(input_12_fu_1780),
        .D(\input_24_fu_226_reg[15]_0 [6]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_12_fu_178_reg[7] 
       (.C(ap_clk),
        .CE(input_12_fu_1780),
        .D(\input_24_fu_226_reg[15]_0 [7]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_12_fu_178_reg[8] 
       (.C(ap_clk),
        .CE(input_12_fu_1780),
        .D(\input_24_fu_226_reg[15]_0 [8]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_12_fu_178_reg[9] 
       (.C(ap_clk),
        .CE(input_12_fu_1780),
        .D(\input_24_fu_226_reg[15]_0 [9]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0020)) 
    \input_13_fu_182[15]_i_1 
       (.I0(\input_18_fu_202[15]_i_2_n_0 ),
        .I1(trunc_ln1_reg_935[2]),
        .I2(trunc_ln1_reg_935[1]),
        .I3(trunc_ln1_reg_935[0]),
        .O(input_13_fu_1820));
  FDRE #(
    .INIT(1'b0)) 
    \input_13_fu_182_reg[0] 
       (.C(ap_clk),
        .CE(input_13_fu_1820),
        .D(\input_24_fu_226_reg[15]_0 [0]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_13_fu_182_reg[10] 
       (.C(ap_clk),
        .CE(input_13_fu_1820),
        .D(\input_24_fu_226_reg[15]_0 [10]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_13_fu_182_reg[11] 
       (.C(ap_clk),
        .CE(input_13_fu_1820),
        .D(\input_24_fu_226_reg[15]_0 [11]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_13_fu_182_reg[12] 
       (.C(ap_clk),
        .CE(input_13_fu_1820),
        .D(\input_24_fu_226_reg[15]_0 [12]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_13_fu_182_reg[13] 
       (.C(ap_clk),
        .CE(input_13_fu_1820),
        .D(\input_24_fu_226_reg[15]_0 [13]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_13_fu_182_reg[14] 
       (.C(ap_clk),
        .CE(input_13_fu_1820),
        .D(\input_24_fu_226_reg[15]_0 [14]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_13_fu_182_reg[15] 
       (.C(ap_clk),
        .CE(input_13_fu_1820),
        .D(\input_24_fu_226_reg[15]_0 [15]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_13_fu_182_reg[1] 
       (.C(ap_clk),
        .CE(input_13_fu_1820),
        .D(\input_24_fu_226_reg[15]_0 [1]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_13_fu_182_reg[2] 
       (.C(ap_clk),
        .CE(input_13_fu_1820),
        .D(\input_24_fu_226_reg[15]_0 [2]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_13_fu_182_reg[3] 
       (.C(ap_clk),
        .CE(input_13_fu_1820),
        .D(\input_24_fu_226_reg[15]_0 [3]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_13_fu_182_reg[4] 
       (.C(ap_clk),
        .CE(input_13_fu_1820),
        .D(\input_24_fu_226_reg[15]_0 [4]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_13_fu_182_reg[5] 
       (.C(ap_clk),
        .CE(input_13_fu_1820),
        .D(\input_24_fu_226_reg[15]_0 [5]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_13_fu_182_reg[6] 
       (.C(ap_clk),
        .CE(input_13_fu_1820),
        .D(\input_24_fu_226_reg[15]_0 [6]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_13_fu_182_reg[7] 
       (.C(ap_clk),
        .CE(input_13_fu_1820),
        .D(\input_24_fu_226_reg[15]_0 [7]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_13_fu_182_reg[8] 
       (.C(ap_clk),
        .CE(input_13_fu_1820),
        .D(\input_24_fu_226_reg[15]_0 [8]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_13_fu_182_reg[9] 
       (.C(ap_clk),
        .CE(input_13_fu_1820),
        .D(\input_24_fu_226_reg[15]_0 [9]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \input_14_fu_186[15]_i_1 
       (.I0(Q),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(trunc_ln68_reg_939[2]),
        .I3(trunc_ln1_reg_935[2]),
        .I4(trunc_ln1_reg_935[1]),
        .I5(trunc_ln1_reg_935[0]),
        .O(input_14_fu_1860));
  FDRE #(
    .INIT(1'b0)) 
    \input_14_fu_186_reg[0] 
       (.C(ap_clk),
        .CE(input_14_fu_1860),
        .D(\input_24_fu_226_reg[15]_0 [0]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_14_out[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_14_fu_186_reg[10] 
       (.C(ap_clk),
        .CE(input_14_fu_1860),
        .D(\input_24_fu_226_reg[15]_0 [10]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_14_out[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_14_fu_186_reg[11] 
       (.C(ap_clk),
        .CE(input_14_fu_1860),
        .D(\input_24_fu_226_reg[15]_0 [11]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_14_out[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_14_fu_186_reg[12] 
       (.C(ap_clk),
        .CE(input_14_fu_1860),
        .D(\input_24_fu_226_reg[15]_0 [12]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_14_out[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_14_fu_186_reg[13] 
       (.C(ap_clk),
        .CE(input_14_fu_1860),
        .D(\input_24_fu_226_reg[15]_0 [13]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_14_out[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_14_fu_186_reg[14] 
       (.C(ap_clk),
        .CE(input_14_fu_1860),
        .D(\input_24_fu_226_reg[15]_0 [14]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_14_out[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_14_fu_186_reg[15] 
       (.C(ap_clk),
        .CE(input_14_fu_1860),
        .D(\input_24_fu_226_reg[15]_0 [15]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_14_out[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_14_fu_186_reg[1] 
       (.C(ap_clk),
        .CE(input_14_fu_1860),
        .D(\input_24_fu_226_reg[15]_0 [1]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_14_out[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_14_fu_186_reg[2] 
       (.C(ap_clk),
        .CE(input_14_fu_1860),
        .D(\input_24_fu_226_reg[15]_0 [2]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_14_out[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_14_fu_186_reg[3] 
       (.C(ap_clk),
        .CE(input_14_fu_1860),
        .D(\input_24_fu_226_reg[15]_0 [3]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_14_out[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_14_fu_186_reg[4] 
       (.C(ap_clk),
        .CE(input_14_fu_1860),
        .D(\input_24_fu_226_reg[15]_0 [4]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_14_out[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_14_fu_186_reg[5] 
       (.C(ap_clk),
        .CE(input_14_fu_1860),
        .D(\input_24_fu_226_reg[15]_0 [5]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_14_out[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_14_fu_186_reg[6] 
       (.C(ap_clk),
        .CE(input_14_fu_1860),
        .D(\input_24_fu_226_reg[15]_0 [6]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_14_out[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_14_fu_186_reg[7] 
       (.C(ap_clk),
        .CE(input_14_fu_1860),
        .D(\input_24_fu_226_reg[15]_0 [7]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_14_out[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_14_fu_186_reg[8] 
       (.C(ap_clk),
        .CE(input_14_fu_1860),
        .D(\input_24_fu_226_reg[15]_0 [8]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_14_out[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_14_fu_186_reg[9] 
       (.C(ap_clk),
        .CE(input_14_fu_1860),
        .D(\input_24_fu_226_reg[15]_0 [9]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_14_out[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h2000)) 
    \input_15_fu_190[15]_i_1 
       (.I0(\input_15_fu_190[15]_i_2_n_0 ),
        .I1(trunc_ln1_reg_935[2]),
        .I2(trunc_ln1_reg_935[1]),
        .I3(trunc_ln1_reg_935[0]),
        .O(\input_15_fu_190[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    \input_15_fu_190[15]_i_2 
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(Q),
        .I2(trunc_ln68_reg_939[2]),
        .I3(trunc_ln68_reg_939[1]),
        .I4(trunc_ln68_reg_939[0]),
        .O(\input_15_fu_190[15]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \input_15_fu_190_reg[0] 
       (.C(ap_clk),
        .CE(\input_15_fu_190[15]_i_1_n_0 ),
        .D(\input_24_fu_226_reg[15]_0 [0]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_15_out[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_15_fu_190_reg[10] 
       (.C(ap_clk),
        .CE(\input_15_fu_190[15]_i_1_n_0 ),
        .D(\input_24_fu_226_reg[15]_0 [10]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_15_out[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_15_fu_190_reg[11] 
       (.C(ap_clk),
        .CE(\input_15_fu_190[15]_i_1_n_0 ),
        .D(\input_24_fu_226_reg[15]_0 [11]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_15_out[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_15_fu_190_reg[12] 
       (.C(ap_clk),
        .CE(\input_15_fu_190[15]_i_1_n_0 ),
        .D(\input_24_fu_226_reg[15]_0 [12]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_15_out[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_15_fu_190_reg[13] 
       (.C(ap_clk),
        .CE(\input_15_fu_190[15]_i_1_n_0 ),
        .D(\input_24_fu_226_reg[15]_0 [13]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_15_out[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_15_fu_190_reg[14] 
       (.C(ap_clk),
        .CE(\input_15_fu_190[15]_i_1_n_0 ),
        .D(\input_24_fu_226_reg[15]_0 [14]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_15_out[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_15_fu_190_reg[15] 
       (.C(ap_clk),
        .CE(\input_15_fu_190[15]_i_1_n_0 ),
        .D(\input_24_fu_226_reg[15]_0 [15]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_15_out[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_15_fu_190_reg[1] 
       (.C(ap_clk),
        .CE(\input_15_fu_190[15]_i_1_n_0 ),
        .D(\input_24_fu_226_reg[15]_0 [1]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_15_out[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_15_fu_190_reg[2] 
       (.C(ap_clk),
        .CE(\input_15_fu_190[15]_i_1_n_0 ),
        .D(\input_24_fu_226_reg[15]_0 [2]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_15_out[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_15_fu_190_reg[3] 
       (.C(ap_clk),
        .CE(\input_15_fu_190[15]_i_1_n_0 ),
        .D(\input_24_fu_226_reg[15]_0 [3]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_15_out[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_15_fu_190_reg[4] 
       (.C(ap_clk),
        .CE(\input_15_fu_190[15]_i_1_n_0 ),
        .D(\input_24_fu_226_reg[15]_0 [4]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_15_out[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_15_fu_190_reg[5] 
       (.C(ap_clk),
        .CE(\input_15_fu_190[15]_i_1_n_0 ),
        .D(\input_24_fu_226_reg[15]_0 [5]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_15_out[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_15_fu_190_reg[6] 
       (.C(ap_clk),
        .CE(\input_15_fu_190[15]_i_1_n_0 ),
        .D(\input_24_fu_226_reg[15]_0 [6]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_15_out[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_15_fu_190_reg[7] 
       (.C(ap_clk),
        .CE(\input_15_fu_190[15]_i_1_n_0 ),
        .D(\input_24_fu_226_reg[15]_0 [7]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_15_out[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_15_fu_190_reg[8] 
       (.C(ap_clk),
        .CE(\input_15_fu_190[15]_i_1_n_0 ),
        .D(\input_24_fu_226_reg[15]_0 [8]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_15_out[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_15_fu_190_reg[9] 
       (.C(ap_clk),
        .CE(\input_15_fu_190[15]_i_1_n_0 ),
        .D(\input_24_fu_226_reg[15]_0 [9]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_15_out[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h2000)) 
    \input_16_fu_194[15]_i_1 
       (.I0(\input_16_fu_194[15]_i_2_n_0 ),
        .I1(trunc_ln1_reg_935[2]),
        .I2(trunc_ln1_reg_935[1]),
        .I3(trunc_ln1_reg_935[0]),
        .O(\input_16_fu_194[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \input_16_fu_194[15]_i_2 
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(Q),
        .I2(trunc_ln68_reg_939[0]),
        .I3(trunc_ln68_reg_939[2]),
        .I4(trunc_ln68_reg_939[1]),
        .O(\input_16_fu_194[15]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \input_16_fu_194_reg[0] 
       (.C(ap_clk),
        .CE(\input_16_fu_194[15]_i_1_n_0 ),
        .D(\input_24_fu_226_reg[15]_0 [0]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_16_fu_194_reg[10] 
       (.C(ap_clk),
        .CE(\input_16_fu_194[15]_i_1_n_0 ),
        .D(\input_24_fu_226_reg[15]_0 [10]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_16_fu_194_reg[11] 
       (.C(ap_clk),
        .CE(\input_16_fu_194[15]_i_1_n_0 ),
        .D(\input_24_fu_226_reg[15]_0 [11]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_16_fu_194_reg[12] 
       (.C(ap_clk),
        .CE(\input_16_fu_194[15]_i_1_n_0 ),
        .D(\input_24_fu_226_reg[15]_0 [12]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_16_fu_194_reg[13] 
       (.C(ap_clk),
        .CE(\input_16_fu_194[15]_i_1_n_0 ),
        .D(\input_24_fu_226_reg[15]_0 [13]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_16_fu_194_reg[14] 
       (.C(ap_clk),
        .CE(\input_16_fu_194[15]_i_1_n_0 ),
        .D(\input_24_fu_226_reg[15]_0 [14]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_16_fu_194_reg[15] 
       (.C(ap_clk),
        .CE(\input_16_fu_194[15]_i_1_n_0 ),
        .D(\input_24_fu_226_reg[15]_0 [15]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_16_fu_194_reg[1] 
       (.C(ap_clk),
        .CE(\input_16_fu_194[15]_i_1_n_0 ),
        .D(\input_24_fu_226_reg[15]_0 [1]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_16_fu_194_reg[2] 
       (.C(ap_clk),
        .CE(\input_16_fu_194[15]_i_1_n_0 ),
        .D(\input_24_fu_226_reg[15]_0 [2]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_16_fu_194_reg[3] 
       (.C(ap_clk),
        .CE(\input_16_fu_194[15]_i_1_n_0 ),
        .D(\input_24_fu_226_reg[15]_0 [3]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_16_fu_194_reg[4] 
       (.C(ap_clk),
        .CE(\input_16_fu_194[15]_i_1_n_0 ),
        .D(\input_24_fu_226_reg[15]_0 [4]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_16_fu_194_reg[5] 
       (.C(ap_clk),
        .CE(\input_16_fu_194[15]_i_1_n_0 ),
        .D(\input_24_fu_226_reg[15]_0 [5]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_16_fu_194_reg[6] 
       (.C(ap_clk),
        .CE(\input_16_fu_194[15]_i_1_n_0 ),
        .D(\input_24_fu_226_reg[15]_0 [6]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_16_fu_194_reg[7] 
       (.C(ap_clk),
        .CE(\input_16_fu_194[15]_i_1_n_0 ),
        .D(\input_24_fu_226_reg[15]_0 [7]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_16_fu_194_reg[8] 
       (.C(ap_clk),
        .CE(\input_16_fu_194[15]_i_1_n_0 ),
        .D(\input_24_fu_226_reg[15]_0 [8]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_16_fu_194_reg[9] 
       (.C(ap_clk),
        .CE(\input_16_fu_194[15]_i_1_n_0 ),
        .D(\input_24_fu_226_reg[15]_0 [9]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h2000)) 
    \input_17_fu_198[15]_i_1 
       (.I0(\input_17_fu_198[15]_i_2_n_0 ),
        .I1(trunc_ln1_reg_935[2]),
        .I2(trunc_ln1_reg_935[1]),
        .I3(trunc_ln1_reg_935[0]),
        .O(\input_17_fu_198[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h00000800)) 
    \input_17_fu_198[15]_i_2 
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(Q),
        .I2(trunc_ln68_reg_939[2]),
        .I3(trunc_ln68_reg_939[1]),
        .I4(trunc_ln68_reg_939[0]),
        .O(\input_17_fu_198[15]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \input_17_fu_198_reg[0] 
       (.C(ap_clk),
        .CE(\input_17_fu_198[15]_i_1_n_0 ),
        .D(\input_24_fu_226_reg[15]_0 [0]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_17_fu_198_reg[10] 
       (.C(ap_clk),
        .CE(\input_17_fu_198[15]_i_1_n_0 ),
        .D(\input_24_fu_226_reg[15]_0 [10]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_17_fu_198_reg[11] 
       (.C(ap_clk),
        .CE(\input_17_fu_198[15]_i_1_n_0 ),
        .D(\input_24_fu_226_reg[15]_0 [11]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_17_fu_198_reg[12] 
       (.C(ap_clk),
        .CE(\input_17_fu_198[15]_i_1_n_0 ),
        .D(\input_24_fu_226_reg[15]_0 [12]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_17_fu_198_reg[13] 
       (.C(ap_clk),
        .CE(\input_17_fu_198[15]_i_1_n_0 ),
        .D(\input_24_fu_226_reg[15]_0 [13]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_17_fu_198_reg[14] 
       (.C(ap_clk),
        .CE(\input_17_fu_198[15]_i_1_n_0 ),
        .D(\input_24_fu_226_reg[15]_0 [14]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_17_fu_198_reg[15] 
       (.C(ap_clk),
        .CE(\input_17_fu_198[15]_i_1_n_0 ),
        .D(\input_24_fu_226_reg[15]_0 [15]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_17_fu_198_reg[1] 
       (.C(ap_clk),
        .CE(\input_17_fu_198[15]_i_1_n_0 ),
        .D(\input_24_fu_226_reg[15]_0 [1]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_17_fu_198_reg[2] 
       (.C(ap_clk),
        .CE(\input_17_fu_198[15]_i_1_n_0 ),
        .D(\input_24_fu_226_reg[15]_0 [2]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_17_fu_198_reg[3] 
       (.C(ap_clk),
        .CE(\input_17_fu_198[15]_i_1_n_0 ),
        .D(\input_24_fu_226_reg[15]_0 [3]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_17_fu_198_reg[4] 
       (.C(ap_clk),
        .CE(\input_17_fu_198[15]_i_1_n_0 ),
        .D(\input_24_fu_226_reg[15]_0 [4]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_17_fu_198_reg[5] 
       (.C(ap_clk),
        .CE(\input_17_fu_198[15]_i_1_n_0 ),
        .D(\input_24_fu_226_reg[15]_0 [5]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_17_fu_198_reg[6] 
       (.C(ap_clk),
        .CE(\input_17_fu_198[15]_i_1_n_0 ),
        .D(\input_24_fu_226_reg[15]_0 [6]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_17_fu_198_reg[7] 
       (.C(ap_clk),
        .CE(\input_17_fu_198[15]_i_1_n_0 ),
        .D(\input_24_fu_226_reg[15]_0 [7]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_17_fu_198_reg[8] 
       (.C(ap_clk),
        .CE(\input_17_fu_198[15]_i_1_n_0 ),
        .D(\input_24_fu_226_reg[15]_0 [8]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_17_fu_198_reg[9] 
       (.C(ap_clk),
        .CE(\input_17_fu_198[15]_i_1_n_0 ),
        .D(\input_24_fu_226_reg[15]_0 [9]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h2000)) 
    \input_18_fu_202[15]_i_1 
       (.I0(\input_18_fu_202[15]_i_2_n_0 ),
        .I1(trunc_ln1_reg_935[2]),
        .I2(trunc_ln1_reg_935[1]),
        .I3(trunc_ln1_reg_935[0]),
        .O(\input_18_fu_202[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    \input_18_fu_202[15]_i_2 
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(Q),
        .I2(trunc_ln68_reg_939[0]),
        .I3(trunc_ln68_reg_939[2]),
        .I4(trunc_ln68_reg_939[1]),
        .O(\input_18_fu_202[15]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \input_18_fu_202_reg[0] 
       (.C(ap_clk),
        .CE(\input_18_fu_202[15]_i_1_n_0 ),
        .D(\input_24_fu_226_reg[15]_0 [0]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_18_fu_202_reg[10] 
       (.C(ap_clk),
        .CE(\input_18_fu_202[15]_i_1_n_0 ),
        .D(\input_24_fu_226_reg[15]_0 [10]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_18_fu_202_reg[11] 
       (.C(ap_clk),
        .CE(\input_18_fu_202[15]_i_1_n_0 ),
        .D(\input_24_fu_226_reg[15]_0 [11]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_18_fu_202_reg[12] 
       (.C(ap_clk),
        .CE(\input_18_fu_202[15]_i_1_n_0 ),
        .D(\input_24_fu_226_reg[15]_0 [12]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_18_fu_202_reg[13] 
       (.C(ap_clk),
        .CE(\input_18_fu_202[15]_i_1_n_0 ),
        .D(\input_24_fu_226_reg[15]_0 [13]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_18_fu_202_reg[14] 
       (.C(ap_clk),
        .CE(\input_18_fu_202[15]_i_1_n_0 ),
        .D(\input_24_fu_226_reg[15]_0 [14]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_18_fu_202_reg[15] 
       (.C(ap_clk),
        .CE(\input_18_fu_202[15]_i_1_n_0 ),
        .D(\input_24_fu_226_reg[15]_0 [15]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_18_fu_202_reg[1] 
       (.C(ap_clk),
        .CE(\input_18_fu_202[15]_i_1_n_0 ),
        .D(\input_24_fu_226_reg[15]_0 [1]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_18_fu_202_reg[2] 
       (.C(ap_clk),
        .CE(\input_18_fu_202[15]_i_1_n_0 ),
        .D(\input_24_fu_226_reg[15]_0 [2]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_18_fu_202_reg[3] 
       (.C(ap_clk),
        .CE(\input_18_fu_202[15]_i_1_n_0 ),
        .D(\input_24_fu_226_reg[15]_0 [3]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_18_fu_202_reg[4] 
       (.C(ap_clk),
        .CE(\input_18_fu_202[15]_i_1_n_0 ),
        .D(\input_24_fu_226_reg[15]_0 [4]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_18_fu_202_reg[5] 
       (.C(ap_clk),
        .CE(\input_18_fu_202[15]_i_1_n_0 ),
        .D(\input_24_fu_226_reg[15]_0 [5]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_18_fu_202_reg[6] 
       (.C(ap_clk),
        .CE(\input_18_fu_202[15]_i_1_n_0 ),
        .D(\input_24_fu_226_reg[15]_0 [6]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_18_fu_202_reg[7] 
       (.C(ap_clk),
        .CE(\input_18_fu_202[15]_i_1_n_0 ),
        .D(\input_24_fu_226_reg[15]_0 [7]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_18_fu_202_reg[8] 
       (.C(ap_clk),
        .CE(\input_18_fu_202[15]_i_1_n_0 ),
        .D(\input_24_fu_226_reg[15]_0 [8]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_18_fu_202_reg[9] 
       (.C(ap_clk),
        .CE(\input_18_fu_202[15]_i_1_n_0 ),
        .D(\input_24_fu_226_reg[15]_0 [9]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \input_19_fu_206[15]_i_1 
       (.I0(trunc_ln1_reg_935[2]),
        .I1(trunc_ln1_reg_935[1]),
        .I2(trunc_ln1_reg_935[0]),
        .I3(Q),
        .I4(ap_enable_reg_pp0_iter1),
        .I5(trunc_ln68_reg_939[2]),
        .O(input_19_fu_2060));
  FDRE #(
    .INIT(1'b0)) 
    \input_19_fu_206_reg[0] 
       (.C(ap_clk),
        .CE(input_19_fu_2060),
        .D(\input_24_fu_226_reg[15]_0 [0]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_19_out[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_19_fu_206_reg[10] 
       (.C(ap_clk),
        .CE(input_19_fu_2060),
        .D(\input_24_fu_226_reg[15]_0 [10]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_19_out[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_19_fu_206_reg[11] 
       (.C(ap_clk),
        .CE(input_19_fu_2060),
        .D(\input_24_fu_226_reg[15]_0 [11]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_19_out[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_19_fu_206_reg[12] 
       (.C(ap_clk),
        .CE(input_19_fu_2060),
        .D(\input_24_fu_226_reg[15]_0 [12]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_19_out[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_19_fu_206_reg[13] 
       (.C(ap_clk),
        .CE(input_19_fu_2060),
        .D(\input_24_fu_226_reg[15]_0 [13]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_19_out[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_19_fu_206_reg[14] 
       (.C(ap_clk),
        .CE(input_19_fu_2060),
        .D(\input_24_fu_226_reg[15]_0 [14]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_19_out[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_19_fu_206_reg[15] 
       (.C(ap_clk),
        .CE(input_19_fu_2060),
        .D(\input_24_fu_226_reg[15]_0 [15]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_19_out[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_19_fu_206_reg[1] 
       (.C(ap_clk),
        .CE(input_19_fu_2060),
        .D(\input_24_fu_226_reg[15]_0 [1]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_19_out[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_19_fu_206_reg[2] 
       (.C(ap_clk),
        .CE(input_19_fu_2060),
        .D(\input_24_fu_226_reg[15]_0 [2]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_19_out[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_19_fu_206_reg[3] 
       (.C(ap_clk),
        .CE(input_19_fu_2060),
        .D(\input_24_fu_226_reg[15]_0 [3]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_19_out[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_19_fu_206_reg[4] 
       (.C(ap_clk),
        .CE(input_19_fu_2060),
        .D(\input_24_fu_226_reg[15]_0 [4]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_19_out[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_19_fu_206_reg[5] 
       (.C(ap_clk),
        .CE(input_19_fu_2060),
        .D(\input_24_fu_226_reg[15]_0 [5]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_19_out[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_19_fu_206_reg[6] 
       (.C(ap_clk),
        .CE(input_19_fu_2060),
        .D(\input_24_fu_226_reg[15]_0 [6]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_19_out[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_19_fu_206_reg[7] 
       (.C(ap_clk),
        .CE(input_19_fu_2060),
        .D(\input_24_fu_226_reg[15]_0 [7]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_19_out[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_19_fu_206_reg[8] 
       (.C(ap_clk),
        .CE(input_19_fu_2060),
        .D(\input_24_fu_226_reg[15]_0 [8]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_19_out[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_19_fu_206_reg[9] 
       (.C(ap_clk),
        .CE(input_19_fu_2060),
        .D(\input_24_fu_226_reg[15]_0 [9]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_19_out[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0002)) 
    \input_1_fu_134[15]_i_1 
       (.I0(\input_16_fu_194[15]_i_2_n_0 ),
        .I1(trunc_ln1_reg_935[1]),
        .I2(trunc_ln1_reg_935[2]),
        .I3(trunc_ln1_reg_935[0]),
        .O(input_1_fu_1340));
  FDRE #(
    .INIT(1'b0)) 
    \input_1_fu_134_reg[0] 
       (.C(ap_clk),
        .CE(input_1_fu_1340),
        .D(\input_24_fu_226_reg[15]_0 [0]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_1_fu_134_reg[10] 
       (.C(ap_clk),
        .CE(input_1_fu_1340),
        .D(\input_24_fu_226_reg[15]_0 [10]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_1_fu_134_reg[11] 
       (.C(ap_clk),
        .CE(input_1_fu_1340),
        .D(\input_24_fu_226_reg[15]_0 [11]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_1_fu_134_reg[12] 
       (.C(ap_clk),
        .CE(input_1_fu_1340),
        .D(\input_24_fu_226_reg[15]_0 [12]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_1_fu_134_reg[13] 
       (.C(ap_clk),
        .CE(input_1_fu_1340),
        .D(\input_24_fu_226_reg[15]_0 [13]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_1_fu_134_reg[14] 
       (.C(ap_clk),
        .CE(input_1_fu_1340),
        .D(\input_24_fu_226_reg[15]_0 [14]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_1_fu_134_reg[15] 
       (.C(ap_clk),
        .CE(input_1_fu_1340),
        .D(\input_24_fu_226_reg[15]_0 [15]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_1_fu_134_reg[1] 
       (.C(ap_clk),
        .CE(input_1_fu_1340),
        .D(\input_24_fu_226_reg[15]_0 [1]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_1_fu_134_reg[2] 
       (.C(ap_clk),
        .CE(input_1_fu_1340),
        .D(\input_24_fu_226_reg[15]_0 [2]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_1_fu_134_reg[3] 
       (.C(ap_clk),
        .CE(input_1_fu_1340),
        .D(\input_24_fu_226_reg[15]_0 [3]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_1_fu_134_reg[4] 
       (.C(ap_clk),
        .CE(input_1_fu_1340),
        .D(\input_24_fu_226_reg[15]_0 [4]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_1_fu_134_reg[5] 
       (.C(ap_clk),
        .CE(input_1_fu_1340),
        .D(\input_24_fu_226_reg[15]_0 [5]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_1_fu_134_reg[6] 
       (.C(ap_clk),
        .CE(input_1_fu_1340),
        .D(\input_24_fu_226_reg[15]_0 [6]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_1_fu_134_reg[7] 
       (.C(ap_clk),
        .CE(input_1_fu_1340),
        .D(\input_24_fu_226_reg[15]_0 [7]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_1_fu_134_reg[8] 
       (.C(ap_clk),
        .CE(input_1_fu_1340),
        .D(\input_24_fu_226_reg[15]_0 [8]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_1_fu_134_reg[9] 
       (.C(ap_clk),
        .CE(input_1_fu_1340),
        .D(\input_24_fu_226_reg[15]_0 [9]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \input_20_fu_210[15]_i_1 
       (.I0(trunc_ln1_reg_935[2]),
        .I1(trunc_ln68_reg_939[0]),
        .I2(trunc_ln68_reg_939[1]),
        .I3(trunc_ln68_reg_939[2]),
        .I4(Q),
        .I5(ap_enable_reg_pp0_iter1),
        .O(input_20_fu_2100));
  FDRE #(
    .INIT(1'b0)) 
    \input_20_fu_210_reg[0] 
       (.C(ap_clk),
        .CE(input_20_fu_2100),
        .D(\input_24_fu_226_reg[15]_0 [0]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_20_out[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_20_fu_210_reg[10] 
       (.C(ap_clk),
        .CE(input_20_fu_2100),
        .D(\input_24_fu_226_reg[15]_0 [10]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_20_out[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_20_fu_210_reg[11] 
       (.C(ap_clk),
        .CE(input_20_fu_2100),
        .D(\input_24_fu_226_reg[15]_0 [11]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_20_out[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_20_fu_210_reg[12] 
       (.C(ap_clk),
        .CE(input_20_fu_2100),
        .D(\input_24_fu_226_reg[15]_0 [12]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_20_out[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_20_fu_210_reg[13] 
       (.C(ap_clk),
        .CE(input_20_fu_2100),
        .D(\input_24_fu_226_reg[15]_0 [13]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_20_out[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_20_fu_210_reg[14] 
       (.C(ap_clk),
        .CE(input_20_fu_2100),
        .D(\input_24_fu_226_reg[15]_0 [14]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_20_out[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_20_fu_210_reg[15] 
       (.C(ap_clk),
        .CE(input_20_fu_2100),
        .D(\input_24_fu_226_reg[15]_0 [15]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_20_out[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_20_fu_210_reg[1] 
       (.C(ap_clk),
        .CE(input_20_fu_2100),
        .D(\input_24_fu_226_reg[15]_0 [1]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_20_out[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_20_fu_210_reg[2] 
       (.C(ap_clk),
        .CE(input_20_fu_2100),
        .D(\input_24_fu_226_reg[15]_0 [2]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_20_out[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_20_fu_210_reg[3] 
       (.C(ap_clk),
        .CE(input_20_fu_2100),
        .D(\input_24_fu_226_reg[15]_0 [3]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_20_out[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_20_fu_210_reg[4] 
       (.C(ap_clk),
        .CE(input_20_fu_2100),
        .D(\input_24_fu_226_reg[15]_0 [4]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_20_out[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_20_fu_210_reg[5] 
       (.C(ap_clk),
        .CE(input_20_fu_2100),
        .D(\input_24_fu_226_reg[15]_0 [5]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_20_out[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_20_fu_210_reg[6] 
       (.C(ap_clk),
        .CE(input_20_fu_2100),
        .D(\input_24_fu_226_reg[15]_0 [6]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_20_out[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_20_fu_210_reg[7] 
       (.C(ap_clk),
        .CE(input_20_fu_2100),
        .D(\input_24_fu_226_reg[15]_0 [7]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_20_out[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_20_fu_210_reg[8] 
       (.C(ap_clk),
        .CE(input_20_fu_2100),
        .D(\input_24_fu_226_reg[15]_0 [8]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_20_out[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_20_fu_210_reg[9] 
       (.C(ap_clk),
        .CE(input_20_fu_2100),
        .D(\input_24_fu_226_reg[15]_0 [9]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_20_out[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    \input_21_fu_214[15]_i_1 
       (.I0(trunc_ln1_reg_935[2]),
        .I1(trunc_ln68_reg_939[1]),
        .I2(trunc_ln68_reg_939[2]),
        .I3(trunc_ln68_reg_939[0]),
        .I4(Q),
        .I5(ap_enable_reg_pp0_iter1),
        .O(input_21_fu_2140));
  FDRE #(
    .INIT(1'b0)) 
    \input_21_fu_214_reg[0] 
       (.C(ap_clk),
        .CE(input_21_fu_2140),
        .D(\input_24_fu_226_reg[15]_0 [0]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_21_fu_214_reg[10] 
       (.C(ap_clk),
        .CE(input_21_fu_2140),
        .D(\input_24_fu_226_reg[15]_0 [10]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_21_fu_214_reg[11] 
       (.C(ap_clk),
        .CE(input_21_fu_2140),
        .D(\input_24_fu_226_reg[15]_0 [11]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_21_fu_214_reg[12] 
       (.C(ap_clk),
        .CE(input_21_fu_2140),
        .D(\input_24_fu_226_reg[15]_0 [12]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_21_fu_214_reg[13] 
       (.C(ap_clk),
        .CE(input_21_fu_2140),
        .D(\input_24_fu_226_reg[15]_0 [13]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_21_fu_214_reg[14] 
       (.C(ap_clk),
        .CE(input_21_fu_2140),
        .D(\input_24_fu_226_reg[15]_0 [14]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_21_fu_214_reg[15] 
       (.C(ap_clk),
        .CE(input_21_fu_2140),
        .D(\input_24_fu_226_reg[15]_0 [15]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_21_fu_214_reg[1] 
       (.C(ap_clk),
        .CE(input_21_fu_2140),
        .D(\input_24_fu_226_reg[15]_0 [1]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_21_fu_214_reg[2] 
       (.C(ap_clk),
        .CE(input_21_fu_2140),
        .D(\input_24_fu_226_reg[15]_0 [2]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_21_fu_214_reg[3] 
       (.C(ap_clk),
        .CE(input_21_fu_2140),
        .D(\input_24_fu_226_reg[15]_0 [3]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_21_fu_214_reg[4] 
       (.C(ap_clk),
        .CE(input_21_fu_2140),
        .D(\input_24_fu_226_reg[15]_0 [4]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_21_fu_214_reg[5] 
       (.C(ap_clk),
        .CE(input_21_fu_2140),
        .D(\input_24_fu_226_reg[15]_0 [5]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_21_fu_214_reg[6] 
       (.C(ap_clk),
        .CE(input_21_fu_2140),
        .D(\input_24_fu_226_reg[15]_0 [6]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_21_fu_214_reg[7] 
       (.C(ap_clk),
        .CE(input_21_fu_2140),
        .D(\input_24_fu_226_reg[15]_0 [7]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_21_fu_214_reg[8] 
       (.C(ap_clk),
        .CE(input_21_fu_2140),
        .D(\input_24_fu_226_reg[15]_0 [8]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_21_fu_214_reg[9] 
       (.C(ap_clk),
        .CE(input_21_fu_2140),
        .D(\input_24_fu_226_reg[15]_0 [9]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \input_22_fu_218[15]_i_1 
       (.I0(trunc_ln1_reg_935[2]),
        .I1(trunc_ln68_reg_939[0]),
        .I2(trunc_ln68_reg_939[1]),
        .I3(trunc_ln68_reg_939[2]),
        .I4(Q),
        .I5(ap_enable_reg_pp0_iter1),
        .O(input_22_fu_2180));
  FDRE #(
    .INIT(1'b0)) 
    \input_22_fu_218_reg[0] 
       (.C(ap_clk),
        .CE(input_22_fu_2180),
        .D(\input_24_fu_226_reg[15]_0 [0]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_22_fu_218_reg[10] 
       (.C(ap_clk),
        .CE(input_22_fu_2180),
        .D(\input_24_fu_226_reg[15]_0 [10]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_22_fu_218_reg[11] 
       (.C(ap_clk),
        .CE(input_22_fu_2180),
        .D(\input_24_fu_226_reg[15]_0 [11]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_22_fu_218_reg[12] 
       (.C(ap_clk),
        .CE(input_22_fu_2180),
        .D(\input_24_fu_226_reg[15]_0 [12]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_22_fu_218_reg[13] 
       (.C(ap_clk),
        .CE(input_22_fu_2180),
        .D(\input_24_fu_226_reg[15]_0 [13]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_22_fu_218_reg[14] 
       (.C(ap_clk),
        .CE(input_22_fu_2180),
        .D(\input_24_fu_226_reg[15]_0 [14]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_22_fu_218_reg[15] 
       (.C(ap_clk),
        .CE(input_22_fu_2180),
        .D(\input_24_fu_226_reg[15]_0 [15]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_22_fu_218_reg[1] 
       (.C(ap_clk),
        .CE(input_22_fu_2180),
        .D(\input_24_fu_226_reg[15]_0 [1]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_22_fu_218_reg[2] 
       (.C(ap_clk),
        .CE(input_22_fu_2180),
        .D(\input_24_fu_226_reg[15]_0 [2]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_22_fu_218_reg[3] 
       (.C(ap_clk),
        .CE(input_22_fu_2180),
        .D(\input_24_fu_226_reg[15]_0 [3]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_22_fu_218_reg[4] 
       (.C(ap_clk),
        .CE(input_22_fu_2180),
        .D(\input_24_fu_226_reg[15]_0 [4]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_22_fu_218_reg[5] 
       (.C(ap_clk),
        .CE(input_22_fu_2180),
        .D(\input_24_fu_226_reg[15]_0 [5]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_22_fu_218_reg[6] 
       (.C(ap_clk),
        .CE(input_22_fu_2180),
        .D(\input_24_fu_226_reg[15]_0 [6]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_22_fu_218_reg[7] 
       (.C(ap_clk),
        .CE(input_22_fu_2180),
        .D(\input_24_fu_226_reg[15]_0 [7]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_22_fu_218_reg[8] 
       (.C(ap_clk),
        .CE(input_22_fu_2180),
        .D(\input_24_fu_226_reg[15]_0 [8]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_22_fu_218_reg[9] 
       (.C(ap_clk),
        .CE(input_22_fu_2180),
        .D(\input_24_fu_226_reg[15]_0 [9]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \input_23_fu_222[15]_i_1 
       (.I0(trunc_ln1_reg_935[2]),
        .I1(trunc_ln68_reg_939[1]),
        .I2(trunc_ln68_reg_939[2]),
        .I3(trunc_ln68_reg_939[0]),
        .I4(Q),
        .I5(ap_enable_reg_pp0_iter1),
        .O(input_23_fu_2220));
  FDRE #(
    .INIT(1'b0)) 
    \input_23_fu_222_reg[0] 
       (.C(ap_clk),
        .CE(input_23_fu_2220),
        .D(\input_24_fu_226_reg[15]_0 [0]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_23_fu_222_reg[10] 
       (.C(ap_clk),
        .CE(input_23_fu_2220),
        .D(\input_24_fu_226_reg[15]_0 [10]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_23_fu_222_reg[11] 
       (.C(ap_clk),
        .CE(input_23_fu_2220),
        .D(\input_24_fu_226_reg[15]_0 [11]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_23_fu_222_reg[12] 
       (.C(ap_clk),
        .CE(input_23_fu_2220),
        .D(\input_24_fu_226_reg[15]_0 [12]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_23_fu_222_reg[13] 
       (.C(ap_clk),
        .CE(input_23_fu_2220),
        .D(\input_24_fu_226_reg[15]_0 [13]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_23_fu_222_reg[14] 
       (.C(ap_clk),
        .CE(input_23_fu_2220),
        .D(\input_24_fu_226_reg[15]_0 [14]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_23_fu_222_reg[15] 
       (.C(ap_clk),
        .CE(input_23_fu_2220),
        .D(\input_24_fu_226_reg[15]_0 [15]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_23_fu_222_reg[1] 
       (.C(ap_clk),
        .CE(input_23_fu_2220),
        .D(\input_24_fu_226_reg[15]_0 [1]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_23_fu_222_reg[2] 
       (.C(ap_clk),
        .CE(input_23_fu_2220),
        .D(\input_24_fu_226_reg[15]_0 [2]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_23_fu_222_reg[3] 
       (.C(ap_clk),
        .CE(input_23_fu_2220),
        .D(\input_24_fu_226_reg[15]_0 [3]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_23_fu_222_reg[4] 
       (.C(ap_clk),
        .CE(input_23_fu_2220),
        .D(\input_24_fu_226_reg[15]_0 [4]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_23_fu_222_reg[5] 
       (.C(ap_clk),
        .CE(input_23_fu_2220),
        .D(\input_24_fu_226_reg[15]_0 [5]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_23_fu_222_reg[6] 
       (.C(ap_clk),
        .CE(input_23_fu_2220),
        .D(\input_24_fu_226_reg[15]_0 [6]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_23_fu_222_reg[7] 
       (.C(ap_clk),
        .CE(input_23_fu_2220),
        .D(\input_24_fu_226_reg[15]_0 [7]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_23_fu_222_reg[8] 
       (.C(ap_clk),
        .CE(input_23_fu_2220),
        .D(\input_24_fu_226_reg[15]_0 [8]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_23_fu_222_reg[9] 
       (.C(ap_clk),
        .CE(input_23_fu_2220),
        .D(\input_24_fu_226_reg[15]_0 [9]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h8000)) 
    \input_24_fu_226[15]_i_1 
       (.I0(trunc_ln1_reg_935[2]),
        .I1(Q),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(trunc_ln68_reg_939[2]),
        .O(input_24_fu_2260));
  FDRE #(
    .INIT(1'b0)) 
    \input_24_fu_226_reg[0] 
       (.C(ap_clk),
        .CE(input_24_fu_2260),
        .D(\input_24_fu_226_reg[15]_0 [0]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_24_out[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_24_fu_226_reg[10] 
       (.C(ap_clk),
        .CE(input_24_fu_2260),
        .D(\input_24_fu_226_reg[15]_0 [10]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_24_out[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_24_fu_226_reg[11] 
       (.C(ap_clk),
        .CE(input_24_fu_2260),
        .D(\input_24_fu_226_reg[15]_0 [11]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_24_out[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_24_fu_226_reg[12] 
       (.C(ap_clk),
        .CE(input_24_fu_2260),
        .D(\input_24_fu_226_reg[15]_0 [12]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_24_out[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_24_fu_226_reg[13] 
       (.C(ap_clk),
        .CE(input_24_fu_2260),
        .D(\input_24_fu_226_reg[15]_0 [13]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_24_out[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_24_fu_226_reg[14] 
       (.C(ap_clk),
        .CE(input_24_fu_2260),
        .D(\input_24_fu_226_reg[15]_0 [14]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_24_out[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_24_fu_226_reg[15] 
       (.C(ap_clk),
        .CE(input_24_fu_2260),
        .D(\input_24_fu_226_reg[15]_0 [15]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_24_out[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_24_fu_226_reg[1] 
       (.C(ap_clk),
        .CE(input_24_fu_2260),
        .D(\input_24_fu_226_reg[15]_0 [1]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_24_out[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_24_fu_226_reg[2] 
       (.C(ap_clk),
        .CE(input_24_fu_2260),
        .D(\input_24_fu_226_reg[15]_0 [2]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_24_out[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_24_fu_226_reg[3] 
       (.C(ap_clk),
        .CE(input_24_fu_2260),
        .D(\input_24_fu_226_reg[15]_0 [3]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_24_out[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_24_fu_226_reg[4] 
       (.C(ap_clk),
        .CE(input_24_fu_2260),
        .D(\input_24_fu_226_reg[15]_0 [4]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_24_out[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_24_fu_226_reg[5] 
       (.C(ap_clk),
        .CE(input_24_fu_2260),
        .D(\input_24_fu_226_reg[15]_0 [5]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_24_out[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_24_fu_226_reg[6] 
       (.C(ap_clk),
        .CE(input_24_fu_2260),
        .D(\input_24_fu_226_reg[15]_0 [6]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_24_out[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_24_fu_226_reg[7] 
       (.C(ap_clk),
        .CE(input_24_fu_2260),
        .D(\input_24_fu_226_reg[15]_0 [7]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_24_out[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_24_fu_226_reg[8] 
       (.C(ap_clk),
        .CE(input_24_fu_2260),
        .D(\input_24_fu_226_reg[15]_0 [8]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_24_out[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_24_fu_226_reg[9] 
       (.C(ap_clk),
        .CE(input_24_fu_2260),
        .D(\input_24_fu_226_reg[15]_0 [9]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_24_out[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0002)) 
    \input_2_fu_138[15]_i_1 
       (.I0(\input_17_fu_198[15]_i_2_n_0 ),
        .I1(trunc_ln1_reg_935[1]),
        .I2(trunc_ln1_reg_935[2]),
        .I3(trunc_ln1_reg_935[0]),
        .O(input_2_fu_1380));
  FDRE #(
    .INIT(1'b0)) 
    \input_2_fu_138_reg[0] 
       (.C(ap_clk),
        .CE(input_2_fu_1380),
        .D(\input_24_fu_226_reg[15]_0 [0]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_2_fu_138_reg[10] 
       (.C(ap_clk),
        .CE(input_2_fu_1380),
        .D(\input_24_fu_226_reg[15]_0 [10]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_2_fu_138_reg[11] 
       (.C(ap_clk),
        .CE(input_2_fu_1380),
        .D(\input_24_fu_226_reg[15]_0 [11]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_2_fu_138_reg[12] 
       (.C(ap_clk),
        .CE(input_2_fu_1380),
        .D(\input_24_fu_226_reg[15]_0 [12]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_2_fu_138_reg[13] 
       (.C(ap_clk),
        .CE(input_2_fu_1380),
        .D(\input_24_fu_226_reg[15]_0 [13]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_2_fu_138_reg[14] 
       (.C(ap_clk),
        .CE(input_2_fu_1380),
        .D(\input_24_fu_226_reg[15]_0 [14]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_2_fu_138_reg[15] 
       (.C(ap_clk),
        .CE(input_2_fu_1380),
        .D(\input_24_fu_226_reg[15]_0 [15]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_2_fu_138_reg[1] 
       (.C(ap_clk),
        .CE(input_2_fu_1380),
        .D(\input_24_fu_226_reg[15]_0 [1]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_2_fu_138_reg[2] 
       (.C(ap_clk),
        .CE(input_2_fu_1380),
        .D(\input_24_fu_226_reg[15]_0 [2]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_2_fu_138_reg[3] 
       (.C(ap_clk),
        .CE(input_2_fu_1380),
        .D(\input_24_fu_226_reg[15]_0 [3]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_2_fu_138_reg[4] 
       (.C(ap_clk),
        .CE(input_2_fu_1380),
        .D(\input_24_fu_226_reg[15]_0 [4]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_2_fu_138_reg[5] 
       (.C(ap_clk),
        .CE(input_2_fu_1380),
        .D(\input_24_fu_226_reg[15]_0 [5]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_2_fu_138_reg[6] 
       (.C(ap_clk),
        .CE(input_2_fu_1380),
        .D(\input_24_fu_226_reg[15]_0 [6]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_2_fu_138_reg[7] 
       (.C(ap_clk),
        .CE(input_2_fu_1380),
        .D(\input_24_fu_226_reg[15]_0 [7]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_2_fu_138_reg[8] 
       (.C(ap_clk),
        .CE(input_2_fu_1380),
        .D(\input_24_fu_226_reg[15]_0 [8]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_2_fu_138_reg[9] 
       (.C(ap_clk),
        .CE(input_2_fu_1380),
        .D(\input_24_fu_226_reg[15]_0 [9]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0002)) 
    \input_3_fu_142[15]_i_1 
       (.I0(\input_18_fu_202[15]_i_2_n_0 ),
        .I1(trunc_ln1_reg_935[1]),
        .I2(trunc_ln1_reg_935[2]),
        .I3(trunc_ln1_reg_935[0]),
        .O(input_3_fu_1420));
  FDRE #(
    .INIT(1'b0)) 
    \input_3_fu_142_reg[0] 
       (.C(ap_clk),
        .CE(input_3_fu_1420),
        .D(\input_24_fu_226_reg[15]_0 [0]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_3_fu_142_reg[10] 
       (.C(ap_clk),
        .CE(input_3_fu_1420),
        .D(\input_24_fu_226_reg[15]_0 [10]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_3_fu_142_reg[11] 
       (.C(ap_clk),
        .CE(input_3_fu_1420),
        .D(\input_24_fu_226_reg[15]_0 [11]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_3_fu_142_reg[12] 
       (.C(ap_clk),
        .CE(input_3_fu_1420),
        .D(\input_24_fu_226_reg[15]_0 [12]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_3_fu_142_reg[13] 
       (.C(ap_clk),
        .CE(input_3_fu_1420),
        .D(\input_24_fu_226_reg[15]_0 [13]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_3_fu_142_reg[14] 
       (.C(ap_clk),
        .CE(input_3_fu_1420),
        .D(\input_24_fu_226_reg[15]_0 [14]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_3_fu_142_reg[15] 
       (.C(ap_clk),
        .CE(input_3_fu_1420),
        .D(\input_24_fu_226_reg[15]_0 [15]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_3_fu_142_reg[1] 
       (.C(ap_clk),
        .CE(input_3_fu_1420),
        .D(\input_24_fu_226_reg[15]_0 [1]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_3_fu_142_reg[2] 
       (.C(ap_clk),
        .CE(input_3_fu_1420),
        .D(\input_24_fu_226_reg[15]_0 [2]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_3_fu_142_reg[3] 
       (.C(ap_clk),
        .CE(input_3_fu_1420),
        .D(\input_24_fu_226_reg[15]_0 [3]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_3_fu_142_reg[4] 
       (.C(ap_clk),
        .CE(input_3_fu_1420),
        .D(\input_24_fu_226_reg[15]_0 [4]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_3_fu_142_reg[5] 
       (.C(ap_clk),
        .CE(input_3_fu_1420),
        .D(\input_24_fu_226_reg[15]_0 [5]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_3_fu_142_reg[6] 
       (.C(ap_clk),
        .CE(input_3_fu_1420),
        .D(\input_24_fu_226_reg[15]_0 [6]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_3_fu_142_reg[7] 
       (.C(ap_clk),
        .CE(input_3_fu_1420),
        .D(\input_24_fu_226_reg[15]_0 [7]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_3_fu_142_reg[8] 
       (.C(ap_clk),
        .CE(input_3_fu_1420),
        .D(\input_24_fu_226_reg[15]_0 [8]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_3_fu_142_reg[9] 
       (.C(ap_clk),
        .CE(input_3_fu_1420),
        .D(\input_24_fu_226_reg[15]_0 [9]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \input_4_fu_146[15]_i_1 
       (.I0(Q),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(trunc_ln68_reg_939[2]),
        .I3(trunc_ln1_reg_935[1]),
        .I4(trunc_ln1_reg_935[2]),
        .I5(trunc_ln1_reg_935[0]),
        .O(input_4_fu_1460));
  FDRE #(
    .INIT(1'b0)) 
    \input_4_fu_146_reg[0] 
       (.C(ap_clk),
        .CE(input_4_fu_1460),
        .D(\input_24_fu_226_reg[15]_0 [0]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_4_out[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_4_fu_146_reg[10] 
       (.C(ap_clk),
        .CE(input_4_fu_1460),
        .D(\input_24_fu_226_reg[15]_0 [10]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_4_out[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_4_fu_146_reg[11] 
       (.C(ap_clk),
        .CE(input_4_fu_1460),
        .D(\input_24_fu_226_reg[15]_0 [11]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_4_out[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_4_fu_146_reg[12] 
       (.C(ap_clk),
        .CE(input_4_fu_1460),
        .D(\input_24_fu_226_reg[15]_0 [12]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_4_out[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_4_fu_146_reg[13] 
       (.C(ap_clk),
        .CE(input_4_fu_1460),
        .D(\input_24_fu_226_reg[15]_0 [13]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_4_out[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_4_fu_146_reg[14] 
       (.C(ap_clk),
        .CE(input_4_fu_1460),
        .D(\input_24_fu_226_reg[15]_0 [14]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_4_out[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_4_fu_146_reg[15] 
       (.C(ap_clk),
        .CE(input_4_fu_1460),
        .D(\input_24_fu_226_reg[15]_0 [15]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_4_out[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_4_fu_146_reg[1] 
       (.C(ap_clk),
        .CE(input_4_fu_1460),
        .D(\input_24_fu_226_reg[15]_0 [1]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_4_out[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_4_fu_146_reg[2] 
       (.C(ap_clk),
        .CE(input_4_fu_1460),
        .D(\input_24_fu_226_reg[15]_0 [2]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_4_out[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_4_fu_146_reg[3] 
       (.C(ap_clk),
        .CE(input_4_fu_1460),
        .D(\input_24_fu_226_reg[15]_0 [3]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_4_out[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_4_fu_146_reg[4] 
       (.C(ap_clk),
        .CE(input_4_fu_1460),
        .D(\input_24_fu_226_reg[15]_0 [4]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_4_out[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_4_fu_146_reg[5] 
       (.C(ap_clk),
        .CE(input_4_fu_1460),
        .D(\input_24_fu_226_reg[15]_0 [5]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_4_out[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_4_fu_146_reg[6] 
       (.C(ap_clk),
        .CE(input_4_fu_1460),
        .D(\input_24_fu_226_reg[15]_0 [6]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_4_out[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_4_fu_146_reg[7] 
       (.C(ap_clk),
        .CE(input_4_fu_1460),
        .D(\input_24_fu_226_reg[15]_0 [7]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_4_out[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_4_fu_146_reg[8] 
       (.C(ap_clk),
        .CE(input_4_fu_1460),
        .D(\input_24_fu_226_reg[15]_0 [8]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_4_out[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_4_fu_146_reg[9] 
       (.C(ap_clk),
        .CE(input_4_fu_1460),
        .D(\input_24_fu_226_reg[15]_0 [9]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_4_out[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0008)) 
    \input_5_fu_150[15]_i_1 
       (.I0(\input_15_fu_190[15]_i_2_n_0 ),
        .I1(trunc_ln1_reg_935[0]),
        .I2(trunc_ln1_reg_935[1]),
        .I3(trunc_ln1_reg_935[2]),
        .O(input_5_fu_1500));
  FDRE #(
    .INIT(1'b0)) 
    \input_5_fu_150_reg[0] 
       (.C(ap_clk),
        .CE(input_5_fu_1500),
        .D(\input_24_fu_226_reg[15]_0 [0]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_5_out[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_5_fu_150_reg[10] 
       (.C(ap_clk),
        .CE(input_5_fu_1500),
        .D(\input_24_fu_226_reg[15]_0 [10]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_5_out[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_5_fu_150_reg[11] 
       (.C(ap_clk),
        .CE(input_5_fu_1500),
        .D(\input_24_fu_226_reg[15]_0 [11]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_5_out[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_5_fu_150_reg[12] 
       (.C(ap_clk),
        .CE(input_5_fu_1500),
        .D(\input_24_fu_226_reg[15]_0 [12]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_5_out[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_5_fu_150_reg[13] 
       (.C(ap_clk),
        .CE(input_5_fu_1500),
        .D(\input_24_fu_226_reg[15]_0 [13]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_5_out[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_5_fu_150_reg[14] 
       (.C(ap_clk),
        .CE(input_5_fu_1500),
        .D(\input_24_fu_226_reg[15]_0 [14]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_5_out[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_5_fu_150_reg[15] 
       (.C(ap_clk),
        .CE(input_5_fu_1500),
        .D(\input_24_fu_226_reg[15]_0 [15]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_5_out[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_5_fu_150_reg[1] 
       (.C(ap_clk),
        .CE(input_5_fu_1500),
        .D(\input_24_fu_226_reg[15]_0 [1]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_5_out[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_5_fu_150_reg[2] 
       (.C(ap_clk),
        .CE(input_5_fu_1500),
        .D(\input_24_fu_226_reg[15]_0 [2]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_5_out[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_5_fu_150_reg[3] 
       (.C(ap_clk),
        .CE(input_5_fu_1500),
        .D(\input_24_fu_226_reg[15]_0 [3]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_5_out[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_5_fu_150_reg[4] 
       (.C(ap_clk),
        .CE(input_5_fu_1500),
        .D(\input_24_fu_226_reg[15]_0 [4]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_5_out[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_5_fu_150_reg[5] 
       (.C(ap_clk),
        .CE(input_5_fu_1500),
        .D(\input_24_fu_226_reg[15]_0 [5]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_5_out[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_5_fu_150_reg[6] 
       (.C(ap_clk),
        .CE(input_5_fu_1500),
        .D(\input_24_fu_226_reg[15]_0 [6]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_5_out[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_5_fu_150_reg[7] 
       (.C(ap_clk),
        .CE(input_5_fu_1500),
        .D(\input_24_fu_226_reg[15]_0 [7]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_5_out[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_5_fu_150_reg[8] 
       (.C(ap_clk),
        .CE(input_5_fu_1500),
        .D(\input_24_fu_226_reg[15]_0 [8]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_5_out[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_5_fu_150_reg[9] 
       (.C(ap_clk),
        .CE(input_5_fu_1500),
        .D(\input_24_fu_226_reg[15]_0 [9]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_5_out[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0008)) 
    \input_6_fu_154[15]_i_1 
       (.I0(\input_16_fu_194[15]_i_2_n_0 ),
        .I1(trunc_ln1_reg_935[0]),
        .I2(trunc_ln1_reg_935[1]),
        .I3(trunc_ln1_reg_935[2]),
        .O(input_6_fu_1540));
  FDRE #(
    .INIT(1'b0)) 
    \input_6_fu_154_reg[0] 
       (.C(ap_clk),
        .CE(input_6_fu_1540),
        .D(\input_24_fu_226_reg[15]_0 [0]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_6_fu_154_reg[10] 
       (.C(ap_clk),
        .CE(input_6_fu_1540),
        .D(\input_24_fu_226_reg[15]_0 [10]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_6_fu_154_reg[11] 
       (.C(ap_clk),
        .CE(input_6_fu_1540),
        .D(\input_24_fu_226_reg[15]_0 [11]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_6_fu_154_reg[12] 
       (.C(ap_clk),
        .CE(input_6_fu_1540),
        .D(\input_24_fu_226_reg[15]_0 [12]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_6_fu_154_reg[13] 
       (.C(ap_clk),
        .CE(input_6_fu_1540),
        .D(\input_24_fu_226_reg[15]_0 [13]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_6_fu_154_reg[14] 
       (.C(ap_clk),
        .CE(input_6_fu_1540),
        .D(\input_24_fu_226_reg[15]_0 [14]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_6_fu_154_reg[15] 
       (.C(ap_clk),
        .CE(input_6_fu_1540),
        .D(\input_24_fu_226_reg[15]_0 [15]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_6_fu_154_reg[1] 
       (.C(ap_clk),
        .CE(input_6_fu_1540),
        .D(\input_24_fu_226_reg[15]_0 [1]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_6_fu_154_reg[2] 
       (.C(ap_clk),
        .CE(input_6_fu_1540),
        .D(\input_24_fu_226_reg[15]_0 [2]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_6_fu_154_reg[3] 
       (.C(ap_clk),
        .CE(input_6_fu_1540),
        .D(\input_24_fu_226_reg[15]_0 [3]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_6_fu_154_reg[4] 
       (.C(ap_clk),
        .CE(input_6_fu_1540),
        .D(\input_24_fu_226_reg[15]_0 [4]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_6_fu_154_reg[5] 
       (.C(ap_clk),
        .CE(input_6_fu_1540),
        .D(\input_24_fu_226_reg[15]_0 [5]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_6_fu_154_reg[6] 
       (.C(ap_clk),
        .CE(input_6_fu_1540),
        .D(\input_24_fu_226_reg[15]_0 [6]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_6_fu_154_reg[7] 
       (.C(ap_clk),
        .CE(input_6_fu_1540),
        .D(\input_24_fu_226_reg[15]_0 [7]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_6_fu_154_reg[8] 
       (.C(ap_clk),
        .CE(input_6_fu_1540),
        .D(\input_24_fu_226_reg[15]_0 [8]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_6_fu_154_reg[9] 
       (.C(ap_clk),
        .CE(input_6_fu_1540),
        .D(\input_24_fu_226_reg[15]_0 [9]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0008)) 
    \input_7_fu_158[15]_i_1 
       (.I0(\input_17_fu_198[15]_i_2_n_0 ),
        .I1(trunc_ln1_reg_935[0]),
        .I2(trunc_ln1_reg_935[1]),
        .I3(trunc_ln1_reg_935[2]),
        .O(input_7_fu_1580));
  FDRE #(
    .INIT(1'b0)) 
    \input_7_fu_158_reg[0] 
       (.C(ap_clk),
        .CE(input_7_fu_1580),
        .D(\input_24_fu_226_reg[15]_0 [0]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_7_fu_158_reg[10] 
       (.C(ap_clk),
        .CE(input_7_fu_1580),
        .D(\input_24_fu_226_reg[15]_0 [10]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_7_fu_158_reg[11] 
       (.C(ap_clk),
        .CE(input_7_fu_1580),
        .D(\input_24_fu_226_reg[15]_0 [11]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_7_fu_158_reg[12] 
       (.C(ap_clk),
        .CE(input_7_fu_1580),
        .D(\input_24_fu_226_reg[15]_0 [12]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_7_fu_158_reg[13] 
       (.C(ap_clk),
        .CE(input_7_fu_1580),
        .D(\input_24_fu_226_reg[15]_0 [13]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_7_fu_158_reg[14] 
       (.C(ap_clk),
        .CE(input_7_fu_1580),
        .D(\input_24_fu_226_reg[15]_0 [14]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_7_fu_158_reg[15] 
       (.C(ap_clk),
        .CE(input_7_fu_1580),
        .D(\input_24_fu_226_reg[15]_0 [15]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_7_fu_158_reg[1] 
       (.C(ap_clk),
        .CE(input_7_fu_1580),
        .D(\input_24_fu_226_reg[15]_0 [1]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_7_fu_158_reg[2] 
       (.C(ap_clk),
        .CE(input_7_fu_1580),
        .D(\input_24_fu_226_reg[15]_0 [2]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_7_fu_158_reg[3] 
       (.C(ap_clk),
        .CE(input_7_fu_1580),
        .D(\input_24_fu_226_reg[15]_0 [3]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_7_fu_158_reg[4] 
       (.C(ap_clk),
        .CE(input_7_fu_1580),
        .D(\input_24_fu_226_reg[15]_0 [4]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_7_fu_158_reg[5] 
       (.C(ap_clk),
        .CE(input_7_fu_1580),
        .D(\input_24_fu_226_reg[15]_0 [5]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_7_fu_158_reg[6] 
       (.C(ap_clk),
        .CE(input_7_fu_1580),
        .D(\input_24_fu_226_reg[15]_0 [6]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_7_fu_158_reg[7] 
       (.C(ap_clk),
        .CE(input_7_fu_1580),
        .D(\input_24_fu_226_reg[15]_0 [7]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_7_fu_158_reg[8] 
       (.C(ap_clk),
        .CE(input_7_fu_1580),
        .D(\input_24_fu_226_reg[15]_0 [8]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_7_fu_158_reg[9] 
       (.C(ap_clk),
        .CE(input_7_fu_1580),
        .D(\input_24_fu_226_reg[15]_0 [9]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0008)) 
    \input_8_fu_162[15]_i_1 
       (.I0(\input_18_fu_202[15]_i_2_n_0 ),
        .I1(trunc_ln1_reg_935[0]),
        .I2(trunc_ln1_reg_935[1]),
        .I3(trunc_ln1_reg_935[2]),
        .O(input_8_fu_1620));
  FDRE #(
    .INIT(1'b0)) 
    \input_8_fu_162_reg[0] 
       (.C(ap_clk),
        .CE(input_8_fu_1620),
        .D(\input_24_fu_226_reg[15]_0 [0]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_8_fu_162_reg[10] 
       (.C(ap_clk),
        .CE(input_8_fu_1620),
        .D(\input_24_fu_226_reg[15]_0 [10]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_8_fu_162_reg[11] 
       (.C(ap_clk),
        .CE(input_8_fu_1620),
        .D(\input_24_fu_226_reg[15]_0 [11]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_8_fu_162_reg[12] 
       (.C(ap_clk),
        .CE(input_8_fu_1620),
        .D(\input_24_fu_226_reg[15]_0 [12]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_8_fu_162_reg[13] 
       (.C(ap_clk),
        .CE(input_8_fu_1620),
        .D(\input_24_fu_226_reg[15]_0 [13]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_8_fu_162_reg[14] 
       (.C(ap_clk),
        .CE(input_8_fu_1620),
        .D(\input_24_fu_226_reg[15]_0 [14]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_8_fu_162_reg[15] 
       (.C(ap_clk),
        .CE(input_8_fu_1620),
        .D(\input_24_fu_226_reg[15]_0 [15]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_8_fu_162_reg[1] 
       (.C(ap_clk),
        .CE(input_8_fu_1620),
        .D(\input_24_fu_226_reg[15]_0 [1]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_8_fu_162_reg[2] 
       (.C(ap_clk),
        .CE(input_8_fu_1620),
        .D(\input_24_fu_226_reg[15]_0 [2]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_8_fu_162_reg[3] 
       (.C(ap_clk),
        .CE(input_8_fu_1620),
        .D(\input_24_fu_226_reg[15]_0 [3]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_8_fu_162_reg[4] 
       (.C(ap_clk),
        .CE(input_8_fu_1620),
        .D(\input_24_fu_226_reg[15]_0 [4]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_8_fu_162_reg[5] 
       (.C(ap_clk),
        .CE(input_8_fu_1620),
        .D(\input_24_fu_226_reg[15]_0 [5]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_8_fu_162_reg[6] 
       (.C(ap_clk),
        .CE(input_8_fu_1620),
        .D(\input_24_fu_226_reg[15]_0 [6]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_8_fu_162_reg[7] 
       (.C(ap_clk),
        .CE(input_8_fu_1620),
        .D(\input_24_fu_226_reg[15]_0 [7]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_8_fu_162_reg[8] 
       (.C(ap_clk),
        .CE(input_8_fu_1620),
        .D(\input_24_fu_226_reg[15]_0 [8]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_8_fu_162_reg[9] 
       (.C(ap_clk),
        .CE(input_8_fu_1620),
        .D(\input_24_fu_226_reg[15]_0 [9]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \input_9_fu_166[15]_i_1 
       (.I0(Q),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(trunc_ln68_reg_939[2]),
        .I3(trunc_ln1_reg_935[0]),
        .I4(trunc_ln1_reg_935[1]),
        .I5(trunc_ln1_reg_935[2]),
        .O(input_9_fu_1660));
  FDRE #(
    .INIT(1'b0)) 
    \input_9_fu_166_reg[0] 
       (.C(ap_clk),
        .CE(input_9_fu_1660),
        .D(\input_24_fu_226_reg[15]_0 [0]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_9_out[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_9_fu_166_reg[10] 
       (.C(ap_clk),
        .CE(input_9_fu_1660),
        .D(\input_24_fu_226_reg[15]_0 [10]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_9_out[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_9_fu_166_reg[11] 
       (.C(ap_clk),
        .CE(input_9_fu_1660),
        .D(\input_24_fu_226_reg[15]_0 [11]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_9_out[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_9_fu_166_reg[12] 
       (.C(ap_clk),
        .CE(input_9_fu_1660),
        .D(\input_24_fu_226_reg[15]_0 [12]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_9_out[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_9_fu_166_reg[13] 
       (.C(ap_clk),
        .CE(input_9_fu_1660),
        .D(\input_24_fu_226_reg[15]_0 [13]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_9_out[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_9_fu_166_reg[14] 
       (.C(ap_clk),
        .CE(input_9_fu_1660),
        .D(\input_24_fu_226_reg[15]_0 [14]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_9_out[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_9_fu_166_reg[15] 
       (.C(ap_clk),
        .CE(input_9_fu_1660),
        .D(\input_24_fu_226_reg[15]_0 [15]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_9_out[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_9_fu_166_reg[1] 
       (.C(ap_clk),
        .CE(input_9_fu_1660),
        .D(\input_24_fu_226_reg[15]_0 [1]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_9_out[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_9_fu_166_reg[2] 
       (.C(ap_clk),
        .CE(input_9_fu_1660),
        .D(\input_24_fu_226_reg[15]_0 [2]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_9_out[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_9_fu_166_reg[3] 
       (.C(ap_clk),
        .CE(input_9_fu_1660),
        .D(\input_24_fu_226_reg[15]_0 [3]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_9_out[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_9_fu_166_reg[4] 
       (.C(ap_clk),
        .CE(input_9_fu_1660),
        .D(\input_24_fu_226_reg[15]_0 [4]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_9_out[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_9_fu_166_reg[5] 
       (.C(ap_clk),
        .CE(input_9_fu_1660),
        .D(\input_24_fu_226_reg[15]_0 [5]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_9_out[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_9_fu_166_reg[6] 
       (.C(ap_clk),
        .CE(input_9_fu_1660),
        .D(\input_24_fu_226_reg[15]_0 [6]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_9_out[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_9_fu_166_reg[7] 
       (.C(ap_clk),
        .CE(input_9_fu_1660),
        .D(\input_24_fu_226_reg[15]_0 [7]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_9_out[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_9_fu_166_reg[8] 
       (.C(ap_clk),
        .CE(input_9_fu_1660),
        .D(\input_24_fu_226_reg[15]_0 [8]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_9_out[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_9_fu_166_reg[9] 
       (.C(ap_clk),
        .CE(input_9_fu_1660),
        .D(\input_24_fu_226_reg[15]_0 [9]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_9_out[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0002)) 
    \input_fu_130[15]_i_1 
       (.I0(\input_15_fu_190[15]_i_2_n_0 ),
        .I1(trunc_ln1_reg_935[1]),
        .I2(trunc_ln1_reg_935[2]),
        .I3(trunc_ln1_reg_935[0]),
        .O(input_fu_1300));
  FDRE #(
    .INIT(1'b0)) 
    \input_fu_130_reg[0] 
       (.C(ap_clk),
        .CE(input_fu_1300),
        .D(\input_24_fu_226_reg[15]_0 [0]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_out[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_fu_130_reg[10] 
       (.C(ap_clk),
        .CE(input_fu_1300),
        .D(\input_24_fu_226_reg[15]_0 [10]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_out[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_fu_130_reg[11] 
       (.C(ap_clk),
        .CE(input_fu_1300),
        .D(\input_24_fu_226_reg[15]_0 [11]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_out[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_fu_130_reg[12] 
       (.C(ap_clk),
        .CE(input_fu_1300),
        .D(\input_24_fu_226_reg[15]_0 [12]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_out[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_fu_130_reg[13] 
       (.C(ap_clk),
        .CE(input_fu_1300),
        .D(\input_24_fu_226_reg[15]_0 [13]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_out[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_fu_130_reg[14] 
       (.C(ap_clk),
        .CE(input_fu_1300),
        .D(\input_24_fu_226_reg[15]_0 [14]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_out[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_fu_130_reg[15] 
       (.C(ap_clk),
        .CE(input_fu_1300),
        .D(\input_24_fu_226_reg[15]_0 [15]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_out[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_fu_130_reg[1] 
       (.C(ap_clk),
        .CE(input_fu_1300),
        .D(\input_24_fu_226_reg[15]_0 [1]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_out[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_fu_130_reg[2] 
       (.C(ap_clk),
        .CE(input_fu_1300),
        .D(\input_24_fu_226_reg[15]_0 [2]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_out[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_fu_130_reg[3] 
       (.C(ap_clk),
        .CE(input_fu_1300),
        .D(\input_24_fu_226_reg[15]_0 [3]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_out[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_fu_130_reg[4] 
       (.C(ap_clk),
        .CE(input_fu_1300),
        .D(\input_24_fu_226_reg[15]_0 [4]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_out[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_fu_130_reg[5] 
       (.C(ap_clk),
        .CE(input_fu_1300),
        .D(\input_24_fu_226_reg[15]_0 [5]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_out[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_fu_130_reg[6] 
       (.C(ap_clk),
        .CE(input_fu_1300),
        .D(\input_24_fu_226_reg[15]_0 [6]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_out[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_fu_130_reg[7] 
       (.C(ap_clk),
        .CE(input_fu_1300),
        .D(\input_24_fu_226_reg[15]_0 [7]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_out[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_fu_130_reg[8] 
       (.C(ap_clk),
        .CE(input_fu_1300),
        .D(\input_24_fu_226_reg[15]_0 [8]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_out[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_fu_130_reg[9] 
       (.C(ap_clk),
        .CE(input_fu_1300),
        .D(\input_24_fu_226_reg[15]_0 [9]),
        .Q(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_out[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    p_reg_reg_i_10
       (.I0(p_reg_reg_i_42_n_0),
        .I1(select_ln89_fu_561_p3[1]),
        .I2(p_reg_reg_i_43_n_0),
        .I3(select_ln89_fu_561_p3[0]),
        .I4(p_reg_reg_i_44_n_0),
        .O(A[7]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_10__0
       (.I0(p_reg_reg_i_44__0_n_0),
        .I1(\tmp_18_reg_1643_reg[15] ),
        .I2(p_reg_reg_i_45__0_n_0),
        .I3(\tmp_18_reg_1643_reg[15]_0 ),
        .I4(p_reg_reg_i_46__0_n_0),
        .O(\select_ln89_reg_1613_reg[1] [6]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_10__1
       (.I0(p_reg_reg_i_44__1_n_0),
        .I1(\tmp_20_reg_1658_reg[15] ),
        .I2(p_reg_reg_i_45__1_n_0),
        .I3(\tmp_20_reg_1658_reg[15]_0 ),
        .I4(p_reg_reg_i_46__1_n_0),
        .O(\select_ln89_reg_1613_pp0_iter1_reg_reg[1] [6]));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    p_reg_reg_i_11
       (.I0(p_reg_reg_i_45_n_0),
        .I1(select_ln89_fu_561_p3[1]),
        .I2(p_reg_reg_i_46_n_0),
        .I3(select_ln89_fu_561_p3[0]),
        .I4(p_reg_reg_i_47_n_0),
        .O(A[6]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_11__0
       (.I0(p_reg_reg_i_47__0_n_0),
        .I1(\tmp_18_reg_1643_reg[15] ),
        .I2(p_reg_reg_i_48__0_n_0),
        .I3(\tmp_18_reg_1643_reg[15]_0 ),
        .I4(p_reg_reg_i_49__0_n_0),
        .O(\select_ln89_reg_1613_reg[1] [5]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_11__1
       (.I0(p_reg_reg_i_47__1_n_0),
        .I1(\tmp_20_reg_1658_reg[15] ),
        .I2(p_reg_reg_i_48__1_n_0),
        .I3(\tmp_20_reg_1658_reg[15]_0 ),
        .I4(p_reg_reg_i_49__1_n_0),
        .O(\select_ln89_reg_1613_pp0_iter1_reg_reg[1] [5]));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    p_reg_reg_i_12
       (.I0(p_reg_reg_i_48_n_0),
        .I1(select_ln89_fu_561_p3[1]),
        .I2(p_reg_reg_i_49_n_0),
        .I3(select_ln89_fu_561_p3[0]),
        .I4(p_reg_reg_i_50_n_0),
        .O(A[5]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_12__0
       (.I0(p_reg_reg_i_50__0_n_0),
        .I1(\tmp_18_reg_1643_reg[15] ),
        .I2(p_reg_reg_i_51__0_n_0),
        .I3(\tmp_18_reg_1643_reg[15]_0 ),
        .I4(p_reg_reg_i_52__0_n_0),
        .O(\select_ln89_reg_1613_reg[1] [4]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_12__1
       (.I0(p_reg_reg_i_50__1_n_0),
        .I1(\tmp_20_reg_1658_reg[15] ),
        .I2(p_reg_reg_i_51__1_n_0),
        .I3(\tmp_20_reg_1658_reg[15]_0 ),
        .I4(p_reg_reg_i_52__1_n_0),
        .O(\select_ln89_reg_1613_pp0_iter1_reg_reg[1] [4]));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    p_reg_reg_i_13
       (.I0(p_reg_reg_i_51_n_0),
        .I1(select_ln89_fu_561_p3[1]),
        .I2(p_reg_reg_i_52_n_0),
        .I3(select_ln89_fu_561_p3[0]),
        .I4(p_reg_reg_i_53_n_0),
        .O(A[4]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_13__0
       (.I0(p_reg_reg_i_53__0_n_0),
        .I1(\tmp_18_reg_1643_reg[15] ),
        .I2(p_reg_reg_i_54__0_n_0),
        .I3(\tmp_18_reg_1643_reg[15]_0 ),
        .I4(p_reg_reg_i_55__0_n_0),
        .O(\select_ln89_reg_1613_reg[1] [3]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_13__1
       (.I0(p_reg_reg_i_53__1_n_0),
        .I1(\tmp_20_reg_1658_reg[15] ),
        .I2(p_reg_reg_i_54__1_n_0),
        .I3(\tmp_20_reg_1658_reg[15]_0 ),
        .I4(p_reg_reg_i_55__1_n_0),
        .O(\select_ln89_reg_1613_pp0_iter1_reg_reg[1] [3]));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    p_reg_reg_i_14
       (.I0(p_reg_reg_i_54_n_0),
        .I1(select_ln89_fu_561_p3[1]),
        .I2(p_reg_reg_i_55_n_0),
        .I3(select_ln89_fu_561_p3[0]),
        .I4(p_reg_reg_i_56_n_0),
        .O(A[3]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_14__0
       (.I0(p_reg_reg_i_56__0_n_0),
        .I1(\tmp_18_reg_1643_reg[15] ),
        .I2(p_reg_reg_i_57__0_n_0),
        .I3(\tmp_18_reg_1643_reg[15]_0 ),
        .I4(p_reg_reg_i_58__0_n_0),
        .O(\select_ln89_reg_1613_reg[1] [2]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_14__1
       (.I0(p_reg_reg_i_56__1_n_0),
        .I1(\tmp_20_reg_1658_reg[15] ),
        .I2(p_reg_reg_i_57__1_n_0),
        .I3(\tmp_20_reg_1658_reg[15]_0 ),
        .I4(p_reg_reg_i_58__1_n_0),
        .O(\select_ln89_reg_1613_pp0_iter1_reg_reg[1] [2]));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    p_reg_reg_i_15
       (.I0(p_reg_reg_i_57_n_0),
        .I1(select_ln89_fu_561_p3[1]),
        .I2(p_reg_reg_i_58_n_0),
        .I3(select_ln89_fu_561_p3[0]),
        .I4(p_reg_reg_i_59_n_0),
        .O(A[2]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_15__0
       (.I0(p_reg_reg_i_59__0_n_0),
        .I1(\tmp_18_reg_1643_reg[15] ),
        .I2(p_reg_reg_i_60__0_n_0),
        .I3(\tmp_18_reg_1643_reg[15]_0 ),
        .I4(p_reg_reg_i_61__0_n_0),
        .O(\select_ln89_reg_1613_reg[1] [1]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_15__1
       (.I0(p_reg_reg_i_59__1_n_0),
        .I1(\tmp_20_reg_1658_reg[15] ),
        .I2(p_reg_reg_i_60__1_n_0),
        .I3(\tmp_20_reg_1658_reg[15]_0 ),
        .I4(p_reg_reg_i_61__1_n_0),
        .O(\select_ln89_reg_1613_pp0_iter1_reg_reg[1] [1]));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    p_reg_reg_i_16
       (.I0(p_reg_reg_i_60_n_0),
        .I1(select_ln89_fu_561_p3[1]),
        .I2(p_reg_reg_i_61_n_0),
        .I3(select_ln89_fu_561_p3[0]),
        .I4(p_reg_reg_i_62_n_0),
        .O(A[1]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_16__0
       (.I0(p_reg_reg_i_62__0_n_0),
        .I1(\tmp_18_reg_1643_reg[15] ),
        .I2(p_reg_reg_i_63__0_n_0),
        .I3(\tmp_18_reg_1643_reg[15]_0 ),
        .I4(p_reg_reg_i_64__0_n_0),
        .O(\select_ln89_reg_1613_reg[1] [0]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_16__1
       (.I0(p_reg_reg_i_62__1_n_0),
        .I1(\tmp_20_reg_1658_reg[15] ),
        .I2(p_reg_reg_i_63__1_n_0),
        .I3(\tmp_20_reg_1658_reg[15]_0 ),
        .I4(p_reg_reg_i_64__1_n_0),
        .O(\select_ln89_reg_1613_pp0_iter1_reg_reg[1] [0]));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    p_reg_reg_i_17
       (.I0(p_reg_reg_i_63_n_0),
        .I1(select_ln89_fu_561_p3[1]),
        .I2(p_reg_reg_i_64_n_0),
        .I3(select_ln89_fu_561_p3[0]),
        .I4(p_reg_reg_i_65_n_0),
        .O(A[0]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_17__0
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out[15]),
        .I1(sel[1]),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out[15]),
        .I3(sel[0]),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out[15]),
        .O(p_reg_reg_i_17__0_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_17__1
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_14_out[15]),
        .I1(\tmp_20_reg_1658_reg[15]_1 ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out[15]),
        .I3(\tmp_20_reg_1658_reg[15]_2 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out[15]),
        .O(p_reg_reg_i_17__1_n_0));
  LUT5 #(
    .INIT(32'hBB88B8B8)) 
    p_reg_reg_i_18
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out[15]),
        .I1(\tmp_15_reg_1628_reg[15] ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out[15]),
        .I3(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_10_out[15]),
        .I4(\tmp_15_reg_1628_reg[15]_0 ),
        .O(p_reg_reg_i_18_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_18__0
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out[15]),
        .I1(sel[1]),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out[15]),
        .I3(sel[0]),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out[15]),
        .O(p_reg_reg_i_18__0_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_18__1
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_9_out[15]),
        .I1(\tmp_20_reg_1658_reg[15]_1 ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out[15]),
        .I3(\tmp_20_reg_1658_reg[15]_2 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out[15]),
        .O(p_reg_reg_i_18__1_n_0));
  LUT5 #(
    .INIT(32'h47444777)) 
    p_reg_reg_i_19
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out[15]),
        .I1(\tmp_15_reg_1628_reg[15] ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_5_out[15]),
        .I3(\tmp_15_reg_1628_reg[15]_0 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out[15]),
        .O(p_reg_reg_i_19_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_19__0
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out[15]),
        .I1(sel[1]),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out[15]),
        .I3(sel[0]),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out[15]),
        .O(p_reg_reg_i_19__0_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_19__1
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_4_out[15]),
        .I1(\tmp_20_reg_1658_reg[15]_1 ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out[15]),
        .I3(\tmp_20_reg_1658_reg[15]_2 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out[15]),
        .O(p_reg_reg_i_19__1_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_1__0
       (.I0(p_reg_reg_i_17__0_n_0),
        .I1(\tmp_18_reg_1643_reg[15] ),
        .I2(p_reg_reg_i_18__0_n_0),
        .I3(\tmp_18_reg_1643_reg[15]_0 ),
        .I4(p_reg_reg_i_19__0_n_0),
        .O(\select_ln89_reg_1613_reg[1] [15]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_1__1
       (.I0(p_reg_reg_i_17__1_n_0),
        .I1(\tmp_20_reg_1658_reg[15] ),
        .I2(p_reg_reg_i_18__1_n_0),
        .I3(\tmp_20_reg_1658_reg[15]_0 ),
        .I4(p_reg_reg_i_19__1_n_0),
        .O(\select_ln89_reg_1613_pp0_iter1_reg_reg[1] [15]));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    p_reg_reg_i_2
       (.I0(p_reg_reg_i_18_n_0),
        .I1(select_ln89_fu_561_p3[1]),
        .I2(p_reg_reg_i_19_n_0),
        .I3(select_ln89_fu_561_p3[0]),
        .I4(p_reg_reg_i_20_n_0),
        .O(A[15]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_20
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out[15]),
        .I1(\tmp_15_reg_1628_reg[15] ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_out[15]),
        .I3(\tmp_15_reg_1628_reg[15]_0 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out[15]),
        .O(p_reg_reg_i_20_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_20__0
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out[14]),
        .I1(sel[1]),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out[14]),
        .I3(sel[0]),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out[14]),
        .O(p_reg_reg_i_20__0_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_20__1
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_14_out[14]),
        .I1(\tmp_20_reg_1658_reg[15]_1 ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out[14]),
        .I3(\tmp_20_reg_1658_reg[15]_2 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out[14]),
        .O(p_reg_reg_i_20__1_n_0));
  LUT5 #(
    .INIT(32'hBB88B8B8)) 
    p_reg_reg_i_21
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out[14]),
        .I1(\tmp_15_reg_1628_reg[15] ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out[14]),
        .I3(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_10_out[14]),
        .I4(\tmp_15_reg_1628_reg[15]_0 ),
        .O(p_reg_reg_i_21_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_21__0
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out[14]),
        .I1(sel[1]),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out[14]),
        .I3(sel[0]),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out[14]),
        .O(p_reg_reg_i_21__0_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_21__1
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_9_out[14]),
        .I1(\tmp_20_reg_1658_reg[15]_1 ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out[14]),
        .I3(\tmp_20_reg_1658_reg[15]_2 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out[14]),
        .O(p_reg_reg_i_21__1_n_0));
  LUT5 #(
    .INIT(32'h47444777)) 
    p_reg_reg_i_22
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out[14]),
        .I1(\tmp_15_reg_1628_reg[15] ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_5_out[14]),
        .I3(\tmp_15_reg_1628_reg[15]_0 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out[14]),
        .O(p_reg_reg_i_22_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_22__0
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out[14]),
        .I1(sel[1]),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out[14]),
        .I3(sel[0]),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out[14]),
        .O(p_reg_reg_i_22__0_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_22__1
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_4_out[14]),
        .I1(\tmp_20_reg_1658_reg[15]_1 ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out[14]),
        .I3(\tmp_20_reg_1658_reg[15]_2 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out[14]),
        .O(p_reg_reg_i_22__1_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_23
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out[14]),
        .I1(\tmp_15_reg_1628_reg[15] ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_out[14]),
        .I3(\tmp_15_reg_1628_reg[15]_0 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out[14]),
        .O(p_reg_reg_i_23_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_23__0
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out[13]),
        .I1(sel[1]),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out[13]),
        .I3(sel[0]),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out[13]),
        .O(p_reg_reg_i_23__0_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_23__1
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_14_out[13]),
        .I1(\tmp_20_reg_1658_reg[15]_1 ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out[13]),
        .I3(\tmp_20_reg_1658_reg[15]_2 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out[13]),
        .O(p_reg_reg_i_23__1_n_0));
  LUT5 #(
    .INIT(32'hBB88B8B8)) 
    p_reg_reg_i_24
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out[13]),
        .I1(\tmp_15_reg_1628_reg[15] ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out[13]),
        .I3(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_10_out[13]),
        .I4(\tmp_15_reg_1628_reg[15]_0 ),
        .O(p_reg_reg_i_24_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_24__0
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out[13]),
        .I1(sel[1]),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out[13]),
        .I3(sel[0]),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out[13]),
        .O(p_reg_reg_i_24__0_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_24__1
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_9_out[13]),
        .I1(\tmp_20_reg_1658_reg[15]_1 ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out[13]),
        .I3(\tmp_20_reg_1658_reg[15]_2 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out[13]),
        .O(p_reg_reg_i_24__1_n_0));
  LUT5 #(
    .INIT(32'h47444777)) 
    p_reg_reg_i_25
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out[13]),
        .I1(\tmp_15_reg_1628_reg[15] ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_5_out[13]),
        .I3(\tmp_15_reg_1628_reg[15]_0 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out[13]),
        .O(p_reg_reg_i_25_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_25__0
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out[13]),
        .I1(sel[1]),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out[13]),
        .I3(sel[0]),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out[13]),
        .O(p_reg_reg_i_25__0_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_25__1
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_4_out[13]),
        .I1(\tmp_20_reg_1658_reg[15]_1 ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out[13]),
        .I3(\tmp_20_reg_1658_reg[15]_2 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out[13]),
        .O(p_reg_reg_i_25__1_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_26
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out[13]),
        .I1(\tmp_15_reg_1628_reg[15] ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_out[13]),
        .I3(\tmp_15_reg_1628_reg[15]_0 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out[13]),
        .O(p_reg_reg_i_26_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_26__0
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out[12]),
        .I1(sel[1]),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out[12]),
        .I3(sel[0]),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out[12]),
        .O(p_reg_reg_i_26__0_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_26__1
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_14_out[12]),
        .I1(\tmp_20_reg_1658_reg[15]_1 ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out[12]),
        .I3(\tmp_20_reg_1658_reg[15]_2 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out[12]),
        .O(p_reg_reg_i_26__1_n_0));
  LUT5 #(
    .INIT(32'hBB88B8B8)) 
    p_reg_reg_i_27
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out[12]),
        .I1(\tmp_15_reg_1628_reg[15] ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out[12]),
        .I3(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_10_out[12]),
        .I4(\tmp_15_reg_1628_reg[15]_0 ),
        .O(p_reg_reg_i_27_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_27__0
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out[12]),
        .I1(sel[1]),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out[12]),
        .I3(sel[0]),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out[12]),
        .O(p_reg_reg_i_27__0_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_27__1
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_9_out[12]),
        .I1(\tmp_20_reg_1658_reg[15]_1 ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out[12]),
        .I3(\tmp_20_reg_1658_reg[15]_2 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out[12]),
        .O(p_reg_reg_i_27__1_n_0));
  LUT5 #(
    .INIT(32'h47444777)) 
    p_reg_reg_i_28
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out[12]),
        .I1(\tmp_15_reg_1628_reg[15] ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_5_out[12]),
        .I3(\tmp_15_reg_1628_reg[15]_0 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out[12]),
        .O(p_reg_reg_i_28_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_28__0
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out[12]),
        .I1(sel[1]),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out[12]),
        .I3(sel[0]),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out[12]),
        .O(p_reg_reg_i_28__0_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_28__1
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_4_out[12]),
        .I1(\tmp_20_reg_1658_reg[15]_1 ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out[12]),
        .I3(\tmp_20_reg_1658_reg[15]_2 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out[12]),
        .O(p_reg_reg_i_28__1_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_29
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out[12]),
        .I1(\tmp_15_reg_1628_reg[15] ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_out[12]),
        .I3(\tmp_15_reg_1628_reg[15]_0 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out[12]),
        .O(p_reg_reg_i_29_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_29__0
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out[11]),
        .I1(sel[1]),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out[11]),
        .I3(sel[0]),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out[11]),
        .O(p_reg_reg_i_29__0_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_29__1
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_14_out[11]),
        .I1(\tmp_20_reg_1658_reg[15]_1 ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out[11]),
        .I3(\tmp_20_reg_1658_reg[15]_2 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out[11]),
        .O(p_reg_reg_i_29__1_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_2__0
       (.I0(p_reg_reg_i_20__0_n_0),
        .I1(\tmp_18_reg_1643_reg[15] ),
        .I2(p_reg_reg_i_21__0_n_0),
        .I3(\tmp_18_reg_1643_reg[15]_0 ),
        .I4(p_reg_reg_i_22__0_n_0),
        .O(\select_ln89_reg_1613_reg[1] [14]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_2__1
       (.I0(p_reg_reg_i_20__1_n_0),
        .I1(\tmp_20_reg_1658_reg[15] ),
        .I2(p_reg_reg_i_21__1_n_0),
        .I3(\tmp_20_reg_1658_reg[15]_0 ),
        .I4(p_reg_reg_i_22__1_n_0),
        .O(\select_ln89_reg_1613_pp0_iter1_reg_reg[1] [14]));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    p_reg_reg_i_3
       (.I0(p_reg_reg_i_21_n_0),
        .I1(select_ln89_fu_561_p3[1]),
        .I2(p_reg_reg_i_22_n_0),
        .I3(select_ln89_fu_561_p3[0]),
        .I4(p_reg_reg_i_23_n_0),
        .O(A[14]));
  LUT5 #(
    .INIT(32'hBB88B8B8)) 
    p_reg_reg_i_30
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out[11]),
        .I1(\tmp_15_reg_1628_reg[15] ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out[11]),
        .I3(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_10_out[11]),
        .I4(\tmp_15_reg_1628_reg[15]_0 ),
        .O(p_reg_reg_i_30_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_30__0
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out[11]),
        .I1(sel[1]),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out[11]),
        .I3(sel[0]),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out[11]),
        .O(p_reg_reg_i_30__0_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_30__1
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_9_out[11]),
        .I1(\tmp_20_reg_1658_reg[15]_1 ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out[11]),
        .I3(\tmp_20_reg_1658_reg[15]_2 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out[11]),
        .O(p_reg_reg_i_30__1_n_0));
  LUT5 #(
    .INIT(32'h47444777)) 
    p_reg_reg_i_31
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out[11]),
        .I1(\tmp_15_reg_1628_reg[15] ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_5_out[11]),
        .I3(\tmp_15_reg_1628_reg[15]_0 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out[11]),
        .O(p_reg_reg_i_31_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_31__0
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out[11]),
        .I1(sel[1]),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out[11]),
        .I3(sel[0]),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out[11]),
        .O(p_reg_reg_i_31__0_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_31__1
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_4_out[11]),
        .I1(\tmp_20_reg_1658_reg[15]_1 ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out[11]),
        .I3(\tmp_20_reg_1658_reg[15]_2 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out[11]),
        .O(p_reg_reg_i_31__1_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_32
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out[11]),
        .I1(\tmp_15_reg_1628_reg[15] ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_out[11]),
        .I3(\tmp_15_reg_1628_reg[15]_0 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out[11]),
        .O(p_reg_reg_i_32_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_32__0
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out[10]),
        .I1(sel[1]),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out[10]),
        .I3(sel[0]),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out[10]),
        .O(p_reg_reg_i_32__0_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_32__1
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_14_out[10]),
        .I1(\tmp_20_reg_1658_reg[15]_1 ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out[10]),
        .I3(\tmp_20_reg_1658_reg[15]_2 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out[10]),
        .O(p_reg_reg_i_32__1_n_0));
  LUT5 #(
    .INIT(32'hBB88B8B8)) 
    p_reg_reg_i_33
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out[10]),
        .I1(\tmp_15_reg_1628_reg[15] ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out[10]),
        .I3(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_10_out[10]),
        .I4(\tmp_15_reg_1628_reg[15]_0 ),
        .O(p_reg_reg_i_33_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_33__0
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out[10]),
        .I1(sel[1]),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out[10]),
        .I3(sel[0]),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out[10]),
        .O(p_reg_reg_i_33__0_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_33__1
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_9_out[10]),
        .I1(\tmp_20_reg_1658_reg[15]_1 ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out[10]),
        .I3(\tmp_20_reg_1658_reg[15]_2 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out[10]),
        .O(p_reg_reg_i_33__1_n_0));
  LUT5 #(
    .INIT(32'h47444777)) 
    p_reg_reg_i_34
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out[10]),
        .I1(\tmp_15_reg_1628_reg[15] ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_5_out[10]),
        .I3(\tmp_15_reg_1628_reg[15]_0 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out[10]),
        .O(p_reg_reg_i_34_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_34__0
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out[10]),
        .I1(sel[1]),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out[10]),
        .I3(sel[0]),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out[10]),
        .O(p_reg_reg_i_34__0_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_34__1
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_4_out[10]),
        .I1(\tmp_20_reg_1658_reg[15]_1 ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out[10]),
        .I3(\tmp_20_reg_1658_reg[15]_2 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out[10]),
        .O(p_reg_reg_i_34__1_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_35
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out[10]),
        .I1(\tmp_15_reg_1628_reg[15] ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_out[10]),
        .I3(\tmp_15_reg_1628_reg[15]_0 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out[10]),
        .O(p_reg_reg_i_35_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_35__0
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out[9]),
        .I1(sel[1]),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out[9]),
        .I3(sel[0]),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out[9]),
        .O(p_reg_reg_i_35__0_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_35__1
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_14_out[9]),
        .I1(\tmp_20_reg_1658_reg[15]_1 ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out[9]),
        .I3(\tmp_20_reg_1658_reg[15]_2 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out[9]),
        .O(p_reg_reg_i_35__1_n_0));
  LUT5 #(
    .INIT(32'hBB88B8B8)) 
    p_reg_reg_i_36
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out[9]),
        .I1(\tmp_15_reg_1628_reg[15] ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out[9]),
        .I3(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_10_out[9]),
        .I4(\tmp_15_reg_1628_reg[15]_0 ),
        .O(p_reg_reg_i_36_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_36__0
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out[9]),
        .I1(sel[1]),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out[9]),
        .I3(sel[0]),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out[9]),
        .O(p_reg_reg_i_36__0_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_36__1
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_9_out[9]),
        .I1(\tmp_20_reg_1658_reg[15]_1 ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out[9]),
        .I3(\tmp_20_reg_1658_reg[15]_2 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out[9]),
        .O(p_reg_reg_i_36__1_n_0));
  LUT5 #(
    .INIT(32'h47444777)) 
    p_reg_reg_i_37
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out[9]),
        .I1(\tmp_15_reg_1628_reg[15] ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_5_out[9]),
        .I3(\tmp_15_reg_1628_reg[15]_0 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out[9]),
        .O(p_reg_reg_i_37_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_37__0
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out[9]),
        .I1(sel[1]),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out[9]),
        .I3(sel[0]),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out[9]),
        .O(p_reg_reg_i_37__0_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_37__1
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_4_out[9]),
        .I1(\tmp_20_reg_1658_reg[15]_1 ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out[9]),
        .I3(\tmp_20_reg_1658_reg[15]_2 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out[9]),
        .O(p_reg_reg_i_37__1_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_38
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out[9]),
        .I1(\tmp_15_reg_1628_reg[15] ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_out[9]),
        .I3(\tmp_15_reg_1628_reg[15]_0 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out[9]),
        .O(p_reg_reg_i_38_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_38__0
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out[8]),
        .I1(sel[1]),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out[8]),
        .I3(sel[0]),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out[8]),
        .O(p_reg_reg_i_38__0_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_38__1
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_14_out[8]),
        .I1(\tmp_20_reg_1658_reg[15]_1 ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out[8]),
        .I3(\tmp_20_reg_1658_reg[15]_2 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out[8]),
        .O(p_reg_reg_i_38__1_n_0));
  LUT5 #(
    .INIT(32'hBB88B8B8)) 
    p_reg_reg_i_39
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out[8]),
        .I1(\tmp_15_reg_1628_reg[15] ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out[8]),
        .I3(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_10_out[8]),
        .I4(\tmp_15_reg_1628_reg[15]_0 ),
        .O(p_reg_reg_i_39_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_39__0
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out[8]),
        .I1(sel[1]),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out[8]),
        .I3(sel[0]),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out[8]),
        .O(p_reg_reg_i_39__0_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_39__1
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_9_out[8]),
        .I1(\tmp_20_reg_1658_reg[15]_1 ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out[8]),
        .I3(\tmp_20_reg_1658_reg[15]_2 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out[8]),
        .O(p_reg_reg_i_39__1_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_3__0
       (.I0(p_reg_reg_i_23__0_n_0),
        .I1(\tmp_18_reg_1643_reg[15] ),
        .I2(p_reg_reg_i_24__0_n_0),
        .I3(\tmp_18_reg_1643_reg[15]_0 ),
        .I4(p_reg_reg_i_25__0_n_0),
        .O(\select_ln89_reg_1613_reg[1] [13]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_3__1
       (.I0(p_reg_reg_i_23__1_n_0),
        .I1(\tmp_20_reg_1658_reg[15] ),
        .I2(p_reg_reg_i_24__1_n_0),
        .I3(\tmp_20_reg_1658_reg[15]_0 ),
        .I4(p_reg_reg_i_25__1_n_0),
        .O(\select_ln89_reg_1613_pp0_iter1_reg_reg[1] [13]));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    p_reg_reg_i_4
       (.I0(p_reg_reg_i_24_n_0),
        .I1(select_ln89_fu_561_p3[1]),
        .I2(p_reg_reg_i_25_n_0),
        .I3(select_ln89_fu_561_p3[0]),
        .I4(p_reg_reg_i_26_n_0),
        .O(A[13]));
  LUT5 #(
    .INIT(32'h47444777)) 
    p_reg_reg_i_40
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out[8]),
        .I1(\tmp_15_reg_1628_reg[15] ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_5_out[8]),
        .I3(\tmp_15_reg_1628_reg[15]_0 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out[8]),
        .O(p_reg_reg_i_40_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_40__0
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out[8]),
        .I1(sel[1]),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out[8]),
        .I3(sel[0]),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out[8]),
        .O(p_reg_reg_i_40__0_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_40__1
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_4_out[8]),
        .I1(\tmp_20_reg_1658_reg[15]_1 ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out[8]),
        .I3(\tmp_20_reg_1658_reg[15]_2 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out[8]),
        .O(p_reg_reg_i_40__1_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_41
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out[8]),
        .I1(\tmp_15_reg_1628_reg[15] ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_out[8]),
        .I3(\tmp_15_reg_1628_reg[15]_0 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out[8]),
        .O(p_reg_reg_i_41_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_41__0
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out[7]),
        .I1(sel[1]),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out[7]),
        .I3(sel[0]),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out[7]),
        .O(p_reg_reg_i_41__0_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_41__1
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_14_out[7]),
        .I1(\tmp_20_reg_1658_reg[15]_1 ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out[7]),
        .I3(\tmp_20_reg_1658_reg[15]_2 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out[7]),
        .O(p_reg_reg_i_41__1_n_0));
  LUT5 #(
    .INIT(32'hBB88B8B8)) 
    p_reg_reg_i_42
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out[7]),
        .I1(\tmp_15_reg_1628_reg[15] ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out[7]),
        .I3(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_10_out[7]),
        .I4(\tmp_15_reg_1628_reg[15]_0 ),
        .O(p_reg_reg_i_42_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_42__0
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out[7]),
        .I1(sel[1]),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out[7]),
        .I3(sel[0]),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out[7]),
        .O(p_reg_reg_i_42__0_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_42__1
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_9_out[7]),
        .I1(\tmp_20_reg_1658_reg[15]_1 ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out[7]),
        .I3(\tmp_20_reg_1658_reg[15]_2 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out[7]),
        .O(p_reg_reg_i_42__1_n_0));
  LUT5 #(
    .INIT(32'h47444777)) 
    p_reg_reg_i_43
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out[7]),
        .I1(\tmp_15_reg_1628_reg[15] ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_5_out[7]),
        .I3(\tmp_15_reg_1628_reg[15]_0 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out[7]),
        .O(p_reg_reg_i_43_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_43__0
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out[7]),
        .I1(sel[1]),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out[7]),
        .I3(sel[0]),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out[7]),
        .O(p_reg_reg_i_43__0_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_43__1
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_4_out[7]),
        .I1(\tmp_20_reg_1658_reg[15]_1 ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out[7]),
        .I3(\tmp_20_reg_1658_reg[15]_2 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out[7]),
        .O(p_reg_reg_i_43__1_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_44
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out[7]),
        .I1(\tmp_15_reg_1628_reg[15] ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_out[7]),
        .I3(\tmp_15_reg_1628_reg[15]_0 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out[7]),
        .O(p_reg_reg_i_44_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_44__0
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out[6]),
        .I1(sel[1]),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out[6]),
        .I3(sel[0]),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out[6]),
        .O(p_reg_reg_i_44__0_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_44__1
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_14_out[6]),
        .I1(\tmp_20_reg_1658_reg[15]_1 ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out[6]),
        .I3(\tmp_20_reg_1658_reg[15]_2 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out[6]),
        .O(p_reg_reg_i_44__1_n_0));
  LUT5 #(
    .INIT(32'hBB88B8B8)) 
    p_reg_reg_i_45
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out[6]),
        .I1(\tmp_15_reg_1628_reg[15] ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out[6]),
        .I3(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_10_out[6]),
        .I4(\tmp_15_reg_1628_reg[15]_0 ),
        .O(p_reg_reg_i_45_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_45__0
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out[6]),
        .I1(sel[1]),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out[6]),
        .I3(sel[0]),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out[6]),
        .O(p_reg_reg_i_45__0_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_45__1
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_9_out[6]),
        .I1(\tmp_20_reg_1658_reg[15]_1 ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out[6]),
        .I3(\tmp_20_reg_1658_reg[15]_2 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out[6]),
        .O(p_reg_reg_i_45__1_n_0));
  LUT5 #(
    .INIT(32'h47444777)) 
    p_reg_reg_i_46
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out[6]),
        .I1(\tmp_15_reg_1628_reg[15] ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_5_out[6]),
        .I3(\tmp_15_reg_1628_reg[15]_0 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out[6]),
        .O(p_reg_reg_i_46_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_46__0
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out[6]),
        .I1(sel[1]),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out[6]),
        .I3(sel[0]),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out[6]),
        .O(p_reg_reg_i_46__0_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_46__1
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_4_out[6]),
        .I1(\tmp_20_reg_1658_reg[15]_1 ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out[6]),
        .I3(\tmp_20_reg_1658_reg[15]_2 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out[6]),
        .O(p_reg_reg_i_46__1_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_47
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out[6]),
        .I1(\tmp_15_reg_1628_reg[15] ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_out[6]),
        .I3(\tmp_15_reg_1628_reg[15]_0 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out[6]),
        .O(p_reg_reg_i_47_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_47__0
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out[5]),
        .I1(sel[1]),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out[5]),
        .I3(sel[0]),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out[5]),
        .O(p_reg_reg_i_47__0_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_47__1
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_14_out[5]),
        .I1(\tmp_20_reg_1658_reg[15]_1 ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out[5]),
        .I3(\tmp_20_reg_1658_reg[15]_2 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out[5]),
        .O(p_reg_reg_i_47__1_n_0));
  LUT5 #(
    .INIT(32'hBB88B8B8)) 
    p_reg_reg_i_48
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out[5]),
        .I1(\tmp_15_reg_1628_reg[15] ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out[5]),
        .I3(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_10_out[5]),
        .I4(\tmp_15_reg_1628_reg[15]_0 ),
        .O(p_reg_reg_i_48_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_48__0
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out[5]),
        .I1(sel[1]),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out[5]),
        .I3(sel[0]),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out[5]),
        .O(p_reg_reg_i_48__0_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_48__1
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_9_out[5]),
        .I1(\tmp_20_reg_1658_reg[15]_1 ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out[5]),
        .I3(\tmp_20_reg_1658_reg[15]_2 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out[5]),
        .O(p_reg_reg_i_48__1_n_0));
  LUT5 #(
    .INIT(32'h47444777)) 
    p_reg_reg_i_49
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out[5]),
        .I1(\tmp_15_reg_1628_reg[15] ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_5_out[5]),
        .I3(\tmp_15_reg_1628_reg[15]_0 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out[5]),
        .O(p_reg_reg_i_49_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_49__0
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out[5]),
        .I1(sel[1]),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out[5]),
        .I3(sel[0]),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out[5]),
        .O(p_reg_reg_i_49__0_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_49__1
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_4_out[5]),
        .I1(\tmp_20_reg_1658_reg[15]_1 ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out[5]),
        .I3(\tmp_20_reg_1658_reg[15]_2 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out[5]),
        .O(p_reg_reg_i_49__1_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_4__0
       (.I0(p_reg_reg_i_26__0_n_0),
        .I1(\tmp_18_reg_1643_reg[15] ),
        .I2(p_reg_reg_i_27__0_n_0),
        .I3(\tmp_18_reg_1643_reg[15]_0 ),
        .I4(p_reg_reg_i_28__0_n_0),
        .O(\select_ln89_reg_1613_reg[1] [12]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_4__1
       (.I0(p_reg_reg_i_26__1_n_0),
        .I1(\tmp_20_reg_1658_reg[15] ),
        .I2(p_reg_reg_i_27__1_n_0),
        .I3(\tmp_20_reg_1658_reg[15]_0 ),
        .I4(p_reg_reg_i_28__1_n_0),
        .O(\select_ln89_reg_1613_pp0_iter1_reg_reg[1] [12]));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    p_reg_reg_i_5
       (.I0(p_reg_reg_i_27_n_0),
        .I1(select_ln89_fu_561_p3[1]),
        .I2(p_reg_reg_i_28_n_0),
        .I3(select_ln89_fu_561_p3[0]),
        .I4(p_reg_reg_i_29_n_0),
        .O(A[12]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_50
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out[5]),
        .I1(\tmp_15_reg_1628_reg[15] ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_out[5]),
        .I3(\tmp_15_reg_1628_reg[15]_0 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out[5]),
        .O(p_reg_reg_i_50_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_50__0
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out[4]),
        .I1(sel[1]),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out[4]),
        .I3(sel[0]),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out[4]),
        .O(p_reg_reg_i_50__0_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_50__1
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_14_out[4]),
        .I1(\tmp_20_reg_1658_reg[15]_1 ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out[4]),
        .I3(\tmp_20_reg_1658_reg[15]_2 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out[4]),
        .O(p_reg_reg_i_50__1_n_0));
  LUT5 #(
    .INIT(32'hBB88B8B8)) 
    p_reg_reg_i_51
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out[4]),
        .I1(\tmp_15_reg_1628_reg[15] ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out[4]),
        .I3(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_10_out[4]),
        .I4(\tmp_15_reg_1628_reg[15]_0 ),
        .O(p_reg_reg_i_51_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_51__0
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out[4]),
        .I1(sel[1]),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out[4]),
        .I3(sel[0]),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out[4]),
        .O(p_reg_reg_i_51__0_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_51__1
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_9_out[4]),
        .I1(\tmp_20_reg_1658_reg[15]_1 ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out[4]),
        .I3(\tmp_20_reg_1658_reg[15]_2 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out[4]),
        .O(p_reg_reg_i_51__1_n_0));
  LUT5 #(
    .INIT(32'h47444777)) 
    p_reg_reg_i_52
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out[4]),
        .I1(\tmp_15_reg_1628_reg[15] ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_5_out[4]),
        .I3(\tmp_15_reg_1628_reg[15]_0 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out[4]),
        .O(p_reg_reg_i_52_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_52__0
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out[4]),
        .I1(sel[1]),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out[4]),
        .I3(sel[0]),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out[4]),
        .O(p_reg_reg_i_52__0_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_52__1
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_4_out[4]),
        .I1(\tmp_20_reg_1658_reg[15]_1 ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out[4]),
        .I3(\tmp_20_reg_1658_reg[15]_2 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out[4]),
        .O(p_reg_reg_i_52__1_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_53
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out[4]),
        .I1(\tmp_15_reg_1628_reg[15] ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_out[4]),
        .I3(\tmp_15_reg_1628_reg[15]_0 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out[4]),
        .O(p_reg_reg_i_53_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_53__0
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out[3]),
        .I1(sel[1]),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out[3]),
        .I3(sel[0]),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out[3]),
        .O(p_reg_reg_i_53__0_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_53__1
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_14_out[3]),
        .I1(\tmp_20_reg_1658_reg[15]_1 ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out[3]),
        .I3(\tmp_20_reg_1658_reg[15]_2 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out[3]),
        .O(p_reg_reg_i_53__1_n_0));
  LUT5 #(
    .INIT(32'hBB88B8B8)) 
    p_reg_reg_i_54
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out[3]),
        .I1(\tmp_15_reg_1628_reg[15] ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out[3]),
        .I3(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_10_out[3]),
        .I4(\tmp_15_reg_1628_reg[15]_0 ),
        .O(p_reg_reg_i_54_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_54__0
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out[3]),
        .I1(sel[1]),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out[3]),
        .I3(sel[0]),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out[3]),
        .O(p_reg_reg_i_54__0_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_54__1
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_9_out[3]),
        .I1(\tmp_20_reg_1658_reg[15]_1 ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out[3]),
        .I3(\tmp_20_reg_1658_reg[15]_2 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out[3]),
        .O(p_reg_reg_i_54__1_n_0));
  LUT5 #(
    .INIT(32'h47444777)) 
    p_reg_reg_i_55
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out[3]),
        .I1(\tmp_15_reg_1628_reg[15] ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_5_out[3]),
        .I3(\tmp_15_reg_1628_reg[15]_0 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out[3]),
        .O(p_reg_reg_i_55_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_55__0
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out[3]),
        .I1(sel[1]),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out[3]),
        .I3(sel[0]),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out[3]),
        .O(p_reg_reg_i_55__0_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_55__1
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_4_out[3]),
        .I1(\tmp_20_reg_1658_reg[15]_1 ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out[3]),
        .I3(\tmp_20_reg_1658_reg[15]_2 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out[3]),
        .O(p_reg_reg_i_55__1_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_56
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out[3]),
        .I1(\tmp_15_reg_1628_reg[15] ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_out[3]),
        .I3(\tmp_15_reg_1628_reg[15]_0 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out[3]),
        .O(p_reg_reg_i_56_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_56__0
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out[2]),
        .I1(sel[1]),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out[2]),
        .I3(sel[0]),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out[2]),
        .O(p_reg_reg_i_56__0_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_56__1
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_14_out[2]),
        .I1(\tmp_20_reg_1658_reg[15]_1 ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out[2]),
        .I3(\tmp_20_reg_1658_reg[15]_2 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out[2]),
        .O(p_reg_reg_i_56__1_n_0));
  LUT5 #(
    .INIT(32'hBB88B8B8)) 
    p_reg_reg_i_57
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out[2]),
        .I1(\tmp_15_reg_1628_reg[15] ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out[2]),
        .I3(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_10_out[2]),
        .I4(\tmp_15_reg_1628_reg[15]_0 ),
        .O(p_reg_reg_i_57_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_57__0
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out[2]),
        .I1(sel[1]),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out[2]),
        .I3(sel[0]),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out[2]),
        .O(p_reg_reg_i_57__0_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_57__1
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_9_out[2]),
        .I1(\tmp_20_reg_1658_reg[15]_1 ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out[2]),
        .I3(\tmp_20_reg_1658_reg[15]_2 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out[2]),
        .O(p_reg_reg_i_57__1_n_0));
  LUT5 #(
    .INIT(32'h47444777)) 
    p_reg_reg_i_58
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out[2]),
        .I1(\tmp_15_reg_1628_reg[15] ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_5_out[2]),
        .I3(\tmp_15_reg_1628_reg[15]_0 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out[2]),
        .O(p_reg_reg_i_58_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_58__0
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out[2]),
        .I1(sel[1]),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out[2]),
        .I3(sel[0]),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out[2]),
        .O(p_reg_reg_i_58__0_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_58__1
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_4_out[2]),
        .I1(\tmp_20_reg_1658_reg[15]_1 ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out[2]),
        .I3(\tmp_20_reg_1658_reg[15]_2 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out[2]),
        .O(p_reg_reg_i_58__1_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_59
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out[2]),
        .I1(\tmp_15_reg_1628_reg[15] ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_out[2]),
        .I3(\tmp_15_reg_1628_reg[15]_0 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out[2]),
        .O(p_reg_reg_i_59_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_59__0
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out[1]),
        .I1(sel[1]),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out[1]),
        .I3(sel[0]),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out[1]),
        .O(p_reg_reg_i_59__0_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_59__1
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_14_out[1]),
        .I1(\tmp_20_reg_1658_reg[15]_1 ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out[1]),
        .I3(\tmp_20_reg_1658_reg[15]_2 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out[1]),
        .O(p_reg_reg_i_59__1_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_5__0
       (.I0(p_reg_reg_i_29__0_n_0),
        .I1(\tmp_18_reg_1643_reg[15] ),
        .I2(p_reg_reg_i_30__0_n_0),
        .I3(\tmp_18_reg_1643_reg[15]_0 ),
        .I4(p_reg_reg_i_31__0_n_0),
        .O(\select_ln89_reg_1613_reg[1] [11]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_5__1
       (.I0(p_reg_reg_i_29__1_n_0),
        .I1(\tmp_20_reg_1658_reg[15] ),
        .I2(p_reg_reg_i_30__1_n_0),
        .I3(\tmp_20_reg_1658_reg[15]_0 ),
        .I4(p_reg_reg_i_31__1_n_0),
        .O(\select_ln89_reg_1613_pp0_iter1_reg_reg[1] [11]));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    p_reg_reg_i_6
       (.I0(p_reg_reg_i_30_n_0),
        .I1(select_ln89_fu_561_p3[1]),
        .I2(p_reg_reg_i_31_n_0),
        .I3(select_ln89_fu_561_p3[0]),
        .I4(p_reg_reg_i_32_n_0),
        .O(A[11]));
  LUT5 #(
    .INIT(32'hBB88B8B8)) 
    p_reg_reg_i_60
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out[1]),
        .I1(\tmp_15_reg_1628_reg[15] ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out[1]),
        .I3(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_10_out[1]),
        .I4(\tmp_15_reg_1628_reg[15]_0 ),
        .O(p_reg_reg_i_60_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_60__0
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out[1]),
        .I1(sel[1]),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out[1]),
        .I3(sel[0]),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out[1]),
        .O(p_reg_reg_i_60__0_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_60__1
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_9_out[1]),
        .I1(\tmp_20_reg_1658_reg[15]_1 ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out[1]),
        .I3(\tmp_20_reg_1658_reg[15]_2 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out[1]),
        .O(p_reg_reg_i_60__1_n_0));
  LUT5 #(
    .INIT(32'h47444777)) 
    p_reg_reg_i_61
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out[1]),
        .I1(\tmp_15_reg_1628_reg[15] ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_5_out[1]),
        .I3(\tmp_15_reg_1628_reg[15]_0 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out[1]),
        .O(p_reg_reg_i_61_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_61__0
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out[1]),
        .I1(sel[1]),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out[1]),
        .I3(sel[0]),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out[1]),
        .O(p_reg_reg_i_61__0_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_61__1
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_4_out[1]),
        .I1(\tmp_20_reg_1658_reg[15]_1 ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out[1]),
        .I3(\tmp_20_reg_1658_reg[15]_2 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out[1]),
        .O(p_reg_reg_i_61__1_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_62
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out[1]),
        .I1(\tmp_15_reg_1628_reg[15] ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_out[1]),
        .I3(\tmp_15_reg_1628_reg[15]_0 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out[1]),
        .O(p_reg_reg_i_62_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_62__0
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out[0]),
        .I1(sel[1]),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out[0]),
        .I3(sel[0]),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out[0]),
        .O(p_reg_reg_i_62__0_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_62__1
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_14_out[0]),
        .I1(\tmp_20_reg_1658_reg[15]_1 ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_13_out[0]),
        .I3(\tmp_20_reg_1658_reg[15]_2 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out[0]),
        .O(p_reg_reg_i_62__1_n_0));
  LUT5 #(
    .INIT(32'hBB88B8B8)) 
    p_reg_reg_i_63
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_12_out[0]),
        .I1(\tmp_15_reg_1628_reg[15] ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_11_out[0]),
        .I3(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_10_out[0]),
        .I4(\tmp_15_reg_1628_reg[15]_0 ),
        .O(p_reg_reg_i_63_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_63__0
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out[0]),
        .I1(sel[1]),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out[0]),
        .I3(sel[0]),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out[0]),
        .O(p_reg_reg_i_63__0_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_63__1
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_9_out[0]),
        .I1(\tmp_20_reg_1658_reg[15]_1 ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_8_out[0]),
        .I3(\tmp_20_reg_1658_reg[15]_2 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out[0]),
        .O(p_reg_reg_i_63__1_n_0));
  LUT5 #(
    .INIT(32'h47444777)) 
    p_reg_reg_i_64
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_7_out[0]),
        .I1(\tmp_15_reg_1628_reg[15] ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_5_out[0]),
        .I3(\tmp_15_reg_1628_reg[15]_0 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_6_out[0]),
        .O(p_reg_reg_i_64_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_64__0
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out[0]),
        .I1(sel[1]),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out[0]),
        .I3(sel[0]),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out[0]),
        .O(p_reg_reg_i_64__0_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_64__1
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_4_out[0]),
        .I1(\tmp_20_reg_1658_reg[15]_1 ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_3_out[0]),
        .I3(\tmp_20_reg_1658_reg[15]_2 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out[0]),
        .O(p_reg_reg_i_64__1_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_65
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_2_out[0]),
        .I1(\tmp_15_reg_1628_reg[15] ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_out[0]),
        .I3(\tmp_15_reg_1628_reg[15]_0 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_1_out[0]),
        .O(p_reg_reg_i_65_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_6__0
       (.I0(p_reg_reg_i_32__0_n_0),
        .I1(\tmp_18_reg_1643_reg[15] ),
        .I2(p_reg_reg_i_33__0_n_0),
        .I3(\tmp_18_reg_1643_reg[15]_0 ),
        .I4(p_reg_reg_i_34__0_n_0),
        .O(\select_ln89_reg_1613_reg[1] [10]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_6__1
       (.I0(p_reg_reg_i_32__1_n_0),
        .I1(\tmp_20_reg_1658_reg[15] ),
        .I2(p_reg_reg_i_33__1_n_0),
        .I3(\tmp_20_reg_1658_reg[15]_0 ),
        .I4(p_reg_reg_i_34__1_n_0),
        .O(\select_ln89_reg_1613_pp0_iter1_reg_reg[1] [10]));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    p_reg_reg_i_7
       (.I0(p_reg_reg_i_33_n_0),
        .I1(select_ln89_fu_561_p3[1]),
        .I2(p_reg_reg_i_34_n_0),
        .I3(select_ln89_fu_561_p3[0]),
        .I4(p_reg_reg_i_35_n_0),
        .O(A[10]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_7__0
       (.I0(p_reg_reg_i_35__0_n_0),
        .I1(\tmp_18_reg_1643_reg[15] ),
        .I2(p_reg_reg_i_36__0_n_0),
        .I3(\tmp_18_reg_1643_reg[15]_0 ),
        .I4(p_reg_reg_i_37__0_n_0),
        .O(\select_ln89_reg_1613_reg[1] [9]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_7__1
       (.I0(p_reg_reg_i_35__1_n_0),
        .I1(\tmp_20_reg_1658_reg[15] ),
        .I2(p_reg_reg_i_36__1_n_0),
        .I3(\tmp_20_reg_1658_reg[15]_0 ),
        .I4(p_reg_reg_i_37__1_n_0),
        .O(\select_ln89_reg_1613_pp0_iter1_reg_reg[1] [9]));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    p_reg_reg_i_8
       (.I0(p_reg_reg_i_36_n_0),
        .I1(select_ln89_fu_561_p3[1]),
        .I2(p_reg_reg_i_37_n_0),
        .I3(select_ln89_fu_561_p3[0]),
        .I4(p_reg_reg_i_38_n_0),
        .O(A[9]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_8__0
       (.I0(p_reg_reg_i_38__0_n_0),
        .I1(\tmp_18_reg_1643_reg[15] ),
        .I2(p_reg_reg_i_39__0_n_0),
        .I3(\tmp_18_reg_1643_reg[15]_0 ),
        .I4(p_reg_reg_i_40__0_n_0),
        .O(\select_ln89_reg_1613_reg[1] [8]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_8__1
       (.I0(p_reg_reg_i_38__1_n_0),
        .I1(\tmp_20_reg_1658_reg[15] ),
        .I2(p_reg_reg_i_39__1_n_0),
        .I3(\tmp_20_reg_1658_reg[15]_0 ),
        .I4(p_reg_reg_i_40__1_n_0),
        .O(\select_ln89_reg_1613_pp0_iter1_reg_reg[1] [8]));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    p_reg_reg_i_9
       (.I0(p_reg_reg_i_39_n_0),
        .I1(select_ln89_fu_561_p3[1]),
        .I2(p_reg_reg_i_40_n_0),
        .I3(select_ln89_fu_561_p3[0]),
        .I4(p_reg_reg_i_41_n_0),
        .O(A[8]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_9__0
       (.I0(p_reg_reg_i_41__0_n_0),
        .I1(\tmp_18_reg_1643_reg[15] ),
        .I2(p_reg_reg_i_42__0_n_0),
        .I3(\tmp_18_reg_1643_reg[15]_0 ),
        .I4(p_reg_reg_i_43__0_n_0),
        .O(\select_ln89_reg_1613_reg[1] [7]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    p_reg_reg_i_9__1
       (.I0(p_reg_reg_i_41__1_n_0),
        .I1(\tmp_20_reg_1658_reg[15] ),
        .I2(p_reg_reg_i_42__1_n_0),
        .I3(\tmp_20_reg_1658_reg[15]_0 ),
        .I4(p_reg_reg_i_43__1_n_0),
        .O(\select_ln89_reg_1613_pp0_iter1_reg_reg[1] [7]));
  FDRE #(
    .INIT(1'b0)) 
    \phi_mul_fu_122_reg[10] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_26),
        .D(add_ln66_fu_464_p2[10]),
        .Q(\phi_mul_fu_122_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \phi_mul_fu_122_reg[2] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_26),
        .D(add_ln66_fu_464_p2[2]),
        .Q(\phi_mul_fu_122_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \phi_mul_fu_122_reg[3] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_26),
        .D(flow_control_loop_pipe_sequential_init_U_n_29),
        .Q(\phi_mul_fu_122_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \phi_mul_fu_122_reg[4] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_26),
        .D(add_ln66_fu_464_p2[4]),
        .Q(\phi_mul_fu_122_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \phi_mul_fu_122_reg[5] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_26),
        .D(add_ln66_fu_464_p2[5]),
        .Q(\phi_mul_fu_122_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \phi_mul_fu_122_reg[6] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_26),
        .D(add_ln66_fu_464_p2[6]),
        .Q(\phi_mul_fu_122_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \phi_mul_fu_122_reg[7] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_26),
        .D(add_ln66_fu_464_p2[7]),
        .Q(\phi_mul_fu_122_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \phi_mul_fu_122_reg[8] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_26),
        .D(add_ln66_fu_464_p2[8]),
        .Q(\phi_mul_fu_122_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \phi_mul_fu_122_reg[9] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_26),
        .D(add_ln66_fu_464_p2[9]),
        .Q(\phi_mul_fu_122_reg_n_0_[9] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \phi_urem_fu_118_reg[0] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_26),
        .D(select_ln47_fu_509_p3[0]),
        .Q(phi_urem_fu_118[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \phi_urem_fu_118_reg[1] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_26),
        .D(flow_control_loop_pipe_sequential_init_U_n_30),
        .Q(phi_urem_fu_118[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \phi_urem_fu_118_reg[2] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_26),
        .D(select_ln47_fu_509_p3[2]),
        .Q(phi_urem_fu_118[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \phi_urem_fu_118_reg[3] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_26),
        .D(select_ln47_fu_509_p3[3]),
        .Q(phi_urem_fu_118[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \phi_urem_fu_118_reg[4] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_26),
        .D(select_ln47_fu_509_p3[4]),
        .Q(phi_urem_fu_118[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rem_fu_126_reg[0] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_26),
        .D(i_fu_455_p2[0]),
        .Q(rem_fu_126[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rem_fu_126_reg[1] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_26),
        .D(flow_control_loop_pipe_sequential_init_U_n_28),
        .Q(rem_fu_126[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rem_fu_126_reg[2] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_26),
        .D(flow_control_loop_pipe_sequential_init_U_n_27),
        .Q(rem_fu_126[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rem_fu_126_reg[3] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_26),
        .D(i_fu_455_p2[3]),
        .Q(rem_fu_126[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rem_fu_126_reg[4] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_26),
        .D(i_fu_455_p2[4]),
        .Q(rem_fu_126[4]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hB8B888BB)) 
    \tmp_15_reg_1628[0]_i_1 
       (.I0(\tmp_15_reg_1628[0]_i_2_n_0 ),
        .I1(select_ln89_fu_561_p3[1]),
        .I2(p_reg_reg_i_63_n_0),
        .I3(p_reg_reg_i_64_n_0),
        .I4(select_ln89_fu_561_p3[0]),
        .O(\input_17_fu_198_reg[0]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_15_reg_1628[0]_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out[0]),
        .I1(\tmp_15_reg_1628_reg[15] ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_15_out[0]),
        .I3(\tmp_15_reg_1628_reg[15]_0 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out[0]),
        .O(\tmp_15_reg_1628[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8B888BB)) 
    \tmp_15_reg_1628[10]_i_1 
       (.I0(\tmp_15_reg_1628[10]_i_2_n_0 ),
        .I1(select_ln89_fu_561_p3[1]),
        .I2(p_reg_reg_i_33_n_0),
        .I3(p_reg_reg_i_34_n_0),
        .I4(select_ln89_fu_561_p3[0]),
        .O(\input_17_fu_198_reg[10]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_15_reg_1628[10]_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out[10]),
        .I1(\tmp_15_reg_1628_reg[15] ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_15_out[10]),
        .I3(\tmp_15_reg_1628_reg[15]_0 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out[10]),
        .O(\tmp_15_reg_1628[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hBB8B888B)) 
    \tmp_15_reg_1628[11]_i_1 
       (.I0(\tmp_15_reg_1628[11]_i_2_n_0 ),
        .I1(select_ln89_fu_561_p3[1]),
        .I2(p_reg_reg_i_31_n_0),
        .I3(select_ln89_fu_561_p3[0]),
        .I4(p_reg_reg_i_30_n_0),
        .O(\input_17_fu_198_reg[11]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_15_reg_1628[11]_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out[11]),
        .I1(\tmp_15_reg_1628_reg[15] ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_15_out[11]),
        .I3(\tmp_15_reg_1628_reg[15]_0 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out[11]),
        .O(\tmp_15_reg_1628[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8B888BB)) 
    \tmp_15_reg_1628[12]_i_1 
       (.I0(\tmp_15_reg_1628[12]_i_2_n_0 ),
        .I1(select_ln89_fu_561_p3[1]),
        .I2(p_reg_reg_i_27_n_0),
        .I3(p_reg_reg_i_28_n_0),
        .I4(select_ln89_fu_561_p3[0]),
        .O(\input_17_fu_198_reg[12]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_15_reg_1628[12]_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out[12]),
        .I1(\tmp_15_reg_1628_reg[15] ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_15_out[12]),
        .I3(\tmp_15_reg_1628_reg[15]_0 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out[12]),
        .O(\tmp_15_reg_1628[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8B888BB)) 
    \tmp_15_reg_1628[13]_i_1 
       (.I0(\tmp_15_reg_1628[13]_i_2_n_0 ),
        .I1(select_ln89_fu_561_p3[1]),
        .I2(p_reg_reg_i_24_n_0),
        .I3(p_reg_reg_i_25_n_0),
        .I4(select_ln89_fu_561_p3[0]),
        .O(\input_17_fu_198_reg[13]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_15_reg_1628[13]_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out[13]),
        .I1(\tmp_15_reg_1628_reg[15] ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_15_out[13]),
        .I3(\tmp_15_reg_1628_reg[15]_0 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out[13]),
        .O(\tmp_15_reg_1628[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8B888BB)) 
    \tmp_15_reg_1628[14]_i_1 
       (.I0(\tmp_15_reg_1628[14]_i_2_n_0 ),
        .I1(select_ln89_fu_561_p3[1]),
        .I2(p_reg_reg_i_21_n_0),
        .I3(p_reg_reg_i_22_n_0),
        .I4(select_ln89_fu_561_p3[0]),
        .O(\input_17_fu_198_reg[14]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_15_reg_1628[14]_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out[14]),
        .I1(\tmp_15_reg_1628_reg[15] ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_15_out[14]),
        .I3(\tmp_15_reg_1628_reg[15]_0 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out[14]),
        .O(\tmp_15_reg_1628[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8B888BB)) 
    \tmp_15_reg_1628[15]_i_1 
       (.I0(\tmp_15_reg_1628[15]_i_2_n_0 ),
        .I1(select_ln89_fu_561_p3[1]),
        .I2(p_reg_reg_i_18_n_0),
        .I3(p_reg_reg_i_19_n_0),
        .I4(select_ln89_fu_561_p3[0]),
        .O(\input_17_fu_198_reg[15]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_15_reg_1628[15]_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out[15]),
        .I1(\tmp_15_reg_1628_reg[15] ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_15_out[15]),
        .I3(\tmp_15_reg_1628_reg[15]_0 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out[15]),
        .O(\tmp_15_reg_1628[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8B888BB)) 
    \tmp_15_reg_1628[1]_i_1 
       (.I0(\tmp_15_reg_1628[1]_i_2_n_0 ),
        .I1(select_ln89_fu_561_p3[1]),
        .I2(p_reg_reg_i_60_n_0),
        .I3(p_reg_reg_i_61_n_0),
        .I4(select_ln89_fu_561_p3[0]),
        .O(\input_17_fu_198_reg[1]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_15_reg_1628[1]_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out[1]),
        .I1(\tmp_15_reg_1628_reg[15] ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_15_out[1]),
        .I3(\tmp_15_reg_1628_reg[15]_0 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out[1]),
        .O(\tmp_15_reg_1628[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8B888BB)) 
    \tmp_15_reg_1628[2]_i_1 
       (.I0(\tmp_15_reg_1628[2]_i_2_n_0 ),
        .I1(select_ln89_fu_561_p3[1]),
        .I2(p_reg_reg_i_57_n_0),
        .I3(p_reg_reg_i_58_n_0),
        .I4(select_ln89_fu_561_p3[0]),
        .O(\input_17_fu_198_reg[2]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_15_reg_1628[2]_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out[2]),
        .I1(\tmp_15_reg_1628_reg[15] ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_15_out[2]),
        .I3(\tmp_15_reg_1628_reg[15]_0 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out[2]),
        .O(\tmp_15_reg_1628[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8B888BB)) 
    \tmp_15_reg_1628[3]_i_1 
       (.I0(\tmp_15_reg_1628[3]_i_2_n_0 ),
        .I1(select_ln89_fu_561_p3[1]),
        .I2(p_reg_reg_i_54_n_0),
        .I3(p_reg_reg_i_55_n_0),
        .I4(select_ln89_fu_561_p3[0]),
        .O(\input_17_fu_198_reg[3]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_15_reg_1628[3]_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out[3]),
        .I1(\tmp_15_reg_1628_reg[15] ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_15_out[3]),
        .I3(\tmp_15_reg_1628_reg[15]_0 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out[3]),
        .O(\tmp_15_reg_1628[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8B888BB)) 
    \tmp_15_reg_1628[4]_i_1 
       (.I0(\tmp_15_reg_1628[4]_i_2_n_0 ),
        .I1(select_ln89_fu_561_p3[1]),
        .I2(p_reg_reg_i_51_n_0),
        .I3(p_reg_reg_i_52_n_0),
        .I4(select_ln89_fu_561_p3[0]),
        .O(\input_17_fu_198_reg[4]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_15_reg_1628[4]_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out[4]),
        .I1(\tmp_15_reg_1628_reg[15] ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_15_out[4]),
        .I3(\tmp_15_reg_1628_reg[15]_0 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out[4]),
        .O(\tmp_15_reg_1628[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8B888BB)) 
    \tmp_15_reg_1628[5]_i_1 
       (.I0(\tmp_15_reg_1628[5]_i_2_n_0 ),
        .I1(select_ln89_fu_561_p3[1]),
        .I2(p_reg_reg_i_48_n_0),
        .I3(p_reg_reg_i_49_n_0),
        .I4(select_ln89_fu_561_p3[0]),
        .O(\input_17_fu_198_reg[5]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_15_reg_1628[5]_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out[5]),
        .I1(\tmp_15_reg_1628_reg[15] ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_15_out[5]),
        .I3(\tmp_15_reg_1628_reg[15]_0 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out[5]),
        .O(\tmp_15_reg_1628[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hBB8B888B)) 
    \tmp_15_reg_1628[6]_i_1 
       (.I0(\tmp_15_reg_1628[6]_i_2_n_0 ),
        .I1(select_ln89_fu_561_p3[1]),
        .I2(p_reg_reg_i_46_n_0),
        .I3(select_ln89_fu_561_p3[0]),
        .I4(p_reg_reg_i_45_n_0),
        .O(\input_17_fu_198_reg[6]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_15_reg_1628[6]_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out[6]),
        .I1(\tmp_15_reg_1628_reg[15] ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_15_out[6]),
        .I3(\tmp_15_reg_1628_reg[15]_0 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out[6]),
        .O(\tmp_15_reg_1628[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8B888BB)) 
    \tmp_15_reg_1628[7]_i_1 
       (.I0(\tmp_15_reg_1628[7]_i_2_n_0 ),
        .I1(select_ln89_fu_561_p3[1]),
        .I2(p_reg_reg_i_42_n_0),
        .I3(p_reg_reg_i_43_n_0),
        .I4(select_ln89_fu_561_p3[0]),
        .O(\input_17_fu_198_reg[7]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_15_reg_1628[7]_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out[7]),
        .I1(\tmp_15_reg_1628_reg[15] ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_15_out[7]),
        .I3(\tmp_15_reg_1628_reg[15]_0 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out[7]),
        .O(\tmp_15_reg_1628[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8B888BB)) 
    \tmp_15_reg_1628[8]_i_1 
       (.I0(\tmp_15_reg_1628[8]_i_2_n_0 ),
        .I1(select_ln89_fu_561_p3[1]),
        .I2(p_reg_reg_i_39_n_0),
        .I3(p_reg_reg_i_40_n_0),
        .I4(select_ln89_fu_561_p3[0]),
        .O(\input_17_fu_198_reg[8]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_15_reg_1628[8]_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out[8]),
        .I1(\tmp_15_reg_1628_reg[15] ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_15_out[8]),
        .I3(\tmp_15_reg_1628_reg[15]_0 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out[8]),
        .O(\tmp_15_reg_1628[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8B888BB)) 
    \tmp_15_reg_1628[9]_i_1 
       (.I0(\tmp_15_reg_1628[9]_i_2_n_0 ),
        .I1(select_ln89_fu_561_p3[1]),
        .I2(p_reg_reg_i_36_n_0),
        .I3(p_reg_reg_i_37_n_0),
        .I4(select_ln89_fu_561_p3[0]),
        .O(\input_17_fu_198_reg[9]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_15_reg_1628[9]_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out[9]),
        .I1(\tmp_15_reg_1628_reg[15] ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_15_out[9]),
        .I3(\tmp_15_reg_1628_reg[15]_0 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out[9]),
        .O(\tmp_15_reg_1628[9]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_18_reg_1643[0]_i_1 
       (.I0(\tmp_18_reg_1643[0]_i_2_n_0 ),
        .I1(\tmp_18_reg_1643_reg[15] ),
        .I2(p_reg_reg_i_62__0_n_0),
        .I3(\tmp_18_reg_1643_reg[15]_0 ),
        .I4(p_reg_reg_i_63__0_n_0),
        .O(\select_ln89_reg_1613_reg[1]_30 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_18_reg_1643[0]_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out[0]),
        .I1(sel[1]),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out[0]),
        .I3(sel[0]),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out[0]),
        .O(\tmp_18_reg_1643[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_18_reg_1643[10]_i_1 
       (.I0(\tmp_18_reg_1643[10]_i_2_n_0 ),
        .I1(\tmp_18_reg_1643_reg[15] ),
        .I2(p_reg_reg_i_32__0_n_0),
        .I3(\tmp_18_reg_1643_reg[15]_0 ),
        .I4(p_reg_reg_i_33__0_n_0),
        .O(\select_ln89_reg_1613_reg[1]_10 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_18_reg_1643[10]_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out[10]),
        .I1(sel[1]),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out[10]),
        .I3(sel[0]),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out[10]),
        .O(\tmp_18_reg_1643[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_18_reg_1643[11]_i_1 
       (.I0(\tmp_18_reg_1643[11]_i_2_n_0 ),
        .I1(\tmp_18_reg_1643_reg[15] ),
        .I2(p_reg_reg_i_29__0_n_0),
        .I3(\tmp_18_reg_1643_reg[15]_0 ),
        .I4(p_reg_reg_i_30__0_n_0),
        .O(\select_ln89_reg_1613_reg[1]_8 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_18_reg_1643[11]_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out[11]),
        .I1(sel[1]),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out[11]),
        .I3(sel[0]),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out[11]),
        .O(\tmp_18_reg_1643[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_18_reg_1643[12]_i_1 
       (.I0(\tmp_18_reg_1643[12]_i_2_n_0 ),
        .I1(\tmp_18_reg_1643_reg[15] ),
        .I2(p_reg_reg_i_26__0_n_0),
        .I3(\tmp_18_reg_1643_reg[15]_0 ),
        .I4(p_reg_reg_i_27__0_n_0),
        .O(\select_ln89_reg_1613_reg[1]_6 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_18_reg_1643[12]_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out[12]),
        .I1(sel[1]),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out[12]),
        .I3(sel[0]),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out[12]),
        .O(\tmp_18_reg_1643[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_18_reg_1643[13]_i_1 
       (.I0(\tmp_18_reg_1643[13]_i_2_n_0 ),
        .I1(\tmp_18_reg_1643_reg[15] ),
        .I2(p_reg_reg_i_23__0_n_0),
        .I3(\tmp_18_reg_1643_reg[15]_0 ),
        .I4(p_reg_reg_i_24__0_n_0),
        .O(\select_ln89_reg_1613_reg[1]_4 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_18_reg_1643[13]_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out[13]),
        .I1(sel[1]),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out[13]),
        .I3(sel[0]),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out[13]),
        .O(\tmp_18_reg_1643[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_18_reg_1643[14]_i_1 
       (.I0(\tmp_18_reg_1643[14]_i_2_n_0 ),
        .I1(\tmp_18_reg_1643_reg[15] ),
        .I2(p_reg_reg_i_20__0_n_0),
        .I3(\tmp_18_reg_1643_reg[15]_0 ),
        .I4(p_reg_reg_i_21__0_n_0),
        .O(\select_ln89_reg_1613_reg[1]_2 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_18_reg_1643[14]_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out[14]),
        .I1(sel[1]),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out[14]),
        .I3(sel[0]),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out[14]),
        .O(\tmp_18_reg_1643[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_18_reg_1643[15]_i_1 
       (.I0(\tmp_18_reg_1643[15]_i_2_n_0 ),
        .I1(\tmp_18_reg_1643_reg[15] ),
        .I2(p_reg_reg_i_17__0_n_0),
        .I3(\tmp_18_reg_1643_reg[15]_0 ),
        .I4(p_reg_reg_i_18__0_n_0),
        .O(\select_ln89_reg_1613_reg[1]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_18_reg_1643[15]_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out[15]),
        .I1(sel[1]),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out[15]),
        .I3(sel[0]),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out[15]),
        .O(\tmp_18_reg_1643[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_18_reg_1643[1]_i_1 
       (.I0(\tmp_18_reg_1643[1]_i_2_n_0 ),
        .I1(\tmp_18_reg_1643_reg[15] ),
        .I2(p_reg_reg_i_59__0_n_0),
        .I3(\tmp_18_reg_1643_reg[15]_0 ),
        .I4(p_reg_reg_i_60__0_n_0),
        .O(\select_ln89_reg_1613_reg[1]_28 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_18_reg_1643[1]_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out[1]),
        .I1(sel[1]),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out[1]),
        .I3(sel[0]),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out[1]),
        .O(\tmp_18_reg_1643[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_18_reg_1643[2]_i_1 
       (.I0(\tmp_18_reg_1643[2]_i_2_n_0 ),
        .I1(\tmp_18_reg_1643_reg[15] ),
        .I2(p_reg_reg_i_56__0_n_0),
        .I3(\tmp_18_reg_1643_reg[15]_0 ),
        .I4(p_reg_reg_i_57__0_n_0),
        .O(\select_ln89_reg_1613_reg[1]_26 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_18_reg_1643[2]_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out[2]),
        .I1(sel[1]),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out[2]),
        .I3(sel[0]),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out[2]),
        .O(\tmp_18_reg_1643[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_18_reg_1643[3]_i_1 
       (.I0(\tmp_18_reg_1643[3]_i_2_n_0 ),
        .I1(\tmp_18_reg_1643_reg[15] ),
        .I2(p_reg_reg_i_53__0_n_0),
        .I3(\tmp_18_reg_1643_reg[15]_0 ),
        .I4(p_reg_reg_i_54__0_n_0),
        .O(\select_ln89_reg_1613_reg[1]_24 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_18_reg_1643[3]_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out[3]),
        .I1(sel[1]),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out[3]),
        .I3(sel[0]),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out[3]),
        .O(\tmp_18_reg_1643[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_18_reg_1643[4]_i_1 
       (.I0(\tmp_18_reg_1643[4]_i_2_n_0 ),
        .I1(\tmp_18_reg_1643_reg[15] ),
        .I2(p_reg_reg_i_50__0_n_0),
        .I3(\tmp_18_reg_1643_reg[15]_0 ),
        .I4(p_reg_reg_i_51__0_n_0),
        .O(\select_ln89_reg_1613_reg[1]_22 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_18_reg_1643[4]_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out[4]),
        .I1(sel[1]),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out[4]),
        .I3(sel[0]),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out[4]),
        .O(\tmp_18_reg_1643[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_18_reg_1643[5]_i_1 
       (.I0(\tmp_18_reg_1643[5]_i_2_n_0 ),
        .I1(\tmp_18_reg_1643_reg[15] ),
        .I2(p_reg_reg_i_47__0_n_0),
        .I3(\tmp_18_reg_1643_reg[15]_0 ),
        .I4(p_reg_reg_i_48__0_n_0),
        .O(\select_ln89_reg_1613_reg[1]_20 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_18_reg_1643[5]_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out[5]),
        .I1(sel[1]),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out[5]),
        .I3(sel[0]),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out[5]),
        .O(\tmp_18_reg_1643[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_18_reg_1643[6]_i_1 
       (.I0(\tmp_18_reg_1643[6]_i_2_n_0 ),
        .I1(\tmp_18_reg_1643_reg[15] ),
        .I2(p_reg_reg_i_44__0_n_0),
        .I3(\tmp_18_reg_1643_reg[15]_0 ),
        .I4(p_reg_reg_i_45__0_n_0),
        .O(\select_ln89_reg_1613_reg[1]_18 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_18_reg_1643[6]_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out[6]),
        .I1(sel[1]),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out[6]),
        .I3(sel[0]),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out[6]),
        .O(\tmp_18_reg_1643[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_18_reg_1643[7]_i_1 
       (.I0(\tmp_18_reg_1643[7]_i_2_n_0 ),
        .I1(\tmp_18_reg_1643_reg[15] ),
        .I2(p_reg_reg_i_41__0_n_0),
        .I3(\tmp_18_reg_1643_reg[15]_0 ),
        .I4(p_reg_reg_i_42__0_n_0),
        .O(\select_ln89_reg_1613_reg[1]_16 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_18_reg_1643[7]_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out[7]),
        .I1(sel[1]),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out[7]),
        .I3(sel[0]),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out[7]),
        .O(\tmp_18_reg_1643[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_18_reg_1643[8]_i_1 
       (.I0(\tmp_18_reg_1643[8]_i_2_n_0 ),
        .I1(\tmp_18_reg_1643_reg[15] ),
        .I2(p_reg_reg_i_38__0_n_0),
        .I3(\tmp_18_reg_1643_reg[15]_0 ),
        .I4(p_reg_reg_i_39__0_n_0),
        .O(\select_ln89_reg_1613_reg[1]_14 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_18_reg_1643[8]_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out[8]),
        .I1(sel[1]),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out[8]),
        .I3(sel[0]),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out[8]),
        .O(\tmp_18_reg_1643[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_18_reg_1643[9]_i_1 
       (.I0(\tmp_18_reg_1643[9]_i_2_n_0 ),
        .I1(\tmp_18_reg_1643_reg[15] ),
        .I2(p_reg_reg_i_35__0_n_0),
        .I3(\tmp_18_reg_1643_reg[15]_0 ),
        .I4(p_reg_reg_i_36__0_n_0),
        .O(\select_ln89_reg_1613_reg[1]_12 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_18_reg_1643[9]_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out[9]),
        .I1(sel[1]),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out[9]),
        .I3(sel[0]),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_16_out[9]),
        .O(\tmp_18_reg_1643[9]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_20_reg_1658[0]_i_1 
       (.I0(\tmp_20_reg_1658[0]_i_2_n_0 ),
        .I1(\tmp_20_reg_1658_reg[15] ),
        .I2(p_reg_reg_i_62__1_n_0),
        .I3(\tmp_20_reg_1658_reg[15]_0 ),
        .I4(p_reg_reg_i_63__1_n_0),
        .O(\select_ln89_reg_1613_pp0_iter1_reg_reg[1]_0 [0]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_20_reg_1658[0]_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_19_out[0]),
        .I1(\tmp_20_reg_1658_reg[15]_1 ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out[0]),
        .I3(\tmp_20_reg_1658_reg[15]_2 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out[0]),
        .O(\tmp_20_reg_1658[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_20_reg_1658[10]_i_1 
       (.I0(\tmp_20_reg_1658[10]_i_2_n_0 ),
        .I1(\tmp_20_reg_1658_reg[15] ),
        .I2(p_reg_reg_i_32__1_n_0),
        .I3(\tmp_20_reg_1658_reg[15]_0 ),
        .I4(p_reg_reg_i_33__1_n_0),
        .O(\select_ln89_reg_1613_pp0_iter1_reg_reg[1]_0 [10]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_20_reg_1658[10]_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_19_out[10]),
        .I1(\tmp_20_reg_1658_reg[15]_1 ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out[10]),
        .I3(\tmp_20_reg_1658_reg[15]_2 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out[10]),
        .O(\tmp_20_reg_1658[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_20_reg_1658[11]_i_1 
       (.I0(\tmp_20_reg_1658[11]_i_2_n_0 ),
        .I1(\tmp_20_reg_1658_reg[15] ),
        .I2(p_reg_reg_i_29__1_n_0),
        .I3(\tmp_20_reg_1658_reg[15]_0 ),
        .I4(p_reg_reg_i_30__1_n_0),
        .O(\select_ln89_reg_1613_pp0_iter1_reg_reg[1]_0 [11]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_20_reg_1658[11]_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_19_out[11]),
        .I1(\tmp_20_reg_1658_reg[15]_1 ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out[11]),
        .I3(\tmp_20_reg_1658_reg[15]_2 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out[11]),
        .O(\tmp_20_reg_1658[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_20_reg_1658[12]_i_1 
       (.I0(\tmp_20_reg_1658[12]_i_2_n_0 ),
        .I1(\tmp_20_reg_1658_reg[15] ),
        .I2(p_reg_reg_i_26__1_n_0),
        .I3(\tmp_20_reg_1658_reg[15]_0 ),
        .I4(p_reg_reg_i_27__1_n_0),
        .O(\select_ln89_reg_1613_pp0_iter1_reg_reg[1]_0 [12]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_20_reg_1658[12]_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_19_out[12]),
        .I1(\tmp_20_reg_1658_reg[15]_1 ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out[12]),
        .I3(\tmp_20_reg_1658_reg[15]_2 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out[12]),
        .O(\tmp_20_reg_1658[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_20_reg_1658[13]_i_1 
       (.I0(\tmp_20_reg_1658[13]_i_2_n_0 ),
        .I1(\tmp_20_reg_1658_reg[15] ),
        .I2(p_reg_reg_i_23__1_n_0),
        .I3(\tmp_20_reg_1658_reg[15]_0 ),
        .I4(p_reg_reg_i_24__1_n_0),
        .O(\select_ln89_reg_1613_pp0_iter1_reg_reg[1]_0 [13]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_20_reg_1658[13]_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_19_out[13]),
        .I1(\tmp_20_reg_1658_reg[15]_1 ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out[13]),
        .I3(\tmp_20_reg_1658_reg[15]_2 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out[13]),
        .O(\tmp_20_reg_1658[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_20_reg_1658[14]_i_1 
       (.I0(\tmp_20_reg_1658[14]_i_2_n_0 ),
        .I1(\tmp_20_reg_1658_reg[15] ),
        .I2(p_reg_reg_i_20__1_n_0),
        .I3(\tmp_20_reg_1658_reg[15]_0 ),
        .I4(p_reg_reg_i_21__1_n_0),
        .O(\select_ln89_reg_1613_pp0_iter1_reg_reg[1]_0 [14]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_20_reg_1658[14]_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_19_out[14]),
        .I1(\tmp_20_reg_1658_reg[15]_1 ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out[14]),
        .I3(\tmp_20_reg_1658_reg[15]_2 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out[14]),
        .O(\tmp_20_reg_1658[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_20_reg_1658[15]_i_1 
       (.I0(\tmp_20_reg_1658[15]_i_2_n_0 ),
        .I1(\tmp_20_reg_1658_reg[15] ),
        .I2(p_reg_reg_i_17__1_n_0),
        .I3(\tmp_20_reg_1658_reg[15]_0 ),
        .I4(p_reg_reg_i_18__1_n_0),
        .O(\select_ln89_reg_1613_pp0_iter1_reg_reg[1]_0 [15]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_20_reg_1658[15]_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_19_out[15]),
        .I1(\tmp_20_reg_1658_reg[15]_1 ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out[15]),
        .I3(\tmp_20_reg_1658_reg[15]_2 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out[15]),
        .O(\tmp_20_reg_1658[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_20_reg_1658[1]_i_1 
       (.I0(\tmp_20_reg_1658[1]_i_2_n_0 ),
        .I1(\tmp_20_reg_1658_reg[15] ),
        .I2(p_reg_reg_i_59__1_n_0),
        .I3(\tmp_20_reg_1658_reg[15]_0 ),
        .I4(p_reg_reg_i_60__1_n_0),
        .O(\select_ln89_reg_1613_pp0_iter1_reg_reg[1]_0 [1]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_20_reg_1658[1]_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_19_out[1]),
        .I1(\tmp_20_reg_1658_reg[15]_1 ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out[1]),
        .I3(\tmp_20_reg_1658_reg[15]_2 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out[1]),
        .O(\tmp_20_reg_1658[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_20_reg_1658[2]_i_1 
       (.I0(\tmp_20_reg_1658[2]_i_2_n_0 ),
        .I1(\tmp_20_reg_1658_reg[15] ),
        .I2(p_reg_reg_i_56__1_n_0),
        .I3(\tmp_20_reg_1658_reg[15]_0 ),
        .I4(p_reg_reg_i_57__1_n_0),
        .O(\select_ln89_reg_1613_pp0_iter1_reg_reg[1]_0 [2]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_20_reg_1658[2]_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_19_out[2]),
        .I1(\tmp_20_reg_1658_reg[15]_1 ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out[2]),
        .I3(\tmp_20_reg_1658_reg[15]_2 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out[2]),
        .O(\tmp_20_reg_1658[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_20_reg_1658[3]_i_1 
       (.I0(\tmp_20_reg_1658[3]_i_2_n_0 ),
        .I1(\tmp_20_reg_1658_reg[15] ),
        .I2(p_reg_reg_i_53__1_n_0),
        .I3(\tmp_20_reg_1658_reg[15]_0 ),
        .I4(p_reg_reg_i_54__1_n_0),
        .O(\select_ln89_reg_1613_pp0_iter1_reg_reg[1]_0 [3]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_20_reg_1658[3]_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_19_out[3]),
        .I1(\tmp_20_reg_1658_reg[15]_1 ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out[3]),
        .I3(\tmp_20_reg_1658_reg[15]_2 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out[3]),
        .O(\tmp_20_reg_1658[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_20_reg_1658[4]_i_1 
       (.I0(\tmp_20_reg_1658[4]_i_2_n_0 ),
        .I1(\tmp_20_reg_1658_reg[15] ),
        .I2(p_reg_reg_i_50__1_n_0),
        .I3(\tmp_20_reg_1658_reg[15]_0 ),
        .I4(p_reg_reg_i_51__1_n_0),
        .O(\select_ln89_reg_1613_pp0_iter1_reg_reg[1]_0 [4]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_20_reg_1658[4]_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_19_out[4]),
        .I1(\tmp_20_reg_1658_reg[15]_1 ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out[4]),
        .I3(\tmp_20_reg_1658_reg[15]_2 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out[4]),
        .O(\tmp_20_reg_1658[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_20_reg_1658[5]_i_1 
       (.I0(\tmp_20_reg_1658[5]_i_2_n_0 ),
        .I1(\tmp_20_reg_1658_reg[15] ),
        .I2(p_reg_reg_i_47__1_n_0),
        .I3(\tmp_20_reg_1658_reg[15]_0 ),
        .I4(p_reg_reg_i_48__1_n_0),
        .O(\select_ln89_reg_1613_pp0_iter1_reg_reg[1]_0 [5]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_20_reg_1658[5]_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_19_out[5]),
        .I1(\tmp_20_reg_1658_reg[15]_1 ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out[5]),
        .I3(\tmp_20_reg_1658_reg[15]_2 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out[5]),
        .O(\tmp_20_reg_1658[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_20_reg_1658[6]_i_1 
       (.I0(\tmp_20_reg_1658[6]_i_2_n_0 ),
        .I1(\tmp_20_reg_1658_reg[15] ),
        .I2(p_reg_reg_i_44__1_n_0),
        .I3(\tmp_20_reg_1658_reg[15]_0 ),
        .I4(p_reg_reg_i_45__1_n_0),
        .O(\select_ln89_reg_1613_pp0_iter1_reg_reg[1]_0 [6]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_20_reg_1658[6]_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_19_out[6]),
        .I1(\tmp_20_reg_1658_reg[15]_1 ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out[6]),
        .I3(\tmp_20_reg_1658_reg[15]_2 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out[6]),
        .O(\tmp_20_reg_1658[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_20_reg_1658[7]_i_1 
       (.I0(\tmp_20_reg_1658[7]_i_2_n_0 ),
        .I1(\tmp_20_reg_1658_reg[15] ),
        .I2(p_reg_reg_i_41__1_n_0),
        .I3(\tmp_20_reg_1658_reg[15]_0 ),
        .I4(p_reg_reg_i_42__1_n_0),
        .O(\select_ln89_reg_1613_pp0_iter1_reg_reg[1]_0 [7]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_20_reg_1658[7]_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_19_out[7]),
        .I1(\tmp_20_reg_1658_reg[15]_1 ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out[7]),
        .I3(\tmp_20_reg_1658_reg[15]_2 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out[7]),
        .O(\tmp_20_reg_1658[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_20_reg_1658[8]_i_1 
       (.I0(\tmp_20_reg_1658[8]_i_2_n_0 ),
        .I1(\tmp_20_reg_1658_reg[15] ),
        .I2(p_reg_reg_i_38__1_n_0),
        .I3(\tmp_20_reg_1658_reg[15]_0 ),
        .I4(p_reg_reg_i_39__1_n_0),
        .O(\select_ln89_reg_1613_pp0_iter1_reg_reg[1]_0 [8]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_20_reg_1658[8]_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_19_out[8]),
        .I1(\tmp_20_reg_1658_reg[15]_1 ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out[8]),
        .I3(\tmp_20_reg_1658_reg[15]_2 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out[8]),
        .O(\tmp_20_reg_1658[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_20_reg_1658[9]_i_1 
       (.I0(\tmp_20_reg_1658[9]_i_2_n_0 ),
        .I1(\tmp_20_reg_1658_reg[15] ),
        .I2(p_reg_reg_i_35__1_n_0),
        .I3(\tmp_20_reg_1658_reg[15]_0 ),
        .I4(p_reg_reg_i_36__1_n_0),
        .O(\select_ln89_reg_1613_pp0_iter1_reg_reg[1]_0 [9]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_20_reg_1658[9]_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_19_out[9]),
        .I1(\tmp_20_reg_1658_reg[15]_1 ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_18_out[9]),
        .I3(\tmp_20_reg_1658_reg[15]_2 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_17_out[9]),
        .O(\tmp_20_reg_1658[9]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_22_reg_1633_pp0_iter3_reg_reg[0]_srl4_i_1 
       (.I0(\tmp_22_reg_1633_pp0_iter3_reg_reg[0]_srl4_i_2_n_0 ),
        .I1(select_ln89_fu_561_p3[1]),
        .I2(\tmp_15_reg_1628[0]_i_2_n_0 ),
        .I3(select_ln89_fu_561_p3[0]),
        .I4(p_reg_reg_i_63_n_0),
        .O(\input_22_fu_218_reg[0]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_22_reg_1633_pp0_iter3_reg_reg[0]_srl4_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out[0]),
        .I1(\tmp_15_reg_1628_reg[15] ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_20_out[0]),
        .I3(\tmp_15_reg_1628_reg[15]_0 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out[0]),
        .O(\tmp_22_reg_1633_pp0_iter3_reg_reg[0]_srl4_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_22_reg_1633_pp0_iter3_reg_reg[10]_srl4_i_1 
       (.I0(\tmp_22_reg_1633_pp0_iter3_reg_reg[10]_srl4_i_2_n_0 ),
        .I1(select_ln89_fu_561_p3[1]),
        .I2(\tmp_15_reg_1628[10]_i_2_n_0 ),
        .I3(select_ln89_fu_561_p3[0]),
        .I4(p_reg_reg_i_33_n_0),
        .O(\input_22_fu_218_reg[10]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_22_reg_1633_pp0_iter3_reg_reg[10]_srl4_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out[10]),
        .I1(\tmp_15_reg_1628_reg[15] ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_20_out[10]),
        .I3(\tmp_15_reg_1628_reg[15]_0 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out[10]),
        .O(\tmp_22_reg_1633_pp0_iter3_reg_reg[10]_srl4_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_22_reg_1633_pp0_iter3_reg_reg[11]_srl4_i_1 
       (.I0(\tmp_22_reg_1633_pp0_iter3_reg_reg[11]_srl4_i_2_n_0 ),
        .I1(select_ln89_fu_561_p3[1]),
        .I2(\tmp_15_reg_1628[11]_i_2_n_0 ),
        .I3(select_ln89_fu_561_p3[0]),
        .I4(p_reg_reg_i_30_n_0),
        .O(\input_22_fu_218_reg[11]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_22_reg_1633_pp0_iter3_reg_reg[11]_srl4_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out[11]),
        .I1(\tmp_15_reg_1628_reg[15] ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_20_out[11]),
        .I3(\tmp_15_reg_1628_reg[15]_0 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out[11]),
        .O(\tmp_22_reg_1633_pp0_iter3_reg_reg[11]_srl4_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_22_reg_1633_pp0_iter3_reg_reg[12]_srl4_i_1 
       (.I0(\tmp_22_reg_1633_pp0_iter3_reg_reg[12]_srl4_i_2_n_0 ),
        .I1(select_ln89_fu_561_p3[1]),
        .I2(\tmp_15_reg_1628[12]_i_2_n_0 ),
        .I3(select_ln89_fu_561_p3[0]),
        .I4(p_reg_reg_i_27_n_0),
        .O(\input_22_fu_218_reg[12]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_22_reg_1633_pp0_iter3_reg_reg[12]_srl4_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out[12]),
        .I1(\tmp_15_reg_1628_reg[15] ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_20_out[12]),
        .I3(\tmp_15_reg_1628_reg[15]_0 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out[12]),
        .O(\tmp_22_reg_1633_pp0_iter3_reg_reg[12]_srl4_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_22_reg_1633_pp0_iter3_reg_reg[13]_srl4_i_1 
       (.I0(\tmp_22_reg_1633_pp0_iter3_reg_reg[13]_srl4_i_2_n_0 ),
        .I1(select_ln89_fu_561_p3[1]),
        .I2(\tmp_15_reg_1628[13]_i_2_n_0 ),
        .I3(select_ln89_fu_561_p3[0]),
        .I4(p_reg_reg_i_24_n_0),
        .O(\input_22_fu_218_reg[13]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_22_reg_1633_pp0_iter3_reg_reg[13]_srl4_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out[13]),
        .I1(\tmp_15_reg_1628_reg[15] ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_20_out[13]),
        .I3(\tmp_15_reg_1628_reg[15]_0 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out[13]),
        .O(\tmp_22_reg_1633_pp0_iter3_reg_reg[13]_srl4_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_22_reg_1633_pp0_iter3_reg_reg[14]_srl4_i_1 
       (.I0(\tmp_22_reg_1633_pp0_iter3_reg_reg[14]_srl4_i_2_n_0 ),
        .I1(select_ln89_fu_561_p3[1]),
        .I2(\tmp_15_reg_1628[14]_i_2_n_0 ),
        .I3(select_ln89_fu_561_p3[0]),
        .I4(p_reg_reg_i_21_n_0),
        .O(\input_22_fu_218_reg[14]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_22_reg_1633_pp0_iter3_reg_reg[14]_srl4_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out[14]),
        .I1(\tmp_15_reg_1628_reg[15] ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_20_out[14]),
        .I3(\tmp_15_reg_1628_reg[15]_0 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out[14]),
        .O(\tmp_22_reg_1633_pp0_iter3_reg_reg[14]_srl4_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_22_reg_1633_pp0_iter3_reg_reg[15]_srl4_i_1 
       (.I0(\tmp_22_reg_1633_pp0_iter3_reg_reg[15]_srl4_i_2_n_0 ),
        .I1(select_ln89_fu_561_p3[1]),
        .I2(\tmp_15_reg_1628[15]_i_2_n_0 ),
        .I3(select_ln89_fu_561_p3[0]),
        .I4(p_reg_reg_i_18_n_0),
        .O(\input_22_fu_218_reg[15]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_22_reg_1633_pp0_iter3_reg_reg[15]_srl4_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out[15]),
        .I1(\tmp_15_reg_1628_reg[15] ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_20_out[15]),
        .I3(\tmp_15_reg_1628_reg[15]_0 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out[15]),
        .O(\tmp_22_reg_1633_pp0_iter3_reg_reg[15]_srl4_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_22_reg_1633_pp0_iter3_reg_reg[1]_srl4_i_1 
       (.I0(\tmp_22_reg_1633_pp0_iter3_reg_reg[1]_srl4_i_2_n_0 ),
        .I1(select_ln89_fu_561_p3[1]),
        .I2(\tmp_15_reg_1628[1]_i_2_n_0 ),
        .I3(select_ln89_fu_561_p3[0]),
        .I4(p_reg_reg_i_60_n_0),
        .O(\input_22_fu_218_reg[1]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_22_reg_1633_pp0_iter3_reg_reg[1]_srl4_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out[1]),
        .I1(\tmp_15_reg_1628_reg[15] ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_20_out[1]),
        .I3(\tmp_15_reg_1628_reg[15]_0 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out[1]),
        .O(\tmp_22_reg_1633_pp0_iter3_reg_reg[1]_srl4_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_22_reg_1633_pp0_iter3_reg_reg[2]_srl4_i_1 
       (.I0(\tmp_22_reg_1633_pp0_iter3_reg_reg[2]_srl4_i_2_n_0 ),
        .I1(select_ln89_fu_561_p3[1]),
        .I2(\tmp_15_reg_1628[2]_i_2_n_0 ),
        .I3(select_ln89_fu_561_p3[0]),
        .I4(p_reg_reg_i_57_n_0),
        .O(\input_22_fu_218_reg[2]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_22_reg_1633_pp0_iter3_reg_reg[2]_srl4_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out[2]),
        .I1(\tmp_15_reg_1628_reg[15] ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_20_out[2]),
        .I3(\tmp_15_reg_1628_reg[15]_0 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out[2]),
        .O(\tmp_22_reg_1633_pp0_iter3_reg_reg[2]_srl4_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_22_reg_1633_pp0_iter3_reg_reg[3]_srl4_i_1 
       (.I0(\tmp_22_reg_1633_pp0_iter3_reg_reg[3]_srl4_i_2_n_0 ),
        .I1(select_ln89_fu_561_p3[1]),
        .I2(\tmp_15_reg_1628[3]_i_2_n_0 ),
        .I3(select_ln89_fu_561_p3[0]),
        .I4(p_reg_reg_i_54_n_0),
        .O(\input_22_fu_218_reg[3]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_22_reg_1633_pp0_iter3_reg_reg[3]_srl4_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out[3]),
        .I1(\tmp_15_reg_1628_reg[15] ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_20_out[3]),
        .I3(\tmp_15_reg_1628_reg[15]_0 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out[3]),
        .O(\tmp_22_reg_1633_pp0_iter3_reg_reg[3]_srl4_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_22_reg_1633_pp0_iter3_reg_reg[4]_srl4_i_1 
       (.I0(\tmp_22_reg_1633_pp0_iter3_reg_reg[4]_srl4_i_2_n_0 ),
        .I1(select_ln89_fu_561_p3[1]),
        .I2(\tmp_15_reg_1628[4]_i_2_n_0 ),
        .I3(select_ln89_fu_561_p3[0]),
        .I4(p_reg_reg_i_51_n_0),
        .O(\input_22_fu_218_reg[4]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_22_reg_1633_pp0_iter3_reg_reg[4]_srl4_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out[4]),
        .I1(\tmp_15_reg_1628_reg[15] ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_20_out[4]),
        .I3(\tmp_15_reg_1628_reg[15]_0 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out[4]),
        .O(\tmp_22_reg_1633_pp0_iter3_reg_reg[4]_srl4_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_22_reg_1633_pp0_iter3_reg_reg[5]_srl4_i_1 
       (.I0(\tmp_22_reg_1633_pp0_iter3_reg_reg[5]_srl4_i_2_n_0 ),
        .I1(select_ln89_fu_561_p3[1]),
        .I2(\tmp_15_reg_1628[5]_i_2_n_0 ),
        .I3(select_ln89_fu_561_p3[0]),
        .I4(p_reg_reg_i_48_n_0),
        .O(\input_22_fu_218_reg[5]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_22_reg_1633_pp0_iter3_reg_reg[5]_srl4_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out[5]),
        .I1(\tmp_15_reg_1628_reg[15] ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_20_out[5]),
        .I3(\tmp_15_reg_1628_reg[15]_0 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out[5]),
        .O(\tmp_22_reg_1633_pp0_iter3_reg_reg[5]_srl4_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_22_reg_1633_pp0_iter3_reg_reg[6]_srl4_i_1 
       (.I0(\tmp_22_reg_1633_pp0_iter3_reg_reg[6]_srl4_i_2_n_0 ),
        .I1(select_ln89_fu_561_p3[1]),
        .I2(\tmp_15_reg_1628[6]_i_2_n_0 ),
        .I3(select_ln89_fu_561_p3[0]),
        .I4(p_reg_reg_i_45_n_0),
        .O(\input_22_fu_218_reg[6]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_22_reg_1633_pp0_iter3_reg_reg[6]_srl4_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out[6]),
        .I1(\tmp_15_reg_1628_reg[15] ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_20_out[6]),
        .I3(\tmp_15_reg_1628_reg[15]_0 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out[6]),
        .O(\tmp_22_reg_1633_pp0_iter3_reg_reg[6]_srl4_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_22_reg_1633_pp0_iter3_reg_reg[7]_srl4_i_1 
       (.I0(\tmp_22_reg_1633_pp0_iter3_reg_reg[7]_srl4_i_2_n_0 ),
        .I1(select_ln89_fu_561_p3[1]),
        .I2(\tmp_15_reg_1628[7]_i_2_n_0 ),
        .I3(select_ln89_fu_561_p3[0]),
        .I4(p_reg_reg_i_42_n_0),
        .O(\input_22_fu_218_reg[7]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_22_reg_1633_pp0_iter3_reg_reg[7]_srl4_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out[7]),
        .I1(\tmp_15_reg_1628_reg[15] ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_20_out[7]),
        .I3(\tmp_15_reg_1628_reg[15]_0 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out[7]),
        .O(\tmp_22_reg_1633_pp0_iter3_reg_reg[7]_srl4_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_22_reg_1633_pp0_iter3_reg_reg[8]_srl4_i_1 
       (.I0(\tmp_22_reg_1633_pp0_iter3_reg_reg[8]_srl4_i_2_n_0 ),
        .I1(select_ln89_fu_561_p3[1]),
        .I2(\tmp_15_reg_1628[8]_i_2_n_0 ),
        .I3(select_ln89_fu_561_p3[0]),
        .I4(p_reg_reg_i_39_n_0),
        .O(\input_22_fu_218_reg[8]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_22_reg_1633_pp0_iter3_reg_reg[8]_srl4_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out[8]),
        .I1(\tmp_15_reg_1628_reg[15] ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_20_out[8]),
        .I3(\tmp_15_reg_1628_reg[15]_0 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out[8]),
        .O(\tmp_22_reg_1633_pp0_iter3_reg_reg[8]_srl4_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_22_reg_1633_pp0_iter3_reg_reg[9]_srl4_i_1 
       (.I0(\tmp_22_reg_1633_pp0_iter3_reg_reg[9]_srl4_i_2_n_0 ),
        .I1(select_ln89_fu_561_p3[1]),
        .I2(\tmp_15_reg_1628[9]_i_2_n_0 ),
        .I3(select_ln89_fu_561_p3[0]),
        .I4(p_reg_reg_i_36_n_0),
        .O(\input_22_fu_218_reg[9]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_22_reg_1633_pp0_iter3_reg_reg[9]_srl4_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out[9]),
        .I1(\tmp_15_reg_1628_reg[15] ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_20_out[9]),
        .I3(\tmp_15_reg_1628_reg[15]_0 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out[9]),
        .O(\tmp_22_reg_1633_pp0_iter3_reg_reg[9]_srl4_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_24_reg_1648_pp0_iter4_reg_reg[0]_srl4_i_1 
       (.I0(\tmp_24_reg_1648_pp0_iter4_reg_reg[0]_srl4_i_2_n_0 ),
        .I1(\tmp_18_reg_1643_reg[15] ),
        .I2(\tmp_18_reg_1643[0]_i_2_n_0 ),
        .I3(\tmp_18_reg_1643_reg[15]_0 ),
        .I4(p_reg_reg_i_62__0_n_0),
        .O(\select_ln89_reg_1613_reg[1]_31 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_24_reg_1648_pp0_iter4_reg_reg[0]_srl4_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out[0]),
        .I1(sel[1]),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out[0]),
        .I3(sel[0]),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out[0]),
        .O(\tmp_24_reg_1648_pp0_iter4_reg_reg[0]_srl4_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_24_reg_1648_pp0_iter4_reg_reg[10]_srl4_i_1 
       (.I0(\tmp_24_reg_1648_pp0_iter4_reg_reg[10]_srl4_i_2_n_0 ),
        .I1(\tmp_18_reg_1643_reg[15] ),
        .I2(\tmp_18_reg_1643[10]_i_2_n_0 ),
        .I3(\tmp_18_reg_1643_reg[15]_0 ),
        .I4(p_reg_reg_i_32__0_n_0),
        .O(\select_ln89_reg_1613_reg[1]_11 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_24_reg_1648_pp0_iter4_reg_reg[10]_srl4_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out[10]),
        .I1(sel[1]),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out[10]),
        .I3(sel[0]),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out[10]),
        .O(\tmp_24_reg_1648_pp0_iter4_reg_reg[10]_srl4_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_24_reg_1648_pp0_iter4_reg_reg[11]_srl4_i_1 
       (.I0(\tmp_24_reg_1648_pp0_iter4_reg_reg[11]_srl4_i_2_n_0 ),
        .I1(\tmp_18_reg_1643_reg[15] ),
        .I2(\tmp_18_reg_1643[11]_i_2_n_0 ),
        .I3(\tmp_18_reg_1643_reg[15]_0 ),
        .I4(p_reg_reg_i_29__0_n_0),
        .O(\select_ln89_reg_1613_reg[1]_9 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_24_reg_1648_pp0_iter4_reg_reg[11]_srl4_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out[11]),
        .I1(sel[1]),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out[11]),
        .I3(sel[0]),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out[11]),
        .O(\tmp_24_reg_1648_pp0_iter4_reg_reg[11]_srl4_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_24_reg_1648_pp0_iter4_reg_reg[12]_srl4_i_1 
       (.I0(\tmp_24_reg_1648_pp0_iter4_reg_reg[12]_srl4_i_2_n_0 ),
        .I1(\tmp_18_reg_1643_reg[15] ),
        .I2(\tmp_18_reg_1643[12]_i_2_n_0 ),
        .I3(\tmp_18_reg_1643_reg[15]_0 ),
        .I4(p_reg_reg_i_26__0_n_0),
        .O(\select_ln89_reg_1613_reg[1]_7 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_24_reg_1648_pp0_iter4_reg_reg[12]_srl4_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out[12]),
        .I1(sel[1]),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out[12]),
        .I3(sel[0]),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out[12]),
        .O(\tmp_24_reg_1648_pp0_iter4_reg_reg[12]_srl4_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_24_reg_1648_pp0_iter4_reg_reg[13]_srl4_i_1 
       (.I0(\tmp_24_reg_1648_pp0_iter4_reg_reg[13]_srl4_i_2_n_0 ),
        .I1(\tmp_18_reg_1643_reg[15] ),
        .I2(\tmp_18_reg_1643[13]_i_2_n_0 ),
        .I3(\tmp_18_reg_1643_reg[15]_0 ),
        .I4(p_reg_reg_i_23__0_n_0),
        .O(\select_ln89_reg_1613_reg[1]_5 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_24_reg_1648_pp0_iter4_reg_reg[13]_srl4_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out[13]),
        .I1(sel[1]),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out[13]),
        .I3(sel[0]),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out[13]),
        .O(\tmp_24_reg_1648_pp0_iter4_reg_reg[13]_srl4_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_24_reg_1648_pp0_iter4_reg_reg[14]_srl4_i_1 
       (.I0(\tmp_24_reg_1648_pp0_iter4_reg_reg[14]_srl4_i_2_n_0 ),
        .I1(\tmp_18_reg_1643_reg[15] ),
        .I2(\tmp_18_reg_1643[14]_i_2_n_0 ),
        .I3(\tmp_18_reg_1643_reg[15]_0 ),
        .I4(p_reg_reg_i_20__0_n_0),
        .O(\select_ln89_reg_1613_reg[1]_3 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_24_reg_1648_pp0_iter4_reg_reg[14]_srl4_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out[14]),
        .I1(sel[1]),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out[14]),
        .I3(sel[0]),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out[14]),
        .O(\tmp_24_reg_1648_pp0_iter4_reg_reg[14]_srl4_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_24_reg_1648_pp0_iter4_reg_reg[15]_srl4_i_1 
       (.I0(\tmp_24_reg_1648_pp0_iter4_reg_reg[15]_srl4_i_2_n_0 ),
        .I1(\tmp_18_reg_1643_reg[15] ),
        .I2(\tmp_18_reg_1643[15]_i_2_n_0 ),
        .I3(\tmp_18_reg_1643_reg[15]_0 ),
        .I4(p_reg_reg_i_17__0_n_0),
        .O(\select_ln89_reg_1613_reg[1]_1 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_24_reg_1648_pp0_iter4_reg_reg[15]_srl4_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out[15]),
        .I1(sel[1]),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out[15]),
        .I3(sel[0]),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out[15]),
        .O(\tmp_24_reg_1648_pp0_iter4_reg_reg[15]_srl4_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_24_reg_1648_pp0_iter4_reg_reg[1]_srl4_i_1 
       (.I0(\tmp_24_reg_1648_pp0_iter4_reg_reg[1]_srl4_i_2_n_0 ),
        .I1(\tmp_18_reg_1643_reg[15] ),
        .I2(\tmp_18_reg_1643[1]_i_2_n_0 ),
        .I3(\tmp_18_reg_1643_reg[15]_0 ),
        .I4(p_reg_reg_i_59__0_n_0),
        .O(\select_ln89_reg_1613_reg[1]_29 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_24_reg_1648_pp0_iter4_reg_reg[1]_srl4_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out[1]),
        .I1(sel[1]),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out[1]),
        .I3(sel[0]),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out[1]),
        .O(\tmp_24_reg_1648_pp0_iter4_reg_reg[1]_srl4_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_24_reg_1648_pp0_iter4_reg_reg[2]_srl4_i_1 
       (.I0(\tmp_24_reg_1648_pp0_iter4_reg_reg[2]_srl4_i_2_n_0 ),
        .I1(\tmp_18_reg_1643_reg[15] ),
        .I2(\tmp_18_reg_1643[2]_i_2_n_0 ),
        .I3(\tmp_18_reg_1643_reg[15]_0 ),
        .I4(p_reg_reg_i_56__0_n_0),
        .O(\select_ln89_reg_1613_reg[1]_27 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_24_reg_1648_pp0_iter4_reg_reg[2]_srl4_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out[2]),
        .I1(sel[1]),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out[2]),
        .I3(sel[0]),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out[2]),
        .O(\tmp_24_reg_1648_pp0_iter4_reg_reg[2]_srl4_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_24_reg_1648_pp0_iter4_reg_reg[3]_srl4_i_1 
       (.I0(\tmp_24_reg_1648_pp0_iter4_reg_reg[3]_srl4_i_2_n_0 ),
        .I1(\tmp_18_reg_1643_reg[15] ),
        .I2(\tmp_18_reg_1643[3]_i_2_n_0 ),
        .I3(\tmp_18_reg_1643_reg[15]_0 ),
        .I4(p_reg_reg_i_53__0_n_0),
        .O(\select_ln89_reg_1613_reg[1]_25 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_24_reg_1648_pp0_iter4_reg_reg[3]_srl4_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out[3]),
        .I1(sel[1]),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out[3]),
        .I3(sel[0]),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out[3]),
        .O(\tmp_24_reg_1648_pp0_iter4_reg_reg[3]_srl4_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_24_reg_1648_pp0_iter4_reg_reg[4]_srl4_i_1 
       (.I0(\tmp_24_reg_1648_pp0_iter4_reg_reg[4]_srl4_i_2_n_0 ),
        .I1(\tmp_18_reg_1643_reg[15] ),
        .I2(\tmp_18_reg_1643[4]_i_2_n_0 ),
        .I3(\tmp_18_reg_1643_reg[15]_0 ),
        .I4(p_reg_reg_i_50__0_n_0),
        .O(\select_ln89_reg_1613_reg[1]_23 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_24_reg_1648_pp0_iter4_reg_reg[4]_srl4_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out[4]),
        .I1(sel[1]),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out[4]),
        .I3(sel[0]),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out[4]),
        .O(\tmp_24_reg_1648_pp0_iter4_reg_reg[4]_srl4_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_24_reg_1648_pp0_iter4_reg_reg[5]_srl4_i_1 
       (.I0(\tmp_24_reg_1648_pp0_iter4_reg_reg[5]_srl4_i_2_n_0 ),
        .I1(\tmp_18_reg_1643_reg[15] ),
        .I2(\tmp_18_reg_1643[5]_i_2_n_0 ),
        .I3(\tmp_18_reg_1643_reg[15]_0 ),
        .I4(p_reg_reg_i_47__0_n_0),
        .O(\select_ln89_reg_1613_reg[1]_21 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_24_reg_1648_pp0_iter4_reg_reg[5]_srl4_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out[5]),
        .I1(sel[1]),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out[5]),
        .I3(sel[0]),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out[5]),
        .O(\tmp_24_reg_1648_pp0_iter4_reg_reg[5]_srl4_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_24_reg_1648_pp0_iter4_reg_reg[6]_srl4_i_1 
       (.I0(\tmp_24_reg_1648_pp0_iter4_reg_reg[6]_srl4_i_2_n_0 ),
        .I1(\tmp_18_reg_1643_reg[15] ),
        .I2(\tmp_18_reg_1643[6]_i_2_n_0 ),
        .I3(\tmp_18_reg_1643_reg[15]_0 ),
        .I4(p_reg_reg_i_44__0_n_0),
        .O(\select_ln89_reg_1613_reg[1]_19 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_24_reg_1648_pp0_iter4_reg_reg[6]_srl4_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out[6]),
        .I1(sel[1]),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out[6]),
        .I3(sel[0]),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out[6]),
        .O(\tmp_24_reg_1648_pp0_iter4_reg_reg[6]_srl4_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_24_reg_1648_pp0_iter4_reg_reg[7]_srl4_i_1 
       (.I0(\tmp_24_reg_1648_pp0_iter4_reg_reg[7]_srl4_i_2_n_0 ),
        .I1(\tmp_18_reg_1643_reg[15] ),
        .I2(\tmp_18_reg_1643[7]_i_2_n_0 ),
        .I3(\tmp_18_reg_1643_reg[15]_0 ),
        .I4(p_reg_reg_i_41__0_n_0),
        .O(\select_ln89_reg_1613_reg[1]_17 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_24_reg_1648_pp0_iter4_reg_reg[7]_srl4_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out[7]),
        .I1(sel[1]),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out[7]),
        .I3(sel[0]),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out[7]),
        .O(\tmp_24_reg_1648_pp0_iter4_reg_reg[7]_srl4_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_24_reg_1648_pp0_iter4_reg_reg[8]_srl4_i_1 
       (.I0(\tmp_24_reg_1648_pp0_iter4_reg_reg[8]_srl4_i_2_n_0 ),
        .I1(\tmp_18_reg_1643_reg[15] ),
        .I2(\tmp_18_reg_1643[8]_i_2_n_0 ),
        .I3(\tmp_18_reg_1643_reg[15]_0 ),
        .I4(p_reg_reg_i_38__0_n_0),
        .O(\select_ln89_reg_1613_reg[1]_15 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_24_reg_1648_pp0_iter4_reg_reg[8]_srl4_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out[8]),
        .I1(sel[1]),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out[8]),
        .I3(sel[0]),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out[8]),
        .O(\tmp_24_reg_1648_pp0_iter4_reg_reg[8]_srl4_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_24_reg_1648_pp0_iter4_reg_reg[9]_srl4_i_1 
       (.I0(\tmp_24_reg_1648_pp0_iter4_reg_reg[9]_srl4_i_2_n_0 ),
        .I1(\tmp_18_reg_1643_reg[15] ),
        .I2(\tmp_18_reg_1643[9]_i_2_n_0 ),
        .I3(\tmp_18_reg_1643_reg[15]_0 ),
        .I4(p_reg_reg_i_35__0_n_0),
        .O(\select_ln89_reg_1613_reg[1]_13 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_24_reg_1648_pp0_iter4_reg_reg[9]_srl4_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out[9]),
        .I1(sel[1]),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out[9]),
        .I3(sel[0]),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_21_out[9]),
        .O(\tmp_24_reg_1648_pp0_iter4_reg_reg[9]_srl4_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_26_reg_1663_pp0_iter5_reg_reg[0]_srl4_i_1 
       (.I0(\tmp_26_reg_1663_pp0_iter5_reg_reg[0]_srl4_i_2_n_0 ),
        .I1(\tmp_20_reg_1658_reg[15] ),
        .I2(\tmp_20_reg_1658[0]_i_2_n_0 ),
        .I3(\tmp_20_reg_1658_reg[15]_0 ),
        .I4(p_reg_reg_i_62__1_n_0),
        .O(\select_ln89_reg_1613_pp0_iter1_reg_reg[1]_16 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_26_reg_1663_pp0_iter5_reg_reg[0]_srl4_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_24_out[0]),
        .I1(\tmp_20_reg_1658_reg[15]_1 ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out[0]),
        .I3(\tmp_20_reg_1658_reg[15]_2 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out[0]),
        .O(\tmp_26_reg_1663_pp0_iter5_reg_reg[0]_srl4_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_26_reg_1663_pp0_iter5_reg_reg[10]_srl4_i_1 
       (.I0(\tmp_26_reg_1663_pp0_iter5_reg_reg[10]_srl4_i_2_n_0 ),
        .I1(\tmp_20_reg_1658_reg[15] ),
        .I2(\tmp_20_reg_1658[10]_i_2_n_0 ),
        .I3(\tmp_20_reg_1658_reg[15]_0 ),
        .I4(p_reg_reg_i_32__1_n_0),
        .O(\select_ln89_reg_1613_pp0_iter1_reg_reg[1]_6 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_26_reg_1663_pp0_iter5_reg_reg[10]_srl4_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_24_out[10]),
        .I1(\tmp_20_reg_1658_reg[15]_1 ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out[10]),
        .I3(\tmp_20_reg_1658_reg[15]_2 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out[10]),
        .O(\tmp_26_reg_1663_pp0_iter5_reg_reg[10]_srl4_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_26_reg_1663_pp0_iter5_reg_reg[11]_srl4_i_1 
       (.I0(\tmp_26_reg_1663_pp0_iter5_reg_reg[11]_srl4_i_2_n_0 ),
        .I1(\tmp_20_reg_1658_reg[15] ),
        .I2(\tmp_20_reg_1658[11]_i_2_n_0 ),
        .I3(\tmp_20_reg_1658_reg[15]_0 ),
        .I4(p_reg_reg_i_29__1_n_0),
        .O(\select_ln89_reg_1613_pp0_iter1_reg_reg[1]_5 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_26_reg_1663_pp0_iter5_reg_reg[11]_srl4_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_24_out[11]),
        .I1(\tmp_20_reg_1658_reg[15]_1 ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out[11]),
        .I3(\tmp_20_reg_1658_reg[15]_2 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out[11]),
        .O(\tmp_26_reg_1663_pp0_iter5_reg_reg[11]_srl4_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_26_reg_1663_pp0_iter5_reg_reg[12]_srl4_i_1 
       (.I0(\tmp_26_reg_1663_pp0_iter5_reg_reg[12]_srl4_i_2_n_0 ),
        .I1(\tmp_20_reg_1658_reg[15] ),
        .I2(\tmp_20_reg_1658[12]_i_2_n_0 ),
        .I3(\tmp_20_reg_1658_reg[15]_0 ),
        .I4(p_reg_reg_i_26__1_n_0),
        .O(\select_ln89_reg_1613_pp0_iter1_reg_reg[1]_4 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_26_reg_1663_pp0_iter5_reg_reg[12]_srl4_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_24_out[12]),
        .I1(\tmp_20_reg_1658_reg[15]_1 ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out[12]),
        .I3(\tmp_20_reg_1658_reg[15]_2 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out[12]),
        .O(\tmp_26_reg_1663_pp0_iter5_reg_reg[12]_srl4_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_26_reg_1663_pp0_iter5_reg_reg[13]_srl4_i_1 
       (.I0(\tmp_26_reg_1663_pp0_iter5_reg_reg[13]_srl4_i_2_n_0 ),
        .I1(\tmp_20_reg_1658_reg[15] ),
        .I2(\tmp_20_reg_1658[13]_i_2_n_0 ),
        .I3(\tmp_20_reg_1658_reg[15]_0 ),
        .I4(p_reg_reg_i_23__1_n_0),
        .O(\select_ln89_reg_1613_pp0_iter1_reg_reg[1]_3 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_26_reg_1663_pp0_iter5_reg_reg[13]_srl4_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_24_out[13]),
        .I1(\tmp_20_reg_1658_reg[15]_1 ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out[13]),
        .I3(\tmp_20_reg_1658_reg[15]_2 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out[13]),
        .O(\tmp_26_reg_1663_pp0_iter5_reg_reg[13]_srl4_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_26_reg_1663_pp0_iter5_reg_reg[14]_srl4_i_1 
       (.I0(\tmp_26_reg_1663_pp0_iter5_reg_reg[14]_srl4_i_2_n_0 ),
        .I1(\tmp_20_reg_1658_reg[15] ),
        .I2(\tmp_20_reg_1658[14]_i_2_n_0 ),
        .I3(\tmp_20_reg_1658_reg[15]_0 ),
        .I4(p_reg_reg_i_20__1_n_0),
        .O(\select_ln89_reg_1613_pp0_iter1_reg_reg[1]_2 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_26_reg_1663_pp0_iter5_reg_reg[14]_srl4_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_24_out[14]),
        .I1(\tmp_20_reg_1658_reg[15]_1 ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out[14]),
        .I3(\tmp_20_reg_1658_reg[15]_2 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out[14]),
        .O(\tmp_26_reg_1663_pp0_iter5_reg_reg[14]_srl4_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_26_reg_1663_pp0_iter5_reg_reg[15]_srl4_i_1 
       (.I0(\tmp_26_reg_1663_pp0_iter5_reg_reg[15]_srl4_i_2_n_0 ),
        .I1(\tmp_20_reg_1658_reg[15] ),
        .I2(\tmp_20_reg_1658[15]_i_2_n_0 ),
        .I3(\tmp_20_reg_1658_reg[15]_0 ),
        .I4(p_reg_reg_i_17__1_n_0),
        .O(\select_ln89_reg_1613_pp0_iter1_reg_reg[1]_1 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_26_reg_1663_pp0_iter5_reg_reg[15]_srl4_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_24_out[15]),
        .I1(\tmp_20_reg_1658_reg[15]_1 ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out[15]),
        .I3(\tmp_20_reg_1658_reg[15]_2 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out[15]),
        .O(\tmp_26_reg_1663_pp0_iter5_reg_reg[15]_srl4_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_26_reg_1663_pp0_iter5_reg_reg[1]_srl4_i_1 
       (.I0(\tmp_26_reg_1663_pp0_iter5_reg_reg[1]_srl4_i_2_n_0 ),
        .I1(\tmp_20_reg_1658_reg[15] ),
        .I2(\tmp_20_reg_1658[1]_i_2_n_0 ),
        .I3(\tmp_20_reg_1658_reg[15]_0 ),
        .I4(p_reg_reg_i_59__1_n_0),
        .O(\select_ln89_reg_1613_pp0_iter1_reg_reg[1]_15 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_26_reg_1663_pp0_iter5_reg_reg[1]_srl4_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_24_out[1]),
        .I1(\tmp_20_reg_1658_reg[15]_1 ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out[1]),
        .I3(\tmp_20_reg_1658_reg[15]_2 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out[1]),
        .O(\tmp_26_reg_1663_pp0_iter5_reg_reg[1]_srl4_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_26_reg_1663_pp0_iter5_reg_reg[2]_srl4_i_1 
       (.I0(\tmp_26_reg_1663_pp0_iter5_reg_reg[2]_srl4_i_2_n_0 ),
        .I1(\tmp_20_reg_1658_reg[15] ),
        .I2(\tmp_20_reg_1658[2]_i_2_n_0 ),
        .I3(\tmp_20_reg_1658_reg[15]_0 ),
        .I4(p_reg_reg_i_56__1_n_0),
        .O(\select_ln89_reg_1613_pp0_iter1_reg_reg[1]_14 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_26_reg_1663_pp0_iter5_reg_reg[2]_srl4_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_24_out[2]),
        .I1(\tmp_20_reg_1658_reg[15]_1 ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out[2]),
        .I3(\tmp_20_reg_1658_reg[15]_2 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out[2]),
        .O(\tmp_26_reg_1663_pp0_iter5_reg_reg[2]_srl4_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_26_reg_1663_pp0_iter5_reg_reg[3]_srl4_i_1 
       (.I0(\tmp_26_reg_1663_pp0_iter5_reg_reg[3]_srl4_i_2_n_0 ),
        .I1(\tmp_20_reg_1658_reg[15] ),
        .I2(\tmp_20_reg_1658[3]_i_2_n_0 ),
        .I3(\tmp_20_reg_1658_reg[15]_0 ),
        .I4(p_reg_reg_i_53__1_n_0),
        .O(\select_ln89_reg_1613_pp0_iter1_reg_reg[1]_13 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_26_reg_1663_pp0_iter5_reg_reg[3]_srl4_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_24_out[3]),
        .I1(\tmp_20_reg_1658_reg[15]_1 ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out[3]),
        .I3(\tmp_20_reg_1658_reg[15]_2 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out[3]),
        .O(\tmp_26_reg_1663_pp0_iter5_reg_reg[3]_srl4_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_26_reg_1663_pp0_iter5_reg_reg[4]_srl4_i_1 
       (.I0(\tmp_26_reg_1663_pp0_iter5_reg_reg[4]_srl4_i_2_n_0 ),
        .I1(\tmp_20_reg_1658_reg[15] ),
        .I2(\tmp_20_reg_1658[4]_i_2_n_0 ),
        .I3(\tmp_20_reg_1658_reg[15]_0 ),
        .I4(p_reg_reg_i_50__1_n_0),
        .O(\select_ln89_reg_1613_pp0_iter1_reg_reg[1]_12 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_26_reg_1663_pp0_iter5_reg_reg[4]_srl4_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_24_out[4]),
        .I1(\tmp_20_reg_1658_reg[15]_1 ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out[4]),
        .I3(\tmp_20_reg_1658_reg[15]_2 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out[4]),
        .O(\tmp_26_reg_1663_pp0_iter5_reg_reg[4]_srl4_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_26_reg_1663_pp0_iter5_reg_reg[5]_srl4_i_1 
       (.I0(\tmp_26_reg_1663_pp0_iter5_reg_reg[5]_srl4_i_2_n_0 ),
        .I1(\tmp_20_reg_1658_reg[15] ),
        .I2(\tmp_20_reg_1658[5]_i_2_n_0 ),
        .I3(\tmp_20_reg_1658_reg[15]_0 ),
        .I4(p_reg_reg_i_47__1_n_0),
        .O(\select_ln89_reg_1613_pp0_iter1_reg_reg[1]_11 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_26_reg_1663_pp0_iter5_reg_reg[5]_srl4_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_24_out[5]),
        .I1(\tmp_20_reg_1658_reg[15]_1 ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out[5]),
        .I3(\tmp_20_reg_1658_reg[15]_2 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out[5]),
        .O(\tmp_26_reg_1663_pp0_iter5_reg_reg[5]_srl4_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_26_reg_1663_pp0_iter5_reg_reg[6]_srl4_i_1 
       (.I0(\tmp_26_reg_1663_pp0_iter5_reg_reg[6]_srl4_i_2_n_0 ),
        .I1(\tmp_20_reg_1658_reg[15] ),
        .I2(\tmp_20_reg_1658[6]_i_2_n_0 ),
        .I3(\tmp_20_reg_1658_reg[15]_0 ),
        .I4(p_reg_reg_i_44__1_n_0),
        .O(\select_ln89_reg_1613_pp0_iter1_reg_reg[1]_10 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_26_reg_1663_pp0_iter5_reg_reg[6]_srl4_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_24_out[6]),
        .I1(\tmp_20_reg_1658_reg[15]_1 ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out[6]),
        .I3(\tmp_20_reg_1658_reg[15]_2 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out[6]),
        .O(\tmp_26_reg_1663_pp0_iter5_reg_reg[6]_srl4_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_26_reg_1663_pp0_iter5_reg_reg[7]_srl4_i_1 
       (.I0(\tmp_26_reg_1663_pp0_iter5_reg_reg[7]_srl4_i_2_n_0 ),
        .I1(\tmp_20_reg_1658_reg[15] ),
        .I2(\tmp_20_reg_1658[7]_i_2_n_0 ),
        .I3(\tmp_20_reg_1658_reg[15]_0 ),
        .I4(p_reg_reg_i_41__1_n_0),
        .O(\select_ln89_reg_1613_pp0_iter1_reg_reg[1]_9 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_26_reg_1663_pp0_iter5_reg_reg[7]_srl4_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_24_out[7]),
        .I1(\tmp_20_reg_1658_reg[15]_1 ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out[7]),
        .I3(\tmp_20_reg_1658_reg[15]_2 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out[7]),
        .O(\tmp_26_reg_1663_pp0_iter5_reg_reg[7]_srl4_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_26_reg_1663_pp0_iter5_reg_reg[8]_srl4_i_1 
       (.I0(\tmp_26_reg_1663_pp0_iter5_reg_reg[8]_srl4_i_2_n_0 ),
        .I1(\tmp_20_reg_1658_reg[15] ),
        .I2(\tmp_20_reg_1658[8]_i_2_n_0 ),
        .I3(\tmp_20_reg_1658_reg[15]_0 ),
        .I4(p_reg_reg_i_38__1_n_0),
        .O(\select_ln89_reg_1613_pp0_iter1_reg_reg[1]_8 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_26_reg_1663_pp0_iter5_reg_reg[8]_srl4_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_24_out[8]),
        .I1(\tmp_20_reg_1658_reg[15]_1 ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out[8]),
        .I3(\tmp_20_reg_1658_reg[15]_2 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out[8]),
        .O(\tmp_26_reg_1663_pp0_iter5_reg_reg[8]_srl4_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_26_reg_1663_pp0_iter5_reg_reg[9]_srl4_i_1 
       (.I0(\tmp_26_reg_1663_pp0_iter5_reg_reg[9]_srl4_i_2_n_0 ),
        .I1(\tmp_20_reg_1658_reg[15] ),
        .I2(\tmp_20_reg_1658[9]_i_2_n_0 ),
        .I3(\tmp_20_reg_1658_reg[15]_0 ),
        .I4(p_reg_reg_i_35__1_n_0),
        .O(\select_ln89_reg_1613_pp0_iter1_reg_reg[1]_7 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_26_reg_1663_pp0_iter5_reg_reg[9]_srl4_i_2 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_24_out[9]),
        .I1(\tmp_20_reg_1658_reg[15]_1 ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_23_out[9]),
        .I3(\tmp_20_reg_1658_reg[15]_2 ),
        .I4(grp_conv2d_Pipeline_READ_INPUT_fu_252_input_22_out[9]),
        .O(\tmp_26_reg_1663_pp0_iter5_reg_reg[9]_srl4_i_2_n_0 ));
  FDRE \trunc_ln1_reg_935_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(ap_sig_allocacmp_phi_mul_load[8]),
        .Q(trunc_ln1_reg_935[0]),
        .R(1'b0));
  FDRE \trunc_ln1_reg_935_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(ap_sig_allocacmp_phi_mul_load[9]),
        .Q(trunc_ln1_reg_935[1]),
        .R(1'b0));
  FDRE \trunc_ln1_reg_935_reg[2] 
       (.C(ap_clk),
        .CE(E),
        .D(ap_sig_allocacmp_phi_mul_load[10]),
        .Q(trunc_ln1_reg_935[2]),
        .R(1'b0));
  FDRE \trunc_ln68_reg_939_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(ap_sig_allocacmp_phi_urem_load[0]),
        .Q(trunc_ln68_reg_939[0]),
        .R(1'b0));
  FDRE \trunc_ln68_reg_939_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(ap_sig_allocacmp_phi_urem_load[1]),
        .Q(trunc_ln68_reg_939[1]),
        .R(1'b0));
  FDRE \trunc_ln68_reg_939_reg[2] 
       (.C(ap_clk),
        .CE(E),
        .D(ap_sig_allocacmp_phi_urem_load[2]),
        .Q(trunc_ln68_reg_939[2]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "conv2d_conv2d_Pipeline_READ_WEIGHTS" *) 
module cnn_pipeline_conv2d_0_1_conv2d_conv2d_Pipeline_READ_WEIGHTS
   (ap_enable_reg_pp0_iter1,
    \state_reg[0] ,
    \ap_CS_fsm_reg[2] ,
    CEB1,
    \ap_CS_fsm_reg[1] ,
    D,
    \empty_26_fu_126_reg[15]_0 ,
    \empty_25_fu_122_reg[15]_0 ,
    \empty_24_fu_118_reg[15]_0 ,
    \empty_23_fu_114_reg[15]_0 ,
    \empty_22_fu_110_reg[15]_0 ,
    \empty_21_fu_106_reg[15]_0 ,
    \empty_20_fu_102_reg[15]_0 ,
    \empty_19_fu_98_reg[15]_0 ,
    ap_rst_n_inv,
    ap_clk,
    grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg,
    Q,
    ap_rst_n,
    \phi_mul14_fu_86_reg[1]_0 ,
    \ap_CS_fsm_reg[3] ,
    ap_done_reg1,
    grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg,
    ap_done_cache,
    E,
    \empty_26_fu_126_reg[15]_1 );
  output ap_enable_reg_pp0_iter1;
  output \state_reg[0] ;
  output \ap_CS_fsm_reg[2] ;
  output CEB1;
  output \ap_CS_fsm_reg[1] ;
  output [0:0]D;
  output [15:0]\empty_26_fu_126_reg[15]_0 ;
  output [15:0]\empty_25_fu_122_reg[15]_0 ;
  output [15:0]\empty_24_fu_118_reg[15]_0 ;
  output [15:0]\empty_23_fu_114_reg[15]_0 ;
  output [15:0]\empty_22_fu_110_reg[15]_0 ;
  output [15:0]\empty_21_fu_106_reg[15]_0 ;
  output [15:0]\empty_20_fu_102_reg[15]_0 ;
  output [15:0]\empty_19_fu_98_reg[15]_0 ;
  input ap_rst_n_inv;
  input ap_clk;
  input grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg;
  input [0:0]Q;
  input ap_rst_n;
  input \phi_mul14_fu_86_reg[1]_0 ;
  input [1:0]\ap_CS_fsm_reg[3] ;
  input ap_done_reg1;
  input grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg;
  input ap_done_cache;
  input [0:0]E;
  input [15:0]\empty_26_fu_126_reg[15]_1 ;

  wire CEB1;
  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [7:1]add_ln81_fu_248_p2;
  wire \ap_CS_fsm_reg[1] ;
  wire \ap_CS_fsm_reg[2] ;
  wire [1:0]\ap_CS_fsm_reg[3] ;
  wire ap_clk;
  wire ap_done_cache;
  wire ap_done_reg1;
  wire ap_enable_reg_pp0_iter1;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire [7:6]ap_sig_allocacmp_phi_mul14_load;
  wire [1:0]ap_sig_allocacmp_phi_urem16_load;
  wire empty_19_fu_980;
  wire [15:0]\empty_19_fu_98_reg[15]_0 ;
  wire empty_20_fu_1020;
  wire [15:0]\empty_20_fu_102_reg[15]_0 ;
  wire empty_21_fu_1060;
  wire [15:0]\empty_21_fu_106_reg[15]_0 ;
  wire empty_22_fu_1100;
  wire [15:0]\empty_22_fu_110_reg[15]_0 ;
  wire empty_23_fu_1140;
  wire [15:0]\empty_23_fu_114_reg[15]_0 ;
  wire empty_24_fu_1180;
  wire [15:0]\empty_24_fu_118_reg[15]_0 ;
  wire empty_25_fu_1220;
  wire [15:0]\empty_25_fu_122_reg[15]_0 ;
  wire empty_26_fu_1260;
  wire [15:0]\empty_26_fu_126_reg[15]_0 ;
  wire [15:0]\empty_26_fu_126_reg[15]_1 ;
  wire flow_control_loop_pipe_sequential_init_U_n_0;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg;
  wire grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg;
  wire [3:0]i_fu_239_p2;
  wire [0:0]phi_mul14_fu_86;
  wire \phi_mul14_fu_86_reg[1]_0 ;
  wire \phi_mul14_fu_86_reg_n_0_[1] ;
  wire \phi_mul14_fu_86_reg_n_0_[2] ;
  wire \phi_mul14_fu_86_reg_n_0_[3] ;
  wire \phi_mul14_fu_86_reg_n_0_[4] ;
  wire \phi_mul14_fu_86_reg_n_0_[5] ;
  wire \phi_mul14_fu_86_reg_n_0_[6] ;
  wire \phi_mul14_fu_86_reg_n_0_[7] ;
  wire [3:0]phi_urem16_fu_82;
  wire [3:0]rem_fu_90;
  wire [3:0]select_ln73_fu_289_p3;
  wire \state_reg[0] ;
  wire [1:0]trunc_ln4_reg_475;
  wire [1:0]trunc_ln83_reg_479;

  LUT3 #(
    .INIT(8'h80)) 
    ack_in_t_i_2
       (.I0(\ap_CS_fsm_reg[3] [1]),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(Q),
        .O(\ap_CS_fsm_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(flow_control_loop_pipe_sequential_init_U_n_0),
        .Q(ap_enable_reg_pp0_iter1),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \empty_19_fu_98[15]_i_1 
       (.I0(trunc_ln83_reg_479[1]),
        .I1(trunc_ln83_reg_479[0]),
        .I2(trunc_ln4_reg_475[0]),
        .I3(trunc_ln4_reg_475[1]),
        .I4(Q),
        .I5(ap_enable_reg_pp0_iter1),
        .O(empty_19_fu_980));
  FDRE #(
    .INIT(1'b0)) 
    \empty_19_fu_98_reg[0] 
       (.C(ap_clk),
        .CE(empty_19_fu_980),
        .D(\empty_26_fu_126_reg[15]_1 [0]),
        .Q(\empty_19_fu_98_reg[15]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_19_fu_98_reg[10] 
       (.C(ap_clk),
        .CE(empty_19_fu_980),
        .D(\empty_26_fu_126_reg[15]_1 [10]),
        .Q(\empty_19_fu_98_reg[15]_0 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_19_fu_98_reg[11] 
       (.C(ap_clk),
        .CE(empty_19_fu_980),
        .D(\empty_26_fu_126_reg[15]_1 [11]),
        .Q(\empty_19_fu_98_reg[15]_0 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_19_fu_98_reg[12] 
       (.C(ap_clk),
        .CE(empty_19_fu_980),
        .D(\empty_26_fu_126_reg[15]_1 [12]),
        .Q(\empty_19_fu_98_reg[15]_0 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_19_fu_98_reg[13] 
       (.C(ap_clk),
        .CE(empty_19_fu_980),
        .D(\empty_26_fu_126_reg[15]_1 [13]),
        .Q(\empty_19_fu_98_reg[15]_0 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_19_fu_98_reg[14] 
       (.C(ap_clk),
        .CE(empty_19_fu_980),
        .D(\empty_26_fu_126_reg[15]_1 [14]),
        .Q(\empty_19_fu_98_reg[15]_0 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_19_fu_98_reg[15] 
       (.C(ap_clk),
        .CE(empty_19_fu_980),
        .D(\empty_26_fu_126_reg[15]_1 [15]),
        .Q(\empty_19_fu_98_reg[15]_0 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_19_fu_98_reg[1] 
       (.C(ap_clk),
        .CE(empty_19_fu_980),
        .D(\empty_26_fu_126_reg[15]_1 [1]),
        .Q(\empty_19_fu_98_reg[15]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_19_fu_98_reg[2] 
       (.C(ap_clk),
        .CE(empty_19_fu_980),
        .D(\empty_26_fu_126_reg[15]_1 [2]),
        .Q(\empty_19_fu_98_reg[15]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_19_fu_98_reg[3] 
       (.C(ap_clk),
        .CE(empty_19_fu_980),
        .D(\empty_26_fu_126_reg[15]_1 [3]),
        .Q(\empty_19_fu_98_reg[15]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_19_fu_98_reg[4] 
       (.C(ap_clk),
        .CE(empty_19_fu_980),
        .D(\empty_26_fu_126_reg[15]_1 [4]),
        .Q(\empty_19_fu_98_reg[15]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_19_fu_98_reg[5] 
       (.C(ap_clk),
        .CE(empty_19_fu_980),
        .D(\empty_26_fu_126_reg[15]_1 [5]),
        .Q(\empty_19_fu_98_reg[15]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_19_fu_98_reg[6] 
       (.C(ap_clk),
        .CE(empty_19_fu_980),
        .D(\empty_26_fu_126_reg[15]_1 [6]),
        .Q(\empty_19_fu_98_reg[15]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_19_fu_98_reg[7] 
       (.C(ap_clk),
        .CE(empty_19_fu_980),
        .D(\empty_26_fu_126_reg[15]_1 [7]),
        .Q(\empty_19_fu_98_reg[15]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_19_fu_98_reg[8] 
       (.C(ap_clk),
        .CE(empty_19_fu_980),
        .D(\empty_26_fu_126_reg[15]_1 [8]),
        .Q(\empty_19_fu_98_reg[15]_0 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_19_fu_98_reg[9] 
       (.C(ap_clk),
        .CE(empty_19_fu_980),
        .D(\empty_26_fu_126_reg[15]_1 [9]),
        .Q(\empty_19_fu_98_reg[15]_0 [9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h02000000)) 
    \empty_20_fu_102[15]_i_1 
       (.I0(trunc_ln83_reg_479[1]),
        .I1(trunc_ln4_reg_475[0]),
        .I2(trunc_ln4_reg_475[1]),
        .I3(Q),
        .I4(ap_enable_reg_pp0_iter1),
        .O(empty_20_fu_1020));
  FDRE #(
    .INIT(1'b0)) 
    \empty_20_fu_102_reg[0] 
       (.C(ap_clk),
        .CE(empty_20_fu_1020),
        .D(\empty_26_fu_126_reg[15]_1 [0]),
        .Q(\empty_20_fu_102_reg[15]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_20_fu_102_reg[10] 
       (.C(ap_clk),
        .CE(empty_20_fu_1020),
        .D(\empty_26_fu_126_reg[15]_1 [10]),
        .Q(\empty_20_fu_102_reg[15]_0 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_20_fu_102_reg[11] 
       (.C(ap_clk),
        .CE(empty_20_fu_1020),
        .D(\empty_26_fu_126_reg[15]_1 [11]),
        .Q(\empty_20_fu_102_reg[15]_0 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_20_fu_102_reg[12] 
       (.C(ap_clk),
        .CE(empty_20_fu_1020),
        .D(\empty_26_fu_126_reg[15]_1 [12]),
        .Q(\empty_20_fu_102_reg[15]_0 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_20_fu_102_reg[13] 
       (.C(ap_clk),
        .CE(empty_20_fu_1020),
        .D(\empty_26_fu_126_reg[15]_1 [13]),
        .Q(\empty_20_fu_102_reg[15]_0 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_20_fu_102_reg[14] 
       (.C(ap_clk),
        .CE(empty_20_fu_1020),
        .D(\empty_26_fu_126_reg[15]_1 [14]),
        .Q(\empty_20_fu_102_reg[15]_0 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_20_fu_102_reg[15] 
       (.C(ap_clk),
        .CE(empty_20_fu_1020),
        .D(\empty_26_fu_126_reg[15]_1 [15]),
        .Q(\empty_20_fu_102_reg[15]_0 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_20_fu_102_reg[1] 
       (.C(ap_clk),
        .CE(empty_20_fu_1020),
        .D(\empty_26_fu_126_reg[15]_1 [1]),
        .Q(\empty_20_fu_102_reg[15]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_20_fu_102_reg[2] 
       (.C(ap_clk),
        .CE(empty_20_fu_1020),
        .D(\empty_26_fu_126_reg[15]_1 [2]),
        .Q(\empty_20_fu_102_reg[15]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_20_fu_102_reg[3] 
       (.C(ap_clk),
        .CE(empty_20_fu_1020),
        .D(\empty_26_fu_126_reg[15]_1 [3]),
        .Q(\empty_20_fu_102_reg[15]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_20_fu_102_reg[4] 
       (.C(ap_clk),
        .CE(empty_20_fu_1020),
        .D(\empty_26_fu_126_reg[15]_1 [4]),
        .Q(\empty_20_fu_102_reg[15]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_20_fu_102_reg[5] 
       (.C(ap_clk),
        .CE(empty_20_fu_1020),
        .D(\empty_26_fu_126_reg[15]_1 [5]),
        .Q(\empty_20_fu_102_reg[15]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_20_fu_102_reg[6] 
       (.C(ap_clk),
        .CE(empty_20_fu_1020),
        .D(\empty_26_fu_126_reg[15]_1 [6]),
        .Q(\empty_20_fu_102_reg[15]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_20_fu_102_reg[7] 
       (.C(ap_clk),
        .CE(empty_20_fu_1020),
        .D(\empty_26_fu_126_reg[15]_1 [7]),
        .Q(\empty_20_fu_102_reg[15]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_20_fu_102_reg[8] 
       (.C(ap_clk),
        .CE(empty_20_fu_1020),
        .D(\empty_26_fu_126_reg[15]_1 [8]),
        .Q(\empty_20_fu_102_reg[15]_0 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_20_fu_102_reg[9] 
       (.C(ap_clk),
        .CE(empty_20_fu_1020),
        .D(\empty_26_fu_126_reg[15]_1 [9]),
        .Q(\empty_20_fu_102_reg[15]_0 [9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \empty_21_fu_106[15]_i_1 
       (.I0(trunc_ln83_reg_479[1]),
        .I1(trunc_ln83_reg_479[0]),
        .I2(trunc_ln4_reg_475[1]),
        .I3(trunc_ln4_reg_475[0]),
        .I4(Q),
        .I5(ap_enable_reg_pp0_iter1),
        .O(empty_21_fu_1060));
  FDRE #(
    .INIT(1'b0)) 
    \empty_21_fu_106_reg[0] 
       (.C(ap_clk),
        .CE(empty_21_fu_1060),
        .D(\empty_26_fu_126_reg[15]_1 [0]),
        .Q(\empty_21_fu_106_reg[15]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_21_fu_106_reg[10] 
       (.C(ap_clk),
        .CE(empty_21_fu_1060),
        .D(\empty_26_fu_126_reg[15]_1 [10]),
        .Q(\empty_21_fu_106_reg[15]_0 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_21_fu_106_reg[11] 
       (.C(ap_clk),
        .CE(empty_21_fu_1060),
        .D(\empty_26_fu_126_reg[15]_1 [11]),
        .Q(\empty_21_fu_106_reg[15]_0 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_21_fu_106_reg[12] 
       (.C(ap_clk),
        .CE(empty_21_fu_1060),
        .D(\empty_26_fu_126_reg[15]_1 [12]),
        .Q(\empty_21_fu_106_reg[15]_0 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_21_fu_106_reg[13] 
       (.C(ap_clk),
        .CE(empty_21_fu_1060),
        .D(\empty_26_fu_126_reg[15]_1 [13]),
        .Q(\empty_21_fu_106_reg[15]_0 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_21_fu_106_reg[14] 
       (.C(ap_clk),
        .CE(empty_21_fu_1060),
        .D(\empty_26_fu_126_reg[15]_1 [14]),
        .Q(\empty_21_fu_106_reg[15]_0 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_21_fu_106_reg[15] 
       (.C(ap_clk),
        .CE(empty_21_fu_1060),
        .D(\empty_26_fu_126_reg[15]_1 [15]),
        .Q(\empty_21_fu_106_reg[15]_0 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_21_fu_106_reg[1] 
       (.C(ap_clk),
        .CE(empty_21_fu_1060),
        .D(\empty_26_fu_126_reg[15]_1 [1]),
        .Q(\empty_21_fu_106_reg[15]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_21_fu_106_reg[2] 
       (.C(ap_clk),
        .CE(empty_21_fu_1060),
        .D(\empty_26_fu_126_reg[15]_1 [2]),
        .Q(\empty_21_fu_106_reg[15]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_21_fu_106_reg[3] 
       (.C(ap_clk),
        .CE(empty_21_fu_1060),
        .D(\empty_26_fu_126_reg[15]_1 [3]),
        .Q(\empty_21_fu_106_reg[15]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_21_fu_106_reg[4] 
       (.C(ap_clk),
        .CE(empty_21_fu_1060),
        .D(\empty_26_fu_126_reg[15]_1 [4]),
        .Q(\empty_21_fu_106_reg[15]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_21_fu_106_reg[5] 
       (.C(ap_clk),
        .CE(empty_21_fu_1060),
        .D(\empty_26_fu_126_reg[15]_1 [5]),
        .Q(\empty_21_fu_106_reg[15]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_21_fu_106_reg[6] 
       (.C(ap_clk),
        .CE(empty_21_fu_1060),
        .D(\empty_26_fu_126_reg[15]_1 [6]),
        .Q(\empty_21_fu_106_reg[15]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_21_fu_106_reg[7] 
       (.C(ap_clk),
        .CE(empty_21_fu_1060),
        .D(\empty_26_fu_126_reg[15]_1 [7]),
        .Q(\empty_21_fu_106_reg[15]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_21_fu_106_reg[8] 
       (.C(ap_clk),
        .CE(empty_21_fu_1060),
        .D(\empty_26_fu_126_reg[15]_1 [8]),
        .Q(\empty_21_fu_106_reg[15]_0 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_21_fu_106_reg[9] 
       (.C(ap_clk),
        .CE(empty_21_fu_1060),
        .D(\empty_26_fu_126_reg[15]_1 [9]),
        .Q(\empty_21_fu_106_reg[15]_0 [9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \empty_22_fu_110[15]_i_1 
       (.I0(trunc_ln83_reg_479[1]),
        .I1(trunc_ln83_reg_479[0]),
        .I2(trunc_ln4_reg_475[1]),
        .I3(trunc_ln4_reg_475[0]),
        .I4(Q),
        .I5(ap_enable_reg_pp0_iter1),
        .O(empty_22_fu_1100));
  FDRE #(
    .INIT(1'b0)) 
    \empty_22_fu_110_reg[0] 
       (.C(ap_clk),
        .CE(empty_22_fu_1100),
        .D(\empty_26_fu_126_reg[15]_1 [0]),
        .Q(\empty_22_fu_110_reg[15]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_22_fu_110_reg[10] 
       (.C(ap_clk),
        .CE(empty_22_fu_1100),
        .D(\empty_26_fu_126_reg[15]_1 [10]),
        .Q(\empty_22_fu_110_reg[15]_0 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_22_fu_110_reg[11] 
       (.C(ap_clk),
        .CE(empty_22_fu_1100),
        .D(\empty_26_fu_126_reg[15]_1 [11]),
        .Q(\empty_22_fu_110_reg[15]_0 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_22_fu_110_reg[12] 
       (.C(ap_clk),
        .CE(empty_22_fu_1100),
        .D(\empty_26_fu_126_reg[15]_1 [12]),
        .Q(\empty_22_fu_110_reg[15]_0 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_22_fu_110_reg[13] 
       (.C(ap_clk),
        .CE(empty_22_fu_1100),
        .D(\empty_26_fu_126_reg[15]_1 [13]),
        .Q(\empty_22_fu_110_reg[15]_0 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_22_fu_110_reg[14] 
       (.C(ap_clk),
        .CE(empty_22_fu_1100),
        .D(\empty_26_fu_126_reg[15]_1 [14]),
        .Q(\empty_22_fu_110_reg[15]_0 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_22_fu_110_reg[15] 
       (.C(ap_clk),
        .CE(empty_22_fu_1100),
        .D(\empty_26_fu_126_reg[15]_1 [15]),
        .Q(\empty_22_fu_110_reg[15]_0 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_22_fu_110_reg[1] 
       (.C(ap_clk),
        .CE(empty_22_fu_1100),
        .D(\empty_26_fu_126_reg[15]_1 [1]),
        .Q(\empty_22_fu_110_reg[15]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_22_fu_110_reg[2] 
       (.C(ap_clk),
        .CE(empty_22_fu_1100),
        .D(\empty_26_fu_126_reg[15]_1 [2]),
        .Q(\empty_22_fu_110_reg[15]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_22_fu_110_reg[3] 
       (.C(ap_clk),
        .CE(empty_22_fu_1100),
        .D(\empty_26_fu_126_reg[15]_1 [3]),
        .Q(\empty_22_fu_110_reg[15]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_22_fu_110_reg[4] 
       (.C(ap_clk),
        .CE(empty_22_fu_1100),
        .D(\empty_26_fu_126_reg[15]_1 [4]),
        .Q(\empty_22_fu_110_reg[15]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_22_fu_110_reg[5] 
       (.C(ap_clk),
        .CE(empty_22_fu_1100),
        .D(\empty_26_fu_126_reg[15]_1 [5]),
        .Q(\empty_22_fu_110_reg[15]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_22_fu_110_reg[6] 
       (.C(ap_clk),
        .CE(empty_22_fu_1100),
        .D(\empty_26_fu_126_reg[15]_1 [6]),
        .Q(\empty_22_fu_110_reg[15]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_22_fu_110_reg[7] 
       (.C(ap_clk),
        .CE(empty_22_fu_1100),
        .D(\empty_26_fu_126_reg[15]_1 [7]),
        .Q(\empty_22_fu_110_reg[15]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_22_fu_110_reg[8] 
       (.C(ap_clk),
        .CE(empty_22_fu_1100),
        .D(\empty_26_fu_126_reg[15]_1 [8]),
        .Q(\empty_22_fu_110_reg[15]_0 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_22_fu_110_reg[9] 
       (.C(ap_clk),
        .CE(empty_22_fu_1100),
        .D(\empty_26_fu_126_reg[15]_1 [9]),
        .Q(\empty_22_fu_110_reg[15]_0 [9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h20000000)) 
    \empty_23_fu_114[15]_i_1 
       (.I0(trunc_ln83_reg_479[1]),
        .I1(trunc_ln4_reg_475[1]),
        .I2(trunc_ln4_reg_475[0]),
        .I3(Q),
        .I4(ap_enable_reg_pp0_iter1),
        .O(empty_23_fu_1140));
  FDRE #(
    .INIT(1'b0)) 
    \empty_23_fu_114_reg[0] 
       (.C(ap_clk),
        .CE(empty_23_fu_1140),
        .D(\empty_26_fu_126_reg[15]_1 [0]),
        .Q(\empty_23_fu_114_reg[15]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_23_fu_114_reg[10] 
       (.C(ap_clk),
        .CE(empty_23_fu_1140),
        .D(\empty_26_fu_126_reg[15]_1 [10]),
        .Q(\empty_23_fu_114_reg[15]_0 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_23_fu_114_reg[11] 
       (.C(ap_clk),
        .CE(empty_23_fu_1140),
        .D(\empty_26_fu_126_reg[15]_1 [11]),
        .Q(\empty_23_fu_114_reg[15]_0 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_23_fu_114_reg[12] 
       (.C(ap_clk),
        .CE(empty_23_fu_1140),
        .D(\empty_26_fu_126_reg[15]_1 [12]),
        .Q(\empty_23_fu_114_reg[15]_0 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_23_fu_114_reg[13] 
       (.C(ap_clk),
        .CE(empty_23_fu_1140),
        .D(\empty_26_fu_126_reg[15]_1 [13]),
        .Q(\empty_23_fu_114_reg[15]_0 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_23_fu_114_reg[14] 
       (.C(ap_clk),
        .CE(empty_23_fu_1140),
        .D(\empty_26_fu_126_reg[15]_1 [14]),
        .Q(\empty_23_fu_114_reg[15]_0 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_23_fu_114_reg[15] 
       (.C(ap_clk),
        .CE(empty_23_fu_1140),
        .D(\empty_26_fu_126_reg[15]_1 [15]),
        .Q(\empty_23_fu_114_reg[15]_0 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_23_fu_114_reg[1] 
       (.C(ap_clk),
        .CE(empty_23_fu_1140),
        .D(\empty_26_fu_126_reg[15]_1 [1]),
        .Q(\empty_23_fu_114_reg[15]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_23_fu_114_reg[2] 
       (.C(ap_clk),
        .CE(empty_23_fu_1140),
        .D(\empty_26_fu_126_reg[15]_1 [2]),
        .Q(\empty_23_fu_114_reg[15]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_23_fu_114_reg[3] 
       (.C(ap_clk),
        .CE(empty_23_fu_1140),
        .D(\empty_26_fu_126_reg[15]_1 [3]),
        .Q(\empty_23_fu_114_reg[15]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_23_fu_114_reg[4] 
       (.C(ap_clk),
        .CE(empty_23_fu_1140),
        .D(\empty_26_fu_126_reg[15]_1 [4]),
        .Q(\empty_23_fu_114_reg[15]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_23_fu_114_reg[5] 
       (.C(ap_clk),
        .CE(empty_23_fu_1140),
        .D(\empty_26_fu_126_reg[15]_1 [5]),
        .Q(\empty_23_fu_114_reg[15]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_23_fu_114_reg[6] 
       (.C(ap_clk),
        .CE(empty_23_fu_1140),
        .D(\empty_26_fu_126_reg[15]_1 [6]),
        .Q(\empty_23_fu_114_reg[15]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_23_fu_114_reg[7] 
       (.C(ap_clk),
        .CE(empty_23_fu_1140),
        .D(\empty_26_fu_126_reg[15]_1 [7]),
        .Q(\empty_23_fu_114_reg[15]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_23_fu_114_reg[8] 
       (.C(ap_clk),
        .CE(empty_23_fu_1140),
        .D(\empty_26_fu_126_reg[15]_1 [8]),
        .Q(\empty_23_fu_114_reg[15]_0 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_23_fu_114_reg[9] 
       (.C(ap_clk),
        .CE(empty_23_fu_1140),
        .D(\empty_26_fu_126_reg[15]_1 [9]),
        .Q(\empty_23_fu_114_reg[15]_0 [9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00000080)) 
    \empty_24_fu_118[15]_i_1 
       (.I0(Q),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(trunc_ln4_reg_475[1]),
        .I3(trunc_ln83_reg_479[1]),
        .I4(trunc_ln83_reg_479[0]),
        .O(empty_24_fu_1180));
  FDRE #(
    .INIT(1'b0)) 
    \empty_24_fu_118_reg[0] 
       (.C(ap_clk),
        .CE(empty_24_fu_1180),
        .D(\empty_26_fu_126_reg[15]_1 [0]),
        .Q(\empty_24_fu_118_reg[15]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_24_fu_118_reg[10] 
       (.C(ap_clk),
        .CE(empty_24_fu_1180),
        .D(\empty_26_fu_126_reg[15]_1 [10]),
        .Q(\empty_24_fu_118_reg[15]_0 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_24_fu_118_reg[11] 
       (.C(ap_clk),
        .CE(empty_24_fu_1180),
        .D(\empty_26_fu_126_reg[15]_1 [11]),
        .Q(\empty_24_fu_118_reg[15]_0 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_24_fu_118_reg[12] 
       (.C(ap_clk),
        .CE(empty_24_fu_1180),
        .D(\empty_26_fu_126_reg[15]_1 [12]),
        .Q(\empty_24_fu_118_reg[15]_0 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_24_fu_118_reg[13] 
       (.C(ap_clk),
        .CE(empty_24_fu_1180),
        .D(\empty_26_fu_126_reg[15]_1 [13]),
        .Q(\empty_24_fu_118_reg[15]_0 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_24_fu_118_reg[14] 
       (.C(ap_clk),
        .CE(empty_24_fu_1180),
        .D(\empty_26_fu_126_reg[15]_1 [14]),
        .Q(\empty_24_fu_118_reg[15]_0 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_24_fu_118_reg[15] 
       (.C(ap_clk),
        .CE(empty_24_fu_1180),
        .D(\empty_26_fu_126_reg[15]_1 [15]),
        .Q(\empty_24_fu_118_reg[15]_0 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_24_fu_118_reg[1] 
       (.C(ap_clk),
        .CE(empty_24_fu_1180),
        .D(\empty_26_fu_126_reg[15]_1 [1]),
        .Q(\empty_24_fu_118_reg[15]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_24_fu_118_reg[2] 
       (.C(ap_clk),
        .CE(empty_24_fu_1180),
        .D(\empty_26_fu_126_reg[15]_1 [2]),
        .Q(\empty_24_fu_118_reg[15]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_24_fu_118_reg[3] 
       (.C(ap_clk),
        .CE(empty_24_fu_1180),
        .D(\empty_26_fu_126_reg[15]_1 [3]),
        .Q(\empty_24_fu_118_reg[15]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_24_fu_118_reg[4] 
       (.C(ap_clk),
        .CE(empty_24_fu_1180),
        .D(\empty_26_fu_126_reg[15]_1 [4]),
        .Q(\empty_24_fu_118_reg[15]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_24_fu_118_reg[5] 
       (.C(ap_clk),
        .CE(empty_24_fu_1180),
        .D(\empty_26_fu_126_reg[15]_1 [5]),
        .Q(\empty_24_fu_118_reg[15]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_24_fu_118_reg[6] 
       (.C(ap_clk),
        .CE(empty_24_fu_1180),
        .D(\empty_26_fu_126_reg[15]_1 [6]),
        .Q(\empty_24_fu_118_reg[15]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_24_fu_118_reg[7] 
       (.C(ap_clk),
        .CE(empty_24_fu_1180),
        .D(\empty_26_fu_126_reg[15]_1 [7]),
        .Q(\empty_24_fu_118_reg[15]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_24_fu_118_reg[8] 
       (.C(ap_clk),
        .CE(empty_24_fu_1180),
        .D(\empty_26_fu_126_reg[15]_1 [8]),
        .Q(\empty_24_fu_118_reg[15]_0 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_24_fu_118_reg[9] 
       (.C(ap_clk),
        .CE(empty_24_fu_1180),
        .D(\empty_26_fu_126_reg[15]_1 [9]),
        .Q(\empty_24_fu_118_reg[15]_0 [9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00800000)) 
    \empty_25_fu_122[15]_i_1 
       (.I0(Q),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(trunc_ln4_reg_475[1]),
        .I3(trunc_ln83_reg_479[1]),
        .I4(trunc_ln83_reg_479[0]),
        .O(empty_25_fu_1220));
  FDRE #(
    .INIT(1'b0)) 
    \empty_25_fu_122_reg[0] 
       (.C(ap_clk),
        .CE(empty_25_fu_1220),
        .D(\empty_26_fu_126_reg[15]_1 [0]),
        .Q(\empty_25_fu_122_reg[15]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_25_fu_122_reg[10] 
       (.C(ap_clk),
        .CE(empty_25_fu_1220),
        .D(\empty_26_fu_126_reg[15]_1 [10]),
        .Q(\empty_25_fu_122_reg[15]_0 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_25_fu_122_reg[11] 
       (.C(ap_clk),
        .CE(empty_25_fu_1220),
        .D(\empty_26_fu_126_reg[15]_1 [11]),
        .Q(\empty_25_fu_122_reg[15]_0 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_25_fu_122_reg[12] 
       (.C(ap_clk),
        .CE(empty_25_fu_1220),
        .D(\empty_26_fu_126_reg[15]_1 [12]),
        .Q(\empty_25_fu_122_reg[15]_0 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_25_fu_122_reg[13] 
       (.C(ap_clk),
        .CE(empty_25_fu_1220),
        .D(\empty_26_fu_126_reg[15]_1 [13]),
        .Q(\empty_25_fu_122_reg[15]_0 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_25_fu_122_reg[14] 
       (.C(ap_clk),
        .CE(empty_25_fu_1220),
        .D(\empty_26_fu_126_reg[15]_1 [14]),
        .Q(\empty_25_fu_122_reg[15]_0 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_25_fu_122_reg[15] 
       (.C(ap_clk),
        .CE(empty_25_fu_1220),
        .D(\empty_26_fu_126_reg[15]_1 [15]),
        .Q(\empty_25_fu_122_reg[15]_0 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_25_fu_122_reg[1] 
       (.C(ap_clk),
        .CE(empty_25_fu_1220),
        .D(\empty_26_fu_126_reg[15]_1 [1]),
        .Q(\empty_25_fu_122_reg[15]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_25_fu_122_reg[2] 
       (.C(ap_clk),
        .CE(empty_25_fu_1220),
        .D(\empty_26_fu_126_reg[15]_1 [2]),
        .Q(\empty_25_fu_122_reg[15]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_25_fu_122_reg[3] 
       (.C(ap_clk),
        .CE(empty_25_fu_1220),
        .D(\empty_26_fu_126_reg[15]_1 [3]),
        .Q(\empty_25_fu_122_reg[15]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_25_fu_122_reg[4] 
       (.C(ap_clk),
        .CE(empty_25_fu_1220),
        .D(\empty_26_fu_126_reg[15]_1 [4]),
        .Q(\empty_25_fu_122_reg[15]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_25_fu_122_reg[5] 
       (.C(ap_clk),
        .CE(empty_25_fu_1220),
        .D(\empty_26_fu_126_reg[15]_1 [5]),
        .Q(\empty_25_fu_122_reg[15]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_25_fu_122_reg[6] 
       (.C(ap_clk),
        .CE(empty_25_fu_1220),
        .D(\empty_26_fu_126_reg[15]_1 [6]),
        .Q(\empty_25_fu_122_reg[15]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_25_fu_122_reg[7] 
       (.C(ap_clk),
        .CE(empty_25_fu_1220),
        .D(\empty_26_fu_126_reg[15]_1 [7]),
        .Q(\empty_25_fu_122_reg[15]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_25_fu_122_reg[8] 
       (.C(ap_clk),
        .CE(empty_25_fu_1220),
        .D(\empty_26_fu_126_reg[15]_1 [8]),
        .Q(\empty_25_fu_122_reg[15]_0 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_25_fu_122_reg[9] 
       (.C(ap_clk),
        .CE(empty_25_fu_1220),
        .D(\empty_26_fu_126_reg[15]_1 [9]),
        .Q(\empty_25_fu_122_reg[15]_0 [9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h8000)) 
    \empty_26_fu_126[15]_i_1 
       (.I0(trunc_ln83_reg_479[1]),
        .I1(Q),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(trunc_ln4_reg_475[1]),
        .O(empty_26_fu_1260));
  FDRE #(
    .INIT(1'b0)) 
    \empty_26_fu_126_reg[0] 
       (.C(ap_clk),
        .CE(empty_26_fu_1260),
        .D(\empty_26_fu_126_reg[15]_1 [0]),
        .Q(\empty_26_fu_126_reg[15]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_26_fu_126_reg[10] 
       (.C(ap_clk),
        .CE(empty_26_fu_1260),
        .D(\empty_26_fu_126_reg[15]_1 [10]),
        .Q(\empty_26_fu_126_reg[15]_0 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_26_fu_126_reg[11] 
       (.C(ap_clk),
        .CE(empty_26_fu_1260),
        .D(\empty_26_fu_126_reg[15]_1 [11]),
        .Q(\empty_26_fu_126_reg[15]_0 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_26_fu_126_reg[12] 
       (.C(ap_clk),
        .CE(empty_26_fu_1260),
        .D(\empty_26_fu_126_reg[15]_1 [12]),
        .Q(\empty_26_fu_126_reg[15]_0 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_26_fu_126_reg[13] 
       (.C(ap_clk),
        .CE(empty_26_fu_1260),
        .D(\empty_26_fu_126_reg[15]_1 [13]),
        .Q(\empty_26_fu_126_reg[15]_0 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_26_fu_126_reg[14] 
       (.C(ap_clk),
        .CE(empty_26_fu_1260),
        .D(\empty_26_fu_126_reg[15]_1 [14]),
        .Q(\empty_26_fu_126_reg[15]_0 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_26_fu_126_reg[15] 
       (.C(ap_clk),
        .CE(empty_26_fu_1260),
        .D(\empty_26_fu_126_reg[15]_1 [15]),
        .Q(\empty_26_fu_126_reg[15]_0 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_26_fu_126_reg[1] 
       (.C(ap_clk),
        .CE(empty_26_fu_1260),
        .D(\empty_26_fu_126_reg[15]_1 [1]),
        .Q(\empty_26_fu_126_reg[15]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_26_fu_126_reg[2] 
       (.C(ap_clk),
        .CE(empty_26_fu_1260),
        .D(\empty_26_fu_126_reg[15]_1 [2]),
        .Q(\empty_26_fu_126_reg[15]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_26_fu_126_reg[3] 
       (.C(ap_clk),
        .CE(empty_26_fu_1260),
        .D(\empty_26_fu_126_reg[15]_1 [3]),
        .Q(\empty_26_fu_126_reg[15]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_26_fu_126_reg[4] 
       (.C(ap_clk),
        .CE(empty_26_fu_1260),
        .D(\empty_26_fu_126_reg[15]_1 [4]),
        .Q(\empty_26_fu_126_reg[15]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_26_fu_126_reg[5] 
       (.C(ap_clk),
        .CE(empty_26_fu_1260),
        .D(\empty_26_fu_126_reg[15]_1 [5]),
        .Q(\empty_26_fu_126_reg[15]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_26_fu_126_reg[6] 
       (.C(ap_clk),
        .CE(empty_26_fu_1260),
        .D(\empty_26_fu_126_reg[15]_1 [6]),
        .Q(\empty_26_fu_126_reg[15]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_26_fu_126_reg[7] 
       (.C(ap_clk),
        .CE(empty_26_fu_1260),
        .D(\empty_26_fu_126_reg[15]_1 [7]),
        .Q(\empty_26_fu_126_reg[15]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_26_fu_126_reg[8] 
       (.C(ap_clk),
        .CE(empty_26_fu_1260),
        .D(\empty_26_fu_126_reg[15]_1 [8]),
        .Q(\empty_26_fu_126_reg[15]_0 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \empty_26_fu_126_reg[9] 
       (.C(ap_clk),
        .CE(empty_26_fu_1260),
        .D(\empty_26_fu_126_reg[15]_1 [9]),
        .Q(\empty_26_fu_126_reg[15]_0 [9]),
        .R(1'b0));
  cnn_pipeline_conv2d_0_1_conv2d_flow_control_loop_pipe_sequential_init_3 flow_control_loop_pipe_sequential_init_U
       (.D(ap_sig_allocacmp_phi_urem16_load),
        .Q(Q),
        .add_ln81_fu_248_p2(add_ln81_fu_248_p2),
        .\ap_CS_fsm_reg[1] (\ap_CS_fsm_reg[1] ),
        .\ap_CS_fsm_reg[3] (\ap_CS_fsm_reg[3] ),
        .ap_clk(ap_clk),
        .ap_done_cache(ap_done_cache),
        .ap_done_reg1(ap_done_reg1),
        .ap_loop_init_int_reg_0(ap_enable_reg_pp0_iter1),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg(grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg),
        .grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg_reg(D),
        .grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg(grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg),
        .grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg_reg(flow_control_loop_pipe_sequential_init_U_n_0),
        .i_fu_239_p2(i_fu_239_p2),
        .phi_mul14_fu_86(phi_mul14_fu_86),
        .\phi_mul14_fu_86_reg[1] (\phi_mul14_fu_86_reg[1]_0 ),
        .\phi_mul14_fu_86_reg[3] (\phi_mul14_fu_86_reg_n_0_[2] ),
        .\phi_mul14_fu_86_reg[3]_0 (\phi_mul14_fu_86_reg_n_0_[1] ),
        .\phi_mul14_fu_86_reg[3]_1 (\phi_mul14_fu_86_reg_n_0_[3] ),
        .\phi_mul14_fu_86_reg[4] (\phi_mul14_fu_86_reg_n_0_[4] ),
        .\phi_mul14_fu_86_reg[5] (\phi_mul14_fu_86_reg_n_0_[5] ),
        .\phi_mul14_fu_86_reg[6] (\phi_mul14_fu_86_reg_n_0_[6] ),
        .\phi_mul14_fu_86_reg[7] (ap_sig_allocacmp_phi_mul14_load),
        .\phi_mul14_fu_86_reg[7]_0 (\phi_mul14_fu_86_reg_n_0_[7] ),
        .phi_urem16_fu_82(phi_urem16_fu_82),
        .rem_fu_90(rem_fu_90),
        .select_ln73_fu_289_p3(select_ln73_fu_289_p3),
        .\state_reg[0] (\state_reg[0] ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    p_reg_reg_i_1
       (.I0(trunc_ln83_reg_479[1]),
        .I1(trunc_ln83_reg_479[0]),
        .I2(trunc_ln4_reg_475[0]),
        .I3(trunc_ln4_reg_475[1]),
        .I4(Q),
        .I5(ap_enable_reg_pp0_iter1),
        .O(CEB1));
  FDRE #(
    .INIT(1'b0)) 
    \phi_mul14_fu_86_reg[1] 
       (.C(ap_clk),
        .CE(phi_mul14_fu_86),
        .D(add_ln81_fu_248_p2[1]),
        .Q(\phi_mul14_fu_86_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \phi_mul14_fu_86_reg[2] 
       (.C(ap_clk),
        .CE(phi_mul14_fu_86),
        .D(add_ln81_fu_248_p2[2]),
        .Q(\phi_mul14_fu_86_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \phi_mul14_fu_86_reg[3] 
       (.C(ap_clk),
        .CE(phi_mul14_fu_86),
        .D(add_ln81_fu_248_p2[3]),
        .Q(\phi_mul14_fu_86_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \phi_mul14_fu_86_reg[4] 
       (.C(ap_clk),
        .CE(phi_mul14_fu_86),
        .D(add_ln81_fu_248_p2[4]),
        .Q(\phi_mul14_fu_86_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \phi_mul14_fu_86_reg[5] 
       (.C(ap_clk),
        .CE(phi_mul14_fu_86),
        .D(add_ln81_fu_248_p2[5]),
        .Q(\phi_mul14_fu_86_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \phi_mul14_fu_86_reg[6] 
       (.C(ap_clk),
        .CE(phi_mul14_fu_86),
        .D(add_ln81_fu_248_p2[6]),
        .Q(\phi_mul14_fu_86_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \phi_mul14_fu_86_reg[7] 
       (.C(ap_clk),
        .CE(phi_mul14_fu_86),
        .D(add_ln81_fu_248_p2[7]),
        .Q(\phi_mul14_fu_86_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \phi_urem16_fu_82_reg[0] 
       (.C(ap_clk),
        .CE(phi_mul14_fu_86),
        .D(select_ln73_fu_289_p3[0]),
        .Q(phi_urem16_fu_82[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \phi_urem16_fu_82_reg[1] 
       (.C(ap_clk),
        .CE(phi_mul14_fu_86),
        .D(select_ln73_fu_289_p3[1]),
        .Q(phi_urem16_fu_82[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \phi_urem16_fu_82_reg[2] 
       (.C(ap_clk),
        .CE(phi_mul14_fu_86),
        .D(select_ln73_fu_289_p3[2]),
        .Q(phi_urem16_fu_82[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \phi_urem16_fu_82_reg[3] 
       (.C(ap_clk),
        .CE(phi_mul14_fu_86),
        .D(select_ln73_fu_289_p3[3]),
        .Q(phi_urem16_fu_82[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rem_fu_90_reg[0] 
       (.C(ap_clk),
        .CE(phi_mul14_fu_86),
        .D(i_fu_239_p2[0]),
        .Q(rem_fu_90[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rem_fu_90_reg[1] 
       (.C(ap_clk),
        .CE(phi_mul14_fu_86),
        .D(i_fu_239_p2[1]),
        .Q(rem_fu_90[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rem_fu_90_reg[2] 
       (.C(ap_clk),
        .CE(phi_mul14_fu_86),
        .D(i_fu_239_p2[2]),
        .Q(rem_fu_90[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rem_fu_90_reg[3] 
       (.C(ap_clk),
        .CE(phi_mul14_fu_86),
        .D(i_fu_239_p2[3]),
        .Q(rem_fu_90[3]),
        .R(1'b0));
  FDRE \trunc_ln4_reg_475_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(ap_sig_allocacmp_phi_mul14_load[6]),
        .Q(trunc_ln4_reg_475[0]),
        .R(1'b0));
  FDRE \trunc_ln4_reg_475_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(ap_sig_allocacmp_phi_mul14_load[7]),
        .Q(trunc_ln4_reg_475[1]),
        .R(1'b0));
  FDRE \trunc_ln83_reg_479_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(ap_sig_allocacmp_phi_urem16_load[0]),
        .Q(trunc_ln83_reg_479[0]),
        .R(1'b0));
  FDRE \trunc_ln83_reg_479_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(ap_sig_allocacmp_phi_urem16_load[1]),
        .Q(trunc_ln83_reg_479[1]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "conv2d_conv2d_Pipeline_WRITE_OUTPUT" *) 
module cnn_pipeline_conv2d_0_1_conv2d_conv2d_Pipeline_WRITE_OUTPUT
   (ap_enable_reg_pp0_iter1,
    grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_out_stream_TLAST,
    out_stream_TLAST_int_regslice,
    D,
    \p_0_reg_377_reg[15]_0 ,
    load_p2,
    \ap_CS_fsm_reg[7] ,
    grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg_reg,
    \phi_mul22_fu_96_reg[6]_0 ,
    \phi_mul22_fu_96_reg[7]_0 ,
    \phi_urem24_fu_92_reg[1]_0 ,
    ap_loop_init_int_reg,
    \ap_CS_fsm_reg[5] ,
    \icmp_ln118_reg_382_reg[0]_0 ,
    ap_rst_n_inv,
    ap_clk,
    grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg,
    out_stream_TREADY_int_regslice,
    Q,
    ap_rst_n,
    out_stream_TLAST_reg,
    \data_p2_reg[15] ,
    \ap_CS_fsm_reg[7]_0 ,
    \rem_fu_100_reg[3]_0 ,
    \data_p2_reg[0] ,
    data_p2,
    E,
    \p_0_reg_377_reg[15]_1 );
  output ap_enable_reg_pp0_iter1;
  output [0:0]grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_out_stream_TLAST;
  output [0:0]out_stream_TLAST_int_regslice;
  output [15:0]D;
  output [15:0]\p_0_reg_377_reg[15]_0 ;
  output load_p2;
  output [1:0]\ap_CS_fsm_reg[7] ;
  output grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg_reg;
  output \phi_mul22_fu_96_reg[6]_0 ;
  output \phi_mul22_fu_96_reg[7]_0 ;
  output \phi_urem24_fu_92_reg[1]_0 ;
  output ap_loop_init_int_reg;
  output \ap_CS_fsm_reg[5] ;
  output \icmp_ln118_reg_382_reg[0]_0 ;
  input ap_rst_n_inv;
  input ap_clk;
  input grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg;
  input out_stream_TREADY_int_regslice;
  input [2:0]Q;
  input ap_rst_n;
  input [0:0]out_stream_TLAST_reg;
  input [15:0]\data_p2_reg[15] ;
  input \ap_CS_fsm_reg[7]_0 ;
  input \rem_fu_100_reg[3]_0 ;
  input \data_p2_reg[0] ;
  input [0:0]data_p2;
  input [0:0]E;
  input [15:0]\p_0_reg_377_reg[15]_1 ;

  wire [15:0]D;
  wire [0:0]E;
  wire [2:0]Q;
  wire [7:1]add_ln113_fu_232_p2;
  wire \ap_CS_fsm_reg[5] ;
  wire [1:0]\ap_CS_fsm_reg[7] ;
  wire \ap_CS_fsm_reg[7]_0 ;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1;
  wire ap_loop_init_int_reg;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire [0:0]data_p2;
  wire \data_p2_reg[0] ;
  wire [15:0]\data_p2_reg[15] ;
  wire flow_control_loop_pipe_sequential_init_U_n_0;
  wire flow_control_loop_pipe_sequential_init_U_n_22;
  wire flow_control_loop_pipe_sequential_init_U_n_23;
  wire flow_control_loop_pipe_sequential_init_U_n_4;
  wire grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg;
  wire grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg_reg;
  wire [0:0]grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_out_stream_TLAST;
  wire [2:0]i_fu_200_p2;
  wire \icmp_ln118_reg_382_reg[0]_0 ;
  wire load_p2;
  wire [0:0]out_stream_TLAST_int_regslice;
  wire [0:0]out_stream_TLAST_reg;
  wire out_stream_TREADY_int_regslice;
  wire [15:0]\p_0_reg_377_reg[15]_0 ;
  wire [15:0]\p_0_reg_377_reg[15]_1 ;
  wire \phi_mul22_fu_96_reg[6]_0 ;
  wire \phi_mul22_fu_96_reg[7]_0 ;
  wire \phi_mul22_fu_96_reg_n_0_[1] ;
  wire \phi_mul22_fu_96_reg_n_0_[2] ;
  wire \phi_mul22_fu_96_reg_n_0_[3] ;
  wire \phi_mul22_fu_96_reg_n_0_[4] ;
  wire \phi_mul22_fu_96_reg_n_0_[5] ;
  wire [3:0]phi_urem24_fu_92;
  wire \phi_urem24_fu_92_reg[1]_0 ;
  wire [3:0]rem_fu_100;
  wire \rem_fu_100_reg[3]_0 ;
  wire [3:0]select_ln110_fu_224_p3;

  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(flow_control_loop_pipe_sequential_init_U_n_0),
        .Q(ap_enable_reg_pp0_iter1),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \data_p2[0]_i_1__1 
       (.I0(\p_0_reg_377_reg[15]_0 [0]),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(Q[1]),
        .I3(out_stream_TREADY_int_regslice),
        .I4(\data_p2_reg[15] [0]),
        .O(D[0]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \data_p2[0]_i_1__2 
       (.I0(grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_out_stream_TLAST),
        .I1(\data_p2_reg[0] ),
        .I2(load_p2),
        .I3(data_p2),
        .O(\icmp_ln118_reg_382_reg[0]_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \data_p2[10]_i_1 
       (.I0(\p_0_reg_377_reg[15]_0 [10]),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(Q[1]),
        .I3(out_stream_TREADY_int_regslice),
        .I4(\data_p2_reg[15] [10]),
        .O(D[10]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \data_p2[11]_i_1 
       (.I0(\p_0_reg_377_reg[15]_0 [11]),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(Q[1]),
        .I3(out_stream_TREADY_int_regslice),
        .I4(\data_p2_reg[15] [11]),
        .O(D[11]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \data_p2[12]_i_1 
       (.I0(\p_0_reg_377_reg[15]_0 [12]),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(Q[1]),
        .I3(out_stream_TREADY_int_regslice),
        .I4(\data_p2_reg[15] [12]),
        .O(D[12]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \data_p2[13]_i_1 
       (.I0(\p_0_reg_377_reg[15]_0 [13]),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(Q[1]),
        .I3(out_stream_TREADY_int_regslice),
        .I4(\data_p2_reg[15] [13]),
        .O(D[13]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \data_p2[14]_i_1 
       (.I0(\p_0_reg_377_reg[15]_0 [14]),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(Q[1]),
        .I3(out_stream_TREADY_int_regslice),
        .I4(\data_p2_reg[15] [14]),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \data_p2[15]_i_1 
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(Q[1]),
        .I2(out_stream_TREADY_int_regslice),
        .O(load_p2));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \data_p2[15]_i_2 
       (.I0(\p_0_reg_377_reg[15]_0 [15]),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(Q[1]),
        .I3(out_stream_TREADY_int_regslice),
        .I4(\data_p2_reg[15] [15]),
        .O(D[15]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \data_p2[1]_i_1__1 
       (.I0(\p_0_reg_377_reg[15]_0 [1]),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(Q[1]),
        .I3(out_stream_TREADY_int_regslice),
        .I4(\data_p2_reg[15] [1]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \data_p2[2]_i_1 
       (.I0(\p_0_reg_377_reg[15]_0 [2]),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(Q[1]),
        .I3(out_stream_TREADY_int_regslice),
        .I4(\data_p2_reg[15] [2]),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \data_p2[3]_i_1 
       (.I0(\p_0_reg_377_reg[15]_0 [3]),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(Q[1]),
        .I3(out_stream_TREADY_int_regslice),
        .I4(\data_p2_reg[15] [3]),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \data_p2[4]_i_1 
       (.I0(\p_0_reg_377_reg[15]_0 [4]),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(Q[1]),
        .I3(out_stream_TREADY_int_regslice),
        .I4(\data_p2_reg[15] [4]),
        .O(D[4]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \data_p2[5]_i_1 
       (.I0(\p_0_reg_377_reg[15]_0 [5]),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(Q[1]),
        .I3(out_stream_TREADY_int_regslice),
        .I4(\data_p2_reg[15] [5]),
        .O(D[5]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \data_p2[6]_i_1 
       (.I0(\p_0_reg_377_reg[15]_0 [6]),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(Q[1]),
        .I3(out_stream_TREADY_int_regslice),
        .I4(\data_p2_reg[15] [6]),
        .O(D[6]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \data_p2[7]_i_1 
       (.I0(\p_0_reg_377_reg[15]_0 [7]),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(Q[1]),
        .I3(out_stream_TREADY_int_regslice),
        .I4(\data_p2_reg[15] [7]),
        .O(D[7]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \data_p2[8]_i_1 
       (.I0(\p_0_reg_377_reg[15]_0 [8]),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(Q[1]),
        .I3(out_stream_TREADY_int_regslice),
        .I4(\data_p2_reg[15] [8]),
        .O(D[8]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \data_p2[9]_i_1 
       (.I0(\p_0_reg_377_reg[15]_0 [9]),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(Q[1]),
        .I3(out_stream_TREADY_int_regslice),
        .I4(\data_p2_reg[15] [9]),
        .O(D[9]));
  cnn_pipeline_conv2d_0_1_conv2d_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U
       (.Q(Q),
        .add_ln113_fu_232_p2(add_ln113_fu_232_p2),
        .\ap_CS_fsm_reg[5] (\ap_CS_fsm_reg[5] ),
        .\ap_CS_fsm_reg[7] (\ap_CS_fsm_reg[7] ),
        .\ap_CS_fsm_reg[7]_0 (\ap_CS_fsm_reg[7]_0 ),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter1_reg(ap_enable_reg_pp0_iter1),
        .ap_loop_init_int_reg_0(ap_loop_init_int_reg),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg(grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg),
        .grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg_reg(flow_control_loop_pipe_sequential_init_U_n_0),
        .grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg_reg_0(grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg_reg),
        .i_fu_200_p2(i_fu_200_p2),
        .\icmp_ln118_reg_382_reg[0] (flow_control_loop_pipe_sequential_init_U_n_4),
        .\icmp_ln118_reg_382_reg[0]_0 (grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_out_stream_TLAST),
        .out_stream_TREADY_int_regslice(out_stream_TREADY_int_regslice),
        .\phi_mul22_fu_96_reg[3] (\phi_mul22_fu_96_reg_n_0_[2] ),
        .\phi_mul22_fu_96_reg[3]_0 (\phi_mul22_fu_96_reg_n_0_[1] ),
        .\phi_mul22_fu_96_reg[3]_1 (\phi_mul22_fu_96_reg_n_0_[3] ),
        .\phi_mul22_fu_96_reg[4] (\phi_mul22_fu_96_reg_n_0_[4] ),
        .\phi_mul22_fu_96_reg[6] (\phi_mul22_fu_96_reg_n_0_[5] ),
        .\phi_mul22_fu_96_reg[7] (\phi_mul22_fu_96_reg[6]_0 ),
        .\phi_mul22_fu_96_reg[7]_0 (\phi_mul22_fu_96_reg[7]_0 ),
        .phi_urem24_fu_92(phi_urem24_fu_92),
        .\phi_urem24_fu_92_reg[1] (\phi_urem24_fu_92_reg[1]_0 ),
        .rem_fu_100(rem_fu_100),
        .\rem_fu_100_reg[2] (flow_control_loop_pipe_sequential_init_U_n_22),
        .\rem_fu_100_reg[3] (flow_control_loop_pipe_sequential_init_U_n_23),
        .\rem_fu_100_reg[3]_0 (\rem_fu_100_reg[3]_0 ),
        .select_ln110_fu_224_p3(select_ln110_fu_224_p3));
  FDRE \icmp_ln118_reg_382_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(flow_control_loop_pipe_sequential_init_U_n_4),
        .Q(grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_out_stream_TLAST),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \out_stream_TLAST_reg[0]_i_1 
       (.I0(grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_out_stream_TLAST),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(Q[1]),
        .I3(out_stream_TREADY_int_regslice),
        .I4(out_stream_TLAST_reg),
        .O(out_stream_TLAST_int_regslice));
  FDRE \p_0_reg_377_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(\p_0_reg_377_reg[15]_1 [0]),
        .Q(\p_0_reg_377_reg[15]_0 [0]),
        .R(1'b0));
  FDRE \p_0_reg_377_reg[10] 
       (.C(ap_clk),
        .CE(E),
        .D(\p_0_reg_377_reg[15]_1 [10]),
        .Q(\p_0_reg_377_reg[15]_0 [10]),
        .R(1'b0));
  FDRE \p_0_reg_377_reg[11] 
       (.C(ap_clk),
        .CE(E),
        .D(\p_0_reg_377_reg[15]_1 [11]),
        .Q(\p_0_reg_377_reg[15]_0 [11]),
        .R(1'b0));
  FDRE \p_0_reg_377_reg[12] 
       (.C(ap_clk),
        .CE(E),
        .D(\p_0_reg_377_reg[15]_1 [12]),
        .Q(\p_0_reg_377_reg[15]_0 [12]),
        .R(1'b0));
  FDRE \p_0_reg_377_reg[13] 
       (.C(ap_clk),
        .CE(E),
        .D(\p_0_reg_377_reg[15]_1 [13]),
        .Q(\p_0_reg_377_reg[15]_0 [13]),
        .R(1'b0));
  FDRE \p_0_reg_377_reg[14] 
       (.C(ap_clk),
        .CE(E),
        .D(\p_0_reg_377_reg[15]_1 [14]),
        .Q(\p_0_reg_377_reg[15]_0 [14]),
        .R(1'b0));
  FDRE \p_0_reg_377_reg[15] 
       (.C(ap_clk),
        .CE(E),
        .D(\p_0_reg_377_reg[15]_1 [15]),
        .Q(\p_0_reg_377_reg[15]_0 [15]),
        .R(1'b0));
  FDRE \p_0_reg_377_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(\p_0_reg_377_reg[15]_1 [1]),
        .Q(\p_0_reg_377_reg[15]_0 [1]),
        .R(1'b0));
  FDRE \p_0_reg_377_reg[2] 
       (.C(ap_clk),
        .CE(E),
        .D(\p_0_reg_377_reg[15]_1 [2]),
        .Q(\p_0_reg_377_reg[15]_0 [2]),
        .R(1'b0));
  FDRE \p_0_reg_377_reg[3] 
       (.C(ap_clk),
        .CE(E),
        .D(\p_0_reg_377_reg[15]_1 [3]),
        .Q(\p_0_reg_377_reg[15]_0 [3]),
        .R(1'b0));
  FDRE \p_0_reg_377_reg[4] 
       (.C(ap_clk),
        .CE(E),
        .D(\p_0_reg_377_reg[15]_1 [4]),
        .Q(\p_0_reg_377_reg[15]_0 [4]),
        .R(1'b0));
  FDRE \p_0_reg_377_reg[5] 
       (.C(ap_clk),
        .CE(E),
        .D(\p_0_reg_377_reg[15]_1 [5]),
        .Q(\p_0_reg_377_reg[15]_0 [5]),
        .R(1'b0));
  FDRE \p_0_reg_377_reg[6] 
       (.C(ap_clk),
        .CE(E),
        .D(\p_0_reg_377_reg[15]_1 [6]),
        .Q(\p_0_reg_377_reg[15]_0 [6]),
        .R(1'b0));
  FDRE \p_0_reg_377_reg[7] 
       (.C(ap_clk),
        .CE(E),
        .D(\p_0_reg_377_reg[15]_1 [7]),
        .Q(\p_0_reg_377_reg[15]_0 [7]),
        .R(1'b0));
  FDRE \p_0_reg_377_reg[8] 
       (.C(ap_clk),
        .CE(E),
        .D(\p_0_reg_377_reg[15]_1 [8]),
        .Q(\p_0_reg_377_reg[15]_0 [8]),
        .R(1'b0));
  FDRE \p_0_reg_377_reg[9] 
       (.C(ap_clk),
        .CE(E),
        .D(\p_0_reg_377_reg[15]_1 [9]),
        .Q(\p_0_reg_377_reg[15]_0 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \phi_mul22_fu_96_reg[1] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_22),
        .D(add_ln113_fu_232_p2[1]),
        .Q(\phi_mul22_fu_96_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \phi_mul22_fu_96_reg[2] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_22),
        .D(add_ln113_fu_232_p2[2]),
        .Q(\phi_mul22_fu_96_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \phi_mul22_fu_96_reg[3] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_22),
        .D(add_ln113_fu_232_p2[3]),
        .Q(\phi_mul22_fu_96_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \phi_mul22_fu_96_reg[4] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_22),
        .D(add_ln113_fu_232_p2[4]),
        .Q(\phi_mul22_fu_96_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \phi_mul22_fu_96_reg[5] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_22),
        .D(add_ln113_fu_232_p2[5]),
        .Q(\phi_mul22_fu_96_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \phi_mul22_fu_96_reg[6] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_22),
        .D(add_ln113_fu_232_p2[6]),
        .Q(\phi_mul22_fu_96_reg[6]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \phi_mul22_fu_96_reg[7] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_22),
        .D(add_ln113_fu_232_p2[7]),
        .Q(\phi_mul22_fu_96_reg[7]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \phi_urem24_fu_92_reg[0] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_22),
        .D(select_ln110_fu_224_p3[0]),
        .Q(phi_urem24_fu_92[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \phi_urem24_fu_92_reg[1] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_22),
        .D(select_ln110_fu_224_p3[1]),
        .Q(phi_urem24_fu_92[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \phi_urem24_fu_92_reg[2] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_22),
        .D(select_ln110_fu_224_p3[2]),
        .Q(phi_urem24_fu_92[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \phi_urem24_fu_92_reg[3] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_22),
        .D(select_ln110_fu_224_p3[3]),
        .Q(phi_urem24_fu_92[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rem_fu_100_reg[0] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_22),
        .D(i_fu_200_p2[0]),
        .Q(rem_fu_100[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rem_fu_100_reg[1] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_22),
        .D(i_fu_200_p2[1]),
        .Q(rem_fu_100[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rem_fu_100_reg[2] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_22),
        .D(i_fu_200_p2[2]),
        .Q(rem_fu_100[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rem_fu_100_reg[3] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_22),
        .D(flow_control_loop_pipe_sequential_init_U_n_23),
        .Q(rem_fu_100[3]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "conv2d_flow_control_loop_pipe_sequential_init" *) 
module cnn_pipeline_conv2d_0_1_conv2d_flow_control_loop_pipe_sequential_init
   (grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg_reg,
    \ap_CS_fsm_reg[7] ,
    grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg_reg_0,
    \icmp_ln118_reg_382_reg[0] ,
    add_ln113_fu_232_p2,
    i_fu_200_p2,
    select_ln110_fu_224_p3,
    \phi_urem24_fu_92_reg[1] ,
    ap_loop_init_int_reg_0,
    \ap_CS_fsm_reg[5] ,
    \rem_fu_100_reg[2] ,
    \rem_fu_100_reg[3] ,
    ap_rst_n_inv,
    ap_clk,
    grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg,
    out_stream_TREADY_int_regslice,
    Q,
    ap_enable_reg_pp0_iter1_reg,
    ap_rst_n,
    \ap_CS_fsm_reg[7]_0 ,
    rem_fu_100,
    \rem_fu_100_reg[3]_0 ,
    \icmp_ln118_reg_382_reg[0]_0 ,
    \phi_mul22_fu_96_reg[3] ,
    \phi_mul22_fu_96_reg[3]_0 ,
    \phi_mul22_fu_96_reg[3]_1 ,
    \phi_mul22_fu_96_reg[6] ,
    \phi_mul22_fu_96_reg[7] ,
    \phi_mul22_fu_96_reg[7]_0 ,
    \phi_mul22_fu_96_reg[4] ,
    phi_urem24_fu_92);
  output grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg_reg;
  output [1:0]\ap_CS_fsm_reg[7] ;
  output grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg_reg_0;
  output \icmp_ln118_reg_382_reg[0] ;
  output [6:0]add_ln113_fu_232_p2;
  output [2:0]i_fu_200_p2;
  output [3:0]select_ln110_fu_224_p3;
  output \phi_urem24_fu_92_reg[1] ;
  output ap_loop_init_int_reg_0;
  output \ap_CS_fsm_reg[5] ;
  output \rem_fu_100_reg[2] ;
  output \rem_fu_100_reg[3] ;
  input ap_rst_n_inv;
  input ap_clk;
  input grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg;
  input out_stream_TREADY_int_regslice;
  input [2:0]Q;
  input ap_enable_reg_pp0_iter1_reg;
  input ap_rst_n;
  input \ap_CS_fsm_reg[7]_0 ;
  input [3:0]rem_fu_100;
  input \rem_fu_100_reg[3]_0 ;
  input \icmp_ln118_reg_382_reg[0]_0 ;
  input \phi_mul22_fu_96_reg[3] ;
  input \phi_mul22_fu_96_reg[3]_0 ;
  input \phi_mul22_fu_96_reg[3]_1 ;
  input \phi_mul22_fu_96_reg[6] ;
  input \phi_mul22_fu_96_reg[7] ;
  input \phi_mul22_fu_96_reg[7]_0 ;
  input \phi_mul22_fu_96_reg[4] ;
  input [3:0]phi_urem24_fu_92;

  wire [2:0]Q;
  wire [6:0]add_ln113_fu_232_p2;
  wire \ap_CS_fsm_reg[5] ;
  wire [1:0]\ap_CS_fsm_reg[7] ;
  wire \ap_CS_fsm_reg[7]_0 ;
  wire ap_clk;
  wire ap_done_cache;
  wire ap_done_cache_i_1__2_n_0;
  wire ap_done_reg1;
  wire ap_enable_reg_pp0_iter1_reg;
  wire ap_loop_init_int;
  wire ap_loop_init_int_i_1__2_n_0;
  wire ap_loop_init_int_i_2_n_0;
  wire ap_loop_init_int_reg_0;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg;
  wire grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg_reg;
  wire grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg_reg_0;
  wire [2:0]i_fu_200_p2;
  wire \icmp_ln118_reg_382[0]_i_2_n_0 ;
  wire \icmp_ln118_reg_382_reg[0] ;
  wire \icmp_ln118_reg_382_reg[0]_0 ;
  wire out_stream_TREADY_int_regslice;
  wire \phi_mul22_fu_96[7]_i_2_n_0 ;
  wire \phi_mul22_fu_96_reg[3] ;
  wire \phi_mul22_fu_96_reg[3]_0 ;
  wire \phi_mul22_fu_96_reg[3]_1 ;
  wire \phi_mul22_fu_96_reg[4] ;
  wire \phi_mul22_fu_96_reg[6] ;
  wire \phi_mul22_fu_96_reg[7] ;
  wire \phi_mul22_fu_96_reg[7]_0 ;
  wire [3:0]phi_urem24_fu_92;
  wire \phi_urem24_fu_92_reg[1] ;
  wire [3:0]rem_fu_100;
  wire \rem_fu_100_reg[2] ;
  wire \rem_fu_100_reg[3] ;
  wire \rem_fu_100_reg[3]_0 ;
  wire [3:0]select_ln110_fu_224_p3;

  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'hBABBAAAA)) 
    \ap_CS_fsm[6]_i_1 
       (.I0(Q[0]),
        .I1(ap_done_reg1),
        .I2(grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg),
        .I3(ap_done_cache),
        .I4(Q[1]),
        .O(\ap_CS_fsm_reg[7] [0]));
  LUT6 #(
    .INIT(64'hF4FFF4F444444444)) 
    \ap_CS_fsm[7]_i_1 
       (.I0(\ap_CS_fsm_reg[7]_0 ),
        .I1(Q[2]),
        .I2(ap_done_reg1),
        .I3(grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg),
        .I4(ap_done_cache),
        .I5(Q[1]),
        .O(\ap_CS_fsm_reg[7] [1]));
  LUT6 #(
    .INIT(64'h0000000001000000)) 
    \ap_CS_fsm[7]_i_3 
       (.I0(rem_fu_100[2]),
        .I1(grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg_reg_0),
        .I2(rem_fu_100[1]),
        .I3(rem_fu_100[0]),
        .I4(rem_fu_100[3]),
        .I5(\rem_fu_100_reg[3]_0 ),
        .O(ap_done_reg1));
  LUT3 #(
    .INIT(8'hB8)) 
    ap_done_cache_i_1__2
       (.I0(ap_done_reg1),
        .I1(grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg),
        .I2(ap_done_cache),
        .O(ap_done_cache_i_1__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_done_cache_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_done_cache_i_1__2_n_0),
        .Q(ap_done_cache),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h00000000BFAA0000)) 
    ap_enable_reg_pp0_iter1_i_1__1
       (.I0(grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg),
        .I1(out_stream_TREADY_int_regslice),
        .I2(Q[1]),
        .I3(ap_enable_reg_pp0_iter1_reg),
        .I4(ap_rst_n),
        .I5(ap_done_reg1),
        .O(grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg_reg));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'hFFFF8AFF)) 
    ap_loop_init_int_i_1__2
       (.I0(ap_loop_init_int),
        .I1(ap_loop_init_int_i_2_n_0),
        .I2(grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg),
        .I3(ap_rst_n),
        .I4(ap_done_reg1),
        .O(ap_loop_init_int_i_1__2_n_0));
  LUT3 #(
    .INIT(8'h2A)) 
    ap_loop_init_int_i_2
       (.I0(ap_enable_reg_pp0_iter1_reg),
        .I1(Q[1]),
        .I2(out_stream_TREADY_int_regslice),
        .O(ap_loop_init_int_i_2_n_0));
  FDRE #(
    .INIT(1'b1)) 
    ap_loop_init_int_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_init_int_i_1__2_n_0),
        .Q(ap_loop_init_int),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg_i_1
       (.I0(Q[0]),
        .I1(ap_done_reg1),
        .I2(grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg),
        .O(\ap_CS_fsm_reg[5] ));
  LUT6 #(
    .INIT(64'hAAAA0000AAAA0030)) 
    \icmp_ln118_reg_382[0]_i_1 
       (.I0(\icmp_ln118_reg_382_reg[0]_0 ),
        .I1(\icmp_ln118_reg_382[0]_i_2_n_0 ),
        .I2(rem_fu_100[3]),
        .I3(grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg_reg_0),
        .I4(ap_loop_init_int_i_2_n_0),
        .I5(rem_fu_100[0]),
        .O(\icmp_ln118_reg_382_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h3F2A)) 
    \icmp_ln118_reg_382[0]_i_2 
       (.I0(rem_fu_100[2]),
        .I1(grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(rem_fu_100[1]),
        .O(\icmp_ln118_reg_382[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \p_0_reg_377[15]_i_6 
       (.I0(phi_urem24_fu_92[1]),
        .I1(ap_loop_init_int),
        .I2(grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg),
        .O(\phi_urem24_fu_92_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    \p_0_reg_377[15]_i_7 
       (.I0(ap_loop_init_int),
        .I1(grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg),
        .I2(phi_urem24_fu_92[0]),
        .O(ap_loop_init_int_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    \phi_mul22_fu_96[1]_i_1 
       (.I0(ap_loop_init_int),
        .I1(grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg),
        .I2(\phi_mul22_fu_96_reg[3]_0 ),
        .O(add_ln113_fu_232_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hEAD5)) 
    \phi_mul22_fu_96[2]_i_1 
       (.I0(\phi_mul22_fu_96_reg[3]_0 ),
        .I1(grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(\phi_mul22_fu_96_reg[3] ),
        .O(add_ln113_fu_232_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h001E1E1E)) 
    \phi_mul22_fu_96[3]_i_1 
       (.I0(\phi_mul22_fu_96_reg[3] ),
        .I1(\phi_mul22_fu_96_reg[3]_0 ),
        .I2(\phi_mul22_fu_96_reg[3]_1 ),
        .I3(grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg),
        .I4(ap_loop_init_int),
        .O(add_ln113_fu_232_p2[2]));
  LUT6 #(
    .INIT(64'hFAAAF999F555F555)) 
    \phi_mul22_fu_96[4]_i_1 
       (.I0(\phi_mul22_fu_96_reg[4] ),
        .I1(\phi_mul22_fu_96_reg[3]_0 ),
        .I2(grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg),
        .I3(ap_loop_init_int),
        .I4(\phi_mul22_fu_96_reg[3] ),
        .I5(\phi_mul22_fu_96_reg[3]_1 ),
        .O(add_ln113_fu_232_p2[3]));
  LUT6 #(
    .INIT(64'h000011150000EEEA)) 
    \phi_mul22_fu_96[5]_i_1 
       (.I0(\phi_mul22_fu_96_reg[4] ),
        .I1(\phi_mul22_fu_96_reg[3]_1 ),
        .I2(\phi_mul22_fu_96_reg[3] ),
        .I3(\phi_mul22_fu_96_reg[3]_0 ),
        .I4(grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg_reg_0),
        .I5(\phi_mul22_fu_96_reg[6] ),
        .O(add_ln113_fu_232_p2[4]));
  LUT5 #(
    .INIT(32'h07770888)) 
    \phi_mul22_fu_96[6]_i_1 
       (.I0(\phi_mul22_fu_96_reg[6] ),
        .I1(\phi_mul22_fu_96[7]_i_2_n_0 ),
        .I2(grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg),
        .I3(ap_loop_init_int),
        .I4(\phi_mul22_fu_96_reg[7] ),
        .O(add_ln113_fu_232_p2[5]));
  LUT6 #(
    .INIT(64'h06660AAA0AAA0AAA)) 
    \phi_mul22_fu_96[7]_i_1 
       (.I0(\phi_mul22_fu_96_reg[7]_0 ),
        .I1(\phi_mul22_fu_96[7]_i_2_n_0 ),
        .I2(grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg),
        .I3(ap_loop_init_int),
        .I4(\phi_mul22_fu_96_reg[6] ),
        .I5(\phi_mul22_fu_96_reg[7] ),
        .O(add_ln113_fu_232_p2[6]));
  LUT6 #(
    .INIT(64'h0000FFE0FFE0FFE0)) 
    \phi_mul22_fu_96[7]_i_2 
       (.I0(\phi_mul22_fu_96_reg[3]_0 ),
        .I1(\phi_mul22_fu_96_reg[3] ),
        .I2(\phi_mul22_fu_96_reg[3]_1 ),
        .I3(\phi_mul22_fu_96_reg[4] ),
        .I4(grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg),
        .I5(ap_loop_init_int),
        .O(\phi_mul22_fu_96[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hC0C0FFEAC0C0FFFF)) 
    \phi_urem24_fu_92[0]_i_1 
       (.I0(phi_urem24_fu_92[3]),
        .I1(grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(phi_urem24_fu_92[2]),
        .I4(phi_urem24_fu_92[0]),
        .I5(phi_urem24_fu_92[1]),
        .O(select_ln110_fu_224_p3[0]));
  LUT6 #(
    .INIT(64'h000F0F0F00E0E0E0)) 
    \phi_urem24_fu_92[1]_i_1 
       (.I0(phi_urem24_fu_92[3]),
        .I1(phi_urem24_fu_92[2]),
        .I2(phi_urem24_fu_92[1]),
        .I3(ap_loop_init_int),
        .I4(grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg),
        .I5(phi_urem24_fu_92[0]),
        .O(select_ln110_fu_224_p3[1]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h07770888)) 
    \phi_urem24_fu_92[2]_i_1 
       (.I0(phi_urem24_fu_92[0]),
        .I1(phi_urem24_fu_92[1]),
        .I2(grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg),
        .I3(ap_loop_init_int),
        .I4(phi_urem24_fu_92[2]),
        .O(select_ln110_fu_224_p3[2]));
  LUT6 #(
    .INIT(64'h006A6A6A00AAAAAA)) 
    \phi_urem24_fu_92[3]_i_1 
       (.I0(phi_urem24_fu_92[3]),
        .I1(phi_urem24_fu_92[1]),
        .I2(phi_urem24_fu_92[0]),
        .I3(grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg),
        .I4(ap_loop_init_int),
        .I5(phi_urem24_fu_92[2]),
        .O(select_ln110_fu_224_p3[3]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    \rem_fu_100[0]_i_1 
       (.I0(grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(rem_fu_100[0]),
        .O(i_fu_200_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h152A)) 
    \rem_fu_100[1]_i_1 
       (.I0(rem_fu_100[0]),
        .I1(grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(rem_fu_100[1]),
        .O(i_fu_200_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h06660AAA)) 
    \rem_fu_100[2]_i_1 
       (.I0(rem_fu_100[2]),
        .I1(rem_fu_100[0]),
        .I2(ap_loop_init_int),
        .I3(grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg),
        .I4(rem_fu_100[1]),
        .O(i_fu_200_p2[2]));
  LUT6 #(
    .INIT(64'h5554555555555555)) 
    \rem_fu_100[3]_i_1 
       (.I0(\rem_fu_100_reg[3]_0 ),
        .I1(rem_fu_100[2]),
        .I2(grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg_reg_0),
        .I3(rem_fu_100[1]),
        .I4(rem_fu_100[0]),
        .I5(rem_fu_100[3]),
        .O(\rem_fu_100_reg[2] ));
  LUT6 #(
    .INIT(64'h06660AAA0AAA0AAA)) 
    \rem_fu_100[3]_i_2 
       (.I0(rem_fu_100[3]),
        .I1(rem_fu_100[1]),
        .I2(grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg),
        .I3(ap_loop_init_int),
        .I4(rem_fu_100[0]),
        .I5(rem_fu_100[2]),
        .O(\rem_fu_100_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rem_fu_100[3]_i_4 
       (.I0(grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg),
        .I1(ap_loop_init_int),
        .O(grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg_reg_0));
endmodule

(* ORIG_REF_NAME = "conv2d_flow_control_loop_pipe_sequential_init" *) 
module cnn_pipeline_conv2d_0_1_conv2d_flow_control_loop_pipe_sequential_init_3
   (grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg_reg,
    \state_reg[0] ,
    phi_mul14_fu_86,
    select_ln73_fu_289_p3,
    D,
    add_ln81_fu_248_p2,
    \phi_mul14_fu_86_reg[7] ,
    i_fu_239_p2,
    \ap_CS_fsm_reg[1] ,
    grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg_reg,
    ap_rst_n_inv,
    ap_clk,
    grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg,
    Q,
    ap_loop_init_int_reg_0,
    ap_rst_n,
    rem_fu_90,
    \phi_mul14_fu_86_reg[1] ,
    phi_urem16_fu_82,
    \phi_mul14_fu_86_reg[3] ,
    \phi_mul14_fu_86_reg[3]_0 ,
    \phi_mul14_fu_86_reg[3]_1 ,
    \phi_mul14_fu_86_reg[4] ,
    \phi_mul14_fu_86_reg[5] ,
    \phi_mul14_fu_86_reg[6] ,
    \phi_mul14_fu_86_reg[7]_0 ,
    \ap_CS_fsm_reg[3] ,
    ap_done_reg1,
    grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg,
    ap_done_cache);
  output grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg_reg;
  output \state_reg[0] ;
  output [0:0]phi_mul14_fu_86;
  output [3:0]select_ln73_fu_289_p3;
  output [1:0]D;
  output [6:0]add_ln81_fu_248_p2;
  output [1:0]\phi_mul14_fu_86_reg[7] ;
  output [3:0]i_fu_239_p2;
  output \ap_CS_fsm_reg[1] ;
  output [0:0]grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg_reg;
  input ap_rst_n_inv;
  input ap_clk;
  input grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg;
  input [0:0]Q;
  input ap_loop_init_int_reg_0;
  input ap_rst_n;
  input [3:0]rem_fu_90;
  input \phi_mul14_fu_86_reg[1] ;
  input [3:0]phi_urem16_fu_82;
  input \phi_mul14_fu_86_reg[3] ;
  input \phi_mul14_fu_86_reg[3]_0 ;
  input \phi_mul14_fu_86_reg[3]_1 ;
  input \phi_mul14_fu_86_reg[4] ;
  input \phi_mul14_fu_86_reg[5] ;
  input \phi_mul14_fu_86_reg[6] ;
  input \phi_mul14_fu_86_reg[7]_0 ;
  input [1:0]\ap_CS_fsm_reg[3] ;
  input ap_done_reg1;
  input grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg;
  input ap_done_cache;

  wire [1:0]D;
  wire [0:0]Q;
  wire [6:0]add_ln81_fu_248_p2;
  wire \ap_CS_fsm[2]_i_3_n_0 ;
  wire \ap_CS_fsm[3]_i_3_n_0 ;
  wire \ap_CS_fsm_reg[1] ;
  wire [1:0]\ap_CS_fsm_reg[3] ;
  wire ap_clk;
  wire ap_done_cache;
  wire ap_done_cache_0;
  wire ap_done_cache_i_1__0_n_0;
  wire ap_done_reg1;
  wire ap_done_reg1_0;
  wire ap_loop_init_int;
  wire ap_loop_init_int_i_1__0_n_0;
  wire ap_loop_init_int_reg_0;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg;
  wire [0:0]grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg_reg;
  wire grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg;
  wire grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg_reg;
  wire [3:0]i_fu_239_p2;
  wire [0:0]phi_mul14_fu_86;
  wire \phi_mul14_fu_86[7]_i_2_n_0 ;
  wire \phi_mul14_fu_86_reg[1] ;
  wire \phi_mul14_fu_86_reg[3] ;
  wire \phi_mul14_fu_86_reg[3]_0 ;
  wire \phi_mul14_fu_86_reg[3]_1 ;
  wire \phi_mul14_fu_86_reg[4] ;
  wire \phi_mul14_fu_86_reg[5] ;
  wire \phi_mul14_fu_86_reg[6] ;
  wire [1:0]\phi_mul14_fu_86_reg[7] ;
  wire \phi_mul14_fu_86_reg[7]_0 ;
  wire [3:0]phi_urem16_fu_82;
  wire [3:0]rem_fu_90;
  wire \rem_fu_90[3]_i_3_n_0 ;
  wire [3:0]select_ln73_fu_289_p3;
  wire \state_reg[0] ;

  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hF400F4FF)) 
    \ap_CS_fsm[2]_i_2 
       (.I0(Q),
        .I1(ap_loop_init_int_reg_0),
        .I2(\ap_CS_fsm[2]_i_3_n_0 ),
        .I3(grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg),
        .I4(ap_done_cache_0),
        .O(\state_reg[0] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF7F7F7)) 
    \ap_CS_fsm[2]_i_3 
       (.I0(rem_fu_90[0]),
        .I1(rem_fu_90[3]),
        .I2(rem_fu_90[1]),
        .I3(ap_loop_init_int),
        .I4(grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg),
        .I5(rem_fu_90[2]),
        .O(\ap_CS_fsm[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hE0EEE0E000000000)) 
    \ap_CS_fsm[3]_i_1 
       (.I0(ap_done_reg1_0),
        .I1(\ap_CS_fsm[3]_i_3_n_0 ),
        .I2(ap_done_reg1),
        .I3(grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg),
        .I4(ap_done_cache),
        .I5(\ap_CS_fsm_reg[3] [1]),
        .O(grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg_reg));
  LUT6 #(
    .INIT(64'h0000000001000000)) 
    \ap_CS_fsm[3]_i_2 
       (.I0(rem_fu_90[2]),
        .I1(\rem_fu_90[3]_i_3_n_0 ),
        .I2(rem_fu_90[1]),
        .I3(rem_fu_90[3]),
        .I4(rem_fu_90[0]),
        .I5(\phi_mul14_fu_86_reg[1] ),
        .O(ap_done_reg1_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ap_CS_fsm[3]_i_3 
       (.I0(ap_done_cache_0),
        .I1(grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg),
        .O(\ap_CS_fsm[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    ap_done_cache_i_1__0
       (.I0(ap_done_reg1_0),
        .I1(grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg),
        .I2(ap_done_cache_0),
        .O(ap_done_cache_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_done_cache_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_done_cache_i_1__0_n_0),
        .Q(ap_done_cache_0),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'h0000BA00)) 
    ap_enable_reg_pp0_iter1_i_1__0
       (.I0(grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg),
        .I1(Q),
        .I2(ap_loop_init_int_reg_0),
        .I3(ap_rst_n),
        .I4(ap_done_reg1_0),
        .O(grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg_reg));
  LUT6 #(
    .INIT(64'hFFFFFFFF20AAFFFF)) 
    ap_loop_init_int_i_1__0
       (.I0(ap_loop_init_int),
        .I1(Q),
        .I2(ap_loop_init_int_reg_0),
        .I3(grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg),
        .I4(ap_rst_n),
        .I5(ap_done_reg1_0),
        .O(ap_loop_init_int_i_1__0_n_0));
  FDRE #(
    .INIT(1'b1)) 
    ap_loop_init_int_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_init_int_i_1__0_n_0),
        .Q(ap_loop_init_int),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg_i_1
       (.I0(\ap_CS_fsm_reg[3] [0]),
        .I1(ap_done_reg1_0),
        .I2(grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg),
        .O(\ap_CS_fsm_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    \phi_mul14_fu_86[1]_i_1 
       (.I0(ap_loop_init_int),
        .I1(grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg),
        .I2(\phi_mul14_fu_86_reg[3]_0 ),
        .O(add_ln81_fu_248_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hEAD5)) 
    \phi_mul14_fu_86[2]_i_1 
       (.I0(\phi_mul14_fu_86_reg[3]_0 ),
        .I1(grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(\phi_mul14_fu_86_reg[3] ),
        .O(add_ln81_fu_248_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h001E1E1E)) 
    \phi_mul14_fu_86[3]_i_1 
       (.I0(\phi_mul14_fu_86_reg[3] ),
        .I1(\phi_mul14_fu_86_reg[3]_0 ),
        .I2(\phi_mul14_fu_86_reg[3]_1 ),
        .I3(grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg),
        .I4(ap_loop_init_int),
        .O(add_ln81_fu_248_p2[2]));
  LUT6 #(
    .INIT(64'hFAAAF999F555F555)) 
    \phi_mul14_fu_86[4]_i_1 
       (.I0(\phi_mul14_fu_86_reg[4] ),
        .I1(\phi_mul14_fu_86_reg[3]_0 ),
        .I2(grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg),
        .I3(ap_loop_init_int),
        .I4(\phi_mul14_fu_86_reg[3] ),
        .I5(\phi_mul14_fu_86_reg[3]_1 ),
        .O(add_ln81_fu_248_p2[3]));
  LUT6 #(
    .INIT(64'h000011150000EEEA)) 
    \phi_mul14_fu_86[5]_i_1 
       (.I0(\phi_mul14_fu_86_reg[4] ),
        .I1(\phi_mul14_fu_86_reg[3]_1 ),
        .I2(\phi_mul14_fu_86_reg[3] ),
        .I3(\phi_mul14_fu_86_reg[3]_0 ),
        .I4(\rem_fu_90[3]_i_3_n_0 ),
        .I5(\phi_mul14_fu_86_reg[5] ),
        .O(add_ln81_fu_248_p2[4]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h06660AAA)) 
    \phi_mul14_fu_86[6]_i_1 
       (.I0(\phi_mul14_fu_86_reg[6] ),
        .I1(\phi_mul14_fu_86_reg[5] ),
        .I2(ap_loop_init_int),
        .I3(grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg),
        .I4(\phi_mul14_fu_86[7]_i_2_n_0 ),
        .O(add_ln81_fu_248_p2[5]));
  LUT6 #(
    .INIT(64'h06660AAA0AAA0AAA)) 
    \phi_mul14_fu_86[7]_i_1 
       (.I0(\phi_mul14_fu_86_reg[7]_0 ),
        .I1(\phi_mul14_fu_86[7]_i_2_n_0 ),
        .I2(grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg),
        .I3(ap_loop_init_int),
        .I4(\phi_mul14_fu_86_reg[5] ),
        .I5(\phi_mul14_fu_86_reg[6] ),
        .O(add_ln81_fu_248_p2[6]));
  LUT6 #(
    .INIT(64'h0000FFE0FFE0FFE0)) 
    \phi_mul14_fu_86[7]_i_2 
       (.I0(\phi_mul14_fu_86_reg[3]_0 ),
        .I1(\phi_mul14_fu_86_reg[3] ),
        .I2(\phi_mul14_fu_86_reg[3]_1 ),
        .I3(\phi_mul14_fu_86_reg[4] ),
        .I4(grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg),
        .I5(ap_loop_init_int),
        .O(\phi_mul14_fu_86[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF555F555F555F111)) 
    \phi_urem16_fu_82[0]_i_1 
       (.I0(phi_urem16_fu_82[0]),
        .I1(phi_urem16_fu_82[1]),
        .I2(grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg),
        .I3(ap_loop_init_int),
        .I4(phi_urem16_fu_82[2]),
        .I5(phi_urem16_fu_82[3]),
        .O(select_ln73_fu_289_p3[0]));
  LUT6 #(
    .INIT(64'h0666066606660222)) 
    \phi_urem16_fu_82[1]_i_1 
       (.I0(phi_urem16_fu_82[0]),
        .I1(phi_urem16_fu_82[1]),
        .I2(grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg),
        .I3(ap_loop_init_int),
        .I4(phi_urem16_fu_82[2]),
        .I5(phi_urem16_fu_82[3]),
        .O(select_ln73_fu_289_p3[1]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h07770888)) 
    \phi_urem16_fu_82[2]_i_1 
       (.I0(phi_urem16_fu_82[1]),
        .I1(phi_urem16_fu_82[0]),
        .I2(grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg),
        .I3(ap_loop_init_int),
        .I4(phi_urem16_fu_82[2]),
        .O(select_ln73_fu_289_p3[2]));
  LUT6 #(
    .INIT(64'h007F7F7F00808080)) 
    \phi_urem16_fu_82[3]_i_1 
       (.I0(phi_urem16_fu_82[0]),
        .I1(phi_urem16_fu_82[1]),
        .I2(phi_urem16_fu_82[2]),
        .I3(grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg),
        .I4(ap_loop_init_int),
        .I5(phi_urem16_fu_82[3]),
        .O(select_ln73_fu_289_p3[3]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    \rem_fu_90[0]_i_1 
       (.I0(grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(rem_fu_90[0]),
        .O(i_fu_239_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h152A)) 
    \rem_fu_90[1]_i_1 
       (.I0(rem_fu_90[0]),
        .I1(grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(rem_fu_90[1]),
        .O(i_fu_239_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h06660AAA)) 
    \rem_fu_90[2]_i_1 
       (.I0(rem_fu_90[2]),
        .I1(rem_fu_90[0]),
        .I2(ap_loop_init_int),
        .I3(grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg),
        .I4(rem_fu_90[1]),
        .O(i_fu_239_p2[2]));
  LUT6 #(
    .INIT(64'h00000000FEFFFFFF)) 
    \rem_fu_90[3]_i_1 
       (.I0(rem_fu_90[2]),
        .I1(\rem_fu_90[3]_i_3_n_0 ),
        .I2(rem_fu_90[1]),
        .I3(rem_fu_90[3]),
        .I4(rem_fu_90[0]),
        .I5(\phi_mul14_fu_86_reg[1] ),
        .O(phi_mul14_fu_86));
  LUT6 #(
    .INIT(64'h06660AAA0AAA0AAA)) 
    \rem_fu_90[3]_i_2 
       (.I0(rem_fu_90[3]),
        .I1(rem_fu_90[1]),
        .I2(grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg),
        .I3(ap_loop_init_int),
        .I4(rem_fu_90[0]),
        .I5(rem_fu_90[2]),
        .O(i_fu_239_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rem_fu_90[3]_i_3 
       (.I0(grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg),
        .I1(ap_loop_init_int),
        .O(\rem_fu_90[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \trunc_ln4_reg_475[0]_i_1 
       (.I0(\phi_mul14_fu_86_reg[6] ),
        .I1(ap_loop_init_int),
        .I2(grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg),
        .O(\phi_mul14_fu_86_reg[7] [0]));
  LUT3 #(
    .INIT(8'h2A)) 
    \trunc_ln4_reg_475[1]_i_1 
       (.I0(\phi_mul14_fu_86_reg[7]_0 ),
        .I1(ap_loop_init_int),
        .I2(grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg),
        .O(\phi_mul14_fu_86_reg[7] [1]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \trunc_ln83_reg_479[0]_i_1 
       (.I0(phi_urem16_fu_82[0]),
        .I1(ap_loop_init_int),
        .I2(grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \trunc_ln83_reg_479[1]_i_2 
       (.I0(phi_urem16_fu_82[1]),
        .I1(grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(D[1]));
endmodule

(* ORIG_REF_NAME = "conv2d_flow_control_loop_pipe_sequential_init" *) 
module cnn_pipeline_conv2d_0_1_conv2d_flow_control_loop_pipe_sequential_init_4
   (ap_done_cache,
    ap_rst_n_0,
    D,
    ap_done_reg1,
    add_ln66_fu_464_p2,
    i_fu_455_p2,
    select_ln47_fu_509_p3,
    \phi_urem_fu_118_reg[2] ,
    \phi_mul_fu_122_reg[10] ,
    \ap_CS_fsm_reg[1] ,
    grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg_reg,
    \rem_fu_126_reg[2] ,
    \rem_fu_126_reg[0] ,
    \phi_mul_fu_122_reg[3] ,
    \phi_urem_fu_118_reg[1] ,
    ap_rst_n_inv,
    ap_clk,
    ap_rst_n,
    grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg,
    \rem_fu_126_reg[4] ,
    Q,
    \ap_CS_fsm_reg[2] ,
    \ap_CS_fsm_reg[2]_0 ,
    rem_fu_126,
    \ap_CS_fsm_reg[2]_1 ,
    \phi_mul_fu_122_reg[6] ,
    \phi_mul_fu_122_reg[6]_0 ,
    \phi_mul_fu_122_reg[6]_1 ,
    \phi_mul_fu_122_reg[6]_2 ,
    \phi_mul_fu_122_reg[6]_3 ,
    \phi_mul_fu_122_reg[10]_0 ,
    \phi_mul_fu_122_reg[10]_1 ,
    \phi_mul_fu_122_reg[10]_2 ,
    \phi_mul_fu_122_reg[10]_3 ,
    phi_urem_fu_118);
  output ap_done_cache;
  output ap_rst_n_0;
  output [0:0]D;
  output ap_done_reg1;
  output [7:0]add_ln66_fu_464_p2;
  output [2:0]i_fu_455_p2;
  output [3:0]select_ln47_fu_509_p3;
  output [2:0]\phi_urem_fu_118_reg[2] ;
  output [2:0]\phi_mul_fu_122_reg[10] ;
  output \ap_CS_fsm_reg[1] ;
  output grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg_reg;
  output \rem_fu_126_reg[2] ;
  output \rem_fu_126_reg[0] ;
  output \phi_mul_fu_122_reg[3] ;
  output \phi_urem_fu_118_reg[1] ;
  input ap_rst_n_inv;
  input ap_clk;
  input ap_rst_n;
  input grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg;
  input \rem_fu_126_reg[4] ;
  input [0:0]Q;
  input [1:0]\ap_CS_fsm_reg[2] ;
  input \ap_CS_fsm_reg[2]_0 ;
  input [4:0]rem_fu_126;
  input \ap_CS_fsm_reg[2]_1 ;
  input \phi_mul_fu_122_reg[6] ;
  input \phi_mul_fu_122_reg[6]_0 ;
  input \phi_mul_fu_122_reg[6]_1 ;
  input \phi_mul_fu_122_reg[6]_2 ;
  input \phi_mul_fu_122_reg[6]_3 ;
  input \phi_mul_fu_122_reg[10]_0 ;
  input \phi_mul_fu_122_reg[10]_1 ;
  input \phi_mul_fu_122_reg[10]_2 ;
  input \phi_mul_fu_122_reg[10]_3 ;
  input [4:0]phi_urem_fu_118;

  wire [0:0]D;
  wire [0:0]Q;
  wire [7:0]add_ln66_fu_464_p2;
  wire \ap_CS_fsm[3]_i_5_n_0 ;
  wire \ap_CS_fsm_reg[1] ;
  wire [1:0]\ap_CS_fsm_reg[2] ;
  wire \ap_CS_fsm_reg[2]_0 ;
  wire \ap_CS_fsm_reg[2]_1 ;
  wire ap_clk;
  wire ap_done_cache;
  wire ap_done_cache_i_1_n_0;
  wire ap_done_reg1;
  wire ap_loop_init_int;
  wire ap_loop_init_int_i_1_n_0;
  wire ap_rst_n;
  wire ap_rst_n_0;
  wire ap_rst_n_inv;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg_reg;
  wire [2:0]i_fu_455_p2;
  wire \phi_mul_fu_122[10]_i_2_n_0 ;
  wire \phi_mul_fu_122[7]_i_2_n_0 ;
  wire [2:0]\phi_mul_fu_122_reg[10] ;
  wire \phi_mul_fu_122_reg[10]_0 ;
  wire \phi_mul_fu_122_reg[10]_1 ;
  wire \phi_mul_fu_122_reg[10]_2 ;
  wire \phi_mul_fu_122_reg[10]_3 ;
  wire \phi_mul_fu_122_reg[3] ;
  wire \phi_mul_fu_122_reg[6] ;
  wire \phi_mul_fu_122_reg[6]_0 ;
  wire \phi_mul_fu_122_reg[6]_1 ;
  wire \phi_mul_fu_122_reg[6]_2 ;
  wire \phi_mul_fu_122_reg[6]_3 ;
  wire [4:0]phi_urem_fu_118;
  wire \phi_urem_fu_118_reg[1] ;
  wire [2:0]\phi_urem_fu_118_reg[2] ;
  wire [4:0]rem_fu_126;
  wire \rem_fu_126[4]_i_3_n_0 ;
  wire \rem_fu_126[4]_i_4_n_0 ;
  wire \rem_fu_126_reg[0] ;
  wire \rem_fu_126_reg[2] ;
  wire \rem_fu_126_reg[4] ;
  wire [3:0]select_ln47_fu_509_p3;

  LUT6 #(
    .INIT(64'hFFFFAAFBAAAAAAAA)) 
    \ap_CS_fsm[2]_i_1 
       (.I0(\ap_CS_fsm_reg[2] [0]),
        .I1(ap_done_cache),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg),
        .I3(ap_done_reg1),
        .I4(\ap_CS_fsm_reg[2]_0 ),
        .I5(\ap_CS_fsm_reg[2] [1]),
        .O(D));
  LUT6 #(
    .INIT(64'h00000000002A0000)) 
    \ap_CS_fsm[3]_i_4 
       (.I0(rem_fu_126[4]),
        .I1(grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(rem_fu_126[1]),
        .I4(\ap_CS_fsm[3]_i_5_n_0 ),
        .I5(\ap_CS_fsm_reg[2]_1 ),
        .O(ap_done_reg1));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h8F000000)) 
    \ap_CS_fsm[3]_i_5 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(rem_fu_126[2]),
        .I3(rem_fu_126[3]),
        .I4(rem_fu_126[0]),
        .O(\ap_CS_fsm[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hA2FFA200)) 
    ap_done_cache_i_1
       (.I0(\rem_fu_126[4]_i_3_n_0 ),
        .I1(\rem_fu_126_reg[4] ),
        .I2(Q),
        .I3(grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg),
        .I4(ap_done_cache),
        .O(ap_done_cache_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_done_cache_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_done_cache_i_1_n_0),
        .Q(ap_done_cache),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'h2020AA20)) 
    ap_enable_reg_pp0_iter1_i_1
       (.I0(ap_rst_n),
        .I1(\rem_fu_126[4]_i_3_n_0 ),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg),
        .I3(\rem_fu_126_reg[4] ),
        .I4(Q),
        .O(ap_rst_n_0));
  LUT6 #(
    .INIT(64'hF3BBF3BBBBBBF3BB)) 
    ap_loop_init_int_i_1
       (.I0(ap_loop_init_int),
        .I1(ap_rst_n),
        .I2(\rem_fu_126[4]_i_3_n_0 ),
        .I3(grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg),
        .I4(\rem_fu_126_reg[4] ),
        .I5(Q),
        .O(ap_loop_init_int_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    ap_loop_init_int_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_init_int_i_1_n_0),
        .Q(ap_loop_init_int),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBAAAFFAA)) 
    grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg_i_1
       (.I0(\ap_CS_fsm_reg[2] [0]),
        .I1(Q),
        .I2(\rem_fu_126_reg[4] ),
        .I3(grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg),
        .I4(\rem_fu_126[4]_i_3_n_0 ),
        .O(\ap_CS_fsm_reg[1] ));
  LUT6 #(
    .INIT(64'h1222222222222222)) 
    \phi_mul_fu_122[10]_i_1 
       (.I0(\phi_mul_fu_122_reg[10]_0 ),
        .I1(\rem_fu_126[4]_i_4_n_0 ),
        .I2(\phi_mul_fu_122_reg[10]_1 ),
        .I3(\phi_mul_fu_122[10]_i_2_n_0 ),
        .I4(\phi_mul_fu_122_reg[10]_2 ),
        .I5(\phi_mul_fu_122_reg[10]_3 ),
        .O(add_ln66_fu_464_p2[7]));
  LUT6 #(
    .INIT(64'h00000000FEEE0000)) 
    \phi_mul_fu_122[10]_i_2 
       (.I0(\phi_mul_fu_122_reg[6]_2 ),
        .I1(\phi_mul_fu_122_reg[6]_1 ),
        .I2(\phi_mul_fu_122_reg[6]_0 ),
        .I3(\phi_mul_fu_122_reg[6] ),
        .I4(\phi_mul_fu_122_reg[6]_3 ),
        .I5(\rem_fu_126[4]_i_4_n_0 ),
        .O(\phi_mul_fu_122[10]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \phi_mul_fu_122[2]_i_1 
       (.I0(ap_loop_init_int),
        .I1(\phi_mul_fu_122_reg[6] ),
        .O(add_ln66_fu_464_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h12)) 
    \phi_mul_fu_122[3]_i_1 
       (.I0(\phi_mul_fu_122_reg[6]_0 ),
        .I1(ap_loop_init_int),
        .I2(\phi_mul_fu_122_reg[6] ),
        .O(\phi_mul_fu_122_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hF8F7)) 
    \phi_mul_fu_122[4]_i_1 
       (.I0(\phi_mul_fu_122_reg[6] ),
        .I1(\phi_mul_fu_122_reg[6]_0 ),
        .I2(ap_loop_init_int),
        .I3(\phi_mul_fu_122_reg[6]_1 ),
        .O(add_ln66_fu_464_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hFFAAFF95)) 
    \phi_mul_fu_122[5]_i_1 
       (.I0(\phi_mul_fu_122_reg[6]_2 ),
        .I1(\phi_mul_fu_122_reg[6] ),
        .I2(\phi_mul_fu_122_reg[6]_0 ),
        .I3(ap_loop_init_int),
        .I4(\phi_mul_fu_122_reg[6]_1 ),
        .O(add_ln66_fu_464_p2[2]));
  LUT6 #(
    .INIT(64'h000000070000FFF8)) 
    \phi_mul_fu_122[6]_i_1 
       (.I0(\phi_mul_fu_122_reg[6] ),
        .I1(\phi_mul_fu_122_reg[6]_0 ),
        .I2(\phi_mul_fu_122_reg[6]_1 ),
        .I3(\phi_mul_fu_122_reg[6]_2 ),
        .I4(\rem_fu_126[4]_i_4_n_0 ),
        .I5(\phi_mul_fu_122_reg[6]_3 ),
        .O(add_ln66_fu_464_p2[3]));
  LUT5 #(
    .INIT(32'h005700A8)) 
    \phi_mul_fu_122[7]_i_1 
       (.I0(\phi_mul_fu_122_reg[6]_3 ),
        .I1(\phi_mul_fu_122[7]_i_2_n_0 ),
        .I2(\phi_mul_fu_122_reg[6]_2 ),
        .I3(ap_loop_init_int),
        .I4(\phi_mul_fu_122_reg[10]_2 ),
        .O(add_ln66_fu_464_p2[4]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h3F2A2A2A)) 
    \phi_mul_fu_122[7]_i_2 
       (.I0(\phi_mul_fu_122_reg[6]_1 ),
        .I1(ap_loop_init_int),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg),
        .I3(\phi_mul_fu_122_reg[6]_0 ),
        .I4(\phi_mul_fu_122_reg[6] ),
        .O(\phi_mul_fu_122[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hB444)) 
    \phi_mul_fu_122[8]_i_1 
       (.I0(ap_loop_init_int),
        .I1(\phi_mul_fu_122_reg[10]_1 ),
        .I2(\phi_mul_fu_122[10]_i_2_n_0 ),
        .I3(\phi_mul_fu_122_reg[10]_2 ),
        .O(add_ln66_fu_464_p2[5]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \phi_mul_fu_122[9]_i_1 
       (.I0(\phi_mul_fu_122_reg[10]_3 ),
        .I1(\phi_mul_fu_122_reg[10]_2 ),
        .I2(\phi_mul_fu_122[10]_i_2_n_0 ),
        .I3(\phi_mul_fu_122_reg[10]_1 ),
        .I4(ap_loop_init_int),
        .O(add_ln66_fu_464_p2[6]));
  LUT6 #(
    .INIT(64'hAAAAFFFFAAAAFFFB)) 
    \phi_urem_fu_118[0]_i_1 
       (.I0(\rem_fu_126[4]_i_4_n_0 ),
        .I1(phi_urem_fu_118[2]),
        .I2(phi_urem_fu_118[4]),
        .I3(phi_urem_fu_118[3]),
        .I4(phi_urem_fu_118[0]),
        .I5(phi_urem_fu_118[1]),
        .O(select_ln47_fu_509_p3[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \phi_urem_fu_118[1]_i_1 
       (.I0(phi_urem_fu_118[1]),
        .I1(phi_urem_fu_118[0]),
        .I2(ap_loop_init_int),
        .O(\phi_urem_fu_118_reg[1] ));
  LUT6 #(
    .INIT(64'h000F00FE00F00000)) 
    \phi_urem_fu_118[2]_i_1 
       (.I0(phi_urem_fu_118[4]),
        .I1(phi_urem_fu_118[3]),
        .I2(phi_urem_fu_118[0]),
        .I3(\rem_fu_126[4]_i_4_n_0 ),
        .I4(phi_urem_fu_118[1]),
        .I5(phi_urem_fu_118[2]),
        .O(select_ln47_fu_509_p3[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h13332000)) 
    \phi_urem_fu_118[3]_i_1 
       (.I0(phi_urem_fu_118[1]),
        .I1(ap_loop_init_int),
        .I2(phi_urem_fu_118[0]),
        .I3(phi_urem_fu_118[2]),
        .I4(phi_urem_fu_118[3]),
        .O(select_ln47_fu_509_p3[2]));
  LUT6 #(
    .INIT(64'h00007FFF00008000)) 
    \phi_urem_fu_118[4]_i_1 
       (.I0(phi_urem_fu_118[1]),
        .I1(phi_urem_fu_118[0]),
        .I2(phi_urem_fu_118[2]),
        .I3(phi_urem_fu_118[3]),
        .I4(\rem_fu_126[4]_i_4_n_0 ),
        .I5(phi_urem_fu_118[4]),
        .O(select_ln47_fu_509_p3[3]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \rem_fu_126[0]_i_1 
       (.I0(ap_loop_init_int),
        .I1(rem_fu_126[0]),
        .O(i_fu_455_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h12)) 
    \rem_fu_126[1]_i_1 
       (.I0(rem_fu_126[0]),
        .I1(ap_loop_init_int),
        .I2(rem_fu_126[1]),
        .O(\rem_fu_126_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h060A)) 
    \rem_fu_126[2]_i_1 
       (.I0(rem_fu_126[2]),
        .I1(rem_fu_126[1]),
        .I2(ap_loop_init_int),
        .I3(rem_fu_126[0]),
        .O(\rem_fu_126_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h12222222)) 
    \rem_fu_126[3]_i_1 
       (.I0(rem_fu_126[3]),
        .I1(ap_loop_init_int),
        .I2(rem_fu_126[1]),
        .I3(rem_fu_126[0]),
        .I4(rem_fu_126[2]),
        .O(i_fu_455_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h00A2)) 
    \rem_fu_126[4]_i_1 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg),
        .I1(\rem_fu_126_reg[4] ),
        .I2(Q),
        .I3(\rem_fu_126[4]_i_3_n_0 ),
        .O(grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg_reg));
  LUT6 #(
    .INIT(64'h060A0A0A0A0A0A0A)) 
    \rem_fu_126[4]_i_2 
       (.I0(rem_fu_126[4]),
        .I1(rem_fu_126[3]),
        .I2(\rem_fu_126[4]_i_4_n_0 ),
        .I3(rem_fu_126[1]),
        .I4(rem_fu_126[0]),
        .I5(rem_fu_126[2]),
        .O(i_fu_455_p2[2]));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \rem_fu_126[4]_i_3 
       (.I0(rem_fu_126[0]),
        .I1(rem_fu_126[3]),
        .I2(rem_fu_126[2]),
        .I3(rem_fu_126[1]),
        .I4(\rem_fu_126[4]_i_4_n_0 ),
        .I5(rem_fu_126[4]),
        .O(\rem_fu_126[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rem_fu_126[4]_i_4 
       (.I0(grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg),
        .I1(ap_loop_init_int),
        .O(\rem_fu_126[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \trunc_ln1_reg_935[0]_i_1 
       (.I0(\phi_mul_fu_122_reg[10]_1 ),
        .I1(ap_loop_init_int),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg),
        .O(\phi_mul_fu_122_reg[10] [0]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \trunc_ln1_reg_935[1]_i_1 
       (.I0(\phi_mul_fu_122_reg[10]_3 ),
        .I1(ap_loop_init_int),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg),
        .O(\phi_mul_fu_122_reg[10] [1]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \trunc_ln1_reg_935[2]_i_2 
       (.I0(\phi_mul_fu_122_reg[10]_0 ),
        .I1(ap_loop_init_int),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg),
        .O(\phi_mul_fu_122_reg[10] [2]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \trunc_ln68_reg_939[0]_i_1 
       (.I0(phi_urem_fu_118[0]),
        .I1(grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(\phi_urem_fu_118_reg[2] [0]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \trunc_ln68_reg_939[1]_i_1 
       (.I0(phi_urem_fu_118[1]),
        .I1(ap_loop_init_int),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg),
        .O(\phi_urem_fu_118_reg[2] [1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \trunc_ln68_reg_939[2]_i_1 
       (.I0(phi_urem_fu_118[2]),
        .I1(ap_loop_init_int),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg),
        .O(\phi_urem_fu_118_reg[2] [2]));
endmodule

(* ORIG_REF_NAME = "conv2d_flow_control_loop_pipe_sequential_init" *) 
module cnn_pipeline_conv2d_0_1_conv2d_flow_control_loop_pipe_sequential_init_5
   (ap_rst_n_0,
    select_ln49_fu_546_p3,
    \oc_s_fu_140_reg[1] ,
    select_ln89_fu_561_p3,
    grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_ap_ready,
    E,
    \ap_CS_fsm_reg[4] ,
    add_ln89_fu_528_p2,
    add_ln96_2_fu_653_p2,
    \ap_CS_fsm_reg[3] ,
    \oc_s_fu_140_reg[0] ,
    ap_rst_n_1,
    D,
    ap_clk,
    ap_rst_n,
    grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_ap_start_reg,
    oc_s_fu_140,
    Q,
    \or_s_fu_144_reg[1] ,
    \or_s_fu_144_reg[1]_0 ,
    \or_s_fu_144_reg[1]_1 ,
    \or_s_fu_144_reg[1]_2 ,
    ap_loop_exit_ready_pp0_iter10_reg,
    \ap_CS_fsm_reg[5] );
  output ap_rst_n_0;
  output [0:0]select_ln49_fu_546_p3;
  output [0:0]\oc_s_fu_140_reg[1] ;
  output [1:0]select_ln89_fu_561_p3;
  output grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_ap_ready;
  output [0:0]E;
  output [1:0]\ap_CS_fsm_reg[4] ;
  output [3:0]add_ln89_fu_528_p2;
  output [0:0]add_ln96_2_fu_653_p2;
  output \ap_CS_fsm_reg[3] ;
  output \oc_s_fu_140_reg[0] ;
  output ap_rst_n_1;
  output [0:0]D;
  input ap_clk;
  input ap_rst_n;
  input grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_ap_start_reg;
  input [1:0]oc_s_fu_140;
  input [1:0]Q;
  input \or_s_fu_144_reg[1] ;
  input \or_s_fu_144_reg[1]_0 ;
  input \or_s_fu_144_reg[1]_1 ;
  input \or_s_fu_144_reg[1]_2 ;
  input ap_loop_exit_ready_pp0_iter10_reg;
  input [1:0]\ap_CS_fsm_reg[5] ;

  wire [0:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire [3:0]add_ln89_fu_528_p2;
  wire [0:0]add_ln96_2_fu_653_p2;
  wire \ap_CS_fsm_reg[3] ;
  wire [1:0]\ap_CS_fsm_reg[4] ;
  wire [1:0]\ap_CS_fsm_reg[5] ;
  wire ap_clk;
  wire ap_done_cache;
  wire ap_done_cache_i_1__1_n_0;
  wire ap_loop_exit_ready_pp0_iter10_reg;
  wire ap_loop_init_int;
  wire ap_loop_init_int_i_1__1_n_0;
  wire ap_rst_n;
  wire ap_rst_n_0;
  wire ap_rst_n_1;
  wire grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_ap_ready;
  wire grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_ap_start_reg;
  wire [1:0]oc_s_fu_140;
  wire \oc_s_fu_140_reg[0] ;
  wire [0:0]\oc_s_fu_140_reg[1] ;
  wire \or_s_fu_144_reg[1] ;
  wire \or_s_fu_144_reg[1]_0 ;
  wire \or_s_fu_144_reg[1]_1 ;
  wire \or_s_fu_144_reg[1]_2 ;
  wire [0:0]select_ln49_fu_546_p3;
  wire [1:0]select_ln89_fu_561_p3;

  LUT1 #(
    .INIT(2'h1)) 
    ack_in_t_i_1
       (.I0(ap_rst_n),
        .O(ap_rst_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hBABBAAAA)) 
    \ap_CS_fsm[4]_i_1 
       (.I0(\ap_CS_fsm_reg[5] [0]),
        .I1(ap_loop_exit_ready_pp0_iter10_reg),
        .I2(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_ap_start_reg),
        .I3(ap_done_cache),
        .I4(\ap_CS_fsm_reg[5] [1]),
        .O(\ap_CS_fsm_reg[4] [0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hAA08)) 
    \ap_CS_fsm[5]_i_1 
       (.I0(\ap_CS_fsm_reg[5] [1]),
        .I1(ap_done_cache),
        .I2(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_ap_start_reg),
        .I3(ap_loop_exit_ready_pp0_iter10_reg),
        .O(\ap_CS_fsm_reg[4] [1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hDC)) 
    ap_done_cache_i_1__1
       (.I0(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_ap_start_reg),
        .I1(ap_loop_exit_ready_pp0_iter10_reg),
        .I2(ap_done_cache),
        .O(ap_done_cache_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_done_cache_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_done_cache_i_1__1_n_0),
        .Q(ap_done_cache),
        .R(ap_rst_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    ap_enable_reg_pp0_iter1_i_1__2
       (.I0(E),
        .I1(ap_rst_n),
        .O(ap_rst_n_1));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    ap_loop_exit_ready_pp0_iter9_reg_reg_srl9_i_1
       (.I0(\or_s_fu_144_reg[1] ),
        .I1(\or_s_fu_144_reg[1]_0 ),
        .I2(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_ap_start_reg),
        .I3(ap_loop_init_int),
        .I4(\or_s_fu_144_reg[1]_1 ),
        .I5(\or_s_fu_144_reg[1]_2 ),
        .O(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_ap_ready));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hBBFB)) 
    ap_loop_init_int_i_1__1
       (.I0(ap_loop_exit_ready_pp0_iter10_reg),
        .I1(ap_rst_n),
        .I2(ap_loop_init_int),
        .I3(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_ap_start_reg),
        .O(ap_loop_init_int_i_1__1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    ap_loop_init_int_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_init_int_i_1__1_n_0),
        .Q(ap_loop_init_int),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_ap_start_reg_i_1
       (.I0(\ap_CS_fsm_reg[5] [0]),
        .I1(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_ap_ready),
        .I2(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_ap_start_reg),
        .O(\ap_CS_fsm_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \indvar_flatten_fu_148[0]_i_1 
       (.I0(ap_loop_init_int),
        .I1(\or_s_fu_144_reg[1]_2 ),
        .O(add_ln89_fu_528_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \indvar_flatten_fu_148[1]_i_1 
       (.I0(\or_s_fu_144_reg[1]_2 ),
        .I1(\or_s_fu_144_reg[1]_1 ),
        .I2(ap_loop_init_int),
        .O(add_ln89_fu_528_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h1222)) 
    \indvar_flatten_fu_148[2]_i_1 
       (.I0(\or_s_fu_144_reg[1] ),
        .I1(ap_loop_init_int),
        .I2(\or_s_fu_144_reg[1]_2 ),
        .I3(\or_s_fu_144_reg[1]_1 ),
        .O(add_ln89_fu_528_p2[2]));
  LUT6 #(
    .INIT(64'hF0F0F0B0F0F0F0F0)) 
    \indvar_flatten_fu_148[3]_i_1 
       (.I0(\or_s_fu_144_reg[1] ),
        .I1(\or_s_fu_144_reg[1]_0 ),
        .I2(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_ap_start_reg),
        .I3(ap_loop_init_int),
        .I4(\or_s_fu_144_reg[1]_1 ),
        .I5(\or_s_fu_144_reg[1]_2 ),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h006A00AA)) 
    \indvar_flatten_fu_148[3]_i_2 
       (.I0(\or_s_fu_144_reg[1]_0 ),
        .I1(\or_s_fu_144_reg[1]_1 ),
        .I2(\or_s_fu_144_reg[1]_2 ),
        .I3(ap_loop_init_int),
        .I4(\or_s_fu_144_reg[1] ),
        .O(add_ln89_fu_528_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFBBB)) 
    \oc_s_fu_140[0]_i_1 
       (.I0(oc_s_fu_140[1]),
        .I1(oc_s_fu_140[0]),
        .I2(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_ap_start_reg),
        .I3(ap_loop_init_int),
        .O(\oc_s_fu_140_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \oc_s_fu_140[1]_i_1 
       (.I0(oc_s_fu_140[1]),
        .I1(oc_s_fu_140[0]),
        .I2(ap_loop_init_int),
        .O(add_ln96_2_fu_653_p2));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h1222)) 
    \or_s_fu_144[0]_i_1 
       (.I0(Q[0]),
        .I1(ap_loop_init_int),
        .I2(oc_s_fu_140[1]),
        .I3(oc_s_fu_140[0]),
        .O(D));
  LUT6 #(
    .INIT(64'h006A6A6A00AAAAAA)) 
    \or_s_fu_144[1]_i_1 
       (.I0(Q[1]),
        .I1(oc_s_fu_140[1]),
        .I2(oc_s_fu_140[0]),
        .I3(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_ap_start_reg),
        .I4(ap_loop_init_int),
        .I5(Q[0]),
        .O(select_ln89_fu_561_p3[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0070)) 
    \select_ln49_reg_1599[0]_i_1 
       (.I0(ap_loop_init_int),
        .I1(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_ap_start_reg),
        .I2(oc_s_fu_140[0]),
        .I3(oc_s_fu_140[1]),
        .O(select_ln49_fu_546_p3));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0444)) 
    \select_ln49_reg_1599[1]_i_1 
       (.I0(oc_s_fu_140[0]),
        .I1(oc_s_fu_140[1]),
        .I2(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_ap_start_reg),
        .I3(ap_loop_init_int),
        .O(\oc_s_fu_140_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h07770888)) 
    \select_ln89_reg_1613[0]_i_1 
       (.I0(oc_s_fu_140[0]),
        .I1(oc_s_fu_140[1]),
        .I2(grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310_ap_start_reg),
        .I3(ap_loop_init_int),
        .I4(Q[0]),
        .O(select_ln89_fu_561_p3[0]));
endmodule

(* ORIG_REF_NAME = "conv2d_mac_muladd_16s_16s_24s_24_4_1" *) 
module cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1
   (P,
    CEB1,
    Q,
    ap_clk,
    DSP_ALU_INST,
    A,
    bias);
  output [15:0]P;
  input CEB1;
  input [0:0]Q;
  input ap_clk;
  input [15:0]DSP_ALU_INST;
  input [15:0]A;
  input [15:0]bias;

  wire [15:0]A;
  wire CEB1;
  wire [15:0]DSP_ALU_INST;
  wire [15:0]P;
  wire [0:0]Q;
  wire ap_clk;
  wire [15:0]bias;

  cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0_21 conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0_U
       (.A(A),
        .CEB1(CEB1),
        .DSP_ALU_INST(DSP_ALU_INST),
        .P(P),
        .Q(Q),
        .ap_clk(ap_clk),
        .bias(bias));
endmodule

(* ORIG_REF_NAME = "conv2d_mac_muladd_16s_16s_24s_24_4_1" *) 
module cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_10
   (P,
    ap_clk,
    DSP_ALU_INST,
    Q,
    DSP_ALU_INST_0);
  output [15:0]P;
  input ap_clk;
  input [15:0]DSP_ALU_INST;
  input [15:0]Q;
  input [15:0]DSP_ALU_INST_0;

  wire [15:0]DSP_ALU_INST;
  wire [15:0]DSP_ALU_INST_0;
  wire [15:0]P;
  wire [15:0]Q;
  wire ap_clk;

  cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0_16 conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0_U
       (.DSP_ALU_INST(DSP_ALU_INST),
        .DSP_ALU_INST_0(DSP_ALU_INST_0),
        .P(P),
        .Q(Q),
        .ap_clk(ap_clk));
endmodule

(* ORIG_REF_NAME = "conv2d_mac_muladd_16s_16s_24s_24_4_1" *) 
module cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_11
   (P,
    ap_clk,
    DSP_ALU_INST,
    A,
    DSP_ALU_INST_0);
  output [15:0]P;
  input ap_clk;
  input [15:0]DSP_ALU_INST;
  input [15:0]A;
  input [15:0]DSP_ALU_INST_0;

  wire [15:0]A;
  wire [15:0]DSP_ALU_INST;
  wire [15:0]DSP_ALU_INST_0;
  wire [15:0]P;
  wire ap_clk;

  cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0_15 conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0_U
       (.A(A),
        .DSP_ALU_INST(DSP_ALU_INST),
        .DSP_ALU_INST_0(DSP_ALU_INST_0),
        .P(P),
        .ap_clk(ap_clk));
endmodule

(* ORIG_REF_NAME = "conv2d_mac_muladd_16s_16s_24s_24_4_1" *) 
module cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_12
   (P,
    ap_clk,
    DSP_ALU_INST,
    A,
    DSP_ALU_INST_0);
  output [15:0]P;
  input ap_clk;
  input [15:0]DSP_ALU_INST;
  input [15:0]A;
  input [15:0]DSP_ALU_INST_0;

  wire [15:0]A;
  wire [15:0]DSP_ALU_INST;
  wire [15:0]DSP_ALU_INST_0;
  wire [15:0]P;
  wire ap_clk;

  cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0_14 conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0_U
       (.A(A),
        .DSP_ALU_INST(DSP_ALU_INST),
        .DSP_ALU_INST_0(DSP_ALU_INST_0),
        .P(P),
        .ap_clk(ap_clk));
endmodule

(* ORIG_REF_NAME = "conv2d_mac_muladd_16s_16s_24s_24_4_1" *) 
module cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_13
   (D,
    ap_clk,
    DSP_ALU_INST,
    A,
    P);
  output [15:0]D;
  input ap_clk;
  input [15:0]DSP_ALU_INST;
  input [15:0]A;
  input [15:0]P;

  wire [15:0]A;
  wire [15:0]D;
  wire [15:0]DSP_ALU_INST;
  wire [15:0]P;
  wire ap_clk;

  cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0 conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0_U
       (.A(A),
        .D(D),
        .DSP_ALU_INST(DSP_ALU_INST),
        .P(P),
        .ap_clk(ap_clk));
endmodule

(* ORIG_REF_NAME = "conv2d_mac_muladd_16s_16s_24s_24_4_1" *) 
module cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_6
   (P,
    ap_clk,
    DSP_ALU_INST,
    DSP_ALU_INST_0,
    DSP_ALU_INST_1);
  output [15:0]P;
  input ap_clk;
  input [15:0]DSP_ALU_INST;
  input [15:0]DSP_ALU_INST_0;
  input [15:0]DSP_ALU_INST_1;

  wire [15:0]DSP_ALU_INST;
  wire [15:0]DSP_ALU_INST_0;
  wire [15:0]DSP_ALU_INST_1;
  wire [15:0]P;
  wire ap_clk;

  cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0_20 conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0_U
       (.DSP_ALU_INST(DSP_ALU_INST),
        .DSP_ALU_INST_0(DSP_ALU_INST_0),
        .DSP_ALU_INST_1(DSP_ALU_INST_1),
        .P(P),
        .ap_clk(ap_clk));
endmodule

(* ORIG_REF_NAME = "conv2d_mac_muladd_16s_16s_24s_24_4_1" *) 
module cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_7
   (P,
    ap_clk,
    DSP_ALU_INST,
    DSP_ALU_INST_0,
    DSP_ALU_INST_1);
  output [15:0]P;
  input ap_clk;
  input [15:0]DSP_ALU_INST;
  input [15:0]DSP_ALU_INST_0;
  input [15:0]DSP_ALU_INST_1;

  wire [15:0]DSP_ALU_INST;
  wire [15:0]DSP_ALU_INST_0;
  wire [15:0]DSP_ALU_INST_1;
  wire [15:0]P;
  wire ap_clk;

  cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0_19 conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0_U
       (.DSP_ALU_INST(DSP_ALU_INST),
        .DSP_ALU_INST_0(DSP_ALU_INST_0),
        .DSP_ALU_INST_1(DSP_ALU_INST_1),
        .P(P),
        .ap_clk(ap_clk));
endmodule

(* ORIG_REF_NAME = "conv2d_mac_muladd_16s_16s_24s_24_4_1" *) 
module cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_8
   (P,
    ap_clk,
    DSP_ALU_INST,
    A,
    DSP_ALU_INST_0);
  output [15:0]P;
  input ap_clk;
  input [15:0]DSP_ALU_INST;
  input [15:0]A;
  input [15:0]DSP_ALU_INST_0;

  wire [15:0]A;
  wire [15:0]DSP_ALU_INST;
  wire [15:0]DSP_ALU_INST_0;
  wire [15:0]P;
  wire ap_clk;

  cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0_18 conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0_U
       (.A(A),
        .DSP_ALU_INST(DSP_ALU_INST),
        .DSP_ALU_INST_0(DSP_ALU_INST_0),
        .P(P),
        .ap_clk(ap_clk));
endmodule

(* ORIG_REF_NAME = "conv2d_mac_muladd_16s_16s_24s_24_4_1" *) 
module cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_9
   (P,
    ap_clk,
    DSP_ALU_INST,
    Q,
    DSP_ALU_INST_0);
  output [15:0]P;
  input ap_clk;
  input [15:0]DSP_ALU_INST;
  input [15:0]Q;
  input [15:0]DSP_ALU_INST_0;

  wire [15:0]DSP_ALU_INST;
  wire [15:0]DSP_ALU_INST_0;
  wire [15:0]P;
  wire [15:0]Q;
  wire ap_clk;

  cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0_17 conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0_U
       (.DSP_ALU_INST(DSP_ALU_INST),
        .DSP_ALU_INST_0(DSP_ALU_INST_0),
        .P(P),
        .Q(Q),
        .ap_clk(ap_clk));
endmodule

(* ORIG_REF_NAME = "conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0" *) 
module cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0
   (D,
    ap_clk,
    DSP_ALU_INST,
    A,
    P);
  output [15:0]D;
  input ap_clk;
  input [15:0]DSP_ALU_INST;
  input [15:0]A;
  input [15:0]P;

  wire [15:0]A;
  wire [15:0]D;
  wire [15:0]DSP_ALU_INST;
  wire [15:0]P;
  wire ap_clk;
  wire p_reg_reg_n_100;
  wire p_reg_reg_n_101;
  wire p_reg_reg_n_102;
  wire p_reg_reg_n_103;
  wire p_reg_reg_n_104;
  wire p_reg_reg_n_105;
  wire p_reg_reg_n_98;
  wire p_reg_reg_n_99;
  wire NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_reg_reg_OVERFLOW_UNCONNECTED;
  wire NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_reg_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_reg_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_reg_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_reg_reg_CARRYOUT_UNCONNECTED;
  wire [47:24]NLW_p_reg_reg_P_UNCONNECTED;
  wire [47:0]NLW_p_reg_reg_PCOUT_UNCONNECTED;
  wire [7:0]NLW_p_reg_reg_XOROUT_UNCONNECTED;

  (* KEEP_HIERARCHY = "YES" *) 
  DSP48E2 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BMULTSEL("B"),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    p_reg_reg
       (.A({A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_reg_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({DSP_ALU_INST[15],DSP_ALU_INST[15],DSP_ALU_INST}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_reg_reg_BCOUT_UNCONNECTED[17:0]),
        .C({P[15],P[15],P[15],P[15],P[15],P[15],P[15],P[15],P[15],P[15],P[15],P[15],P[15],P[15],P[15],P[15],P[15],P[15],P[15],P[15],P[15],P[15],P[15],P[15],P,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_reg_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b1),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b1),
        .CEB2(1'b1),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p_reg_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_p_reg_reg_P_UNCONNECTED[47:24],D,p_reg_reg_n_98,p_reg_reg_n_99,p_reg_reg_n_100,p_reg_reg_n_101,p_reg_reg_n_102,p_reg_reg_n_103,p_reg_reg_n_104,p_reg_reg_n_105}),
        .PATTERNBDETECT(NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_p_reg_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p_reg_reg_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_p_reg_reg_XOROUT_UNCONNECTED[7:0]));
endmodule

(* ORIG_REF_NAME = "conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0" *) 
module cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0_14
   (P,
    ap_clk,
    DSP_ALU_INST,
    A,
    DSP_ALU_INST_0);
  output [15:0]P;
  input ap_clk;
  input [15:0]DSP_ALU_INST;
  input [15:0]A;
  input [15:0]DSP_ALU_INST_0;

  wire [15:0]A;
  wire [15:0]DSP_ALU_INST;
  wire [15:0]DSP_ALU_INST_0;
  wire [15:0]P;
  wire ap_clk;
  wire p_reg_reg_n_100;
  wire p_reg_reg_n_101;
  wire p_reg_reg_n_102;
  wire p_reg_reg_n_103;
  wire p_reg_reg_n_104;
  wire p_reg_reg_n_105;
  wire p_reg_reg_n_98;
  wire p_reg_reg_n_99;
  wire NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_reg_reg_OVERFLOW_UNCONNECTED;
  wire NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_reg_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_reg_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_reg_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_reg_reg_CARRYOUT_UNCONNECTED;
  wire [47:24]NLW_p_reg_reg_P_UNCONNECTED;
  wire [47:0]NLW_p_reg_reg_PCOUT_UNCONNECTED;
  wire [7:0]NLW_p_reg_reg_XOROUT_UNCONNECTED;

  (* KEEP_HIERARCHY = "YES" *) 
  DSP48E2 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BMULTSEL("B"),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    p_reg_reg
       (.A({A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_reg_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({DSP_ALU_INST[15],DSP_ALU_INST[15],DSP_ALU_INST}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_reg_reg_BCOUT_UNCONNECTED[17:0]),
        .C({DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_reg_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b1),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b1),
        .CEB2(1'b1),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p_reg_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_p_reg_reg_P_UNCONNECTED[47:24],P,p_reg_reg_n_98,p_reg_reg_n_99,p_reg_reg_n_100,p_reg_reg_n_101,p_reg_reg_n_102,p_reg_reg_n_103,p_reg_reg_n_104,p_reg_reg_n_105}),
        .PATTERNBDETECT(NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_p_reg_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p_reg_reg_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_p_reg_reg_XOROUT_UNCONNECTED[7:0]));
endmodule

(* ORIG_REF_NAME = "conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0" *) 
module cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0_15
   (P,
    ap_clk,
    DSP_ALU_INST,
    A,
    DSP_ALU_INST_0);
  output [15:0]P;
  input ap_clk;
  input [15:0]DSP_ALU_INST;
  input [15:0]A;
  input [15:0]DSP_ALU_INST_0;

  wire [15:0]A;
  wire [15:0]DSP_ALU_INST;
  wire [15:0]DSP_ALU_INST_0;
  wire [15:0]P;
  wire ap_clk;
  wire p_reg_reg_n_100;
  wire p_reg_reg_n_101;
  wire p_reg_reg_n_102;
  wire p_reg_reg_n_103;
  wire p_reg_reg_n_104;
  wire p_reg_reg_n_105;
  wire p_reg_reg_n_98;
  wire p_reg_reg_n_99;
  wire NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_reg_reg_OVERFLOW_UNCONNECTED;
  wire NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_reg_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_reg_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_reg_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_reg_reg_CARRYOUT_UNCONNECTED;
  wire [47:24]NLW_p_reg_reg_P_UNCONNECTED;
  wire [47:0]NLW_p_reg_reg_PCOUT_UNCONNECTED;
  wire [7:0]NLW_p_reg_reg_XOROUT_UNCONNECTED;

  (* KEEP_HIERARCHY = "YES" *) 
  DSP48E2 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BMULTSEL("B"),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    p_reg_reg
       (.A({A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_reg_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({DSP_ALU_INST[15],DSP_ALU_INST[15],DSP_ALU_INST}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_reg_reg_BCOUT_UNCONNECTED[17:0]),
        .C({DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_reg_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b1),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b1),
        .CEB2(1'b1),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p_reg_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_p_reg_reg_P_UNCONNECTED[47:24],P,p_reg_reg_n_98,p_reg_reg_n_99,p_reg_reg_n_100,p_reg_reg_n_101,p_reg_reg_n_102,p_reg_reg_n_103,p_reg_reg_n_104,p_reg_reg_n_105}),
        .PATTERNBDETECT(NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_p_reg_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p_reg_reg_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_p_reg_reg_XOROUT_UNCONNECTED[7:0]));
endmodule

(* ORIG_REF_NAME = "conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0" *) 
module cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0_16
   (P,
    ap_clk,
    DSP_ALU_INST,
    Q,
    DSP_ALU_INST_0);
  output [15:0]P;
  input ap_clk;
  input [15:0]DSP_ALU_INST;
  input [15:0]Q;
  input [15:0]DSP_ALU_INST_0;

  wire [15:0]DSP_ALU_INST;
  wire [15:0]DSP_ALU_INST_0;
  wire [15:0]P;
  wire [15:0]Q;
  wire ap_clk;
  wire p_reg_reg_n_100;
  wire p_reg_reg_n_101;
  wire p_reg_reg_n_102;
  wire p_reg_reg_n_103;
  wire p_reg_reg_n_104;
  wire p_reg_reg_n_105;
  wire p_reg_reg_n_98;
  wire p_reg_reg_n_99;
  wire NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_reg_reg_OVERFLOW_UNCONNECTED;
  wire NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_reg_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_reg_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_reg_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_reg_reg_CARRYOUT_UNCONNECTED;
  wire [47:24]NLW_p_reg_reg_P_UNCONNECTED;
  wire [47:0]NLW_p_reg_reg_PCOUT_UNCONNECTED;
  wire [7:0]NLW_p_reg_reg_XOROUT_UNCONNECTED;

  (* KEEP_HIERARCHY = "YES" *) 
  DSP48E2 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BMULTSEL("B"),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    p_reg_reg
       (.A({Q[15],Q[15],Q[15],Q[15],Q[15],Q[15],Q[15],Q[15],Q[15],Q[15],Q[15],Q[15],Q[15],Q[15],Q}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_reg_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({DSP_ALU_INST[15],DSP_ALU_INST[15],DSP_ALU_INST}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_reg_reg_BCOUT_UNCONNECTED[17:0]),
        .C({DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_reg_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b1),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b1),
        .CEB2(1'b1),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p_reg_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_p_reg_reg_P_UNCONNECTED[47:24],P,p_reg_reg_n_98,p_reg_reg_n_99,p_reg_reg_n_100,p_reg_reg_n_101,p_reg_reg_n_102,p_reg_reg_n_103,p_reg_reg_n_104,p_reg_reg_n_105}),
        .PATTERNBDETECT(NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_p_reg_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p_reg_reg_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_p_reg_reg_XOROUT_UNCONNECTED[7:0]));
endmodule

(* ORIG_REF_NAME = "conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0" *) 
module cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0_17
   (P,
    ap_clk,
    DSP_ALU_INST,
    Q,
    DSP_ALU_INST_0);
  output [15:0]P;
  input ap_clk;
  input [15:0]DSP_ALU_INST;
  input [15:0]Q;
  input [15:0]DSP_ALU_INST_0;

  wire [15:0]DSP_ALU_INST;
  wire [15:0]DSP_ALU_INST_0;
  wire [15:0]P;
  wire [15:0]Q;
  wire ap_clk;
  wire p_reg_reg_n_100;
  wire p_reg_reg_n_101;
  wire p_reg_reg_n_102;
  wire p_reg_reg_n_103;
  wire p_reg_reg_n_104;
  wire p_reg_reg_n_105;
  wire p_reg_reg_n_98;
  wire p_reg_reg_n_99;
  wire NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_reg_reg_OVERFLOW_UNCONNECTED;
  wire NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_reg_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_reg_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_reg_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_reg_reg_CARRYOUT_UNCONNECTED;
  wire [47:24]NLW_p_reg_reg_P_UNCONNECTED;
  wire [47:0]NLW_p_reg_reg_PCOUT_UNCONNECTED;
  wire [7:0]NLW_p_reg_reg_XOROUT_UNCONNECTED;

  (* KEEP_HIERARCHY = "YES" *) 
  DSP48E2 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BMULTSEL("B"),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    p_reg_reg
       (.A({Q[15],Q[15],Q[15],Q[15],Q[15],Q[15],Q[15],Q[15],Q[15],Q[15],Q[15],Q[15],Q[15],Q[15],Q}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_reg_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({DSP_ALU_INST[15],DSP_ALU_INST[15],DSP_ALU_INST}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_reg_reg_BCOUT_UNCONNECTED[17:0]),
        .C({DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_reg_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b1),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b1),
        .CEB2(1'b1),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p_reg_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_p_reg_reg_P_UNCONNECTED[47:24],P,p_reg_reg_n_98,p_reg_reg_n_99,p_reg_reg_n_100,p_reg_reg_n_101,p_reg_reg_n_102,p_reg_reg_n_103,p_reg_reg_n_104,p_reg_reg_n_105}),
        .PATTERNBDETECT(NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_p_reg_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p_reg_reg_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_p_reg_reg_XOROUT_UNCONNECTED[7:0]));
endmodule

(* ORIG_REF_NAME = "conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0" *) 
module cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0_18
   (P,
    ap_clk,
    DSP_ALU_INST,
    A,
    DSP_ALU_INST_0);
  output [15:0]P;
  input ap_clk;
  input [15:0]DSP_ALU_INST;
  input [15:0]A;
  input [15:0]DSP_ALU_INST_0;

  wire [15:0]A;
  wire [15:0]DSP_ALU_INST;
  wire [15:0]DSP_ALU_INST_0;
  wire [15:0]P;
  wire ap_clk;
  wire p_reg_reg_n_100;
  wire p_reg_reg_n_101;
  wire p_reg_reg_n_102;
  wire p_reg_reg_n_103;
  wire p_reg_reg_n_104;
  wire p_reg_reg_n_105;
  wire p_reg_reg_n_98;
  wire p_reg_reg_n_99;
  wire NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_reg_reg_OVERFLOW_UNCONNECTED;
  wire NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_reg_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_reg_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_reg_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_reg_reg_CARRYOUT_UNCONNECTED;
  wire [47:24]NLW_p_reg_reg_P_UNCONNECTED;
  wire [47:0]NLW_p_reg_reg_PCOUT_UNCONNECTED;
  wire [7:0]NLW_p_reg_reg_XOROUT_UNCONNECTED;

  (* KEEP_HIERARCHY = "YES" *) 
  DSP48E2 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BMULTSEL("B"),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    p_reg_reg
       (.A({A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_reg_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({DSP_ALU_INST[15],DSP_ALU_INST[15],DSP_ALU_INST}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_reg_reg_BCOUT_UNCONNECTED[17:0]),
        .C({DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_reg_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b1),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b1),
        .CEB2(1'b1),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p_reg_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_p_reg_reg_P_UNCONNECTED[47:24],P,p_reg_reg_n_98,p_reg_reg_n_99,p_reg_reg_n_100,p_reg_reg_n_101,p_reg_reg_n_102,p_reg_reg_n_103,p_reg_reg_n_104,p_reg_reg_n_105}),
        .PATTERNBDETECT(NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_p_reg_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p_reg_reg_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_p_reg_reg_XOROUT_UNCONNECTED[7:0]));
endmodule

(* ORIG_REF_NAME = "conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0" *) 
module cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0_19
   (P,
    ap_clk,
    DSP_ALU_INST,
    DSP_ALU_INST_0,
    DSP_ALU_INST_1);
  output [15:0]P;
  input ap_clk;
  input [15:0]DSP_ALU_INST;
  input [15:0]DSP_ALU_INST_0;
  input [15:0]DSP_ALU_INST_1;

  wire [15:0]DSP_ALU_INST;
  wire [15:0]DSP_ALU_INST_0;
  wire [15:0]DSP_ALU_INST_1;
  wire [15:0]P;
  wire ap_clk;
  wire p_reg_reg_n_100;
  wire p_reg_reg_n_101;
  wire p_reg_reg_n_102;
  wire p_reg_reg_n_103;
  wire p_reg_reg_n_104;
  wire p_reg_reg_n_105;
  wire p_reg_reg_n_98;
  wire p_reg_reg_n_99;
  wire NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_reg_reg_OVERFLOW_UNCONNECTED;
  wire NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_reg_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_reg_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_reg_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_reg_reg_CARRYOUT_UNCONNECTED;
  wire [47:24]NLW_p_reg_reg_P_UNCONNECTED;
  wire [47:0]NLW_p_reg_reg_PCOUT_UNCONNECTED;
  wire [7:0]NLW_p_reg_reg_XOROUT_UNCONNECTED;

  (* KEEP_HIERARCHY = "YES" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BMULTSEL("B"),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    p_reg_reg
       (.A({DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_reg_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({DSP_ALU_INST[15],DSP_ALU_INST[15],DSP_ALU_INST}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_reg_reg_BCOUT_UNCONNECTED[17:0]),
        .C({DSP_ALU_INST_1[15],DSP_ALU_INST_1[15],DSP_ALU_INST_1[15],DSP_ALU_INST_1[15],DSP_ALU_INST_1[15],DSP_ALU_INST_1[15],DSP_ALU_INST_1[15],DSP_ALU_INST_1[15],DSP_ALU_INST_1[15],DSP_ALU_INST_1[15],DSP_ALU_INST_1[15],DSP_ALU_INST_1[15],DSP_ALU_INST_1[15],DSP_ALU_INST_1[15],DSP_ALU_INST_1[15],DSP_ALU_INST_1[15],DSP_ALU_INST_1[15],DSP_ALU_INST_1[15],DSP_ALU_INST_1[15],DSP_ALU_INST_1[15],DSP_ALU_INST_1[15],DSP_ALU_INST_1[15],DSP_ALU_INST_1[15],DSP_ALU_INST_1[15],DSP_ALU_INST_1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_reg_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b1),
        .CEB2(1'b1),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p_reg_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_p_reg_reg_P_UNCONNECTED[47:24],P,p_reg_reg_n_98,p_reg_reg_n_99,p_reg_reg_n_100,p_reg_reg_n_101,p_reg_reg_n_102,p_reg_reg_n_103,p_reg_reg_n_104,p_reg_reg_n_105}),
        .PATTERNBDETECT(NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_p_reg_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p_reg_reg_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_p_reg_reg_XOROUT_UNCONNECTED[7:0]));
endmodule

(* ORIG_REF_NAME = "conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0" *) 
module cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0_20
   (P,
    ap_clk,
    DSP_ALU_INST,
    DSP_ALU_INST_0,
    DSP_ALU_INST_1);
  output [15:0]P;
  input ap_clk;
  input [15:0]DSP_ALU_INST;
  input [15:0]DSP_ALU_INST_0;
  input [15:0]DSP_ALU_INST_1;

  wire [15:0]DSP_ALU_INST;
  wire [15:0]DSP_ALU_INST_0;
  wire [15:0]DSP_ALU_INST_1;
  wire [15:0]P;
  wire ap_clk;
  wire p_reg_reg_n_100;
  wire p_reg_reg_n_101;
  wire p_reg_reg_n_102;
  wire p_reg_reg_n_103;
  wire p_reg_reg_n_104;
  wire p_reg_reg_n_105;
  wire p_reg_reg_n_98;
  wire p_reg_reg_n_99;
  wire NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_reg_reg_OVERFLOW_UNCONNECTED;
  wire NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_reg_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_reg_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_reg_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_reg_reg_CARRYOUT_UNCONNECTED;
  wire [47:24]NLW_p_reg_reg_P_UNCONNECTED;
  wire [47:0]NLW_p_reg_reg_PCOUT_UNCONNECTED;
  wire [7:0]NLW_p_reg_reg_XOROUT_UNCONNECTED;

  (* KEEP_HIERARCHY = "YES" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BMULTSEL("B"),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    p_reg_reg
       (.A({DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0[15],DSP_ALU_INST_0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_reg_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({DSP_ALU_INST[15],DSP_ALU_INST[15],DSP_ALU_INST}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_reg_reg_BCOUT_UNCONNECTED[17:0]),
        .C({DSP_ALU_INST_1[15],DSP_ALU_INST_1[15],DSP_ALU_INST_1[15],DSP_ALU_INST_1[15],DSP_ALU_INST_1[15],DSP_ALU_INST_1[15],DSP_ALU_INST_1[15],DSP_ALU_INST_1[15],DSP_ALU_INST_1[15],DSP_ALU_INST_1[15],DSP_ALU_INST_1[15],DSP_ALU_INST_1[15],DSP_ALU_INST_1[15],DSP_ALU_INST_1[15],DSP_ALU_INST_1[15],DSP_ALU_INST_1[15],DSP_ALU_INST_1[15],DSP_ALU_INST_1[15],DSP_ALU_INST_1[15],DSP_ALU_INST_1[15],DSP_ALU_INST_1[15],DSP_ALU_INST_1[15],DSP_ALU_INST_1[15],DSP_ALU_INST_1[15],DSP_ALU_INST_1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_reg_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b1),
        .CEB2(1'b1),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p_reg_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_p_reg_reg_P_UNCONNECTED[47:24],P,p_reg_reg_n_98,p_reg_reg_n_99,p_reg_reg_n_100,p_reg_reg_n_101,p_reg_reg_n_102,p_reg_reg_n_103,p_reg_reg_n_104,p_reg_reg_n_105}),
        .PATTERNBDETECT(NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_p_reg_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p_reg_reg_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_p_reg_reg_XOROUT_UNCONNECTED[7:0]));
endmodule

(* ORIG_REF_NAME = "conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0" *) 
module cnn_pipeline_conv2d_0_1_conv2d_mac_muladd_16s_16s_24s_24_4_1_DSP48_0_21
   (P,
    CEB1,
    Q,
    ap_clk,
    DSP_ALU_INST,
    A,
    bias);
  output [15:0]P;
  input CEB1;
  input [0:0]Q;
  input ap_clk;
  input [15:0]DSP_ALU_INST;
  input [15:0]A;
  input [15:0]bias;

  wire [15:0]A;
  wire CEB1;
  wire [15:0]DSP_ALU_INST;
  wire [15:0]P;
  wire [0:0]Q;
  wire ap_clk;
  wire [15:0]bias;
  wire p_reg_reg_n_100;
  wire p_reg_reg_n_101;
  wire p_reg_reg_n_102;
  wire p_reg_reg_n_103;
  wire p_reg_reg_n_104;
  wire p_reg_reg_n_105;
  wire p_reg_reg_n_98;
  wire p_reg_reg_n_99;
  wire NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_reg_reg_OVERFLOW_UNCONNECTED;
  wire NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_reg_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_reg_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_reg_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_reg_reg_CARRYOUT_UNCONNECTED;
  wire [47:24]NLW_p_reg_reg_P_UNCONNECTED;
  wire [47:0]NLW_p_reg_reg_PCOUT_UNCONNECTED;
  wire [7:0]NLW_p_reg_reg_XOROUT_UNCONNECTED;

  (* KEEP_HIERARCHY = "YES" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BMULTSEL("B"),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    p_reg_reg
       (.A({A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A[15],A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_reg_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({DSP_ALU_INST[15],DSP_ALU_INST[15],DSP_ALU_INST}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_reg_reg_BCOUT_UNCONNECTED[17:0]),
        .C({bias[15],bias[15],bias[15],bias[15],bias[15],bias[15],bias[15],bias[15],bias[15],bias[15],bias[15],bias[15],bias[15],bias[15],bias[15],bias[15],bias[15],bias[15],bias[15],bias[15],bias[15],bias[15],bias[15],bias[15],bias,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_reg_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_reg_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(CEB1),
        .CEB2(1'b1),
        .CEC(Q),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p_reg_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p_reg_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_p_reg_reg_P_UNCONNECTED[47:24],P,p_reg_reg_n_98,p_reg_reg_n_99,p_reg_reg_n_100,p_reg_reg_n_101,p_reg_reg_n_102,p_reg_reg_n_103,p_reg_reg_n_104,p_reg_reg_n_105}),
        .PATTERNBDETECT(NLW_p_reg_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p_reg_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_p_reg_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p_reg_reg_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_p_reg_reg_XOROUT_UNCONNECTED[7:0]));
endmodule

(* ORIG_REF_NAME = "conv2d_regslice_both" *) 
module cnn_pipeline_conv2d_0_1_conv2d_regslice_both
   (ack_in_t_reg_0,
    E,
    Q,
    \state_reg[0]_0 ,
    \data_p1_reg[15]_0 ,
    ap_rst_n_inv,
    ap_clk,
    ap_enable_reg_pp0_iter1,
    grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg,
    ack_in_t_reg_1,
    in_stream_TVALID,
    \FSM_sequential_state_reg[0]_0 ,
    in_stream_TDATA);
  output ack_in_t_reg_0;
  output [0:0]E;
  output [0:0]Q;
  output \state_reg[0]_0 ;
  output [15:0]\data_p1_reg[15]_0 ;
  input ap_rst_n_inv;
  input ap_clk;
  input ap_enable_reg_pp0_iter1;
  input grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg;
  input ack_in_t_reg_1;
  input in_stream_TVALID;
  input [0:0]\FSM_sequential_state_reg[0]_0 ;
  input [15:0]in_stream_TDATA;

  wire [0:0]E;
  wire [0:0]\FSM_sequential_state_reg[0]_0 ;
  wire [0:0]Q;
  wire ack_in_t_i_2__0_n_0;
  wire ack_in_t_reg_0;
  wire ack_in_t_reg_1;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1;
  wire ap_rst_n_inv;
  wire [15:0]\data_p1_reg[15]_0 ;
  wire [15:0]data_p2;
  wire grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg;
  wire [15:0]in_stream_TDATA;
  wire in_stream_TVALID;
  wire load_p1;
  wire load_p2;
  wire [1:0]next__0;
  wire [15:0]p_0_in;
  wire [1:1]state;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire [1:0]state__0;
  wire \state_reg[0]_0 ;

  LUT6 #(
    .INIT(64'h80FF80FFFFFF80FF)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(\FSM_sequential_state_reg[0]_0 ),
        .I1(Q),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .I5(in_stream_TVALID),
        .O(next__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'hDDC0FF00)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(ack_in_t_reg_1),
        .I1(in_stream_TVALID),
        .I2(ack_in_t_reg_0),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .O(next__0[1]));
  (* FSM_ENCODED_STATES = "ZERO:01,TWO:10,ONE:11,iSTATE:00" *) 
  FDSE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(next__0[0]),
        .Q(state__0[0]),
        .S(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "ZERO:01,TWO:10,ONE:11,iSTATE:00" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(next__0[1]),
        .Q(state__0[1]),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'hDFFF0CF0)) 
    ack_in_t_i_2__0
       (.I0(in_stream_TVALID),
        .I1(ack_in_t_reg_1),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(ack_in_t_reg_0),
        .O(ack_in_t_i_2__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ack_in_t_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ack_in_t_i_2__0_n_0),
        .Q(ack_in_t_reg_0),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'h4F)) 
    \ap_CS_fsm[3]_i_6 
       (.I0(Q),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(grp_conv2d_Pipeline_READ_INPUT_fu_252_ap_start_reg),
        .O(\state_reg[0]_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[0]_i_1__2 
       (.I0(data_p2[0]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(in_stream_TDATA[0]),
        .O(p_0_in[0]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[10]_i_1__0 
       (.I0(data_p2[10]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(in_stream_TDATA[10]),
        .O(p_0_in[10]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[11]_i_1__0 
       (.I0(data_p2[11]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(in_stream_TDATA[11]),
        .O(p_0_in[11]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[12]_i_1__0 
       (.I0(data_p2[12]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(in_stream_TDATA[12]),
        .O(p_0_in[12]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[13]_i_1__0 
       (.I0(data_p2[13]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(in_stream_TDATA[13]),
        .O(p_0_in[13]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[14]_i_1__0 
       (.I0(data_p2[14]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(in_stream_TDATA[14]),
        .O(p_0_in[14]));
  LUT6 #(
    .INIT(64'hB808080808080808)) 
    \data_p1[15]_i_1 
       (.I0(in_stream_TVALID),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(Q),
        .I5(\FSM_sequential_state_reg[0]_0 ),
        .O(load_p1));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[15]_i_2__0 
       (.I0(data_p2[15]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(in_stream_TDATA[15]),
        .O(p_0_in[15]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[1]_i_1__2 
       (.I0(data_p2[1]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(in_stream_TDATA[1]),
        .O(p_0_in[1]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[2]_i_1__0 
       (.I0(data_p2[2]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(in_stream_TDATA[2]),
        .O(p_0_in[2]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[3]_i_1__0 
       (.I0(data_p2[3]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(in_stream_TDATA[3]),
        .O(p_0_in[3]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[4]_i_1__0 
       (.I0(data_p2[4]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(in_stream_TDATA[4]),
        .O(p_0_in[4]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[5]_i_1__0 
       (.I0(data_p2[5]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(in_stream_TDATA[5]),
        .O(p_0_in[5]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[6]_i_1__0 
       (.I0(data_p2[6]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(in_stream_TDATA[6]),
        .O(p_0_in[6]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[7]_i_1__0 
       (.I0(data_p2[7]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(in_stream_TDATA[7]),
        .O(p_0_in[7]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[8]_i_1__0 
       (.I0(data_p2[8]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(in_stream_TDATA[8]),
        .O(p_0_in[8]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[9]_i_1__0 
       (.I0(data_p2[9]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(in_stream_TDATA[9]),
        .O(p_0_in[9]));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[0] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[0]),
        .Q(\data_p1_reg[15]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[10] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[10]),
        .Q(\data_p1_reg[15]_0 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[11] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[11]),
        .Q(\data_p1_reg[15]_0 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[12] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[12]),
        .Q(\data_p1_reg[15]_0 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[13] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[13]),
        .Q(\data_p1_reg[15]_0 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[14] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[14]),
        .Q(\data_p1_reg[15]_0 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[15] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[15]),
        .Q(\data_p1_reg[15]_0 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[1] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[1]),
        .Q(\data_p1_reg[15]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[2] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[2]),
        .Q(\data_p1_reg[15]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[3] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[3]),
        .Q(\data_p1_reg[15]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[4] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[4]),
        .Q(\data_p1_reg[15]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[5] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[5]),
        .Q(\data_p1_reg[15]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[6] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[6]),
        .Q(\data_p1_reg[15]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[7] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[7]),
        .Q(\data_p1_reg[15]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[8] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[8]),
        .Q(\data_p1_reg[15]_0 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[9] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[9]),
        .Q(\data_p1_reg[15]_0 [9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \data_p2[15]_i_1__0 
       (.I0(ack_in_t_reg_0),
        .I1(in_stream_TVALID),
        .O(load_p2));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[0] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TDATA[0]),
        .Q(data_p2[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[10] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TDATA[10]),
        .Q(data_p2[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[11] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TDATA[11]),
        .Q(data_p2[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[12] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TDATA[12]),
        .Q(data_p2[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[13] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TDATA[13]),
        .Q(data_p2[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[14] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TDATA[14]),
        .Q(data_p2[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[15] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TDATA[15]),
        .Q(data_p2[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[1] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TDATA[1]),
        .Q(data_p2[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[2] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TDATA[2]),
        .Q(data_p2[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[3] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TDATA[3]),
        .Q(data_p2[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[4] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TDATA[4]),
        .Q(data_p2[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[5] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TDATA[5]),
        .Q(data_p2[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[6] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TDATA[6]),
        .Q(data_p2[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[7] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TDATA[7]),
        .Q(data_p2[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[8] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TDATA[8]),
        .Q(data_p2[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[9] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TDATA[9]),
        .Q(data_p2[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFF7FFF7FF0000000)) 
    \state[0]_i_1 
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(\FSM_sequential_state_reg[0]_0 ),
        .I2(state),
        .I3(in_stream_TVALID),
        .I4(ack_in_t_reg_0),
        .I5(Q),
        .O(\state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h88F8FFFF)) 
    \state[1]_i_1 
       (.I0(\FSM_sequential_state_reg[0]_0 ),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(state),
        .I3(in_stream_TVALID),
        .I4(Q),
        .O(\state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(Q),
        .R(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(state),
        .S(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \trunc_ln1_reg_935[2]_i_1 
       (.I0(Q),
        .I1(ap_enable_reg_pp0_iter1),
        .O(E));
endmodule

(* ORIG_REF_NAME = "conv2d_regslice_both" *) 
module cnn_pipeline_conv2d_0_1_conv2d_regslice_both_0
   (out_stream_TREADY_int_regslice,
    out_stream_TVALID,
    D,
    \out_stream_TSTRB_reg_reg[1] ,
    ack_in_t_reg_0,
    E,
    \FSM_sequential_state_reg[0]_0 ,
    ap_ready,
    \FSM_sequential_state_reg[0]_1 ,
    out_stream_TDATA,
    ap_rst_n_inv,
    ap_clk,
    ap_enable_reg_pp0_iter1,
    Q,
    out_stream_TREADY,
    \data_p2_reg[1]_0 ,
    \data_p2_reg[1]_1 ,
    \data_p1_reg[15]_0 ,
    load_p2,
    \data_p1_reg[15]_1 ,
    grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg,
    ap_start,
    \data_p2_reg[15]_0 );
  output out_stream_TREADY_int_regslice;
  output out_stream_TVALID;
  output [1:0]D;
  output [1:0]\out_stream_TSTRB_reg_reg[1] ;
  output ack_in_t_reg_0;
  output [0:0]E;
  output [0:0]\FSM_sequential_state_reg[0]_0 ;
  output ap_ready;
  output \FSM_sequential_state_reg[0]_1 ;
  output [15:0]out_stream_TDATA;
  input ap_rst_n_inv;
  input ap_clk;
  input ap_enable_reg_pp0_iter1;
  input [2:0]Q;
  input out_stream_TREADY;
  input [1:0]\data_p2_reg[1]_0 ;
  input [1:0]\data_p2_reg[1]_1 ;
  input [15:0]\data_p1_reg[15]_0 ;
  input load_p2;
  input [15:0]\data_p1_reg[15]_1 ;
  input grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg;
  input ap_start;
  input [15:0]\data_p2_reg[15]_0 ;

  wire [1:0]D;
  wire [0:0]E;
  wire [0:0]\FSM_sequential_state_reg[0]_0 ;
  wire \FSM_sequential_state_reg[0]_1 ;
  wire [2:0]Q;
  wire ack_in_t_i_1__1_n_0;
  wire ack_in_t_reg_0;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1;
  wire ap_ready;
  wire ap_rst_n_inv;
  wire ap_start;
  wire [15:0]\data_p1_reg[15]_0 ;
  wire [15:0]\data_p1_reg[15]_1 ;
  wire [15:0]data_p2;
  wire [15:0]\data_p2_reg[15]_0 ;
  wire [1:0]\data_p2_reg[1]_0 ;
  wire [1:0]\data_p2_reg[1]_1 ;
  wire grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg;
  wire load_p1;
  wire load_p2;
  wire [1:0]next__0;
  wire [15:0]out_stream_TDATA;
  wire out_stream_TREADY;
  wire out_stream_TREADY_int_regslice;
  wire [1:0]\out_stream_TSTRB_reg_reg[1] ;
  wire out_stream_TVALID;
  wire [15:0]p_0_in;
  wire [1:1]state;
  wire \state[0]_i_1__0_n_0 ;
  wire \state[1]_i_1__0_n_0 ;
  wire [1:0]state__0;

  LUT6 #(
    .INIT(64'hBBFBFBFBFBFBFBFB)) 
    \FSM_sequential_state[0]_i_1__0 
       (.I0(out_stream_TREADY),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(Q[1]),
        .I5(out_stream_TREADY_int_regslice),
        .O(next__0[0]));
  LUT6 #(
    .INIT(64'h8080FF80FF00FF00)) 
    \FSM_sequential_state[1]_i_1__0 
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(Q[1]),
        .I2(out_stream_TREADY_int_regslice),
        .I3(state__0[1]),
        .I4(out_stream_TREADY),
        .I5(state__0[0]),
        .O(next__0[1]));
  (* FSM_ENCODED_STATES = "ZERO:01,TWO:10,ONE:11,iSTATE:00" *) 
  FDSE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(next__0[0]),
        .Q(state__0[0]),
        .S(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "ZERO:01,TWO:10,ONE:11,iSTATE:00" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(next__0[1]),
        .Q(state__0[1]),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hAA2AFFAAFFFFAAAA)) 
    ack_in_t_i_1__1
       (.I0(out_stream_TREADY_int_regslice),
        .I1(Q[1]),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(out_stream_TREADY),
        .I4(state__0[0]),
        .I5(state__0[1]),
        .O(ack_in_t_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ack_in_t_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ack_in_t_i_1__1_n_0),
        .Q(out_stream_TREADY_int_regslice),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h8F00FFFF8F008F00)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(state__0[0]),
        .I1(out_stream_TREADY),
        .I2(state__0[1]),
        .I3(Q[2]),
        .I4(ap_start),
        .I5(Q[0]),
        .O(\FSM_sequential_state_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    \ap_CS_fsm[7]_i_2 
       (.I0(state__0[0]),
        .I1(out_stream_TREADY),
        .I2(state__0[1]),
        .O(\FSM_sequential_state_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'hA222)) 
    ap_ready_INST_0
       (.I0(Q[2]),
        .I1(state__0[1]),
        .I2(out_stream_TREADY),
        .I3(state__0[0]),
        .O(ap_ready));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \data_p1[0]_i_1__1 
       (.I0(data_p2[0]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\data_p1_reg[15]_0 [0]),
        .I4(load_p2),
        .I5(\data_p1_reg[15]_1 [0]),
        .O(p_0_in[0]));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \data_p1[10]_i_1 
       (.I0(data_p2[10]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\data_p1_reg[15]_0 [10]),
        .I4(load_p2),
        .I5(\data_p1_reg[15]_1 [10]),
        .O(p_0_in[10]));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \data_p1[11]_i_1 
       (.I0(data_p2[11]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\data_p1_reg[15]_0 [11]),
        .I4(load_p2),
        .I5(\data_p1_reg[15]_1 [11]),
        .O(p_0_in[11]));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \data_p1[12]_i_1 
       (.I0(data_p2[12]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\data_p1_reg[15]_0 [12]),
        .I4(load_p2),
        .I5(\data_p1_reg[15]_1 [12]),
        .O(p_0_in[12]));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \data_p1[13]_i_1 
       (.I0(data_p2[13]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\data_p1_reg[15]_0 [13]),
        .I4(load_p2),
        .I5(\data_p1_reg[15]_1 [13]),
        .O(p_0_in[13]));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \data_p1[14]_i_1 
       (.I0(data_p2[14]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\data_p1_reg[15]_0 [14]),
        .I4(load_p2),
        .I5(\data_p1_reg[15]_1 [14]),
        .O(p_0_in[14]));
  LUT6 #(
    .INIT(64'hA2222222C0000000)) 
    \data_p1[15]_i_1__0 
       (.I0(out_stream_TREADY),
        .I1(state__0[0]),
        .I2(out_stream_TREADY_int_regslice),
        .I3(Q[1]),
        .I4(ap_enable_reg_pp0_iter1),
        .I5(state__0[1]),
        .O(load_p1));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \data_p1[15]_i_2 
       (.I0(data_p2[15]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\data_p1_reg[15]_0 [15]),
        .I4(load_p2),
        .I5(\data_p1_reg[15]_1 [15]),
        .O(p_0_in[15]));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \data_p1[1]_i_1 
       (.I0(data_p2[1]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\data_p1_reg[15]_0 [1]),
        .I4(load_p2),
        .I5(\data_p1_reg[15]_1 [1]),
        .O(p_0_in[1]));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \data_p1[2]_i_1 
       (.I0(data_p2[2]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\data_p1_reg[15]_0 [2]),
        .I4(load_p2),
        .I5(\data_p1_reg[15]_1 [2]),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \data_p1[3]_i_1 
       (.I0(data_p2[3]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\data_p1_reg[15]_0 [3]),
        .I4(load_p2),
        .I5(\data_p1_reg[15]_1 [3]),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \data_p1[4]_i_1 
       (.I0(data_p2[4]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\data_p1_reg[15]_0 [4]),
        .I4(load_p2),
        .I5(\data_p1_reg[15]_1 [4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \data_p1[5]_i_1 
       (.I0(data_p2[5]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\data_p1_reg[15]_0 [5]),
        .I4(load_p2),
        .I5(\data_p1_reg[15]_1 [5]),
        .O(p_0_in[5]));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \data_p1[6]_i_1 
       (.I0(data_p2[6]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\data_p1_reg[15]_0 [6]),
        .I4(load_p2),
        .I5(\data_p1_reg[15]_1 [6]),
        .O(p_0_in[6]));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \data_p1[7]_i_1 
       (.I0(data_p2[7]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\data_p1_reg[15]_0 [7]),
        .I4(load_p2),
        .I5(\data_p1_reg[15]_1 [7]),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \data_p1[8]_i_1 
       (.I0(data_p2[8]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\data_p1_reg[15]_0 [8]),
        .I4(load_p2),
        .I5(\data_p1_reg[15]_1 [8]),
        .O(p_0_in[8]));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \data_p1[9]_i_1 
       (.I0(data_p2[9]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\data_p1_reg[15]_0 [9]),
        .I4(load_p2),
        .I5(\data_p1_reg[15]_1 [9]),
        .O(p_0_in[9]));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[0] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[0]),
        .Q(out_stream_TDATA[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[10] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[10]),
        .Q(out_stream_TDATA[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[11] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[11]),
        .Q(out_stream_TDATA[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[12] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[12]),
        .Q(out_stream_TDATA[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[13] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[13]),
        .Q(out_stream_TDATA[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[14] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[14]),
        .Q(out_stream_TDATA[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[15] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[15]),
        .Q(out_stream_TDATA[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[1] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[1]),
        .Q(out_stream_TDATA[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[2] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[2]),
        .Q(out_stream_TDATA[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[3] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[3]),
        .Q(out_stream_TDATA[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[4] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[4]),
        .Q(out_stream_TDATA[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[5] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[5]),
        .Q(out_stream_TDATA[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[6] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[6]),
        .Q(out_stream_TDATA[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[7] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[7]),
        .Q(out_stream_TDATA[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[8] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[8]),
        .Q(out_stream_TDATA[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[9] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[9]),
        .Q(out_stream_TDATA[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'hEAAA)) 
    \data_p2[0]_i_1 
       (.I0(\data_p2_reg[1]_0 [0]),
        .I1(out_stream_TREADY_int_regslice),
        .I2(Q[1]),
        .I3(ap_enable_reg_pp0_iter1),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hEAAA)) 
    \data_p2[0]_i_1__0 
       (.I0(\data_p2_reg[1]_1 [0]),
        .I1(out_stream_TREADY_int_regslice),
        .I2(Q[1]),
        .I3(ap_enable_reg_pp0_iter1),
        .O(\out_stream_TSTRB_reg_reg[1] [0]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'hEAAA)) 
    \data_p2[1]_i_2 
       (.I0(\data_p2_reg[1]_0 [1]),
        .I1(out_stream_TREADY_int_regslice),
        .I2(Q[1]),
        .I3(ap_enable_reg_pp0_iter1),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hEAAA)) 
    \data_p2[1]_i_2__0 
       (.I0(\data_p2_reg[1]_1 [1]),
        .I1(out_stream_TREADY_int_regslice),
        .I2(Q[1]),
        .I3(ap_enable_reg_pp0_iter1),
        .O(\out_stream_TSTRB_reg_reg[1] [1]));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[0] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(\data_p2_reg[15]_0 [0]),
        .Q(data_p2[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[10] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(\data_p2_reg[15]_0 [10]),
        .Q(data_p2[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[11] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(\data_p2_reg[15]_0 [11]),
        .Q(data_p2[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[12] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(\data_p2_reg[15]_0 [12]),
        .Q(data_p2[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[13] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(\data_p2_reg[15]_0 [13]),
        .Q(data_p2[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[14] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(\data_p2_reg[15]_0 [14]),
        .Q(data_p2[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[15] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(\data_p2_reg[15]_0 [15]),
        .Q(data_p2[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[1] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(\data_p2_reg[15]_0 [1]),
        .Q(data_p2[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[2] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(\data_p2_reg[15]_0 [2]),
        .Q(data_p2[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[3] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(\data_p2_reg[15]_0 [3]),
        .Q(data_p2[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[4] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(\data_p2_reg[15]_0 [4]),
        .Q(data_p2[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[5] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(\data_p2_reg[15]_0 [5]),
        .Q(data_p2[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[6] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(\data_p2_reg[15]_0 [6]),
        .Q(data_p2[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[7] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(\data_p2_reg[15]_0 [7]),
        .Q(data_p2[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[8] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(\data_p2_reg[15]_0 [8]),
        .Q(data_p2[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[9] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(\data_p2_reg[15]_0 [9]),
        .Q(data_p2[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    \p_0_reg_377[15]_i_1 
       (.I0(out_stream_TREADY_int_regslice),
        .I1(Q[1]),
        .I2(ap_enable_reg_pp0_iter1),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h70FF)) 
    \rem_fu_100[3]_i_3 
       (.I0(out_stream_TREADY_int_regslice),
        .I1(Q[1]),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_ap_start_reg),
        .O(ack_in_t_reg_0));
  LUT6 #(
    .INIT(64'hFC4C4C4C4C4C4C4C)) 
    \state[0]_i_1__0 
       (.I0(out_stream_TREADY),
        .I1(out_stream_TVALID),
        .I2(state),
        .I3(out_stream_TREADY_int_regslice),
        .I4(Q[1]),
        .I5(ap_enable_reg_pp0_iter1),
        .O(\state[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF2AAAFFFFFFFF)) 
    \state[1]_i_1__0 
       (.I0(state),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(Q[1]),
        .I3(out_stream_TREADY_int_regslice),
        .I4(out_stream_TREADY),
        .I5(out_stream_TVALID),
        .O(\state[1]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\state[0]_i_1__0_n_0 ),
        .Q(out_stream_TVALID),
        .R(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\state[1]_i_1__0_n_0 ),
        .Q(state),
        .S(ap_rst_n_inv));
endmodule

(* ORIG_REF_NAME = "conv2d_regslice_both" *) 
module cnn_pipeline_conv2d_0_1_conv2d_regslice_both_2
   (ack_in_t_reg_0,
    E,
    Q,
    \state_reg[0]_0 ,
    \data_p1_reg[15]_0 ,
    ap_rst_n_inv,
    ap_clk,
    ap_enable_reg_pp0_iter1,
    grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg,
    ack_in_t_reg_1,
    weight_stream_TVALID,
    \state_reg[0]_1 ,
    weight_stream_TDATA);
  output ack_in_t_reg_0;
  output [0:0]E;
  output [0:0]Q;
  output \state_reg[0]_0 ;
  output [15:0]\data_p1_reg[15]_0 ;
  input ap_rst_n_inv;
  input ap_clk;
  input ap_enable_reg_pp0_iter1;
  input grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg;
  input ack_in_t_reg_1;
  input weight_stream_TVALID;
  input [0:0]\state_reg[0]_1 ;
  input [15:0]weight_stream_TDATA;

  wire [0:0]E;
  wire [0:0]Q;
  wire ack_in_t_i_1__0_n_0;
  wire ack_in_t_reg_0;
  wire ack_in_t_reg_1;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1;
  wire ap_rst_n_inv;
  wire [15:0]\data_p1_reg[15]_0 ;
  wire [15:0]data_p2;
  wire grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg;
  wire load_p1;
  wire load_p2;
  wire [1:0]next__0;
  wire [15:0]p_0_in;
  wire [1:1]state;
  wire \state[0]_i_1__1_n_0 ;
  wire \state[1]_i_1__1_n_0 ;
  wire [1:0]state__0;
  wire \state_reg[0]_0 ;
  wire [0:0]\state_reg[0]_1 ;
  wire [15:0]weight_stream_TDATA;
  wire weight_stream_TVALID;

  LUT6 #(
    .INIT(64'h80FF80FFFFFF80FF)) 
    \FSM_sequential_state[0]_i_1__4 
       (.I0(Q),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(\state_reg[0]_1 ),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .I5(weight_stream_TVALID),
        .O(next__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'hDDC0FF00)) 
    \FSM_sequential_state[1]_i_1__4 
       (.I0(ack_in_t_reg_1),
        .I1(weight_stream_TVALID),
        .I2(ack_in_t_reg_0),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .O(next__0[1]));
  (* FSM_ENCODED_STATES = "ZERO:01,TWO:10,ONE:11,iSTATE:00" *) 
  FDSE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(next__0[0]),
        .Q(state__0[0]),
        .S(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "ZERO:01,TWO:10,ONE:11,iSTATE:00" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(next__0[1]),
        .Q(state__0[1]),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'hDFFF0CF0)) 
    ack_in_t_i_1__0
       (.I0(weight_stream_TVALID),
        .I1(ack_in_t_reg_1),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(ack_in_t_reg_0),
        .O(ack_in_t_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ack_in_t_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ack_in_t_i_1__0_n_0),
        .Q(ack_in_t_reg_0),
        .R(ap_rst_n_inv));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[0]_i_1__3 
       (.I0(data_p2[0]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(weight_stream_TDATA[0]),
        .O(p_0_in[0]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[10]_i_1__1 
       (.I0(data_p2[10]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(weight_stream_TDATA[10]),
        .O(p_0_in[10]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[11]_i_1__1 
       (.I0(data_p2[11]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(weight_stream_TDATA[11]),
        .O(p_0_in[11]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[12]_i_1__1 
       (.I0(data_p2[12]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(weight_stream_TDATA[12]),
        .O(p_0_in[12]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[13]_i_1__1 
       (.I0(data_p2[13]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(weight_stream_TDATA[13]),
        .O(p_0_in[13]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[14]_i_1__1 
       (.I0(data_p2[14]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(weight_stream_TDATA[14]),
        .O(p_0_in[14]));
  LUT6 #(
    .INIT(64'hB808080808080808)) 
    \data_p1[15]_i_1__1 
       (.I0(weight_stream_TVALID),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\state_reg[0]_1 ),
        .I4(ap_enable_reg_pp0_iter1),
        .I5(Q),
        .O(load_p1));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[15]_i_2__1 
       (.I0(data_p2[15]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(weight_stream_TDATA[15]),
        .O(p_0_in[15]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[1]_i_1__3 
       (.I0(data_p2[1]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(weight_stream_TDATA[1]),
        .O(p_0_in[1]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[2]_i_1__1 
       (.I0(data_p2[2]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(weight_stream_TDATA[2]),
        .O(p_0_in[2]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[3]_i_1__1 
       (.I0(data_p2[3]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(weight_stream_TDATA[3]),
        .O(p_0_in[3]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[4]_i_1__1 
       (.I0(data_p2[4]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(weight_stream_TDATA[4]),
        .O(p_0_in[4]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[5]_i_1__1 
       (.I0(data_p2[5]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(weight_stream_TDATA[5]),
        .O(p_0_in[5]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[6]_i_1__1 
       (.I0(data_p2[6]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(weight_stream_TDATA[6]),
        .O(p_0_in[6]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[7]_i_1__1 
       (.I0(data_p2[7]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(weight_stream_TDATA[7]),
        .O(p_0_in[7]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[8]_i_1__1 
       (.I0(data_p2[8]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(weight_stream_TDATA[8]),
        .O(p_0_in[8]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[9]_i_1__1 
       (.I0(data_p2[9]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(weight_stream_TDATA[9]),
        .O(p_0_in[9]));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[0] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[0]),
        .Q(\data_p1_reg[15]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[10] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[10]),
        .Q(\data_p1_reg[15]_0 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[11] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[11]),
        .Q(\data_p1_reg[15]_0 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[12] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[12]),
        .Q(\data_p1_reg[15]_0 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[13] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[13]),
        .Q(\data_p1_reg[15]_0 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[14] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[14]),
        .Q(\data_p1_reg[15]_0 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[15] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[15]),
        .Q(\data_p1_reg[15]_0 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[1] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[1]),
        .Q(\data_p1_reg[15]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[2] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[2]),
        .Q(\data_p1_reg[15]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[3] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[3]),
        .Q(\data_p1_reg[15]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[4] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[4]),
        .Q(\data_p1_reg[15]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[5] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[5]),
        .Q(\data_p1_reg[15]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[6] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[6]),
        .Q(\data_p1_reg[15]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[7] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[7]),
        .Q(\data_p1_reg[15]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[8] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[8]),
        .Q(\data_p1_reg[15]_0 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[9] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[9]),
        .Q(\data_p1_reg[15]_0 [9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \data_p2[15]_i_1__1 
       (.I0(ack_in_t_reg_0),
        .I1(weight_stream_TVALID),
        .O(load_p2));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[0] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(weight_stream_TDATA[0]),
        .Q(data_p2[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[10] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(weight_stream_TDATA[10]),
        .Q(data_p2[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[11] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(weight_stream_TDATA[11]),
        .Q(data_p2[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[12] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(weight_stream_TDATA[12]),
        .Q(data_p2[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[13] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(weight_stream_TDATA[13]),
        .Q(data_p2[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[14] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(weight_stream_TDATA[14]),
        .Q(data_p2[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[15] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(weight_stream_TDATA[15]),
        .Q(data_p2[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[1] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(weight_stream_TDATA[1]),
        .Q(data_p2[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[2] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(weight_stream_TDATA[2]),
        .Q(data_p2[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[3] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(weight_stream_TDATA[3]),
        .Q(data_p2[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[4] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(weight_stream_TDATA[4]),
        .Q(data_p2[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[5] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(weight_stream_TDATA[5]),
        .Q(data_p2[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[6] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(weight_stream_TDATA[6]),
        .Q(data_p2[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[7] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(weight_stream_TDATA[7]),
        .Q(data_p2[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[8] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(weight_stream_TDATA[8]),
        .Q(data_p2[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[9] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(weight_stream_TDATA[9]),
        .Q(data_p2[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h4F)) 
    \rem_fu_90[3]_i_4 
       (.I0(Q),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(grp_conv2d_Pipeline_READ_WEIGHTS_fu_289_ap_start_reg),
        .O(\state_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hFF7FFF7FF0000000)) 
    \state[0]_i_1__1 
       (.I0(\state_reg[0]_1 ),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(state),
        .I3(weight_stream_TVALID),
        .I4(ack_in_t_reg_0),
        .I5(Q),
        .O(\state[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'h88F8FFFF)) 
    \state[1]_i_1__1 
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(\state_reg[0]_1 ),
        .I2(state),
        .I3(weight_stream_TVALID),
        .I4(Q),
        .O(\state[1]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\state[0]_i_1__1_n_0 ),
        .Q(Q),
        .R(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\state[1]_i_1__1_n_0 ),
        .Q(state),
        .S(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \trunc_ln83_reg_479[1]_i_1 
       (.I0(Q),
        .I1(ap_enable_reg_pp0_iter1),
        .O(E));
endmodule

(* ORIG_REF_NAME = "conv2d_regslice_both" *) 
module cnn_pipeline_conv2d_0_1_conv2d_regslice_both__parameterized0
   (out_stream_TKEEP,
    ap_rst_n_inv,
    ap_clk,
    out_stream_TREADY_int_regslice,
    Q,
    ap_enable_reg_pp0_iter1,
    \data_p1_reg[1]_0 ,
    load_p2,
    out_stream_TREADY,
    D);
  output [1:0]out_stream_TKEEP;
  input ap_rst_n_inv;
  input ap_clk;
  input out_stream_TREADY_int_regslice;
  input [0:0]Q;
  input ap_enable_reg_pp0_iter1;
  input [1:0]\data_p1_reg[1]_0 ;
  input load_p2;
  input out_stream_TREADY;
  input [1:0]D;

  wire [1:0]D;
  wire [0:0]Q;
  wire ack_in_t_i_1__2_n_0;
  wire ack_in_t_reg_n_0;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1;
  wire ap_rst_n_inv;
  wire \data_p1[0]_i_1_n_0 ;
  wire \data_p1[1]_i_2_n_0 ;
  wire [1:0]\data_p1_reg[1]_0 ;
  wire [1:0]data_p2;
  wire load_p1;
  wire load_p2;
  wire load_p2_0;
  wire [1:0]next__0;
  wire [1:0]out_stream_TKEEP;
  wire out_stream_TREADY;
  wire out_stream_TREADY_int_regslice;
  wire [1:0]state__0;

  LUT6 #(
    .INIT(64'hFFFF7F00FFFFFFFF)) 
    \FSM_sequential_state[0]_i_1__1 
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(Q),
        .I2(out_stream_TREADY_int_regslice),
        .I3(state__0[0]),
        .I4(out_stream_TREADY),
        .I5(state__0[1]),
        .O(next__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'hF7C0F700)) 
    \FSM_sequential_state[1]_i_1__1 
       (.I0(out_stream_TREADY),
        .I1(state__0[0]),
        .I2(load_p2),
        .I3(state__0[1]),
        .I4(ack_in_t_reg_n_0),
        .O(next__0[1]));
  (* FSM_ENCODED_STATES = "ZERO:01,TWO:10,ONE:11,iSTATE:00" *) 
  FDSE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(next__0[0]),
        .Q(state__0[0]),
        .S(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "ZERO:01,TWO:10,ONE:11,iSTATE:00" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(next__0[1]),
        .Q(state__0[1]),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'hFF7F3C0C)) 
    ack_in_t_i_1__2
       (.I0(load_p2),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(out_stream_TREADY),
        .I4(ack_in_t_reg_n_0),
        .O(ack_in_t_i_1__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ack_in_t_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ack_in_t_i_1__2_n_0),
        .Q(ack_in_t_reg_n_0),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hFBFBFB08)) 
    \data_p1[0]_i_1 
       (.I0(data_p2[0]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\data_p1_reg[1]_0 [0]),
        .I4(load_p2),
        .O(\data_p1[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hD000000088888888)) 
    \data_p1[1]_i_1__0 
       (.I0(state__0[1]),
        .I1(out_stream_TREADY),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(Q),
        .I4(out_stream_TREADY_int_regslice),
        .I5(state__0[0]),
        .O(load_p1));
  LUT5 #(
    .INIT(32'hFBFBFB08)) 
    \data_p1[1]_i_2 
       (.I0(data_p2[1]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\data_p1_reg[1]_0 [1]),
        .I4(load_p2),
        .O(\data_p1[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[0] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[0]_i_1_n_0 ),
        .Q(out_stream_TKEEP[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[1] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[1]_i_2_n_0 ),
        .Q(out_stream_TKEEP[1]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h8000)) 
    \data_p2[1]_i_1 
       (.I0(ack_in_t_reg_n_0),
        .I1(out_stream_TREADY_int_regslice),
        .I2(Q),
        .I3(ap_enable_reg_pp0_iter1),
        .O(load_p2_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[0] 
       (.C(ap_clk),
        .CE(load_p2_0),
        .D(D[0]),
        .Q(data_p2[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[1] 
       (.C(ap_clk),
        .CE(load_p2_0),
        .D(D[1]),
        .Q(data_p2[1]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "conv2d_regslice_both" *) 
module cnn_pipeline_conv2d_0_1_conv2d_regslice_both__parameterized0_1
   (out_stream_TSTRB,
    ap_rst_n_inv,
    ap_clk,
    out_stream_TREADY_int_regslice,
    Q,
    ap_enable_reg_pp0_iter1,
    \data_p1_reg[1]_0 ,
    load_p2,
    out_stream_TREADY,
    D);
  output [1:0]out_stream_TSTRB;
  input ap_rst_n_inv;
  input ap_clk;
  input out_stream_TREADY_int_regslice;
  input [0:0]Q;
  input ap_enable_reg_pp0_iter1;
  input [1:0]\data_p1_reg[1]_0 ;
  input load_p2;
  input out_stream_TREADY;
  input [1:0]D;

  wire [1:0]D;
  wire [0:0]Q;
  wire ack_in_t_i_1__3_n_0;
  wire ack_in_t_reg_n_0;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1;
  wire ap_rst_n_inv;
  wire \data_p1[0]_i_1__0_n_0 ;
  wire \data_p1[1]_i_2__0_n_0 ;
  wire [1:0]\data_p1_reg[1]_0 ;
  wire [1:0]data_p2;
  wire load_p1;
  wire load_p2;
  wire load_p2_0;
  wire [1:0]next__0;
  wire out_stream_TREADY;
  wire out_stream_TREADY_int_regslice;
  wire [1:0]out_stream_TSTRB;
  wire [1:0]state__0;

  LUT6 #(
    .INIT(64'hFFFF7F00FFFFFFFF)) 
    \FSM_sequential_state[0]_i_1__2 
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(Q),
        .I2(out_stream_TREADY_int_regslice),
        .I3(state__0[0]),
        .I4(out_stream_TREADY),
        .I5(state__0[1]),
        .O(next__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'hEECC0CCC)) 
    \FSM_sequential_state[1]_i_1__2 
       (.I0(ack_in_t_reg_n_0),
        .I1(state__0[1]),
        .I2(out_stream_TREADY),
        .I3(state__0[0]),
        .I4(load_p2),
        .O(next__0[1]));
  (* FSM_ENCODED_STATES = "ZERO:01,TWO:10,ONE:11,iSTATE:00" *) 
  FDSE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(next__0[0]),
        .Q(state__0[0]),
        .S(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "ZERO:01,TWO:10,ONE:11,iSTATE:00" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(next__0[1]),
        .Q(state__0[1]),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'hFF7F3C0C)) 
    ack_in_t_i_1__3
       (.I0(load_p2),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(out_stream_TREADY),
        .I4(ack_in_t_reg_n_0),
        .O(ack_in_t_i_1__3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ack_in_t_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ack_in_t_i_1__3_n_0),
        .Q(ack_in_t_reg_n_0),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hFBFBFB08)) 
    \data_p1[0]_i_1__0 
       (.I0(data_p2[0]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\data_p1_reg[1]_0 [0]),
        .I4(load_p2),
        .O(\data_p1[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hD000000088888888)) 
    \data_p1[1]_i_1__1 
       (.I0(state__0[1]),
        .I1(out_stream_TREADY),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(Q),
        .I4(out_stream_TREADY_int_regslice),
        .I5(state__0[0]),
        .O(load_p1));
  LUT5 #(
    .INIT(32'hFBFBFB08)) 
    \data_p1[1]_i_2__0 
       (.I0(data_p2[1]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\data_p1_reg[1]_0 [1]),
        .I4(load_p2),
        .O(\data_p1[1]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[0] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[0]_i_1__0_n_0 ),
        .Q(out_stream_TSTRB[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[1] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[1]_i_2__0_n_0 ),
        .Q(out_stream_TSTRB[1]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h8000)) 
    \data_p2[1]_i_1__0 
       (.I0(ack_in_t_reg_n_0),
        .I1(out_stream_TREADY_int_regslice),
        .I2(Q),
        .I3(ap_enable_reg_pp0_iter1),
        .O(load_p2_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[0] 
       (.C(ap_clk),
        .CE(load_p2_0),
        .D(D[0]),
        .Q(data_p2[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[1] 
       (.C(ap_clk),
        .CE(load_p2_0),
        .D(D[1]),
        .Q(data_p2[1]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "conv2d_regslice_both" *) 
module cnn_pipeline_conv2d_0_1_conv2d_regslice_both__parameterized1
   (ack_in_t_reg_0,
    data_p2,
    out_stream_TLAST,
    ap_rst_n_inv,
    ap_clk,
    \data_p2_reg[0]_0 ,
    grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_out_stream_TLAST,
    load_p2,
    out_stream_TLAST_reg,
    out_stream_TREADY,
    ap_enable_reg_pp0_iter1,
    Q,
    out_stream_TREADY_int_regslice);
  output ack_in_t_reg_0;
  output [0:0]data_p2;
  output [0:0]out_stream_TLAST;
  input ap_rst_n_inv;
  input ap_clk;
  input \data_p2_reg[0]_0 ;
  input [0:0]grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_out_stream_TLAST;
  input load_p2;
  input [0:0]out_stream_TLAST_reg;
  input out_stream_TREADY;
  input ap_enable_reg_pp0_iter1;
  input [0:0]Q;
  input out_stream_TREADY_int_regslice;

  wire [0:0]Q;
  wire ack_in_t_i_1__4_n_0;
  wire ack_in_t_reg_0;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1;
  wire ap_rst_n_inv;
  wire \data_p1[0]_i_1__4_n_0 ;
  wire \data_p1[0]_i_2_n_0 ;
  wire [0:0]data_p2;
  wire \data_p2_reg[0]_0 ;
  wire [0:0]grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_out_stream_TLAST;
  wire load_p2;
  wire [1:0]next__0;
  wire [0:0]out_stream_TLAST;
  wire [0:0]out_stream_TLAST_reg;
  wire out_stream_TREADY;
  wire out_stream_TREADY_int_regslice;
  wire [1:0]state__0;

  LUT6 #(
    .INIT(64'hFFFF7F00FFFFFFFF)) 
    \FSM_sequential_state[0]_i_1__3 
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(Q),
        .I2(out_stream_TREADY_int_regslice),
        .I3(state__0[0]),
        .I4(out_stream_TREADY),
        .I5(state__0[1]),
        .O(next__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'hEECC0CCC)) 
    \FSM_sequential_state[1]_i_1__3 
       (.I0(ack_in_t_reg_0),
        .I1(state__0[1]),
        .I2(out_stream_TREADY),
        .I3(state__0[0]),
        .I4(load_p2),
        .O(next__0[1]));
  (* FSM_ENCODED_STATES = "ZERO:01,TWO:10,ONE:11,iSTATE:00" *) 
  FDSE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(next__0[0]),
        .Q(state__0[0]),
        .S(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "ZERO:01,TWO:10,ONE:11,iSTATE:00" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(next__0[1]),
        .Q(state__0[1]),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'hFF7F3C0C)) 
    ack_in_t_i_1__4
       (.I0(load_p2),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(out_stream_TREADY),
        .I4(ack_in_t_reg_0),
        .O(ack_in_t_i_1__4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ack_in_t_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ack_in_t_i_1__4_n_0),
        .Q(ack_in_t_reg_0),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hAEFFBFBFA2008080)) 
    \data_p1[0]_i_1__4 
       (.I0(\data_p1[0]_i_2_n_0 ),
        .I1(state__0[1]),
        .I2(out_stream_TREADY),
        .I3(load_p2),
        .I4(state__0[0]),
        .I5(out_stream_TLAST),
        .O(\data_p1[0]_i_1__4_n_0 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \data_p1[0]_i_2 
       (.I0(data_p2),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358_out_stream_TLAST),
        .I4(load_p2),
        .I5(out_stream_TLAST_reg),
        .O(\data_p1[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\data_p1[0]_i_1__4_n_0 ),
        .Q(out_stream_TLAST),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\data_p2_reg[0]_0 ),
        .Q(data_p2),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
