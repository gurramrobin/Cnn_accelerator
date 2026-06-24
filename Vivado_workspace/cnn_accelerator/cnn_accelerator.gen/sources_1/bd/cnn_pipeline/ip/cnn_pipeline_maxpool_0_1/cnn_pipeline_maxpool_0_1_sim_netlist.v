// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Fri Jun 12 17:37:19 2026
// Host        : DESKTOP-1HEQ2M2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/CHINNA/Vivado_workspace/cnn_accelerator/cnn_accelerator.gen/sources_1/bd/cnn_pipeline/ip/cnn_pipeline_maxpool_0_1/cnn_pipeline_maxpool_0_1_sim_netlist.v
// Design      : cnn_pipeline_maxpool_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "cnn_pipeline_maxpool_0_1,maxpool,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "HLS" *) 
(* X_CORE_INFO = "maxpool,Vivado 2025.2" *) (* hls_module = "yes" *) 
(* NotValidForBitStream *)
module cnn_pipeline_maxpool_0_1
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
    out_stream_TDATA,
    out_stream_TKEEP,
    out_stream_TLAST,
    out_stream_TREADY,
    out_stream_TSTRB,
    out_stream_TVALID);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF in_stream:out_stream, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 199998001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN cnn_pipeline_zynq_ultra_ps_e_0_1_pl_clk0, INSERT_VIP 0" *) input ap_clk;
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
  wire [15:0]in_stream_TDATA;
  wire in_stream_TREADY;
  wire in_stream_TVALID;
  wire [15:0]out_stream_TDATA;
  wire [1:0]out_stream_TKEEP;
  wire [0:0]out_stream_TLAST;
  wire out_stream_TREADY;
  wire [1:0]out_stream_TSTRB;
  wire out_stream_TVALID;

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
  cnn_pipeline_maxpool_0_1_maxpool inst
       (.ap_clk(ap_clk),
        .ap_done(ap_done),
        .ap_idle(ap_idle),
        .ap_ready(ap_ready),
        .ap_rst_n(ap_rst_n),
        .ap_start(ap_start),
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
        .out_stream_TVALID(out_stream_TVALID));
endmodule

(* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "maxpool" *) (* ap_ST_fsm_state1 = "8'b00000001" *) 
(* ap_ST_fsm_state2 = "8'b00000010" *) (* ap_ST_fsm_state3 = "8'b00000100" *) (* ap_ST_fsm_state4 = "8'b00001000" *) 
(* ap_ST_fsm_state5 = "8'b00010000" *) (* ap_ST_fsm_state6 = "8'b00100000" *) (* ap_ST_fsm_state7 = "8'b01000000" *) 
(* ap_ST_fsm_state8 = "8'b10000000" *) (* hls_module = "yes" *) 
module cnn_pipeline_maxpool_0_1_maxpool
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
  output [15:0]out_stream_TDATA;
  output out_stream_TVALID;
  input out_stream_TREADY;
  output [1:0]out_stream_TKEEP;
  output [1:0]out_stream_TSTRB;
  output [0:0]out_stream_TLAST;

  wire \ap_CS_fsm_reg_n_5_[0] ;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state3;
  wire ap_CS_fsm_state4;
  wire ap_CS_fsm_state5;
  wire ap_CS_fsm_state6;
  wire ap_CS_fsm_state7;
  wire ap_CS_fsm_state8;
  wire [7:0]ap_NS_fsm;
  wire ap_block_pp0_stage0_subdone;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp0_iter1_1;
  wire ap_idle;
  wire ap_ready;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire [1:0]ap_sig_allocacmp_i_1;
  wire ap_start;
  wire [0:0]first_iter_0_fu_306_p2;
  wire grp_maxpool_Pipeline_POOL_OR_POOL_OC_fu_160_ap_start_reg;
  wire grp_maxpool_Pipeline_POOL_OR_POOL_OC_fu_160_n_25;
  wire grp_maxpool_Pipeline_POOL_OR_POOL_OC_fu_160_n_26;
  wire grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg;
  wire grp_maxpool_Pipeline_READ_INPUT_fu_132_n_10;
  wire grp_maxpool_Pipeline_READ_INPUT_fu_132_n_11;
  wire grp_maxpool_Pipeline_READ_INPUT_fu_132_n_12;
  wire grp_maxpool_Pipeline_READ_INPUT_fu_132_n_13;
  wire grp_maxpool_Pipeline_READ_INPUT_fu_132_n_14;
  wire grp_maxpool_Pipeline_READ_INPUT_fu_132_n_15;
  wire grp_maxpool_Pipeline_READ_INPUT_fu_132_n_16;
  wire grp_maxpool_Pipeline_READ_INPUT_fu_132_n_33;
  wire grp_maxpool_Pipeline_READ_INPUT_fu_132_n_34;
  wire grp_maxpool_Pipeline_READ_INPUT_fu_132_n_35;
  wire grp_maxpool_Pipeline_READ_INPUT_fu_132_n_36;
  wire grp_maxpool_Pipeline_READ_INPUT_fu_132_n_37;
  wire grp_maxpool_Pipeline_READ_INPUT_fu_132_n_38;
  wire grp_maxpool_Pipeline_READ_INPUT_fu_132_n_39;
  wire grp_maxpool_Pipeline_READ_INPUT_fu_132_n_40;
  wire grp_maxpool_Pipeline_READ_INPUT_fu_132_n_73;
  wire grp_maxpool_Pipeline_READ_INPUT_fu_132_n_9;
  wire grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_ap_start_reg;
  wire grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_n_14;
  wire [0:0]grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_out_stream_TLAST;
  wire i_fu_6211_out;
  wire [15:0]in_stream_TDATA;
  wire in_stream_TREADY;
  wire in_stream_TREADY_int_regslice;
  wire in_stream_TVALID;
  wire in_stream_TVALID_int_regslice;
  wire load_p2;
  wire load_p2_0;
  wire [15:0]max_val_fu_378_p3;
  wire [15:0]out_stream_TDATA;
  wire [15:0]out_stream_TDATA_reg;
  wire out_stream_TDATA_reg1;
  wire [0:0]\^out_stream_TKEEP ;
  wire [0:0]out_stream_TLAST;
  wire [0:0]out_stream_TLAST_reg;
  wire out_stream_TREADY;
  wire out_stream_TREADY_int_regslice;
  wire [0:0]\^out_stream_TSTRB ;
  wire out_stream_TVALID;
  wire p_0_in;
  wire regslice_both_in_stream_V_data_V_U_n_10;
  wire regslice_both_in_stream_V_data_V_U_n_11;
  wire regslice_both_in_stream_V_data_V_U_n_12;
  wire regslice_both_in_stream_V_data_V_U_n_13;
  wire regslice_both_in_stream_V_data_V_U_n_14;
  wire regslice_both_in_stream_V_data_V_U_n_15;
  wire regslice_both_in_stream_V_data_V_U_n_16;
  wire regslice_both_in_stream_V_data_V_U_n_17;
  wire regslice_both_in_stream_V_data_V_U_n_18;
  wire regslice_both_in_stream_V_data_V_U_n_19;
  wire regslice_both_in_stream_V_data_V_U_n_20;
  wire regslice_both_in_stream_V_data_V_U_n_21;
  wire regslice_both_in_stream_V_data_V_U_n_22;
  wire regslice_both_in_stream_V_data_V_U_n_23;
  wire regslice_both_in_stream_V_data_V_U_n_8;
  wire regslice_both_in_stream_V_data_V_U_n_9;
  wire regslice_both_out_stream_V_data_V_U_n_11;
  wire regslice_both_out_stream_V_keep_V_U_n_6;
  wire regslice_both_out_stream_V_strb_V_U_n_6;
  wire [15:0]select_ln68_2_fu_156_p3;
  wire [15:0]select_ln68_2_reg_185;
  wire [15:0]v_3_fu_426_p3;
  wire [15:0]v_4_fu_402_p3;

  assign ap_done = ap_ready;
  assign out_stream_TKEEP[1] = \^out_stream_TKEEP [0];
  assign out_stream_TKEEP[0] = \^out_stream_TKEEP [0];
  assign out_stream_TSTRB[1] = \^out_stream_TSTRB [0];
  assign out_stream_TSTRB[0] = \^out_stream_TSTRB [0];
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(ap_start),
        .I1(\ap_CS_fsm_reg_n_5_[0] ),
        .O(ap_NS_fsm[1]));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(\ap_CS_fsm_reg_n_5_[0] ),
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
        .D(ap_NS_fsm[3]),
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
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h2)) 
    ap_idle_INST_0
       (.I0(\ap_CS_fsm_reg_n_5_[0] ),
        .I1(ap_start),
        .O(ap_idle));
  cnn_pipeline_maxpool_0_1_maxpool_maxpool_Pipeline_POOL_OR_POOL_OC grp_maxpool_Pipeline_POOL_OR_POOL_OC_fu_160
       (.CO(p_0_in),
        .D(ap_NS_fsm[5:4]),
        .DI({grp_maxpool_Pipeline_READ_INPUT_fu_132_n_9,grp_maxpool_Pipeline_READ_INPUT_fu_132_n_10,grp_maxpool_Pipeline_READ_INPUT_fu_132_n_11,grp_maxpool_Pipeline_READ_INPUT_fu_132_n_12,grp_maxpool_Pipeline_READ_INPUT_fu_132_n_13,grp_maxpool_Pipeline_READ_INPUT_fu_132_n_14,grp_maxpool_Pipeline_READ_INPUT_fu_132_n_15,grp_maxpool_Pipeline_READ_INPUT_fu_132_n_16}),
        .Q({ap_CS_fsm_state5,ap_CS_fsm_state4}),
        .S({grp_maxpool_Pipeline_READ_INPUT_fu_132_n_33,grp_maxpool_Pipeline_READ_INPUT_fu_132_n_34,grp_maxpool_Pipeline_READ_INPUT_fu_132_n_35,grp_maxpool_Pipeline_READ_INPUT_fu_132_n_36,grp_maxpool_Pipeline_READ_INPUT_fu_132_n_37,grp_maxpool_Pipeline_READ_INPUT_fu_132_n_38,grp_maxpool_Pipeline_READ_INPUT_fu_132_n_39,grp_maxpool_Pipeline_READ_INPUT_fu_132_n_40}),
        .\ap_CS_fsm_reg[3] (grp_maxpool_Pipeline_POOL_OR_POOL_OC_fu_160_n_25),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .ap_sig_allocacmp_i_1(ap_sig_allocacmp_i_1),
        .first_iter_0_fu_306_p2(first_iter_0_fu_306_p2),
        .grp_maxpool_Pipeline_POOL_OR_POOL_OC_fu_160_ap_start_reg(grp_maxpool_Pipeline_POOL_OR_POOL_OC_fu_160_ap_start_reg),
        .max_val_fu_378_p3(max_val_fu_378_p3),
        .\or_s_fu_96_reg[1]_0 (grp_maxpool_Pipeline_POOL_OR_POOL_OC_fu_160_n_26),
        .\output_3_fu_92_reg[15]_0 (select_ln68_2_fu_156_p3),
        .v_3_fu_426_p3(v_3_fu_426_p3),
        .v_4_fu_402_p3(v_4_fu_402_p3));
  FDRE #(
    .INIT(1'b0)) 
    grp_maxpool_Pipeline_POOL_OR_POOL_OC_fu_160_ap_start_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(grp_maxpool_Pipeline_POOL_OR_POOL_OC_fu_160_n_25),
        .Q(grp_maxpool_Pipeline_POOL_OR_POOL_OC_fu_160_ap_start_reg),
        .R(ap_rst_n_inv));
  cnn_pipeline_maxpool_0_1_maxpool_maxpool_Pipeline_READ_INPUT grp_maxpool_Pipeline_READ_INPUT_fu_132
       (.CO(p_0_in),
        .D(ap_NS_fsm[3:2]),
        .DI({grp_maxpool_Pipeline_READ_INPUT_fu_132_n_9,grp_maxpool_Pipeline_READ_INPUT_fu_132_n_10,grp_maxpool_Pipeline_READ_INPUT_fu_132_n_11,grp_maxpool_Pipeline_READ_INPUT_fu_132_n_12,grp_maxpool_Pipeline_READ_INPUT_fu_132_n_13,grp_maxpool_Pipeline_READ_INPUT_fu_132_n_14,grp_maxpool_Pipeline_READ_INPUT_fu_132_n_15,grp_maxpool_Pipeline_READ_INPUT_fu_132_n_16}),
        .Q(in_stream_TVALID_int_regslice),
        .S({grp_maxpool_Pipeline_READ_INPUT_fu_132_n_33,grp_maxpool_Pipeline_READ_INPUT_fu_132_n_34,grp_maxpool_Pipeline_READ_INPUT_fu_132_n_35,grp_maxpool_Pipeline_READ_INPUT_fu_132_n_36,grp_maxpool_Pipeline_READ_INPUT_fu_132_n_37,grp_maxpool_Pipeline_READ_INPUT_fu_132_n_38,grp_maxpool_Pipeline_READ_INPUT_fu_132_n_39,grp_maxpool_Pipeline_READ_INPUT_fu_132_n_40}),
        .\ap_CS_fsm_reg[3] ({ap_CS_fsm_state3,ap_CS_fsm_state2}),
        .ap_block_pp0_stage0_subdone(ap_block_pp0_stage0_subdone),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .first_iter_0_fu_306_p2(first_iter_0_fu_306_p2),
        .grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg(grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg),
        .grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg_reg(grp_maxpool_Pipeline_READ_INPUT_fu_132_n_73),
        .in_stream_TREADY_int_regslice(in_stream_TREADY_int_regslice),
        .\input_15_fu_156_reg[15]_0 ({regslice_both_in_stream_V_data_V_U_n_8,regslice_both_in_stream_V_data_V_U_n_9,regslice_both_in_stream_V_data_V_U_n_10,regslice_both_in_stream_V_data_V_U_n_11,regslice_both_in_stream_V_data_V_U_n_12,regslice_both_in_stream_V_data_V_U_n_13,regslice_both_in_stream_V_data_V_U_n_14,regslice_both_in_stream_V_data_V_U_n_15,regslice_both_in_stream_V_data_V_U_n_16,regslice_both_in_stream_V_data_V_U_n_17,regslice_both_in_stream_V_data_V_U_n_18,regslice_both_in_stream_V_data_V_U_n_19,regslice_both_in_stream_V_data_V_U_n_20,regslice_both_in_stream_V_data_V_U_n_21,regslice_both_in_stream_V_data_V_U_n_22,regslice_both_in_stream_V_data_V_U_n_23}),
        .max_val_fu_378_p3(max_val_fu_378_p3),
        .v_3_fu_426_p3(v_3_fu_426_p3),
        .v_4_fu_402_p3(v_4_fu_402_p3),
        .\v_4_reg_657_reg[15] (grp_maxpool_Pipeline_POOL_OR_POOL_OC_fu_160_n_26));
  FDRE #(
    .INIT(1'b0)) 
    grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(grp_maxpool_Pipeline_READ_INPUT_fu_132_n_73),
        .Q(grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg),
        .R(ap_rst_n_inv));
  cnn_pipeline_maxpool_0_1_maxpool_maxpool_Pipeline_WRITE_OUTPUT grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184
       (.D(ap_NS_fsm[7:6]),
        .E(out_stream_TDATA_reg1),
        .Q({ap_CS_fsm_state8,ap_CS_fsm_state7,ap_CS_fsm_state6}),
        .\ap_CS_fsm_reg[5] (grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_n_14),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1_1),
        .ap_ready(ap_ready),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .ap_sig_allocacmp_i_1(ap_sig_allocacmp_i_1),
        .\data_p2_reg[1] (regslice_both_out_stream_V_keep_V_U_n_6),
        .\data_p2_reg[1]_0 (regslice_both_out_stream_V_strb_V_U_n_6),
        .grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_ap_start_reg(grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_ap_start_reg),
        .grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_out_stream_TLAST(grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_out_stream_TLAST),
        .load_p2(load_p2_0),
        .load_p2_0(load_p2),
        .out_stream_TREADY_int_regslice(out_stream_TREADY_int_regslice),
        .\select_ln68_2_reg_185_reg[15]_0 (select_ln68_2_reg_185),
        .\select_ln68_2_reg_185_reg[15]_1 (i_fu_6211_out),
        .\select_ln68_2_reg_185_reg[15]_2 (select_ln68_2_fu_156_p3));
  FDRE #(
    .INIT(1'b0)) 
    grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_ap_start_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_n_14),
        .Q(grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_ap_start_reg),
        .R(ap_rst_n_inv));
  FDRE \out_stream_TDATA_reg_reg[0] 
       (.C(ap_clk),
        .CE(out_stream_TDATA_reg1),
        .D(select_ln68_2_reg_185[0]),
        .Q(out_stream_TDATA_reg[0]),
        .R(1'b0));
  FDRE \out_stream_TDATA_reg_reg[10] 
       (.C(ap_clk),
        .CE(out_stream_TDATA_reg1),
        .D(select_ln68_2_reg_185[10]),
        .Q(out_stream_TDATA_reg[10]),
        .R(1'b0));
  FDRE \out_stream_TDATA_reg_reg[11] 
       (.C(ap_clk),
        .CE(out_stream_TDATA_reg1),
        .D(select_ln68_2_reg_185[11]),
        .Q(out_stream_TDATA_reg[11]),
        .R(1'b0));
  FDRE \out_stream_TDATA_reg_reg[12] 
       (.C(ap_clk),
        .CE(out_stream_TDATA_reg1),
        .D(select_ln68_2_reg_185[12]),
        .Q(out_stream_TDATA_reg[12]),
        .R(1'b0));
  FDRE \out_stream_TDATA_reg_reg[13] 
       (.C(ap_clk),
        .CE(out_stream_TDATA_reg1),
        .D(select_ln68_2_reg_185[13]),
        .Q(out_stream_TDATA_reg[13]),
        .R(1'b0));
  FDRE \out_stream_TDATA_reg_reg[14] 
       (.C(ap_clk),
        .CE(out_stream_TDATA_reg1),
        .D(select_ln68_2_reg_185[14]),
        .Q(out_stream_TDATA_reg[14]),
        .R(1'b0));
  FDRE \out_stream_TDATA_reg_reg[15] 
       (.C(ap_clk),
        .CE(out_stream_TDATA_reg1),
        .D(select_ln68_2_reg_185[15]),
        .Q(out_stream_TDATA_reg[15]),
        .R(1'b0));
  FDRE \out_stream_TDATA_reg_reg[1] 
       (.C(ap_clk),
        .CE(out_stream_TDATA_reg1),
        .D(select_ln68_2_reg_185[1]),
        .Q(out_stream_TDATA_reg[1]),
        .R(1'b0));
  FDRE \out_stream_TDATA_reg_reg[2] 
       (.C(ap_clk),
        .CE(out_stream_TDATA_reg1),
        .D(select_ln68_2_reg_185[2]),
        .Q(out_stream_TDATA_reg[2]),
        .R(1'b0));
  FDRE \out_stream_TDATA_reg_reg[3] 
       (.C(ap_clk),
        .CE(out_stream_TDATA_reg1),
        .D(select_ln68_2_reg_185[3]),
        .Q(out_stream_TDATA_reg[3]),
        .R(1'b0));
  FDRE \out_stream_TDATA_reg_reg[4] 
       (.C(ap_clk),
        .CE(out_stream_TDATA_reg1),
        .D(select_ln68_2_reg_185[4]),
        .Q(out_stream_TDATA_reg[4]),
        .R(1'b0));
  FDRE \out_stream_TDATA_reg_reg[5] 
       (.C(ap_clk),
        .CE(out_stream_TDATA_reg1),
        .D(select_ln68_2_reg_185[5]),
        .Q(out_stream_TDATA_reg[5]),
        .R(1'b0));
  FDRE \out_stream_TDATA_reg_reg[6] 
       (.C(ap_clk),
        .CE(out_stream_TDATA_reg1),
        .D(select_ln68_2_reg_185[6]),
        .Q(out_stream_TDATA_reg[6]),
        .R(1'b0));
  FDRE \out_stream_TDATA_reg_reg[7] 
       (.C(ap_clk),
        .CE(out_stream_TDATA_reg1),
        .D(select_ln68_2_reg_185[7]),
        .Q(out_stream_TDATA_reg[7]),
        .R(1'b0));
  FDRE \out_stream_TDATA_reg_reg[8] 
       (.C(ap_clk),
        .CE(out_stream_TDATA_reg1),
        .D(select_ln68_2_reg_185[8]),
        .Q(out_stream_TDATA_reg[8]),
        .R(1'b0));
  FDRE \out_stream_TDATA_reg_reg[9] 
       (.C(ap_clk),
        .CE(out_stream_TDATA_reg1),
        .D(select_ln68_2_reg_185[9]),
        .Q(out_stream_TDATA_reg[9]),
        .R(1'b0));
  FDRE \out_stream_TLAST_reg_reg[0] 
       (.C(ap_clk),
        .CE(out_stream_TDATA_reg1),
        .D(grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_out_stream_TLAST),
        .Q(out_stream_TLAST_reg),
        .R(1'b0));
  cnn_pipeline_maxpool_0_1_maxpool_regslice_both regslice_both_in_stream_V_data_V_U
       (.Q(ap_CS_fsm_state3),
        .ack_in_t_reg_0(in_stream_TREADY),
        .ap_block_pp0_stage0_subdone(ap_block_pp0_stage0_subdone),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .ap_rst_n_inv(ap_rst_n_inv),
        .\data_p1_reg[15]_0 ({regslice_both_in_stream_V_data_V_U_n_8,regslice_both_in_stream_V_data_V_U_n_9,regslice_both_in_stream_V_data_V_U_n_10,regslice_both_in_stream_V_data_V_U_n_11,regslice_both_in_stream_V_data_V_U_n_12,regslice_both_in_stream_V_data_V_U_n_13,regslice_both_in_stream_V_data_V_U_n_14,regslice_both_in_stream_V_data_V_U_n_15,regslice_both_in_stream_V_data_V_U_n_16,regslice_both_in_stream_V_data_V_U_n_17,regslice_both_in_stream_V_data_V_U_n_18,regslice_both_in_stream_V_data_V_U_n_19,regslice_both_in_stream_V_data_V_U_n_20,regslice_both_in_stream_V_data_V_U_n_21,regslice_both_in_stream_V_data_V_U_n_22,regslice_both_in_stream_V_data_V_U_n_23}),
        .in_stream_TDATA(in_stream_TDATA),
        .in_stream_TREADY_int_regslice(in_stream_TREADY_int_regslice),
        .in_stream_TVALID(in_stream_TVALID),
        .\state_reg[0]_0 (in_stream_TVALID_int_regslice));
  cnn_pipeline_maxpool_0_1_maxpool_regslice_both_0 regslice_both_out_stream_V_data_V_U
       (.D(select_ln68_2_reg_185),
        .E(out_stream_TDATA_reg1),
        .Q({ap_CS_fsm_state8,ap_CS_fsm_state7,\ap_CS_fsm_reg_n_5_[0] }),
        .ack_in_t_reg_0(i_fu_6211_out),
        .ack_in_t_reg_1(regslice_both_out_stream_V_data_V_U_n_11),
        .\ap_CS_fsm_reg[0] (ap_NS_fsm[0]),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1_1),
        .ap_ready(ap_ready),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .ap_start(ap_start),
        .out_stream_TDATA(out_stream_TDATA),
        .out_stream_TDATA_reg(out_stream_TDATA_reg),
        .out_stream_TREADY(out_stream_TREADY),
        .out_stream_TREADY_int_regslice(out_stream_TREADY_int_regslice),
        .out_stream_TVALID(out_stream_TVALID));
  cnn_pipeline_maxpool_0_1_maxpool_regslice_both__parameterized0 regslice_both_out_stream_V_keep_V_U
       (.Q(ap_CS_fsm_state7),
        .ack_in_t_reg_0(regslice_both_out_stream_V_keep_V_U_n_6),
        .ack_in_t_reg_1(regslice_both_out_stream_V_data_V_U_n_11),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1_1),
        .ap_rst_n_inv(ap_rst_n_inv),
        .load_p2(load_p2_0),
        .out_stream_TKEEP(\^out_stream_TKEEP ),
        .out_stream_TREADY(out_stream_TREADY),
        .out_stream_TREADY_int_regslice(out_stream_TREADY_int_regslice));
  cnn_pipeline_maxpool_0_1_maxpool_regslice_both__parameterized1 regslice_both_out_stream_V_last_V_U
       (.E(out_stream_TDATA_reg1),
        .Q(ap_CS_fsm_state7),
        .ack_in_t_reg_0(regslice_both_out_stream_V_data_V_U_n_11),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1_1),
        .ap_rst_n_inv(ap_rst_n_inv),
        .grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_out_stream_TLAST(grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_out_stream_TLAST),
        .out_stream_TLAST(out_stream_TLAST),
        .out_stream_TLAST_reg(out_stream_TLAST_reg),
        .out_stream_TREADY(out_stream_TREADY),
        .out_stream_TREADY_int_regslice(out_stream_TREADY_int_regslice));
  cnn_pipeline_maxpool_0_1_maxpool_regslice_both__parameterized0_1 regslice_both_out_stream_V_strb_V_U
       (.Q(ap_CS_fsm_state7),
        .ack_in_t_reg_0(regslice_both_out_stream_V_strb_V_U_n_6),
        .ack_in_t_reg_1(regslice_both_out_stream_V_data_V_U_n_11),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1_1),
        .ap_rst_n_inv(ap_rst_n_inv),
        .load_p2(load_p2),
        .out_stream_TREADY(out_stream_TREADY),
        .out_stream_TREADY_int_regslice(out_stream_TREADY_int_regslice),
        .out_stream_TSTRB(\^out_stream_TSTRB ));
endmodule

(* ORIG_REF_NAME = "maxpool_flow_control_loop_pipe_sequential_init" *) 
module cnn_pipeline_maxpool_0_1_maxpool_flow_control_loop_pipe_sequential_init
   (grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_ap_start_reg_reg,
    D,
    \icmp_ln70_reg_190_reg[0] ,
    ap_sig_allocacmp_i_1,
    i_2_fu_122_p2,
    \ap_CS_fsm_reg[5] ,
    \i_fu_62_reg[0] ,
    ap_rst_n_inv,
    ap_clk,
    grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_ap_start_reg,
    out_stream_TREADY_int_regslice,
    Q,
    ap_enable_reg_pp0_iter1_reg,
    ap_rst_n,
    ap_ready,
    \i_fu_62_reg[2] ,
    \i_fu_62_reg[2]_0 ,
    \i_fu_62_reg[2]_1 ,
    grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_out_stream_TLAST);
  output grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_ap_start_reg_reg;
  output [1:0]D;
  output \icmp_ln70_reg_190_reg[0] ;
  output [1:0]ap_sig_allocacmp_i_1;
  output [2:0]i_2_fu_122_p2;
  output \ap_CS_fsm_reg[5] ;
  output \i_fu_62_reg[0] ;
  input ap_rst_n_inv;
  input ap_clk;
  input grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_ap_start_reg;
  input out_stream_TREADY_int_regslice;
  input [2:0]Q;
  input ap_enable_reg_pp0_iter1_reg;
  input ap_rst_n;
  input ap_ready;
  input \i_fu_62_reg[2] ;
  input \i_fu_62_reg[2]_0 ;
  input \i_fu_62_reg[2]_1 ;
  input [0:0]grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_out_stream_TLAST;

  wire [1:0]D;
  wire [2:0]Q;
  wire \ap_CS_fsm[7]_i_2_n_5 ;
  wire \ap_CS_fsm_reg[5] ;
  wire ap_block_pp0_stage0_11001__0;
  wire ap_clk;
  wire ap_done_cache;
  wire ap_done_cache_i_1__1_n_5;
  wire ap_enable_reg_pp0_iter1_reg;
  wire ap_loop_init;
  wire ap_loop_init_int;
  wire ap_loop_init_int_i_1__1_n_5;
  wire ap_ready;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire [1:0]ap_sig_allocacmp_i_1;
  wire grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_ap_ready;
  wire grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_ap_start_reg;
  wire grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_ap_start_reg_reg;
  wire [0:0]grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_out_stream_TLAST;
  wire [2:0]i_2_fu_122_p2;
  wire \i_fu_62_reg[0] ;
  wire \i_fu_62_reg[2] ;
  wire \i_fu_62_reg[2]_0 ;
  wire \i_fu_62_reg[2]_1 ;
  wire \icmp_ln70_reg_190_reg[0] ;
  wire out_stream_TREADY_int_regslice;

  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'hAAAAEEAE)) 
    \ap_CS_fsm[6]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(ap_done_cache),
        .I3(grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_ap_start_reg),
        .I4(\ap_CS_fsm[7]_i_2_n_5 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hAA08FFFFAA08AA08)) 
    \ap_CS_fsm[7]_i_1 
       (.I0(Q[1]),
        .I1(ap_done_cache),
        .I2(grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_ap_start_reg),
        .I3(\ap_CS_fsm[7]_i_2_n_5 ),
        .I4(ap_ready),
        .I5(Q[2]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    \ap_CS_fsm[7]_i_2 
       (.I0(\i_fu_62_reg[2]_1 ),
        .I1(grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(\i_fu_62_reg[2]_0 ),
        .I4(\i_fu_62_reg[2] ),
        .I5(ap_block_pp0_stage0_11001__0),
        .O(\ap_CS_fsm[7]_i_2_n_5 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    ap_done_cache_i_1__1
       (.I0(\ap_CS_fsm[7]_i_2_n_5 ),
        .I1(grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_ap_start_reg),
        .I2(ap_done_cache),
        .O(ap_done_cache_i_1__1_n_5));
  FDRE #(
    .INIT(1'b0)) 
    ap_done_cache_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_done_cache_i_1__1_n_5),
        .Q(ap_done_cache),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h00000000BFAA0000)) 
    ap_enable_reg_pp0_iter1_i_1
       (.I0(grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_ap_start_reg),
        .I1(out_stream_TREADY_int_regslice),
        .I2(Q[1]),
        .I3(ap_enable_reg_pp0_iter1_reg),
        .I4(ap_rst_n),
        .I5(grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_ap_ready),
        .O(grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_ap_start_reg_reg));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'hFFFFD0FF)) 
    ap_loop_init_int_i_1__1
       (.I0(grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_ap_start_reg),
        .I1(ap_block_pp0_stage0_11001__0),
        .I2(ap_loop_init_int),
        .I3(ap_rst_n),
        .I4(\ap_CS_fsm[7]_i_2_n_5 ),
        .O(ap_loop_init_int_i_1__1_n_5));
  FDRE #(
    .INIT(1'b1)) 
    ap_loop_init_int_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_init_int_i_1__1_n_5),
        .Q(ap_loop_init_int),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_ap_start_reg_i_1
       (.I0(Q[0]),
        .I1(grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_ap_ready),
        .I2(grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_ap_start_reg),
        .O(\ap_CS_fsm_reg[5] ));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_ap_start_reg_i_2
       (.I0(ap_block_pp0_stage0_11001__0),
        .I1(\i_fu_62_reg[2] ),
        .I2(\i_fu_62_reg[2]_0 ),
        .I3(ap_loop_init_int),
        .I4(grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_ap_start_reg),
        .I5(\i_fu_62_reg[2]_1 ),
        .O(grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_ap_ready));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \i_fu_62[0]_i_1 
       (.I0(ap_loop_init_int),
        .I1(\i_fu_62_reg[2] ),
        .O(i_2_fu_122_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h12)) 
    \i_fu_62[1]_i_1 
       (.I0(\i_fu_62_reg[2] ),
        .I1(ap_loop_init_int),
        .I2(\i_fu_62_reg[2]_1 ),
        .O(i_2_fu_122_p2[1]));
  LUT6 #(
    .INIT(64'h00000000FF00FB00)) 
    \i_fu_62[2]_i_1 
       (.I0(\i_fu_62_reg[2] ),
        .I1(\i_fu_62_reg[2]_0 ),
        .I2(ap_loop_init_int),
        .I3(grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_ap_start_reg),
        .I4(\i_fu_62_reg[2]_1 ),
        .I5(ap_block_pp0_stage0_11001__0),
        .O(\i_fu_62_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h0708)) 
    \i_fu_62[2]_i_2 
       (.I0(\i_fu_62_reg[2] ),
        .I1(\i_fu_62_reg[2]_1 ),
        .I2(ap_loop_init_int),
        .I3(\i_fu_62_reg[2]_0 ),
        .O(i_2_fu_122_p2[2]));
  LUT3 #(
    .INIT(8'h2A)) 
    \i_fu_62[2]_i_3 
       (.I0(ap_enable_reg_pp0_iter1_reg),
        .I1(Q[1]),
        .I2(out_stream_TREADY_int_regslice),
        .O(ap_block_pp0_stage0_11001__0));
  LUT6 #(
    .INIT(64'h888888888888B888)) 
    \icmp_ln70_reg_190[0]_i_1 
       (.I0(grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_out_stream_TLAST),
        .I1(ap_block_pp0_stage0_11001__0),
        .I2(\i_fu_62_reg[2] ),
        .I3(\i_fu_62_reg[2]_1 ),
        .I4(ap_loop_init),
        .I5(\i_fu_62_reg[2]_0 ),
        .O(\icmp_ln70_reg_190_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \icmp_ln70_reg_190[0]_i_2 
       (.I0(ap_loop_init_int),
        .I1(grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_ap_start_reg),
        .O(ap_loop_init));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \select_ln68_2_reg_185[15]_i_3 
       (.I0(\i_fu_62_reg[2]_1 ),
        .I1(grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(ap_sig_allocacmp_i_1[1]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \select_ln68_2_reg_185[15]_i_4 
       (.I0(\i_fu_62_reg[2] ),
        .I1(grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(ap_sig_allocacmp_i_1[0]));
endmodule

(* ORIG_REF_NAME = "maxpool_flow_control_loop_pipe_sequential_init" *) 
module cnn_pipeline_maxpool_0_1_maxpool_flow_control_loop_pipe_sequential_init_2
   (D,
    \i_fu_92_reg[2] ,
    grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg_reg,
    E,
    SR,
    grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg_reg_0,
    grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg_reg_1,
    ap_rst_n_inv,
    ap_clk,
    grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg,
    Q,
    grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg_reg_2,
    ap_rst_n,
    \ap_CS_fsm_reg[3] ,
    \i_fu_92_reg[4] );
  output [1:0]D;
  output [4:0]\i_fu_92_reg[2] ;
  output grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg_reg;
  output [0:0]E;
  output [0:0]SR;
  output grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg_reg_0;
  output grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg_reg_1;
  input ap_rst_n_inv;
  input ap_clk;
  input grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg;
  input [0:0]Q;
  input grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg_reg_2;
  input ap_rst_n;
  input [1:0]\ap_CS_fsm_reg[3] ;
  input [4:0]\i_fu_92_reg[4] ;

  wire [1:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire \ap_CS_fsm[3]_i_2_n_5 ;
  wire [1:0]\ap_CS_fsm_reg[3] ;
  wire ap_clk;
  wire ap_done_cache;
  wire ap_done_cache_i_1_n_5;
  wire ap_loop_init;
  wire ap_loop_init_int;
  wire ap_loop_init_int_i_1_n_5;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg;
  wire grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg_reg;
  wire grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg_reg_0;
  wire grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg_reg_1;
  wire grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg_reg_2;
  wire [4:0]\i_fu_92_reg[2] ;
  wire [4:0]\i_fu_92_reg[4] ;
  wire [0:0]icmp_ln34_fu_301_p2__3;

  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hAAFBAAAA)) 
    \ap_CS_fsm[2]_i_1 
       (.I0(\ap_CS_fsm_reg[3] [0]),
        .I1(ap_done_cache),
        .I2(grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg),
        .I3(\ap_CS_fsm[3]_i_2_n_5 ),
        .I4(\ap_CS_fsm_reg[3] [1]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h8A88)) 
    \ap_CS_fsm[3]_i_1 
       (.I0(\ap_CS_fsm_reg[3] [1]),
        .I1(\ap_CS_fsm[3]_i_2_n_5 ),
        .I2(grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg),
        .I3(ap_done_cache),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h8088)) 
    \ap_CS_fsm[3]_i_2 
       (.I0(icmp_ln34_fu_301_p2__3),
        .I1(grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg),
        .I2(Q),
        .I3(grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg_reg_2),
        .O(\ap_CS_fsm[3]_i_2_n_5 ));
  LUT3 #(
    .INIT(8'hBA)) 
    ap_done_cache_i_1
       (.I0(\ap_CS_fsm[3]_i_2_n_5 ),
        .I1(grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg),
        .I2(ap_done_cache),
        .O(ap_done_cache_i_1_n_5));
  FDRE #(
    .INIT(1'b0)) 
    ap_done_cache_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_done_cache_i_1_n_5),
        .Q(ap_done_cache),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h0CAE0000)) 
    ap_enable_reg_pp0_iter1_i_1__1
       (.I0(grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg),
        .I1(grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg_reg_2),
        .I2(Q),
        .I3(icmp_ln34_fu_301_p2__3),
        .I4(ap_rst_n),
        .O(grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg_reg_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF7500FFFF)) 
    ap_loop_init_int_i_1
       (.I0(grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg),
        .I1(Q),
        .I2(grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg_reg_2),
        .I3(ap_loop_init_int),
        .I4(ap_rst_n),
        .I5(\ap_CS_fsm[3]_i_2_n_5 ),
        .O(ap_loop_init_int_i_1_n_5));
  FDRE #(
    .INIT(1'b1)) 
    ap_loop_init_int_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_init_int_i_1_n_5),
        .Q(ap_loop_init_int),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFF08AA)) 
    grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg_i_1
       (.I0(grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg),
        .I1(grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg_reg_2),
        .I2(Q),
        .I3(icmp_ln34_fu_301_p2__3),
        .I4(\ap_CS_fsm_reg[3] [0]),
        .O(grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \i_fu_92[0]_i_1 
       (.I0(ap_loop_init_int),
        .I1(\i_fu_92_reg[4] [0]),
        .O(\i_fu_92_reg[2] [0]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h12)) 
    \i_fu_92[1]_i_1 
       (.I0(\i_fu_92_reg[4] [0]),
        .I1(ap_loop_init_int),
        .I2(\i_fu_92_reg[4] [1]),
        .O(\i_fu_92_reg[2] [1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0708)) 
    \i_fu_92[2]_i_1 
       (.I0(\i_fu_92_reg[4] [0]),
        .I1(\i_fu_92_reg[4] [1]),
        .I2(ap_loop_init_int),
        .I3(\i_fu_92_reg[4] [2]),
        .O(\i_fu_92_reg[2] [2]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h007F0080)) 
    \i_fu_92[3]_i_1 
       (.I0(\i_fu_92_reg[4] [1]),
        .I1(\i_fu_92_reg[4] [0]),
        .I2(\i_fu_92_reg[4] [2]),
        .I3(ap_loop_init_int),
        .I4(\i_fu_92_reg[4] [3]),
        .O(\i_fu_92_reg[2] [3]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h80008080)) 
    \i_fu_92[4]_i_1 
       (.I0(grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg),
        .I1(icmp_ln34_fu_301_p2__3),
        .I2(ap_loop_init_int),
        .I3(Q),
        .I4(grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg_reg_2),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h4044)) 
    \i_fu_92[4]_i_2 
       (.I0(icmp_ln34_fu_301_p2__3),
        .I1(grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg),
        .I2(Q),
        .I3(grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg_reg_2),
        .O(E));
  LUT6 #(
    .INIT(64'h00007FFF00008000)) 
    \i_fu_92[4]_i_3 
       (.I0(\i_fu_92_reg[4] [2]),
        .I1(\i_fu_92_reg[4] [0]),
        .I2(\i_fu_92_reg[4] [1]),
        .I3(\i_fu_92_reg[4] [3]),
        .I4(ap_loop_init),
        .I5(\i_fu_92_reg[4] [4]),
        .O(\i_fu_92_reg[2] [4]));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \i_fu_92[4]_i_4 
       (.I0(\i_fu_92_reg[4] [3]),
        .I1(\i_fu_92_reg[4] [2]),
        .I2(\i_fu_92_reg[4] [4]),
        .I3(ap_loop_init),
        .I4(\i_fu_92_reg[4] [0]),
        .I5(\i_fu_92_reg[4] [1]),
        .O(icmp_ln34_fu_301_p2__3));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i_fu_92[4]_i_5 
       (.I0(ap_loop_init_int),
        .I1(grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg),
        .O(ap_loop_init));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h8088)) 
    \trunc_ln34_reg_597[1]_i_1 
       (.I0(grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(Q),
        .I3(grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg_reg_2),
        .O(grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg_reg));
endmodule

(* ORIG_REF_NAME = "maxpool_flow_control_loop_pipe_sequential_init" *) 
module cnn_pipeline_maxpool_0_1_maxpool_flow_control_loop_pipe_sequential_init_3
   (\or_s_fu_96_reg[1] ,
    ap_rst_n_0,
    D,
    \indvar_flatten_fu_100_reg[0] ,
    indvar_flatten_fu_1000,
    add_ln45_fu_252_p2,
    p_0_in,
    select_ln45_fu_292_p3,
    first_iter_0_fu_306_p2,
    \ap_CS_fsm_reg[3] ,
    \or_s_fu_96_reg[1]_0 ,
    ap_rst_n_inv,
    ap_clk,
    \icmp_ln58_reg_643_reg[0] ,
    grp_maxpool_Pipeline_POOL_OR_POOL_OC_fu_160_ap_start_reg,
    \icmp_ln58_reg_643_reg[0]_0 ,
    \icmp_ln58_reg_643_reg[0]_1 ,
    \icmp_ln58_reg_643_reg[0]_2 ,
    ap_rst_n,
    ap_done_cache_reg_0,
    ap_done_cache_reg_1,
    ap_done_cache_reg_2,
    Q);
  output \or_s_fu_96_reg[1] ;
  output ap_rst_n_0;
  output [1:0]D;
  output \indvar_flatten_fu_100_reg[0] ;
  output indvar_flatten_fu_1000;
  output [2:0]add_ln45_fu_252_p2;
  output p_0_in;
  output [1:0]select_ln45_fu_292_p3;
  output [0:0]first_iter_0_fu_306_p2;
  output \ap_CS_fsm_reg[3] ;
  output \or_s_fu_96_reg[1]_0 ;
  input ap_rst_n_inv;
  input ap_clk;
  input \icmp_ln58_reg_643_reg[0] ;
  input grp_maxpool_Pipeline_POOL_OR_POOL_OC_fu_160_ap_start_reg;
  input \icmp_ln58_reg_643_reg[0]_0 ;
  input \icmp_ln58_reg_643_reg[0]_1 ;
  input \icmp_ln58_reg_643_reg[0]_2 ;
  input ap_rst_n;
  input ap_done_cache_reg_0;
  input ap_done_cache_reg_1;
  input ap_done_cache_reg_2;
  input [1:0]Q;

  wire [1:0]D;
  wire [1:0]Q;
  wire [2:0]add_ln45_fu_252_p2;
  wire \ap_CS_fsm_reg[3] ;
  wire ap_clk;
  wire ap_done_cache;
  wire ap_done_cache_i_1__0_n_5;
  wire ap_done_cache_reg_0;
  wire ap_done_cache_reg_1;
  wire ap_done_cache_reg_2;
  wire ap_loop_init_int;
  wire ap_loop_init_int_i_1__0_n_5;
  wire ap_rst_n;
  wire ap_rst_n_0;
  wire ap_rst_n_inv;
  wire [0:0]first_iter_0_fu_306_p2;
  wire grp_maxpool_Pipeline_POOL_OR_POOL_OC_fu_160_ap_ready;
  wire grp_maxpool_Pipeline_POOL_OR_POOL_OC_fu_160_ap_start_reg;
  wire \icmp_ln58_reg_643_reg[0] ;
  wire \icmp_ln58_reg_643_reg[0]_0 ;
  wire \icmp_ln58_reg_643_reg[0]_1 ;
  wire \icmp_ln58_reg_643_reg[0]_2 ;
  wire indvar_flatten_fu_1000;
  wire \indvar_flatten_fu_100_reg[0] ;
  wire \or_s_fu_96_reg[1] ;
  wire \or_s_fu_96_reg[1]_0 ;
  wire p_0_in;
  wire [1:0]select_ln45_fu_292_p3;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hAAFBAAAA)) 
    \ap_CS_fsm[4]_i_1 
       (.I0(Q[0]),
        .I1(ap_done_cache),
        .I2(grp_maxpool_Pipeline_POOL_OR_POOL_OC_fu_160_ap_start_reg),
        .I3(grp_maxpool_Pipeline_POOL_OR_POOL_OC_fu_160_ap_ready),
        .I4(Q[1]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h8A88)) 
    \ap_CS_fsm[5]_i_1 
       (.I0(Q[1]),
        .I1(grp_maxpool_Pipeline_POOL_OR_POOL_OC_fu_160_ap_ready),
        .I2(grp_maxpool_Pipeline_POOL_OR_POOL_OC_fu_160_ap_start_reg),
        .I3(ap_done_cache),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \ap_CS_fsm[5]_i_2 
       (.I0(ap_done_cache_reg_0),
        .I1(grp_maxpool_Pipeline_POOL_OR_POOL_OC_fu_160_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(ap_done_cache_reg_1),
        .I4(ap_done_cache_reg_2),
        .O(grp_maxpool_Pipeline_POOL_OR_POOL_OC_fu_160_ap_ready));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    ap_done_cache_i_1__0
       (.I0(ap_done_cache_reg_2),
        .I1(ap_done_cache_reg_1),
        .I2(ap_loop_init_int),
        .I3(ap_done_cache_reg_0),
        .I4(grp_maxpool_Pipeline_POOL_OR_POOL_OC_fu_160_ap_start_reg),
        .I5(ap_done_cache),
        .O(ap_done_cache_i_1__0_n_5));
  FDRE #(
    .INIT(1'b0)) 
    ap_done_cache_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_done_cache_i_1__0_n_5),
        .Q(ap_done_cache),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hA0A0A0A0A080A0A0)) 
    ap_enable_reg_pp0_iter1_i_1__0
       (.I0(ap_rst_n),
        .I1(ap_done_cache_reg_0),
        .I2(grp_maxpool_Pipeline_POOL_OR_POOL_OC_fu_160_ap_start_reg),
        .I3(ap_loop_init_int),
        .I4(ap_done_cache_reg_1),
        .I5(ap_done_cache_reg_2),
        .O(ap_rst_n_0));
  LUT6 #(
    .INIT(64'h5F555F555F755F55)) 
    ap_loop_init_int_i_1__0
       (.I0(ap_rst_n),
        .I1(ap_done_cache_reg_0),
        .I2(grp_maxpool_Pipeline_POOL_OR_POOL_OC_fu_160_ap_start_reg),
        .I3(ap_loop_init_int),
        .I4(ap_done_cache_reg_1),
        .I5(ap_done_cache_reg_2),
        .O(ap_loop_init_int_i_1__0_n_5));
  FDRE #(
    .INIT(1'b1)) 
    ap_loop_init_int_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_init_int_i_1__0_n_5),
        .Q(ap_loop_init_int),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFAAAAFFEFAAAA)) 
    grp_maxpool_Pipeline_POOL_OR_POOL_OC_fu_160_ap_start_reg_i_1
       (.I0(Q[0]),
        .I1(ap_done_cache_reg_2),
        .I2(ap_done_cache_reg_1),
        .I3(ap_loop_init_int),
        .I4(grp_maxpool_Pipeline_POOL_OR_POOL_OC_fu_160_ap_start_reg),
        .I5(ap_done_cache_reg_0),
        .O(\ap_CS_fsm_reg[3] ));
  LUT6 #(
    .INIT(64'hC0EAC0C0D5C0D5D5)) 
    \icmp_ln58_reg_643[0]_i_1 
       (.I0(\icmp_ln58_reg_643_reg[0] ),
        .I1(grp_maxpool_Pipeline_POOL_OR_POOL_OC_fu_160_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(\icmp_ln58_reg_643_reg[0]_0 ),
        .I4(\icmp_ln58_reg_643_reg[0]_1 ),
        .I5(\icmp_ln58_reg_643_reg[0]_2 ),
        .O(\or_s_fu_96_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \indvar_flatten_fu_100[0]_i_1 
       (.I0(ap_loop_init_int),
        .I1(ap_done_cache_reg_2),
        .O(add_ln45_fu_252_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h12)) 
    \indvar_flatten_fu_100[1]_i_1 
       (.I0(ap_done_cache_reg_2),
        .I1(ap_loop_init_int),
        .I2(ap_done_cache_reg_0),
        .O(add_ln45_fu_252_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hCCCCC8CC)) 
    \indvar_flatten_fu_100[2]_i_1 
       (.I0(ap_done_cache_reg_0),
        .I1(grp_maxpool_Pipeline_POOL_OR_POOL_OC_fu_160_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(ap_done_cache_reg_1),
        .I4(ap_done_cache_reg_2),
        .O(indvar_flatten_fu_1000));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0708)) 
    \indvar_flatten_fu_100[2]_i_2 
       (.I0(ap_done_cache_reg_2),
        .I1(ap_done_cache_reg_0),
        .I2(ap_loop_init_int),
        .I3(ap_done_cache_reg_1),
        .O(add_ln45_fu_252_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    \oc_s_fu_76[0]_i_1 
       (.I0(ap_loop_init_int),
        .I1(grp_maxpool_Pipeline_POOL_OR_POOL_OC_fu_160_ap_start_reg),
        .I2(\icmp_ln58_reg_643_reg[0]_0 ),
        .O(first_iter_0_fu_306_p2));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFF00FB00)) 
    \oc_s_fu_76[1]_i_1 
       (.I0(ap_done_cache_reg_2),
        .I1(ap_done_cache_reg_1),
        .I2(ap_done_cache_reg_0),
        .I3(grp_maxpool_Pipeline_POOL_OR_POOL_OC_fu_160_ap_start_reg),
        .I4(ap_loop_init_int),
        .O(\indvar_flatten_fu_100_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oc_s_fu_76[1]_i_2 
       (.I0(\icmp_ln58_reg_643_reg[0]_0 ),
        .I1(ap_loop_init_int),
        .O(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h090A)) 
    \or_s_fu_96[0]_i_1 
       (.I0(\icmp_ln58_reg_643_reg[0]_2 ),
        .I1(\icmp_ln58_reg_643_reg[0]_0 ),
        .I2(ap_loop_init_int),
        .I3(\icmp_ln58_reg_643_reg[0]_1 ),
        .O(select_ln45_fu_292_p3[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00F70008)) 
    \or_s_fu_96[1]_i_1 
       (.I0(\icmp_ln58_reg_643_reg[0]_2 ),
        .I1(\icmp_ln58_reg_643_reg[0]_1 ),
        .I2(\icmp_ln58_reg_643_reg[0]_0 ),
        .I3(ap_loop_init_int),
        .I4(\icmp_ln58_reg_643_reg[0] ),
        .O(select_ln45_fu_292_p3[1]));
  LUT6 #(
    .INIT(64'h1500151500150000)) 
    \v_4_reg_657[15]_i_2 
       (.I0(\icmp_ln58_reg_643_reg[0] ),
        .I1(grp_maxpool_Pipeline_POOL_OR_POOL_OC_fu_160_ap_start_reg),
        .I2(ap_loop_init_int),
        .I3(\icmp_ln58_reg_643_reg[0]_0 ),
        .I4(\icmp_ln58_reg_643_reg[0]_1 ),
        .I5(\icmp_ln58_reg_643_reg[0]_2 ),
        .O(\or_s_fu_96_reg[1]_0 ));
endmodule

(* ORIG_REF_NAME = "maxpool_maxpool_Pipeline_POOL_OR_POOL_OC" *) 
module cnn_pipeline_maxpool_0_1_maxpool_maxpool_Pipeline_POOL_OR_POOL_OC
   (CO,
    first_iter_0_fu_306_p2,
    D,
    \output_3_fu_92_reg[15]_0 ,
    \ap_CS_fsm_reg[3] ,
    \or_s_fu_96_reg[1]_0 ,
    DI,
    S,
    ap_rst_n_inv,
    ap_clk,
    grp_maxpool_Pipeline_POOL_OR_POOL_OC_fu_160_ap_start_reg,
    ap_rst_n,
    Q,
    ap_sig_allocacmp_i_1,
    max_val_fu_378_p3,
    v_4_fu_402_p3,
    v_3_fu_426_p3);
  output [0:0]CO;
  output [0:0]first_iter_0_fu_306_p2;
  output [1:0]D;
  output [15:0]\output_3_fu_92_reg[15]_0 ;
  output \ap_CS_fsm_reg[3] ;
  output \or_s_fu_96_reg[1]_0 ;
  input [7:0]DI;
  input [7:0]S;
  input ap_rst_n_inv;
  input ap_clk;
  input grp_maxpool_Pipeline_POOL_OR_POOL_OC_fu_160_ap_start_reg;
  input ap_rst_n;
  input [1:0]Q;
  input [1:0]ap_sig_allocacmp_i_1;
  input [15:0]max_val_fu_378_p3;
  input [15:0]v_4_fu_402_p3;
  input [15:0]v_3_fu_426_p3;

  wire [0:0]CO;
  wire [1:0]D;
  wire [7:0]DI;
  wire [1:0]Q;
  wire [7:0]S;
  wire [2:0]add_ln45_fu_252_p2;
  wire \ap_CS_fsm_reg[3] ;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire [1:0]ap_sig_allocacmp_i_1;
  wire [0:0]first_iter_0_fu_306_p2;
  wire [0:0]first_iter_0_reg_635;
  wire flow_control_loop_pipe_sequential_init_U_n_5;
  wire flow_control_loop_pipe_sequential_init_U_n_6;
  wire flow_control_loop_pipe_sequential_init_U_n_9;
  wire grp_maxpool_Pipeline_POOL_OR_POOL_OC_fu_160_ap_start_reg;
  wire icmp_ln55_1_fu_469_p2_carry_i_10_n_5;
  wire icmp_ln55_1_fu_469_p2_carry_i_11_n_5;
  wire icmp_ln55_1_fu_469_p2_carry_i_12_n_5;
  wire icmp_ln55_1_fu_469_p2_carry_i_13_n_5;
  wire icmp_ln55_1_fu_469_p2_carry_i_14_n_5;
  wire icmp_ln55_1_fu_469_p2_carry_i_15_n_5;
  wire icmp_ln55_1_fu_469_p2_carry_i_16_n_5;
  wire icmp_ln55_1_fu_469_p2_carry_i_1_n_5;
  wire icmp_ln55_1_fu_469_p2_carry_i_2_n_5;
  wire icmp_ln55_1_fu_469_p2_carry_i_3_n_5;
  wire icmp_ln55_1_fu_469_p2_carry_i_4_n_5;
  wire icmp_ln55_1_fu_469_p2_carry_i_5_n_5;
  wire icmp_ln55_1_fu_469_p2_carry_i_6_n_5;
  wire icmp_ln55_1_fu_469_p2_carry_i_7_n_5;
  wire icmp_ln55_1_fu_469_p2_carry_i_8_n_5;
  wire icmp_ln55_1_fu_469_p2_carry_i_9_n_5;
  wire icmp_ln55_1_fu_469_p2_carry_n_10;
  wire icmp_ln55_1_fu_469_p2_carry_n_11;
  wire icmp_ln55_1_fu_469_p2_carry_n_12;
  wire icmp_ln55_1_fu_469_p2_carry_n_5;
  wire icmp_ln55_1_fu_469_p2_carry_n_6;
  wire icmp_ln55_1_fu_469_p2_carry_n_7;
  wire icmp_ln55_1_fu_469_p2_carry_n_8;
  wire icmp_ln55_1_fu_469_p2_carry_n_9;
  wire icmp_ln55_2_fu_479_p2_carry_i_10_n_5;
  wire icmp_ln55_2_fu_479_p2_carry_i_11_n_5;
  wire icmp_ln55_2_fu_479_p2_carry_i_12_n_5;
  wire icmp_ln55_2_fu_479_p2_carry_i_13_n_5;
  wire icmp_ln55_2_fu_479_p2_carry_i_14_n_5;
  wire icmp_ln55_2_fu_479_p2_carry_i_15_n_5;
  wire icmp_ln55_2_fu_479_p2_carry_i_16_n_5;
  wire icmp_ln55_2_fu_479_p2_carry_i_1_n_5;
  wire icmp_ln55_2_fu_479_p2_carry_i_2_n_5;
  wire icmp_ln55_2_fu_479_p2_carry_i_3_n_5;
  wire icmp_ln55_2_fu_479_p2_carry_i_4_n_5;
  wire icmp_ln55_2_fu_479_p2_carry_i_5_n_5;
  wire icmp_ln55_2_fu_479_p2_carry_i_6_n_5;
  wire icmp_ln55_2_fu_479_p2_carry_i_7_n_5;
  wire icmp_ln55_2_fu_479_p2_carry_i_8_n_5;
  wire icmp_ln55_2_fu_479_p2_carry_i_9_n_5;
  wire icmp_ln55_2_fu_479_p2_carry_n_10;
  wire icmp_ln55_2_fu_479_p2_carry_n_11;
  wire icmp_ln55_2_fu_479_p2_carry_n_12;
  wire icmp_ln55_2_fu_479_p2_carry_n_5;
  wire icmp_ln55_2_fu_479_p2_carry_n_6;
  wire icmp_ln55_2_fu_479_p2_carry_n_7;
  wire icmp_ln55_2_fu_479_p2_carry_n_8;
  wire icmp_ln55_2_fu_479_p2_carry_n_9;
  wire icmp_ln55_fu_372_p2_carry_n_10;
  wire icmp_ln55_fu_372_p2_carry_n_11;
  wire icmp_ln55_fu_372_p2_carry_n_12;
  wire icmp_ln55_fu_372_p2_carry_n_6;
  wire icmp_ln55_fu_372_p2_carry_n_7;
  wire icmp_ln55_fu_372_p2_carry_n_8;
  wire icmp_ln55_fu_372_p2_carry_n_9;
  wire \icmp_ln58_reg_643_reg_n_5_[0] ;
  wire indvar_flatten_fu_1000;
  wire \indvar_flatten_fu_100_reg_n_5_[0] ;
  wire \indvar_flatten_fu_100_reg_n_5_[1] ;
  wire \indvar_flatten_fu_100_reg_n_5_[2] ;
  wire [15:1]max_val_3_fu_473_p3;
  wire [15:0]max_val_4_fu_484_p3;
  wire [15:0]max_val_fu_378_p3;
  wire [15:0]max_val_reg_651;
  wire \oc_s_fu_76_reg_n_5_[0] ;
  wire \oc_s_fu_76_reg_n_5_[1] ;
  wire \or_s_fu_96_reg[1]_0 ;
  wire \or_s_fu_96_reg_n_5_[0] ;
  wire \or_s_fu_96_reg_n_5_[1] ;
  wire [15:0]output_1_fu_84;
  wire [0:0]output_1_fu_84_3;
  wire [15:0]output_2_fu_88;
  wire [0:0]output_2_fu_88_2;
  wire [15:0]output_3_fu_92;
  wire [0:0]output_3_fu_92_1;
  wire [15:0]\output_3_fu_92_reg[15]_0 ;
  wire [15:0]output_fu_80;
  wire [0:0]output_fu_80_0;
  wire p_0_in;
  wire [1:0]select_ln45_fu_292_p3;
  wire [15:0]v_3_fu_426_p3;
  wire [15:0]v_3_reg_663;
  wire [15:0]v_4_fu_402_p3;
  wire [15:0]v_4_reg_657;
  wire [7:0]NLW_icmp_ln55_1_fu_469_p2_carry_O_UNCONNECTED;
  wire [7:0]NLW_icmp_ln55_2_fu_479_p2_carry_O_UNCONNECTED;
  wire [7:0]NLW_icmp_ln55_fu_372_p2_carry_O_UNCONNECTED;

  LUT3 #(
    .INIT(8'h80)) 
    \__11/i_ 
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(first_iter_0_reg_635),
        .I2(\icmp_ln58_reg_643_reg_n_5_[0] ),
        .O(output_fu_80_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(flow_control_loop_pipe_sequential_init_U_n_6),
        .Q(ap_enable_reg_pp0_iter1),
        .R(1'b0));
  FDRE \first_iter_0_reg_635_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(first_iter_0_fu_306_p2),
        .Q(first_iter_0_reg_635),
        .R(1'b0));
  cnn_pipeline_maxpool_0_1_maxpool_flow_control_loop_pipe_sequential_init_3 flow_control_loop_pipe_sequential_init_U
       (.D(D),
        .Q(Q),
        .add_ln45_fu_252_p2(add_ln45_fu_252_p2),
        .\ap_CS_fsm_reg[3] (\ap_CS_fsm_reg[3] ),
        .ap_clk(ap_clk),
        .ap_done_cache_reg_0(\indvar_flatten_fu_100_reg_n_5_[1] ),
        .ap_done_cache_reg_1(\indvar_flatten_fu_100_reg_n_5_[2] ),
        .ap_done_cache_reg_2(\indvar_flatten_fu_100_reg_n_5_[0] ),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_0(flow_control_loop_pipe_sequential_init_U_n_6),
        .ap_rst_n_inv(ap_rst_n_inv),
        .first_iter_0_fu_306_p2(first_iter_0_fu_306_p2),
        .grp_maxpool_Pipeline_POOL_OR_POOL_OC_fu_160_ap_start_reg(grp_maxpool_Pipeline_POOL_OR_POOL_OC_fu_160_ap_start_reg),
        .\icmp_ln58_reg_643_reg[0] (\or_s_fu_96_reg_n_5_[1] ),
        .\icmp_ln58_reg_643_reg[0]_0 (\oc_s_fu_76_reg_n_5_[0] ),
        .\icmp_ln58_reg_643_reg[0]_1 (\oc_s_fu_76_reg_n_5_[1] ),
        .\icmp_ln58_reg_643_reg[0]_2 (\or_s_fu_96_reg_n_5_[0] ),
        .indvar_flatten_fu_1000(indvar_flatten_fu_1000),
        .\indvar_flatten_fu_100_reg[0] (flow_control_loop_pipe_sequential_init_U_n_9),
        .\or_s_fu_96_reg[1] (flow_control_loop_pipe_sequential_init_U_n_5),
        .\or_s_fu_96_reg[1]_0 (\or_s_fu_96_reg[1]_0 ),
        .p_0_in(p_0_in),
        .select_ln45_fu_292_p3(select_ln45_fu_292_p3));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 icmp_ln55_1_fu_469_p2_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({icmp_ln55_1_fu_469_p2_carry_n_5,icmp_ln55_1_fu_469_p2_carry_n_6,icmp_ln55_1_fu_469_p2_carry_n_7,icmp_ln55_1_fu_469_p2_carry_n_8,icmp_ln55_1_fu_469_p2_carry_n_9,icmp_ln55_1_fu_469_p2_carry_n_10,icmp_ln55_1_fu_469_p2_carry_n_11,icmp_ln55_1_fu_469_p2_carry_n_12}),
        .DI({icmp_ln55_1_fu_469_p2_carry_i_1_n_5,icmp_ln55_1_fu_469_p2_carry_i_2_n_5,icmp_ln55_1_fu_469_p2_carry_i_3_n_5,icmp_ln55_1_fu_469_p2_carry_i_4_n_5,icmp_ln55_1_fu_469_p2_carry_i_5_n_5,icmp_ln55_1_fu_469_p2_carry_i_6_n_5,icmp_ln55_1_fu_469_p2_carry_i_7_n_5,icmp_ln55_1_fu_469_p2_carry_i_8_n_5}),
        .O(NLW_icmp_ln55_1_fu_469_p2_carry_O_UNCONNECTED[7:0]),
        .S({icmp_ln55_1_fu_469_p2_carry_i_9_n_5,icmp_ln55_1_fu_469_p2_carry_i_10_n_5,icmp_ln55_1_fu_469_p2_carry_i_11_n_5,icmp_ln55_1_fu_469_p2_carry_i_12_n_5,icmp_ln55_1_fu_469_p2_carry_i_13_n_5,icmp_ln55_1_fu_469_p2_carry_i_14_n_5,icmp_ln55_1_fu_469_p2_carry_i_15_n_5,icmp_ln55_1_fu_469_p2_carry_i_16_n_5}));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln55_1_fu_469_p2_carry_i_1
       (.I0(v_4_reg_657[14]),
        .I1(max_val_reg_651[14]),
        .I2(v_4_reg_657[15]),
        .I3(max_val_reg_651[15]),
        .O(icmp_ln55_1_fu_469_p2_carry_i_1_n_5));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln55_1_fu_469_p2_carry_i_10
       (.I0(v_4_reg_657[12]),
        .I1(max_val_reg_651[12]),
        .I2(v_4_reg_657[13]),
        .I3(max_val_reg_651[13]),
        .O(icmp_ln55_1_fu_469_p2_carry_i_10_n_5));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln55_1_fu_469_p2_carry_i_11
       (.I0(v_4_reg_657[10]),
        .I1(max_val_reg_651[10]),
        .I2(v_4_reg_657[11]),
        .I3(max_val_reg_651[11]),
        .O(icmp_ln55_1_fu_469_p2_carry_i_11_n_5));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln55_1_fu_469_p2_carry_i_12
       (.I0(v_4_reg_657[8]),
        .I1(max_val_reg_651[8]),
        .I2(v_4_reg_657[9]),
        .I3(max_val_reg_651[9]),
        .O(icmp_ln55_1_fu_469_p2_carry_i_12_n_5));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln55_1_fu_469_p2_carry_i_13
       (.I0(v_4_reg_657[6]),
        .I1(max_val_reg_651[6]),
        .I2(v_4_reg_657[7]),
        .I3(max_val_reg_651[7]),
        .O(icmp_ln55_1_fu_469_p2_carry_i_13_n_5));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln55_1_fu_469_p2_carry_i_14
       (.I0(v_4_reg_657[4]),
        .I1(max_val_reg_651[4]),
        .I2(v_4_reg_657[5]),
        .I3(max_val_reg_651[5]),
        .O(icmp_ln55_1_fu_469_p2_carry_i_14_n_5));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln55_1_fu_469_p2_carry_i_15
       (.I0(v_4_reg_657[2]),
        .I1(max_val_reg_651[2]),
        .I2(v_4_reg_657[3]),
        .I3(max_val_reg_651[3]),
        .O(icmp_ln55_1_fu_469_p2_carry_i_15_n_5));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln55_1_fu_469_p2_carry_i_16
       (.I0(v_4_reg_657[0]),
        .I1(max_val_reg_651[0]),
        .I2(v_4_reg_657[1]),
        .I3(max_val_reg_651[1]),
        .O(icmp_ln55_1_fu_469_p2_carry_i_16_n_5));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln55_1_fu_469_p2_carry_i_2
       (.I0(v_4_reg_657[12]),
        .I1(max_val_reg_651[12]),
        .I2(max_val_reg_651[13]),
        .I3(v_4_reg_657[13]),
        .O(icmp_ln55_1_fu_469_p2_carry_i_2_n_5));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln55_1_fu_469_p2_carry_i_3
       (.I0(v_4_reg_657[10]),
        .I1(max_val_reg_651[10]),
        .I2(max_val_reg_651[11]),
        .I3(v_4_reg_657[11]),
        .O(icmp_ln55_1_fu_469_p2_carry_i_3_n_5));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln55_1_fu_469_p2_carry_i_4
       (.I0(v_4_reg_657[8]),
        .I1(max_val_reg_651[8]),
        .I2(max_val_reg_651[9]),
        .I3(v_4_reg_657[9]),
        .O(icmp_ln55_1_fu_469_p2_carry_i_4_n_5));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln55_1_fu_469_p2_carry_i_5
       (.I0(v_4_reg_657[6]),
        .I1(max_val_reg_651[6]),
        .I2(max_val_reg_651[7]),
        .I3(v_4_reg_657[7]),
        .O(icmp_ln55_1_fu_469_p2_carry_i_5_n_5));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln55_1_fu_469_p2_carry_i_6
       (.I0(v_4_reg_657[4]),
        .I1(max_val_reg_651[4]),
        .I2(max_val_reg_651[5]),
        .I3(v_4_reg_657[5]),
        .O(icmp_ln55_1_fu_469_p2_carry_i_6_n_5));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln55_1_fu_469_p2_carry_i_7
       (.I0(v_4_reg_657[2]),
        .I1(max_val_reg_651[2]),
        .I2(max_val_reg_651[3]),
        .I3(v_4_reg_657[3]),
        .O(icmp_ln55_1_fu_469_p2_carry_i_7_n_5));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln55_1_fu_469_p2_carry_i_8
       (.I0(v_4_reg_657[0]),
        .I1(max_val_reg_651[0]),
        .I2(max_val_reg_651[1]),
        .I3(v_4_reg_657[1]),
        .O(icmp_ln55_1_fu_469_p2_carry_i_8_n_5));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln55_1_fu_469_p2_carry_i_9
       (.I0(v_4_reg_657[14]),
        .I1(max_val_reg_651[14]),
        .I2(max_val_reg_651[15]),
        .I3(v_4_reg_657[15]),
        .O(icmp_ln55_1_fu_469_p2_carry_i_9_n_5));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 icmp_ln55_2_fu_479_p2_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({icmp_ln55_2_fu_479_p2_carry_n_5,icmp_ln55_2_fu_479_p2_carry_n_6,icmp_ln55_2_fu_479_p2_carry_n_7,icmp_ln55_2_fu_479_p2_carry_n_8,icmp_ln55_2_fu_479_p2_carry_n_9,icmp_ln55_2_fu_479_p2_carry_n_10,icmp_ln55_2_fu_479_p2_carry_n_11,icmp_ln55_2_fu_479_p2_carry_n_12}),
        .DI({icmp_ln55_2_fu_479_p2_carry_i_1_n_5,icmp_ln55_2_fu_479_p2_carry_i_2_n_5,icmp_ln55_2_fu_479_p2_carry_i_3_n_5,icmp_ln55_2_fu_479_p2_carry_i_4_n_5,icmp_ln55_2_fu_479_p2_carry_i_5_n_5,icmp_ln55_2_fu_479_p2_carry_i_6_n_5,icmp_ln55_2_fu_479_p2_carry_i_7_n_5,icmp_ln55_2_fu_479_p2_carry_i_8_n_5}),
        .O(NLW_icmp_ln55_2_fu_479_p2_carry_O_UNCONNECTED[7:0]),
        .S({icmp_ln55_2_fu_479_p2_carry_i_9_n_5,icmp_ln55_2_fu_479_p2_carry_i_10_n_5,icmp_ln55_2_fu_479_p2_carry_i_11_n_5,icmp_ln55_2_fu_479_p2_carry_i_12_n_5,icmp_ln55_2_fu_479_p2_carry_i_13_n_5,icmp_ln55_2_fu_479_p2_carry_i_14_n_5,icmp_ln55_2_fu_479_p2_carry_i_15_n_5,icmp_ln55_2_fu_479_p2_carry_i_16_n_5}));
  LUT6 #(
    .INIT(64'h028AFFFF0000028A)) 
    icmp_ln55_2_fu_479_p2_carry_i_1
       (.I0(v_3_reg_663[14]),
        .I1(icmp_ln55_1_fu_469_p2_carry_n_5),
        .I2(max_val_reg_651[14]),
        .I3(v_4_reg_657[14]),
        .I4(v_3_reg_663[15]),
        .I5(max_val_3_fu_473_p3[15]),
        .O(icmp_ln55_2_fu_479_p2_carry_i_1_n_5));
  LUT6 #(
    .INIT(64'h99A50000000099A5)) 
    icmp_ln55_2_fu_479_p2_carry_i_10
       (.I0(v_3_reg_663[12]),
        .I1(v_4_reg_657[12]),
        .I2(max_val_reg_651[12]),
        .I3(icmp_ln55_1_fu_469_p2_carry_n_5),
        .I4(v_3_reg_663[13]),
        .I5(max_val_3_fu_473_p3[13]),
        .O(icmp_ln55_2_fu_479_p2_carry_i_10_n_5));
  LUT6 #(
    .INIT(64'h99A50000000099A5)) 
    icmp_ln55_2_fu_479_p2_carry_i_11
       (.I0(v_3_reg_663[10]),
        .I1(v_4_reg_657[10]),
        .I2(max_val_reg_651[10]),
        .I3(icmp_ln55_1_fu_469_p2_carry_n_5),
        .I4(v_3_reg_663[11]),
        .I5(max_val_3_fu_473_p3[11]),
        .O(icmp_ln55_2_fu_479_p2_carry_i_11_n_5));
  LUT6 #(
    .INIT(64'h99A50000000099A5)) 
    icmp_ln55_2_fu_479_p2_carry_i_12
       (.I0(v_3_reg_663[8]),
        .I1(v_4_reg_657[8]),
        .I2(max_val_reg_651[8]),
        .I3(icmp_ln55_1_fu_469_p2_carry_n_5),
        .I4(v_3_reg_663[9]),
        .I5(max_val_3_fu_473_p3[9]),
        .O(icmp_ln55_2_fu_479_p2_carry_i_12_n_5));
  LUT6 #(
    .INIT(64'h99A50000000099A5)) 
    icmp_ln55_2_fu_479_p2_carry_i_13
       (.I0(v_3_reg_663[6]),
        .I1(v_4_reg_657[6]),
        .I2(max_val_reg_651[6]),
        .I3(icmp_ln55_1_fu_469_p2_carry_n_5),
        .I4(v_3_reg_663[7]),
        .I5(max_val_3_fu_473_p3[7]),
        .O(icmp_ln55_2_fu_479_p2_carry_i_13_n_5));
  LUT6 #(
    .INIT(64'h99A50000000099A5)) 
    icmp_ln55_2_fu_479_p2_carry_i_14
       (.I0(v_3_reg_663[4]),
        .I1(v_4_reg_657[4]),
        .I2(max_val_reg_651[4]),
        .I3(icmp_ln55_1_fu_469_p2_carry_n_5),
        .I4(v_3_reg_663[5]),
        .I5(max_val_3_fu_473_p3[5]),
        .O(icmp_ln55_2_fu_479_p2_carry_i_14_n_5));
  LUT6 #(
    .INIT(64'h99A50000000099A5)) 
    icmp_ln55_2_fu_479_p2_carry_i_15
       (.I0(v_3_reg_663[2]),
        .I1(v_4_reg_657[2]),
        .I2(max_val_reg_651[2]),
        .I3(icmp_ln55_1_fu_469_p2_carry_n_5),
        .I4(v_3_reg_663[3]),
        .I5(max_val_3_fu_473_p3[3]),
        .O(icmp_ln55_2_fu_479_p2_carry_i_15_n_5));
  LUT6 #(
    .INIT(64'h99A50000000099A5)) 
    icmp_ln55_2_fu_479_p2_carry_i_16
       (.I0(v_3_reg_663[0]),
        .I1(v_4_reg_657[0]),
        .I2(max_val_reg_651[0]),
        .I3(icmp_ln55_1_fu_469_p2_carry_n_5),
        .I4(v_3_reg_663[1]),
        .I5(max_val_3_fu_473_p3[1]),
        .O(icmp_ln55_2_fu_479_p2_carry_i_16_n_5));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    icmp_ln55_2_fu_479_p2_carry_i_17
       (.I0(v_4_reg_657[15]),
        .I1(max_val_reg_651[15]),
        .I2(icmp_ln55_1_fu_469_p2_carry_n_5),
        .O(max_val_3_fu_473_p3[15]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    icmp_ln55_2_fu_479_p2_carry_i_18
       (.I0(v_4_reg_657[13]),
        .I1(max_val_reg_651[13]),
        .I2(icmp_ln55_1_fu_469_p2_carry_n_5),
        .O(max_val_3_fu_473_p3[13]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    icmp_ln55_2_fu_479_p2_carry_i_19
       (.I0(v_4_reg_657[11]),
        .I1(max_val_reg_651[11]),
        .I2(icmp_ln55_1_fu_469_p2_carry_n_5),
        .O(max_val_3_fu_473_p3[11]));
  LUT6 #(
    .INIT(64'h028AFFFF0000028A)) 
    icmp_ln55_2_fu_479_p2_carry_i_2
       (.I0(v_3_reg_663[12]),
        .I1(icmp_ln55_1_fu_469_p2_carry_n_5),
        .I2(max_val_reg_651[12]),
        .I3(v_4_reg_657[12]),
        .I4(max_val_3_fu_473_p3[13]),
        .I5(v_3_reg_663[13]),
        .O(icmp_ln55_2_fu_479_p2_carry_i_2_n_5));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    icmp_ln55_2_fu_479_p2_carry_i_20
       (.I0(v_4_reg_657[9]),
        .I1(max_val_reg_651[9]),
        .I2(icmp_ln55_1_fu_469_p2_carry_n_5),
        .O(max_val_3_fu_473_p3[9]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    icmp_ln55_2_fu_479_p2_carry_i_21
       (.I0(v_4_reg_657[7]),
        .I1(max_val_reg_651[7]),
        .I2(icmp_ln55_1_fu_469_p2_carry_n_5),
        .O(max_val_3_fu_473_p3[7]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    icmp_ln55_2_fu_479_p2_carry_i_22
       (.I0(v_4_reg_657[5]),
        .I1(max_val_reg_651[5]),
        .I2(icmp_ln55_1_fu_469_p2_carry_n_5),
        .O(max_val_3_fu_473_p3[5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    icmp_ln55_2_fu_479_p2_carry_i_23
       (.I0(v_4_reg_657[3]),
        .I1(max_val_reg_651[3]),
        .I2(icmp_ln55_1_fu_469_p2_carry_n_5),
        .O(max_val_3_fu_473_p3[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    icmp_ln55_2_fu_479_p2_carry_i_24
       (.I0(v_4_reg_657[1]),
        .I1(max_val_reg_651[1]),
        .I2(icmp_ln55_1_fu_469_p2_carry_n_5),
        .O(max_val_3_fu_473_p3[1]));
  LUT6 #(
    .INIT(64'h028AFFFF0000028A)) 
    icmp_ln55_2_fu_479_p2_carry_i_3
       (.I0(v_3_reg_663[10]),
        .I1(icmp_ln55_1_fu_469_p2_carry_n_5),
        .I2(max_val_reg_651[10]),
        .I3(v_4_reg_657[10]),
        .I4(max_val_3_fu_473_p3[11]),
        .I5(v_3_reg_663[11]),
        .O(icmp_ln55_2_fu_479_p2_carry_i_3_n_5));
  LUT6 #(
    .INIT(64'h028AFFFF0000028A)) 
    icmp_ln55_2_fu_479_p2_carry_i_4
       (.I0(v_3_reg_663[8]),
        .I1(icmp_ln55_1_fu_469_p2_carry_n_5),
        .I2(max_val_reg_651[8]),
        .I3(v_4_reg_657[8]),
        .I4(max_val_3_fu_473_p3[9]),
        .I5(v_3_reg_663[9]),
        .O(icmp_ln55_2_fu_479_p2_carry_i_4_n_5));
  LUT6 #(
    .INIT(64'h028AFFFF0000028A)) 
    icmp_ln55_2_fu_479_p2_carry_i_5
       (.I0(v_3_reg_663[6]),
        .I1(icmp_ln55_1_fu_469_p2_carry_n_5),
        .I2(max_val_reg_651[6]),
        .I3(v_4_reg_657[6]),
        .I4(max_val_3_fu_473_p3[7]),
        .I5(v_3_reg_663[7]),
        .O(icmp_ln55_2_fu_479_p2_carry_i_5_n_5));
  LUT6 #(
    .INIT(64'h028AFFFF0000028A)) 
    icmp_ln55_2_fu_479_p2_carry_i_6
       (.I0(v_3_reg_663[4]),
        .I1(icmp_ln55_1_fu_469_p2_carry_n_5),
        .I2(max_val_reg_651[4]),
        .I3(v_4_reg_657[4]),
        .I4(max_val_3_fu_473_p3[5]),
        .I5(v_3_reg_663[5]),
        .O(icmp_ln55_2_fu_479_p2_carry_i_6_n_5));
  LUT6 #(
    .INIT(64'h028AFFFF0000028A)) 
    icmp_ln55_2_fu_479_p2_carry_i_7
       (.I0(v_3_reg_663[2]),
        .I1(icmp_ln55_1_fu_469_p2_carry_n_5),
        .I2(max_val_reg_651[2]),
        .I3(v_4_reg_657[2]),
        .I4(max_val_3_fu_473_p3[3]),
        .I5(v_3_reg_663[3]),
        .O(icmp_ln55_2_fu_479_p2_carry_i_7_n_5));
  LUT6 #(
    .INIT(64'h028AFFFF0000028A)) 
    icmp_ln55_2_fu_479_p2_carry_i_8
       (.I0(v_3_reg_663[0]),
        .I1(icmp_ln55_1_fu_469_p2_carry_n_5),
        .I2(max_val_reg_651[0]),
        .I3(v_4_reg_657[0]),
        .I4(max_val_3_fu_473_p3[1]),
        .I5(v_3_reg_663[1]),
        .O(icmp_ln55_2_fu_479_p2_carry_i_8_n_5));
  LUT6 #(
    .INIT(64'h99A50000000099A5)) 
    icmp_ln55_2_fu_479_p2_carry_i_9
       (.I0(v_3_reg_663[14]),
        .I1(v_4_reg_657[14]),
        .I2(max_val_reg_651[14]),
        .I3(icmp_ln55_1_fu_469_p2_carry_n_5),
        .I4(max_val_3_fu_473_p3[15]),
        .I5(v_3_reg_663[15]),
        .O(icmp_ln55_2_fu_479_p2_carry_i_9_n_5));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 icmp_ln55_fu_372_p2_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({CO,icmp_ln55_fu_372_p2_carry_n_6,icmp_ln55_fu_372_p2_carry_n_7,icmp_ln55_fu_372_p2_carry_n_8,icmp_ln55_fu_372_p2_carry_n_9,icmp_ln55_fu_372_p2_carry_n_10,icmp_ln55_fu_372_p2_carry_n_11,icmp_ln55_fu_372_p2_carry_n_12}),
        .DI(DI),
        .O(NLW_icmp_ln55_fu_372_p2_carry_O_UNCONNECTED[7:0]),
        .S(S));
  FDRE \icmp_ln58_reg_643_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(flow_control_loop_pipe_sequential_init_U_n_5),
        .Q(\icmp_ln58_reg_643_reg_n_5_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_100_reg[0] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_1000),
        .D(add_ln45_fu_252_p2[0]),
        .Q(\indvar_flatten_fu_100_reg_n_5_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_100_reg[1] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_1000),
        .D(add_ln45_fu_252_p2[1]),
        .Q(\indvar_flatten_fu_100_reg_n_5_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \indvar_flatten_fu_100_reg[2] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_1000),
        .D(add_ln45_fu_252_p2[2]),
        .Q(\indvar_flatten_fu_100_reg_n_5_[2] ),
        .R(1'b0));
  FDRE \max_val_reg_651_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_val_fu_378_p3[0]),
        .Q(max_val_reg_651[0]),
        .R(1'b0));
  FDRE \max_val_reg_651_reg[10] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_val_fu_378_p3[10]),
        .Q(max_val_reg_651[10]),
        .R(1'b0));
  FDRE \max_val_reg_651_reg[11] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_val_fu_378_p3[11]),
        .Q(max_val_reg_651[11]),
        .R(1'b0));
  FDRE \max_val_reg_651_reg[12] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_val_fu_378_p3[12]),
        .Q(max_val_reg_651[12]),
        .R(1'b0));
  FDRE \max_val_reg_651_reg[13] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_val_fu_378_p3[13]),
        .Q(max_val_reg_651[13]),
        .R(1'b0));
  FDRE \max_val_reg_651_reg[14] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_val_fu_378_p3[14]),
        .Q(max_val_reg_651[14]),
        .R(1'b0));
  FDRE \max_val_reg_651_reg[15] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_val_fu_378_p3[15]),
        .Q(max_val_reg_651[15]),
        .R(1'b0));
  FDRE \max_val_reg_651_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_val_fu_378_p3[1]),
        .Q(max_val_reg_651[1]),
        .R(1'b0));
  FDRE \max_val_reg_651_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_val_fu_378_p3[2]),
        .Q(max_val_reg_651[2]),
        .R(1'b0));
  FDRE \max_val_reg_651_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_val_fu_378_p3[3]),
        .Q(max_val_reg_651[3]),
        .R(1'b0));
  FDRE \max_val_reg_651_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_val_fu_378_p3[4]),
        .Q(max_val_reg_651[4]),
        .R(1'b0));
  FDRE \max_val_reg_651_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_val_fu_378_p3[5]),
        .Q(max_val_reg_651[5]),
        .R(1'b0));
  FDRE \max_val_reg_651_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_val_fu_378_p3[6]),
        .Q(max_val_reg_651[6]),
        .R(1'b0));
  FDRE \max_val_reg_651_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_val_fu_378_p3[7]),
        .Q(max_val_reg_651[7]),
        .R(1'b0));
  FDRE \max_val_reg_651_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_val_fu_378_p3[8]),
        .Q(max_val_reg_651[8]),
        .R(1'b0));
  FDRE \max_val_reg_651_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(max_val_fu_378_p3[9]),
        .Q(max_val_reg_651[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \oc_s_fu_76_reg[0] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_9),
        .D(first_iter_0_fu_306_p2),
        .Q(\oc_s_fu_76_reg_n_5_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \oc_s_fu_76_reg[1] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_9),
        .D(p_0_in),
        .Q(\oc_s_fu_76_reg_n_5_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \or_s_fu_96_reg[0] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_9),
        .D(select_ln45_fu_292_p3[0]),
        .Q(\or_s_fu_96_reg_n_5_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \or_s_fu_96_reg[1] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_9),
        .D(select_ln45_fu_292_p3[1]),
        .Q(\or_s_fu_96_reg_n_5_[1] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h20)) 
    \output_1_fu_84[15]_i_1 
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(first_iter_0_reg_635),
        .I2(\icmp_ln58_reg_643_reg_n_5_[0] ),
        .O(output_1_fu_84_3));
  FDRE #(
    .INIT(1'b0)) 
    \output_1_fu_84_reg[0] 
       (.C(ap_clk),
        .CE(output_1_fu_84_3),
        .D(max_val_4_fu_484_p3[0]),
        .Q(output_1_fu_84[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_1_fu_84_reg[10] 
       (.C(ap_clk),
        .CE(output_1_fu_84_3),
        .D(max_val_4_fu_484_p3[10]),
        .Q(output_1_fu_84[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_1_fu_84_reg[11] 
       (.C(ap_clk),
        .CE(output_1_fu_84_3),
        .D(max_val_4_fu_484_p3[11]),
        .Q(output_1_fu_84[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_1_fu_84_reg[12] 
       (.C(ap_clk),
        .CE(output_1_fu_84_3),
        .D(max_val_4_fu_484_p3[12]),
        .Q(output_1_fu_84[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_1_fu_84_reg[13] 
       (.C(ap_clk),
        .CE(output_1_fu_84_3),
        .D(max_val_4_fu_484_p3[13]),
        .Q(output_1_fu_84[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_1_fu_84_reg[14] 
       (.C(ap_clk),
        .CE(output_1_fu_84_3),
        .D(max_val_4_fu_484_p3[14]),
        .Q(output_1_fu_84[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_1_fu_84_reg[15] 
       (.C(ap_clk),
        .CE(output_1_fu_84_3),
        .D(max_val_4_fu_484_p3[15]),
        .Q(output_1_fu_84[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_1_fu_84_reg[1] 
       (.C(ap_clk),
        .CE(output_1_fu_84_3),
        .D(max_val_4_fu_484_p3[1]),
        .Q(output_1_fu_84[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_1_fu_84_reg[2] 
       (.C(ap_clk),
        .CE(output_1_fu_84_3),
        .D(max_val_4_fu_484_p3[2]),
        .Q(output_1_fu_84[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_1_fu_84_reg[3] 
       (.C(ap_clk),
        .CE(output_1_fu_84_3),
        .D(max_val_4_fu_484_p3[3]),
        .Q(output_1_fu_84[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_1_fu_84_reg[4] 
       (.C(ap_clk),
        .CE(output_1_fu_84_3),
        .D(max_val_4_fu_484_p3[4]),
        .Q(output_1_fu_84[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_1_fu_84_reg[5] 
       (.C(ap_clk),
        .CE(output_1_fu_84_3),
        .D(max_val_4_fu_484_p3[5]),
        .Q(output_1_fu_84[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_1_fu_84_reg[6] 
       (.C(ap_clk),
        .CE(output_1_fu_84_3),
        .D(max_val_4_fu_484_p3[6]),
        .Q(output_1_fu_84[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_1_fu_84_reg[7] 
       (.C(ap_clk),
        .CE(output_1_fu_84_3),
        .D(max_val_4_fu_484_p3[7]),
        .Q(output_1_fu_84[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_1_fu_84_reg[8] 
       (.C(ap_clk),
        .CE(output_1_fu_84_3),
        .D(max_val_4_fu_484_p3[8]),
        .Q(output_1_fu_84[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_1_fu_84_reg[9] 
       (.C(ap_clk),
        .CE(output_1_fu_84_3),
        .D(max_val_4_fu_484_p3[9]),
        .Q(output_1_fu_84[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h20)) 
    \output_2_fu_88[15]_i_1 
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(\icmp_ln58_reg_643_reg_n_5_[0] ),
        .I2(first_iter_0_reg_635),
        .O(output_2_fu_88_2));
  FDRE #(
    .INIT(1'b0)) 
    \output_2_fu_88_reg[0] 
       (.C(ap_clk),
        .CE(output_2_fu_88_2),
        .D(max_val_4_fu_484_p3[0]),
        .Q(output_2_fu_88[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_2_fu_88_reg[10] 
       (.C(ap_clk),
        .CE(output_2_fu_88_2),
        .D(max_val_4_fu_484_p3[10]),
        .Q(output_2_fu_88[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_2_fu_88_reg[11] 
       (.C(ap_clk),
        .CE(output_2_fu_88_2),
        .D(max_val_4_fu_484_p3[11]),
        .Q(output_2_fu_88[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_2_fu_88_reg[12] 
       (.C(ap_clk),
        .CE(output_2_fu_88_2),
        .D(max_val_4_fu_484_p3[12]),
        .Q(output_2_fu_88[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_2_fu_88_reg[13] 
       (.C(ap_clk),
        .CE(output_2_fu_88_2),
        .D(max_val_4_fu_484_p3[13]),
        .Q(output_2_fu_88[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_2_fu_88_reg[14] 
       (.C(ap_clk),
        .CE(output_2_fu_88_2),
        .D(max_val_4_fu_484_p3[14]),
        .Q(output_2_fu_88[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_2_fu_88_reg[15] 
       (.C(ap_clk),
        .CE(output_2_fu_88_2),
        .D(max_val_4_fu_484_p3[15]),
        .Q(output_2_fu_88[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_2_fu_88_reg[1] 
       (.C(ap_clk),
        .CE(output_2_fu_88_2),
        .D(max_val_4_fu_484_p3[1]),
        .Q(output_2_fu_88[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_2_fu_88_reg[2] 
       (.C(ap_clk),
        .CE(output_2_fu_88_2),
        .D(max_val_4_fu_484_p3[2]),
        .Q(output_2_fu_88[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_2_fu_88_reg[3] 
       (.C(ap_clk),
        .CE(output_2_fu_88_2),
        .D(max_val_4_fu_484_p3[3]),
        .Q(output_2_fu_88[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_2_fu_88_reg[4] 
       (.C(ap_clk),
        .CE(output_2_fu_88_2),
        .D(max_val_4_fu_484_p3[4]),
        .Q(output_2_fu_88[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_2_fu_88_reg[5] 
       (.C(ap_clk),
        .CE(output_2_fu_88_2),
        .D(max_val_4_fu_484_p3[5]),
        .Q(output_2_fu_88[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_2_fu_88_reg[6] 
       (.C(ap_clk),
        .CE(output_2_fu_88_2),
        .D(max_val_4_fu_484_p3[6]),
        .Q(output_2_fu_88[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_2_fu_88_reg[7] 
       (.C(ap_clk),
        .CE(output_2_fu_88_2),
        .D(max_val_4_fu_484_p3[7]),
        .Q(output_2_fu_88[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_2_fu_88_reg[8] 
       (.C(ap_clk),
        .CE(output_2_fu_88_2),
        .D(max_val_4_fu_484_p3[8]),
        .Q(output_2_fu_88[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_2_fu_88_reg[9] 
       (.C(ap_clk),
        .CE(output_2_fu_88_2),
        .D(max_val_4_fu_484_p3[9]),
        .Q(output_2_fu_88[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h02)) 
    \output_3_fu_92[15]_i_1 
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(first_iter_0_reg_635),
        .I2(\icmp_ln58_reg_643_reg_n_5_[0] ),
        .O(output_3_fu_92_1));
  FDRE #(
    .INIT(1'b0)) 
    \output_3_fu_92_reg[0] 
       (.C(ap_clk),
        .CE(output_3_fu_92_1),
        .D(max_val_4_fu_484_p3[0]),
        .Q(output_3_fu_92[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_3_fu_92_reg[10] 
       (.C(ap_clk),
        .CE(output_3_fu_92_1),
        .D(max_val_4_fu_484_p3[10]),
        .Q(output_3_fu_92[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_3_fu_92_reg[11] 
       (.C(ap_clk),
        .CE(output_3_fu_92_1),
        .D(max_val_4_fu_484_p3[11]),
        .Q(output_3_fu_92[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_3_fu_92_reg[12] 
       (.C(ap_clk),
        .CE(output_3_fu_92_1),
        .D(max_val_4_fu_484_p3[12]),
        .Q(output_3_fu_92[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_3_fu_92_reg[13] 
       (.C(ap_clk),
        .CE(output_3_fu_92_1),
        .D(max_val_4_fu_484_p3[13]),
        .Q(output_3_fu_92[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_3_fu_92_reg[14] 
       (.C(ap_clk),
        .CE(output_3_fu_92_1),
        .D(max_val_4_fu_484_p3[14]),
        .Q(output_3_fu_92[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_3_fu_92_reg[15] 
       (.C(ap_clk),
        .CE(output_3_fu_92_1),
        .D(max_val_4_fu_484_p3[15]),
        .Q(output_3_fu_92[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_3_fu_92_reg[1] 
       (.C(ap_clk),
        .CE(output_3_fu_92_1),
        .D(max_val_4_fu_484_p3[1]),
        .Q(output_3_fu_92[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_3_fu_92_reg[2] 
       (.C(ap_clk),
        .CE(output_3_fu_92_1),
        .D(max_val_4_fu_484_p3[2]),
        .Q(output_3_fu_92[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_3_fu_92_reg[3] 
       (.C(ap_clk),
        .CE(output_3_fu_92_1),
        .D(max_val_4_fu_484_p3[3]),
        .Q(output_3_fu_92[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_3_fu_92_reg[4] 
       (.C(ap_clk),
        .CE(output_3_fu_92_1),
        .D(max_val_4_fu_484_p3[4]),
        .Q(output_3_fu_92[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_3_fu_92_reg[5] 
       (.C(ap_clk),
        .CE(output_3_fu_92_1),
        .D(max_val_4_fu_484_p3[5]),
        .Q(output_3_fu_92[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_3_fu_92_reg[6] 
       (.C(ap_clk),
        .CE(output_3_fu_92_1),
        .D(max_val_4_fu_484_p3[6]),
        .Q(output_3_fu_92[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_3_fu_92_reg[7] 
       (.C(ap_clk),
        .CE(output_3_fu_92_1),
        .D(max_val_4_fu_484_p3[7]),
        .Q(output_3_fu_92[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_3_fu_92_reg[8] 
       (.C(ap_clk),
        .CE(output_3_fu_92_1),
        .D(max_val_4_fu_484_p3[8]),
        .Q(output_3_fu_92[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_3_fu_92_reg[9] 
       (.C(ap_clk),
        .CE(output_3_fu_92_1),
        .D(max_val_4_fu_484_p3[9]),
        .Q(output_3_fu_92[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAAAACCF0)) 
    \output_fu_80[0]_i_1 
       (.I0(v_3_reg_663[0]),
        .I1(v_4_reg_657[0]),
        .I2(max_val_reg_651[0]),
        .I3(icmp_ln55_1_fu_469_p2_carry_n_5),
        .I4(icmp_ln55_2_fu_479_p2_carry_n_5),
        .O(max_val_4_fu_484_p3[0]));
  LUT5 #(
    .INIT(32'hAAAACCF0)) 
    \output_fu_80[10]_i_1 
       (.I0(v_3_reg_663[10]),
        .I1(v_4_reg_657[10]),
        .I2(max_val_reg_651[10]),
        .I3(icmp_ln55_1_fu_469_p2_carry_n_5),
        .I4(icmp_ln55_2_fu_479_p2_carry_n_5),
        .O(max_val_4_fu_484_p3[10]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hAAAACCF0)) 
    \output_fu_80[11]_i_1 
       (.I0(v_3_reg_663[11]),
        .I1(v_4_reg_657[11]),
        .I2(max_val_reg_651[11]),
        .I3(icmp_ln55_1_fu_469_p2_carry_n_5),
        .I4(icmp_ln55_2_fu_479_p2_carry_n_5),
        .O(max_val_4_fu_484_p3[11]));
  LUT5 #(
    .INIT(32'hAAAACCF0)) 
    \output_fu_80[12]_i_1 
       (.I0(v_3_reg_663[12]),
        .I1(v_4_reg_657[12]),
        .I2(max_val_reg_651[12]),
        .I3(icmp_ln55_1_fu_469_p2_carry_n_5),
        .I4(icmp_ln55_2_fu_479_p2_carry_n_5),
        .O(max_val_4_fu_484_p3[12]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hAAAACCF0)) 
    \output_fu_80[13]_i_1 
       (.I0(v_3_reg_663[13]),
        .I1(v_4_reg_657[13]),
        .I2(max_val_reg_651[13]),
        .I3(icmp_ln55_1_fu_469_p2_carry_n_5),
        .I4(icmp_ln55_2_fu_479_p2_carry_n_5),
        .O(max_val_4_fu_484_p3[13]));
  LUT5 #(
    .INIT(32'hAAAACCF0)) 
    \output_fu_80[14]_i_1 
       (.I0(v_3_reg_663[14]),
        .I1(v_4_reg_657[14]),
        .I2(max_val_reg_651[14]),
        .I3(icmp_ln55_1_fu_469_p2_carry_n_5),
        .I4(icmp_ln55_2_fu_479_p2_carry_n_5),
        .O(max_val_4_fu_484_p3[14]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hAAAACCF0)) 
    \output_fu_80[15]_i_1 
       (.I0(v_3_reg_663[15]),
        .I1(v_4_reg_657[15]),
        .I2(max_val_reg_651[15]),
        .I3(icmp_ln55_1_fu_469_p2_carry_n_5),
        .I4(icmp_ln55_2_fu_479_p2_carry_n_5),
        .O(max_val_4_fu_484_p3[15]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hAAAACCF0)) 
    \output_fu_80[1]_i_1 
       (.I0(v_3_reg_663[1]),
        .I1(v_4_reg_657[1]),
        .I2(max_val_reg_651[1]),
        .I3(icmp_ln55_1_fu_469_p2_carry_n_5),
        .I4(icmp_ln55_2_fu_479_p2_carry_n_5),
        .O(max_val_4_fu_484_p3[1]));
  LUT5 #(
    .INIT(32'hAAAACCF0)) 
    \output_fu_80[2]_i_1 
       (.I0(v_3_reg_663[2]),
        .I1(v_4_reg_657[2]),
        .I2(max_val_reg_651[2]),
        .I3(icmp_ln55_1_fu_469_p2_carry_n_5),
        .I4(icmp_ln55_2_fu_479_p2_carry_n_5),
        .O(max_val_4_fu_484_p3[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hAAAACCF0)) 
    \output_fu_80[3]_i_1 
       (.I0(v_3_reg_663[3]),
        .I1(v_4_reg_657[3]),
        .I2(max_val_reg_651[3]),
        .I3(icmp_ln55_1_fu_469_p2_carry_n_5),
        .I4(icmp_ln55_2_fu_479_p2_carry_n_5),
        .O(max_val_4_fu_484_p3[3]));
  LUT5 #(
    .INIT(32'hAAAACCF0)) 
    \output_fu_80[4]_i_1 
       (.I0(v_3_reg_663[4]),
        .I1(v_4_reg_657[4]),
        .I2(max_val_reg_651[4]),
        .I3(icmp_ln55_1_fu_469_p2_carry_n_5),
        .I4(icmp_ln55_2_fu_479_p2_carry_n_5),
        .O(max_val_4_fu_484_p3[4]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hAAAACCF0)) 
    \output_fu_80[5]_i_1 
       (.I0(v_3_reg_663[5]),
        .I1(v_4_reg_657[5]),
        .I2(max_val_reg_651[5]),
        .I3(icmp_ln55_1_fu_469_p2_carry_n_5),
        .I4(icmp_ln55_2_fu_479_p2_carry_n_5),
        .O(max_val_4_fu_484_p3[5]));
  LUT5 #(
    .INIT(32'hAAAACCF0)) 
    \output_fu_80[6]_i_1 
       (.I0(v_3_reg_663[6]),
        .I1(v_4_reg_657[6]),
        .I2(max_val_reg_651[6]),
        .I3(icmp_ln55_1_fu_469_p2_carry_n_5),
        .I4(icmp_ln55_2_fu_479_p2_carry_n_5),
        .O(max_val_4_fu_484_p3[6]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hAAAACCF0)) 
    \output_fu_80[7]_i_1 
       (.I0(v_3_reg_663[7]),
        .I1(v_4_reg_657[7]),
        .I2(max_val_reg_651[7]),
        .I3(icmp_ln55_1_fu_469_p2_carry_n_5),
        .I4(icmp_ln55_2_fu_479_p2_carry_n_5),
        .O(max_val_4_fu_484_p3[7]));
  LUT5 #(
    .INIT(32'hAAAACCF0)) 
    \output_fu_80[8]_i_1 
       (.I0(v_3_reg_663[8]),
        .I1(v_4_reg_657[8]),
        .I2(max_val_reg_651[8]),
        .I3(icmp_ln55_1_fu_469_p2_carry_n_5),
        .I4(icmp_ln55_2_fu_479_p2_carry_n_5),
        .O(max_val_4_fu_484_p3[8]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hAAAACCF0)) 
    \output_fu_80[9]_i_1 
       (.I0(v_3_reg_663[9]),
        .I1(v_4_reg_657[9]),
        .I2(max_val_reg_651[9]),
        .I3(icmp_ln55_1_fu_469_p2_carry_n_5),
        .I4(icmp_ln55_2_fu_479_p2_carry_n_5),
        .O(max_val_4_fu_484_p3[9]));
  FDRE #(
    .INIT(1'b0)) 
    \output_fu_80_reg[0] 
       (.C(ap_clk),
        .CE(output_fu_80_0),
        .D(max_val_4_fu_484_p3[0]),
        .Q(output_fu_80[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_fu_80_reg[10] 
       (.C(ap_clk),
        .CE(output_fu_80_0),
        .D(max_val_4_fu_484_p3[10]),
        .Q(output_fu_80[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_fu_80_reg[11] 
       (.C(ap_clk),
        .CE(output_fu_80_0),
        .D(max_val_4_fu_484_p3[11]),
        .Q(output_fu_80[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_fu_80_reg[12] 
       (.C(ap_clk),
        .CE(output_fu_80_0),
        .D(max_val_4_fu_484_p3[12]),
        .Q(output_fu_80[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_fu_80_reg[13] 
       (.C(ap_clk),
        .CE(output_fu_80_0),
        .D(max_val_4_fu_484_p3[13]),
        .Q(output_fu_80[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_fu_80_reg[14] 
       (.C(ap_clk),
        .CE(output_fu_80_0),
        .D(max_val_4_fu_484_p3[14]),
        .Q(output_fu_80[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_fu_80_reg[15] 
       (.C(ap_clk),
        .CE(output_fu_80_0),
        .D(max_val_4_fu_484_p3[15]),
        .Q(output_fu_80[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_fu_80_reg[1] 
       (.C(ap_clk),
        .CE(output_fu_80_0),
        .D(max_val_4_fu_484_p3[1]),
        .Q(output_fu_80[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_fu_80_reg[2] 
       (.C(ap_clk),
        .CE(output_fu_80_0),
        .D(max_val_4_fu_484_p3[2]),
        .Q(output_fu_80[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_fu_80_reg[3] 
       (.C(ap_clk),
        .CE(output_fu_80_0),
        .D(max_val_4_fu_484_p3[3]),
        .Q(output_fu_80[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_fu_80_reg[4] 
       (.C(ap_clk),
        .CE(output_fu_80_0),
        .D(max_val_4_fu_484_p3[4]),
        .Q(output_fu_80[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_fu_80_reg[5] 
       (.C(ap_clk),
        .CE(output_fu_80_0),
        .D(max_val_4_fu_484_p3[5]),
        .Q(output_fu_80[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_fu_80_reg[6] 
       (.C(ap_clk),
        .CE(output_fu_80_0),
        .D(max_val_4_fu_484_p3[6]),
        .Q(output_fu_80[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_fu_80_reg[7] 
       (.C(ap_clk),
        .CE(output_fu_80_0),
        .D(max_val_4_fu_484_p3[7]),
        .Q(output_fu_80[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_fu_80_reg[8] 
       (.C(ap_clk),
        .CE(output_fu_80_0),
        .D(max_val_4_fu_484_p3[8]),
        .Q(output_fu_80[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \output_fu_80_reg[9] 
       (.C(ap_clk),
        .CE(output_fu_80_0),
        .D(max_val_4_fu_484_p3[9]),
        .Q(output_fu_80[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \select_ln68_2_reg_185[0]_i_1 
       (.I0(output_3_fu_92[0]),
        .I1(output_2_fu_88[0]),
        .I2(ap_sig_allocacmp_i_1[1]),
        .I3(output_1_fu_84[0]),
        .I4(ap_sig_allocacmp_i_1[0]),
        .I5(output_fu_80[0]),
        .O(\output_3_fu_92_reg[15]_0 [0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \select_ln68_2_reg_185[10]_i_1 
       (.I0(output_3_fu_92[10]),
        .I1(output_2_fu_88[10]),
        .I2(ap_sig_allocacmp_i_1[1]),
        .I3(output_1_fu_84[10]),
        .I4(ap_sig_allocacmp_i_1[0]),
        .I5(output_fu_80[10]),
        .O(\output_3_fu_92_reg[15]_0 [10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \select_ln68_2_reg_185[11]_i_1 
       (.I0(output_3_fu_92[11]),
        .I1(output_2_fu_88[11]),
        .I2(ap_sig_allocacmp_i_1[1]),
        .I3(output_1_fu_84[11]),
        .I4(ap_sig_allocacmp_i_1[0]),
        .I5(output_fu_80[11]),
        .O(\output_3_fu_92_reg[15]_0 [11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \select_ln68_2_reg_185[12]_i_1 
       (.I0(output_3_fu_92[12]),
        .I1(output_2_fu_88[12]),
        .I2(ap_sig_allocacmp_i_1[1]),
        .I3(output_1_fu_84[12]),
        .I4(ap_sig_allocacmp_i_1[0]),
        .I5(output_fu_80[12]),
        .O(\output_3_fu_92_reg[15]_0 [12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \select_ln68_2_reg_185[13]_i_1 
       (.I0(output_3_fu_92[13]),
        .I1(output_2_fu_88[13]),
        .I2(ap_sig_allocacmp_i_1[1]),
        .I3(output_1_fu_84[13]),
        .I4(ap_sig_allocacmp_i_1[0]),
        .I5(output_fu_80[13]),
        .O(\output_3_fu_92_reg[15]_0 [13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \select_ln68_2_reg_185[14]_i_1 
       (.I0(output_3_fu_92[14]),
        .I1(output_2_fu_88[14]),
        .I2(ap_sig_allocacmp_i_1[1]),
        .I3(output_1_fu_84[14]),
        .I4(ap_sig_allocacmp_i_1[0]),
        .I5(output_fu_80[14]),
        .O(\output_3_fu_92_reg[15]_0 [14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \select_ln68_2_reg_185[15]_i_2 
       (.I0(output_3_fu_92[15]),
        .I1(output_2_fu_88[15]),
        .I2(ap_sig_allocacmp_i_1[1]),
        .I3(output_1_fu_84[15]),
        .I4(ap_sig_allocacmp_i_1[0]),
        .I5(output_fu_80[15]),
        .O(\output_3_fu_92_reg[15]_0 [15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \select_ln68_2_reg_185[1]_i_1 
       (.I0(output_3_fu_92[1]),
        .I1(output_2_fu_88[1]),
        .I2(ap_sig_allocacmp_i_1[1]),
        .I3(output_1_fu_84[1]),
        .I4(ap_sig_allocacmp_i_1[0]),
        .I5(output_fu_80[1]),
        .O(\output_3_fu_92_reg[15]_0 [1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \select_ln68_2_reg_185[2]_i_1 
       (.I0(output_3_fu_92[2]),
        .I1(output_2_fu_88[2]),
        .I2(ap_sig_allocacmp_i_1[1]),
        .I3(output_1_fu_84[2]),
        .I4(ap_sig_allocacmp_i_1[0]),
        .I5(output_fu_80[2]),
        .O(\output_3_fu_92_reg[15]_0 [2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \select_ln68_2_reg_185[3]_i_1 
       (.I0(output_3_fu_92[3]),
        .I1(output_2_fu_88[3]),
        .I2(ap_sig_allocacmp_i_1[1]),
        .I3(output_1_fu_84[3]),
        .I4(ap_sig_allocacmp_i_1[0]),
        .I5(output_fu_80[3]),
        .O(\output_3_fu_92_reg[15]_0 [3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \select_ln68_2_reg_185[4]_i_1 
       (.I0(output_3_fu_92[4]),
        .I1(output_2_fu_88[4]),
        .I2(ap_sig_allocacmp_i_1[1]),
        .I3(output_1_fu_84[4]),
        .I4(ap_sig_allocacmp_i_1[0]),
        .I5(output_fu_80[4]),
        .O(\output_3_fu_92_reg[15]_0 [4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \select_ln68_2_reg_185[5]_i_1 
       (.I0(output_3_fu_92[5]),
        .I1(output_2_fu_88[5]),
        .I2(ap_sig_allocacmp_i_1[1]),
        .I3(output_1_fu_84[5]),
        .I4(ap_sig_allocacmp_i_1[0]),
        .I5(output_fu_80[5]),
        .O(\output_3_fu_92_reg[15]_0 [5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \select_ln68_2_reg_185[6]_i_1 
       (.I0(output_3_fu_92[6]),
        .I1(output_2_fu_88[6]),
        .I2(ap_sig_allocacmp_i_1[1]),
        .I3(output_1_fu_84[6]),
        .I4(ap_sig_allocacmp_i_1[0]),
        .I5(output_fu_80[6]),
        .O(\output_3_fu_92_reg[15]_0 [6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \select_ln68_2_reg_185[7]_i_1 
       (.I0(output_3_fu_92[7]),
        .I1(output_2_fu_88[7]),
        .I2(ap_sig_allocacmp_i_1[1]),
        .I3(output_1_fu_84[7]),
        .I4(ap_sig_allocacmp_i_1[0]),
        .I5(output_fu_80[7]),
        .O(\output_3_fu_92_reg[15]_0 [7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \select_ln68_2_reg_185[8]_i_1 
       (.I0(output_3_fu_92[8]),
        .I1(output_2_fu_88[8]),
        .I2(ap_sig_allocacmp_i_1[1]),
        .I3(output_1_fu_84[8]),
        .I4(ap_sig_allocacmp_i_1[0]),
        .I5(output_fu_80[8]),
        .O(\output_3_fu_92_reg[15]_0 [8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \select_ln68_2_reg_185[9]_i_1 
       (.I0(output_3_fu_92[9]),
        .I1(output_2_fu_88[9]),
        .I2(ap_sig_allocacmp_i_1[1]),
        .I3(output_1_fu_84[9]),
        .I4(ap_sig_allocacmp_i_1[0]),
        .I5(output_fu_80[9]),
        .O(\output_3_fu_92_reg[15]_0 [9]));
  FDRE \v_3_reg_663_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(v_3_fu_426_p3[0]),
        .Q(v_3_reg_663[0]),
        .R(1'b0));
  FDRE \v_3_reg_663_reg[10] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(v_3_fu_426_p3[10]),
        .Q(v_3_reg_663[10]),
        .R(1'b0));
  FDRE \v_3_reg_663_reg[11] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(v_3_fu_426_p3[11]),
        .Q(v_3_reg_663[11]),
        .R(1'b0));
  FDRE \v_3_reg_663_reg[12] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(v_3_fu_426_p3[12]),
        .Q(v_3_reg_663[12]),
        .R(1'b0));
  FDRE \v_3_reg_663_reg[13] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(v_3_fu_426_p3[13]),
        .Q(v_3_reg_663[13]),
        .R(1'b0));
  FDRE \v_3_reg_663_reg[14] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(v_3_fu_426_p3[14]),
        .Q(v_3_reg_663[14]),
        .R(1'b0));
  FDRE \v_3_reg_663_reg[15] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(v_3_fu_426_p3[15]),
        .Q(v_3_reg_663[15]),
        .R(1'b0));
  FDRE \v_3_reg_663_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(v_3_fu_426_p3[1]),
        .Q(v_3_reg_663[1]),
        .R(1'b0));
  FDRE \v_3_reg_663_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(v_3_fu_426_p3[2]),
        .Q(v_3_reg_663[2]),
        .R(1'b0));
  FDRE \v_3_reg_663_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(v_3_fu_426_p3[3]),
        .Q(v_3_reg_663[3]),
        .R(1'b0));
  FDRE \v_3_reg_663_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(v_3_fu_426_p3[4]),
        .Q(v_3_reg_663[4]),
        .R(1'b0));
  FDRE \v_3_reg_663_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(v_3_fu_426_p3[5]),
        .Q(v_3_reg_663[5]),
        .R(1'b0));
  FDRE \v_3_reg_663_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(v_3_fu_426_p3[6]),
        .Q(v_3_reg_663[6]),
        .R(1'b0));
  FDRE \v_3_reg_663_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(v_3_fu_426_p3[7]),
        .Q(v_3_reg_663[7]),
        .R(1'b0));
  FDRE \v_3_reg_663_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(v_3_fu_426_p3[8]),
        .Q(v_3_reg_663[8]),
        .R(1'b0));
  FDRE \v_3_reg_663_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(v_3_fu_426_p3[9]),
        .Q(v_3_reg_663[9]),
        .R(1'b0));
  FDRE \v_4_reg_657_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(v_4_fu_402_p3[0]),
        .Q(v_4_reg_657[0]),
        .R(1'b0));
  FDRE \v_4_reg_657_reg[10] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(v_4_fu_402_p3[10]),
        .Q(v_4_reg_657[10]),
        .R(1'b0));
  FDRE \v_4_reg_657_reg[11] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(v_4_fu_402_p3[11]),
        .Q(v_4_reg_657[11]),
        .R(1'b0));
  FDRE \v_4_reg_657_reg[12] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(v_4_fu_402_p3[12]),
        .Q(v_4_reg_657[12]),
        .R(1'b0));
  FDRE \v_4_reg_657_reg[13] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(v_4_fu_402_p3[13]),
        .Q(v_4_reg_657[13]),
        .R(1'b0));
  FDRE \v_4_reg_657_reg[14] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(v_4_fu_402_p3[14]),
        .Q(v_4_reg_657[14]),
        .R(1'b0));
  FDRE \v_4_reg_657_reg[15] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(v_4_fu_402_p3[15]),
        .Q(v_4_reg_657[15]),
        .R(1'b0));
  FDRE \v_4_reg_657_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(v_4_fu_402_p3[1]),
        .Q(v_4_reg_657[1]),
        .R(1'b0));
  FDRE \v_4_reg_657_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(v_4_fu_402_p3[2]),
        .Q(v_4_reg_657[2]),
        .R(1'b0));
  FDRE \v_4_reg_657_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(v_4_fu_402_p3[3]),
        .Q(v_4_reg_657[3]),
        .R(1'b0));
  FDRE \v_4_reg_657_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(v_4_fu_402_p3[4]),
        .Q(v_4_reg_657[4]),
        .R(1'b0));
  FDRE \v_4_reg_657_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(v_4_fu_402_p3[5]),
        .Q(v_4_reg_657[5]),
        .R(1'b0));
  FDRE \v_4_reg_657_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(v_4_fu_402_p3[6]),
        .Q(v_4_reg_657[6]),
        .R(1'b0));
  FDRE \v_4_reg_657_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(v_4_fu_402_p3[7]),
        .Q(v_4_reg_657[7]),
        .R(1'b0));
  FDRE \v_4_reg_657_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(v_4_fu_402_p3[8]),
        .Q(v_4_reg_657[8]),
        .R(1'b0));
  FDRE \v_4_reg_657_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(v_4_fu_402_p3[9]),
        .Q(v_4_reg_657[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "maxpool_maxpool_Pipeline_READ_INPUT" *) 
module cnn_pipeline_maxpool_0_1_maxpool_maxpool_Pipeline_READ_INPUT
   (ap_enable_reg_pp0_iter1,
    D,
    in_stream_TREADY_int_regslice,
    DI,
    max_val_fu_378_p3,
    S,
    v_4_fu_402_p3,
    v_3_fu_426_p3,
    grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg_reg,
    ap_rst_n_inv,
    ap_clk,
    grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg,
    Q,
    ap_rst_n,
    \ap_CS_fsm_reg[3] ,
    CO,
    \v_4_reg_657_reg[15] ,
    first_iter_0_fu_306_p2,
    ap_block_pp0_stage0_subdone,
    \input_15_fu_156_reg[15]_0 );
  output ap_enable_reg_pp0_iter1;
  output [1:0]D;
  output in_stream_TREADY_int_regslice;
  output [7:0]DI;
  output [15:0]max_val_fu_378_p3;
  output [7:0]S;
  output [15:0]v_4_fu_402_p3;
  output [15:0]v_3_fu_426_p3;
  output grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg_reg;
  input ap_rst_n_inv;
  input ap_clk;
  input grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg;
  input [0:0]Q;
  input ap_rst_n;
  input [1:0]\ap_CS_fsm_reg[3] ;
  input [0:0]CO;
  input \v_4_reg_657_reg[15] ;
  input [0:0]first_iter_0_fu_306_p2;
  input ap_block_pp0_stage0_subdone;
  input [15:0]\input_15_fu_156_reg[15]_0 ;

  wire [0:0]CO;
  wire [1:0]D;
  wire [7:0]DI;
  wire [0:0]Q;
  wire [7:0]S;
  wire [1:0]\ap_CS_fsm_reg[3] ;
  wire ap_block_pp0_stage0_subdone;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire [0:0]first_iter_0_fu_306_p2;
  wire flow_control_loop_pipe_sequential_init_U_n_12;
  wire flow_control_loop_pipe_sequential_init_U_n_13;
  wire flow_control_loop_pipe_sequential_init_U_n_14;
  wire flow_control_loop_pipe_sequential_init_U_n_15;
  wire grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg;
  wire grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg_reg;
  wire [4:0]i_4_fu_307_p2;
  wire \i_fu_92_reg_n_5_[0] ;
  wire \i_fu_92_reg_n_5_[1] ;
  wire \i_fu_92_reg_n_5_[2] ;
  wire \i_fu_92_reg_n_5_[3] ;
  wire \i_fu_92_reg_n_5_[4] ;
  wire in_stream_TREADY_int_regslice;
  wire [15:0]input_10_fu_136;
  wire input_10_fu_1360;
  wire [15:0]input_11_fu_140;
  wire input_11_fu_1400;
  wire [15:0]input_12_fu_144;
  wire input_12_fu_1440;
  wire [15:0]input_13_fu_148;
  wire input_13_fu_1480;
  wire [15:0]input_14_fu_152;
  wire input_14_fu_1520;
  wire [15:0]input_15_fu_156;
  wire input_15_fu_1560;
  wire [15:0]\input_15_fu_156_reg[15]_0 ;
  wire [15:0]input_1_fu_100;
  wire input_1_fu_1000;
  wire [15:0]input_2_fu_104;
  wire input_2_fu_1040;
  wire [15:0]input_3_fu_108;
  wire input_3_fu_1080;
  wire [15:0]input_4_fu_112;
  wire input_4_fu_1120;
  wire [15:0]input_5_fu_116;
  wire input_5_fu_1160;
  wire [15:0]input_6_fu_120;
  wire input_6_fu_1200;
  wire [15:0]input_7_fu_124;
  wire input_7_fu_1240;
  wire [15:0]input_8_fu_128;
  wire input_8_fu_1280;
  wire [15:0]input_9_fu_132;
  wire input_9_fu_1320;
  wire [15:0]input_fu_96;
  wire input_fu_960;
  wire [15:0]max_val_5_fu_340_p3;
  wire [15:0]max_val_fu_378_p3;
  wire [1:0]trunc_ln34_reg_597;
  wire [1:0]trunc_ln_reg_601;
  wire [15:0]v_3_fu_426_p3;
  wire [15:0]v_4_fu_402_p3;
  wire \v_4_reg_657_reg[15] ;
  wire [15:0]v_fu_364_p3;

  LUT3 #(
    .INIT(8'h80)) 
    ack_in_t_i_3
       (.I0(\ap_CS_fsm_reg[3] [1]),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(Q),
        .O(in_stream_TREADY_int_regslice));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(flow_control_loop_pipe_sequential_init_U_n_15),
        .Q(ap_enable_reg_pp0_iter1),
        .R(1'b0));
  cnn_pipeline_maxpool_0_1_maxpool_flow_control_loop_pipe_sequential_init_2 flow_control_loop_pipe_sequential_init_U
       (.D(D),
        .E(flow_control_loop_pipe_sequential_init_U_n_13),
        .Q(Q),
        .SR(flow_control_loop_pipe_sequential_init_U_n_14),
        .\ap_CS_fsm_reg[3] (\ap_CS_fsm_reg[3] ),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg(grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg),
        .grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg_reg(flow_control_loop_pipe_sequential_init_U_n_12),
        .grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg_reg_0(flow_control_loop_pipe_sequential_init_U_n_15),
        .grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg_reg_1(grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg_reg),
        .grp_maxpool_Pipeline_READ_INPUT_fu_132_ap_start_reg_reg_2(ap_enable_reg_pp0_iter1),
        .\i_fu_92_reg[2] (i_4_fu_307_p2),
        .\i_fu_92_reg[4] ({\i_fu_92_reg_n_5_[4] ,\i_fu_92_reg_n_5_[3] ,\i_fu_92_reg_n_5_[2] ,\i_fu_92_reg_n_5_[1] ,\i_fu_92_reg_n_5_[0] }));
  FDRE #(
    .INIT(1'b0)) 
    \i_fu_92_reg[0] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_13),
        .D(i_4_fu_307_p2[0]),
        .Q(\i_fu_92_reg_n_5_[0] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_14));
  FDRE #(
    .INIT(1'b0)) 
    \i_fu_92_reg[1] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_13),
        .D(i_4_fu_307_p2[1]),
        .Q(\i_fu_92_reg_n_5_[1] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_14));
  FDRE #(
    .INIT(1'b0)) 
    \i_fu_92_reg[2] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_13),
        .D(i_4_fu_307_p2[2]),
        .Q(\i_fu_92_reg_n_5_[2] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_14));
  FDRE #(
    .INIT(1'b0)) 
    \i_fu_92_reg[3] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_13),
        .D(i_4_fu_307_p2[3]),
        .Q(\i_fu_92_reg_n_5_[3] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_14));
  FDRE #(
    .INIT(1'b0)) 
    \i_fu_92_reg[4] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_13),
        .D(i_4_fu_307_p2[4]),
        .Q(\i_fu_92_reg_n_5_[4] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_14));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln55_fu_372_p2_carry_i_1
       (.I0(v_fu_364_p3[14]),
        .I1(max_val_5_fu_340_p3[14]),
        .I2(v_fu_364_p3[15]),
        .I3(max_val_5_fu_340_p3[15]),
        .O(DI[7]));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln55_fu_372_p2_carry_i_10
       (.I0(v_fu_364_p3[12]),
        .I1(max_val_5_fu_340_p3[12]),
        .I2(v_fu_364_p3[13]),
        .I3(max_val_5_fu_340_p3[13]),
        .O(S[6]));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln55_fu_372_p2_carry_i_11
       (.I0(v_fu_364_p3[10]),
        .I1(max_val_5_fu_340_p3[10]),
        .I2(v_fu_364_p3[11]),
        .I3(max_val_5_fu_340_p3[11]),
        .O(S[5]));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln55_fu_372_p2_carry_i_12
       (.I0(v_fu_364_p3[8]),
        .I1(max_val_5_fu_340_p3[8]),
        .I2(v_fu_364_p3[9]),
        .I3(max_val_5_fu_340_p3[9]),
        .O(S[4]));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln55_fu_372_p2_carry_i_13
       (.I0(v_fu_364_p3[6]),
        .I1(max_val_5_fu_340_p3[6]),
        .I2(v_fu_364_p3[7]),
        .I3(max_val_5_fu_340_p3[7]),
        .O(S[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln55_fu_372_p2_carry_i_14
       (.I0(v_fu_364_p3[4]),
        .I1(max_val_5_fu_340_p3[4]),
        .I2(v_fu_364_p3[5]),
        .I3(max_val_5_fu_340_p3[5]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln55_fu_372_p2_carry_i_15
       (.I0(v_fu_364_p3[2]),
        .I1(max_val_5_fu_340_p3[2]),
        .I2(v_fu_364_p3[3]),
        .I3(max_val_5_fu_340_p3[3]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln55_fu_372_p2_carry_i_16
       (.I0(v_fu_364_p3[0]),
        .I1(max_val_5_fu_340_p3[0]),
        .I2(v_fu_364_p3[1]),
        .I3(max_val_5_fu_340_p3[1]),
        .O(S[0]));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln55_fu_372_p2_carry_i_2
       (.I0(v_fu_364_p3[12]),
        .I1(max_val_5_fu_340_p3[12]),
        .I2(max_val_5_fu_340_p3[13]),
        .I3(v_fu_364_p3[13]),
        .O(DI[6]));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln55_fu_372_p2_carry_i_3
       (.I0(v_fu_364_p3[10]),
        .I1(max_val_5_fu_340_p3[10]),
        .I2(max_val_5_fu_340_p3[11]),
        .I3(v_fu_364_p3[11]),
        .O(DI[5]));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln55_fu_372_p2_carry_i_4
       (.I0(v_fu_364_p3[8]),
        .I1(max_val_5_fu_340_p3[8]),
        .I2(max_val_5_fu_340_p3[9]),
        .I3(v_fu_364_p3[9]),
        .O(DI[4]));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln55_fu_372_p2_carry_i_5
       (.I0(v_fu_364_p3[6]),
        .I1(max_val_5_fu_340_p3[6]),
        .I2(max_val_5_fu_340_p3[7]),
        .I3(v_fu_364_p3[7]),
        .O(DI[3]));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln55_fu_372_p2_carry_i_6
       (.I0(v_fu_364_p3[4]),
        .I1(max_val_5_fu_340_p3[4]),
        .I2(max_val_5_fu_340_p3[5]),
        .I3(v_fu_364_p3[5]),
        .O(DI[2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln55_fu_372_p2_carry_i_7
       (.I0(v_fu_364_p3[2]),
        .I1(max_val_5_fu_340_p3[2]),
        .I2(max_val_5_fu_340_p3[3]),
        .I3(v_fu_364_p3[3]),
        .O(DI[1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    icmp_ln55_fu_372_p2_carry_i_8
       (.I0(v_fu_364_p3[0]),
        .I1(max_val_5_fu_340_p3[0]),
        .I2(max_val_5_fu_340_p3[1]),
        .I3(v_fu_364_p3[1]),
        .O(DI[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    icmp_ln55_fu_372_p2_carry_i_9
       (.I0(v_fu_364_p3[14]),
        .I1(max_val_5_fu_340_p3[14]),
        .I2(max_val_5_fu_340_p3[15]),
        .I3(v_fu_364_p3[15]),
        .O(S[7]));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \input_10_fu_136[15]_i_1 
       (.I0(trunc_ln_reg_601[1]),
        .I1(trunc_ln_reg_601[0]),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(Q),
        .I4(trunc_ln34_reg_597[1]),
        .I5(trunc_ln34_reg_597[0]),
        .O(input_10_fu_1360));
  FDRE #(
    .INIT(1'b0)) 
    \input_10_fu_136_reg[0] 
       (.C(ap_clk),
        .CE(input_10_fu_1360),
        .D(\input_15_fu_156_reg[15]_0 [0]),
        .Q(input_10_fu_136[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_10_fu_136_reg[10] 
       (.C(ap_clk),
        .CE(input_10_fu_1360),
        .D(\input_15_fu_156_reg[15]_0 [10]),
        .Q(input_10_fu_136[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_10_fu_136_reg[11] 
       (.C(ap_clk),
        .CE(input_10_fu_1360),
        .D(\input_15_fu_156_reg[15]_0 [11]),
        .Q(input_10_fu_136[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_10_fu_136_reg[12] 
       (.C(ap_clk),
        .CE(input_10_fu_1360),
        .D(\input_15_fu_156_reg[15]_0 [12]),
        .Q(input_10_fu_136[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_10_fu_136_reg[13] 
       (.C(ap_clk),
        .CE(input_10_fu_1360),
        .D(\input_15_fu_156_reg[15]_0 [13]),
        .Q(input_10_fu_136[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_10_fu_136_reg[14] 
       (.C(ap_clk),
        .CE(input_10_fu_1360),
        .D(\input_15_fu_156_reg[15]_0 [14]),
        .Q(input_10_fu_136[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_10_fu_136_reg[15] 
       (.C(ap_clk),
        .CE(input_10_fu_1360),
        .D(\input_15_fu_156_reg[15]_0 [15]),
        .Q(input_10_fu_136[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_10_fu_136_reg[1] 
       (.C(ap_clk),
        .CE(input_10_fu_1360),
        .D(\input_15_fu_156_reg[15]_0 [1]),
        .Q(input_10_fu_136[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_10_fu_136_reg[2] 
       (.C(ap_clk),
        .CE(input_10_fu_1360),
        .D(\input_15_fu_156_reg[15]_0 [2]),
        .Q(input_10_fu_136[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_10_fu_136_reg[3] 
       (.C(ap_clk),
        .CE(input_10_fu_1360),
        .D(\input_15_fu_156_reg[15]_0 [3]),
        .Q(input_10_fu_136[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_10_fu_136_reg[4] 
       (.C(ap_clk),
        .CE(input_10_fu_1360),
        .D(\input_15_fu_156_reg[15]_0 [4]),
        .Q(input_10_fu_136[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_10_fu_136_reg[5] 
       (.C(ap_clk),
        .CE(input_10_fu_1360),
        .D(\input_15_fu_156_reg[15]_0 [5]),
        .Q(input_10_fu_136[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_10_fu_136_reg[6] 
       (.C(ap_clk),
        .CE(input_10_fu_1360),
        .D(\input_15_fu_156_reg[15]_0 [6]),
        .Q(input_10_fu_136[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_10_fu_136_reg[7] 
       (.C(ap_clk),
        .CE(input_10_fu_1360),
        .D(\input_15_fu_156_reg[15]_0 [7]),
        .Q(input_10_fu_136[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_10_fu_136_reg[8] 
       (.C(ap_clk),
        .CE(input_10_fu_1360),
        .D(\input_15_fu_156_reg[15]_0 [8]),
        .Q(input_10_fu_136[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_10_fu_136_reg[9] 
       (.C(ap_clk),
        .CE(input_10_fu_1360),
        .D(\input_15_fu_156_reg[15]_0 [9]),
        .Q(input_10_fu_136[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \input_11_fu_140[15]_i_1 
       (.I0(trunc_ln_reg_601[1]),
        .I1(trunc_ln_reg_601[0]),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(Q),
        .I4(trunc_ln34_reg_597[0]),
        .I5(trunc_ln34_reg_597[1]),
        .O(input_11_fu_1400));
  FDRE #(
    .INIT(1'b0)) 
    \input_11_fu_140_reg[0] 
       (.C(ap_clk),
        .CE(input_11_fu_1400),
        .D(\input_15_fu_156_reg[15]_0 [0]),
        .Q(input_11_fu_140[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_11_fu_140_reg[10] 
       (.C(ap_clk),
        .CE(input_11_fu_1400),
        .D(\input_15_fu_156_reg[15]_0 [10]),
        .Q(input_11_fu_140[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_11_fu_140_reg[11] 
       (.C(ap_clk),
        .CE(input_11_fu_1400),
        .D(\input_15_fu_156_reg[15]_0 [11]),
        .Q(input_11_fu_140[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_11_fu_140_reg[12] 
       (.C(ap_clk),
        .CE(input_11_fu_1400),
        .D(\input_15_fu_156_reg[15]_0 [12]),
        .Q(input_11_fu_140[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_11_fu_140_reg[13] 
       (.C(ap_clk),
        .CE(input_11_fu_1400),
        .D(\input_15_fu_156_reg[15]_0 [13]),
        .Q(input_11_fu_140[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_11_fu_140_reg[14] 
       (.C(ap_clk),
        .CE(input_11_fu_1400),
        .D(\input_15_fu_156_reg[15]_0 [14]),
        .Q(input_11_fu_140[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_11_fu_140_reg[15] 
       (.C(ap_clk),
        .CE(input_11_fu_1400),
        .D(\input_15_fu_156_reg[15]_0 [15]),
        .Q(input_11_fu_140[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_11_fu_140_reg[1] 
       (.C(ap_clk),
        .CE(input_11_fu_1400),
        .D(\input_15_fu_156_reg[15]_0 [1]),
        .Q(input_11_fu_140[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_11_fu_140_reg[2] 
       (.C(ap_clk),
        .CE(input_11_fu_1400),
        .D(\input_15_fu_156_reg[15]_0 [2]),
        .Q(input_11_fu_140[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_11_fu_140_reg[3] 
       (.C(ap_clk),
        .CE(input_11_fu_1400),
        .D(\input_15_fu_156_reg[15]_0 [3]),
        .Q(input_11_fu_140[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_11_fu_140_reg[4] 
       (.C(ap_clk),
        .CE(input_11_fu_1400),
        .D(\input_15_fu_156_reg[15]_0 [4]),
        .Q(input_11_fu_140[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_11_fu_140_reg[5] 
       (.C(ap_clk),
        .CE(input_11_fu_1400),
        .D(\input_15_fu_156_reg[15]_0 [5]),
        .Q(input_11_fu_140[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_11_fu_140_reg[6] 
       (.C(ap_clk),
        .CE(input_11_fu_1400),
        .D(\input_15_fu_156_reg[15]_0 [6]),
        .Q(input_11_fu_140[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_11_fu_140_reg[7] 
       (.C(ap_clk),
        .CE(input_11_fu_1400),
        .D(\input_15_fu_156_reg[15]_0 [7]),
        .Q(input_11_fu_140[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_11_fu_140_reg[8] 
       (.C(ap_clk),
        .CE(input_11_fu_1400),
        .D(\input_15_fu_156_reg[15]_0 [8]),
        .Q(input_11_fu_140[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_11_fu_140_reg[9] 
       (.C(ap_clk),
        .CE(input_11_fu_1400),
        .D(\input_15_fu_156_reg[15]_0 [9]),
        .Q(input_11_fu_140[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \input_12_fu_144[15]_i_1 
       (.I0(trunc_ln_reg_601[0]),
        .I1(trunc_ln_reg_601[1]),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(Q),
        .I4(trunc_ln34_reg_597[0]),
        .I5(trunc_ln34_reg_597[1]),
        .O(input_12_fu_1440));
  FDRE #(
    .INIT(1'b0)) 
    \input_12_fu_144_reg[0] 
       (.C(ap_clk),
        .CE(input_12_fu_1440),
        .D(\input_15_fu_156_reg[15]_0 [0]),
        .Q(input_12_fu_144[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_12_fu_144_reg[10] 
       (.C(ap_clk),
        .CE(input_12_fu_1440),
        .D(\input_15_fu_156_reg[15]_0 [10]),
        .Q(input_12_fu_144[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_12_fu_144_reg[11] 
       (.C(ap_clk),
        .CE(input_12_fu_1440),
        .D(\input_15_fu_156_reg[15]_0 [11]),
        .Q(input_12_fu_144[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_12_fu_144_reg[12] 
       (.C(ap_clk),
        .CE(input_12_fu_1440),
        .D(\input_15_fu_156_reg[15]_0 [12]),
        .Q(input_12_fu_144[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_12_fu_144_reg[13] 
       (.C(ap_clk),
        .CE(input_12_fu_1440),
        .D(\input_15_fu_156_reg[15]_0 [13]),
        .Q(input_12_fu_144[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_12_fu_144_reg[14] 
       (.C(ap_clk),
        .CE(input_12_fu_1440),
        .D(\input_15_fu_156_reg[15]_0 [14]),
        .Q(input_12_fu_144[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_12_fu_144_reg[15] 
       (.C(ap_clk),
        .CE(input_12_fu_1440),
        .D(\input_15_fu_156_reg[15]_0 [15]),
        .Q(input_12_fu_144[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_12_fu_144_reg[1] 
       (.C(ap_clk),
        .CE(input_12_fu_1440),
        .D(\input_15_fu_156_reg[15]_0 [1]),
        .Q(input_12_fu_144[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_12_fu_144_reg[2] 
       (.C(ap_clk),
        .CE(input_12_fu_1440),
        .D(\input_15_fu_156_reg[15]_0 [2]),
        .Q(input_12_fu_144[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_12_fu_144_reg[3] 
       (.C(ap_clk),
        .CE(input_12_fu_1440),
        .D(\input_15_fu_156_reg[15]_0 [3]),
        .Q(input_12_fu_144[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_12_fu_144_reg[4] 
       (.C(ap_clk),
        .CE(input_12_fu_1440),
        .D(\input_15_fu_156_reg[15]_0 [4]),
        .Q(input_12_fu_144[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_12_fu_144_reg[5] 
       (.C(ap_clk),
        .CE(input_12_fu_1440),
        .D(\input_15_fu_156_reg[15]_0 [5]),
        .Q(input_12_fu_144[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_12_fu_144_reg[6] 
       (.C(ap_clk),
        .CE(input_12_fu_1440),
        .D(\input_15_fu_156_reg[15]_0 [6]),
        .Q(input_12_fu_144[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_12_fu_144_reg[7] 
       (.C(ap_clk),
        .CE(input_12_fu_1440),
        .D(\input_15_fu_156_reg[15]_0 [7]),
        .Q(input_12_fu_144[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_12_fu_144_reg[8] 
       (.C(ap_clk),
        .CE(input_12_fu_1440),
        .D(\input_15_fu_156_reg[15]_0 [8]),
        .Q(input_12_fu_144[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_12_fu_144_reg[9] 
       (.C(ap_clk),
        .CE(input_12_fu_1440),
        .D(\input_15_fu_156_reg[15]_0 [9]),
        .Q(input_12_fu_144[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \input_13_fu_148[15]_i_1 
       (.I0(trunc_ln_reg_601[0]),
        .I1(trunc_ln_reg_601[1]),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(Q),
        .I4(trunc_ln34_reg_597[0]),
        .I5(trunc_ln34_reg_597[1]),
        .O(input_13_fu_1480));
  FDRE #(
    .INIT(1'b0)) 
    \input_13_fu_148_reg[0] 
       (.C(ap_clk),
        .CE(input_13_fu_1480),
        .D(\input_15_fu_156_reg[15]_0 [0]),
        .Q(input_13_fu_148[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_13_fu_148_reg[10] 
       (.C(ap_clk),
        .CE(input_13_fu_1480),
        .D(\input_15_fu_156_reg[15]_0 [10]),
        .Q(input_13_fu_148[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_13_fu_148_reg[11] 
       (.C(ap_clk),
        .CE(input_13_fu_1480),
        .D(\input_15_fu_156_reg[15]_0 [11]),
        .Q(input_13_fu_148[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_13_fu_148_reg[12] 
       (.C(ap_clk),
        .CE(input_13_fu_1480),
        .D(\input_15_fu_156_reg[15]_0 [12]),
        .Q(input_13_fu_148[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_13_fu_148_reg[13] 
       (.C(ap_clk),
        .CE(input_13_fu_1480),
        .D(\input_15_fu_156_reg[15]_0 [13]),
        .Q(input_13_fu_148[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_13_fu_148_reg[14] 
       (.C(ap_clk),
        .CE(input_13_fu_1480),
        .D(\input_15_fu_156_reg[15]_0 [14]),
        .Q(input_13_fu_148[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_13_fu_148_reg[15] 
       (.C(ap_clk),
        .CE(input_13_fu_1480),
        .D(\input_15_fu_156_reg[15]_0 [15]),
        .Q(input_13_fu_148[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_13_fu_148_reg[1] 
       (.C(ap_clk),
        .CE(input_13_fu_1480),
        .D(\input_15_fu_156_reg[15]_0 [1]),
        .Q(input_13_fu_148[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_13_fu_148_reg[2] 
       (.C(ap_clk),
        .CE(input_13_fu_1480),
        .D(\input_15_fu_156_reg[15]_0 [2]),
        .Q(input_13_fu_148[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_13_fu_148_reg[3] 
       (.C(ap_clk),
        .CE(input_13_fu_1480),
        .D(\input_15_fu_156_reg[15]_0 [3]),
        .Q(input_13_fu_148[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_13_fu_148_reg[4] 
       (.C(ap_clk),
        .CE(input_13_fu_1480),
        .D(\input_15_fu_156_reg[15]_0 [4]),
        .Q(input_13_fu_148[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_13_fu_148_reg[5] 
       (.C(ap_clk),
        .CE(input_13_fu_1480),
        .D(\input_15_fu_156_reg[15]_0 [5]),
        .Q(input_13_fu_148[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_13_fu_148_reg[6] 
       (.C(ap_clk),
        .CE(input_13_fu_1480),
        .D(\input_15_fu_156_reg[15]_0 [6]),
        .Q(input_13_fu_148[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_13_fu_148_reg[7] 
       (.C(ap_clk),
        .CE(input_13_fu_1480),
        .D(\input_15_fu_156_reg[15]_0 [7]),
        .Q(input_13_fu_148[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_13_fu_148_reg[8] 
       (.C(ap_clk),
        .CE(input_13_fu_1480),
        .D(\input_15_fu_156_reg[15]_0 [8]),
        .Q(input_13_fu_148[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_13_fu_148_reg[9] 
       (.C(ap_clk),
        .CE(input_13_fu_1480),
        .D(\input_15_fu_156_reg[15]_0 [9]),
        .Q(input_13_fu_148[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \input_14_fu_152[15]_i_1 
       (.I0(trunc_ln_reg_601[0]),
        .I1(trunc_ln_reg_601[1]),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(Q),
        .I4(trunc_ln34_reg_597[1]),
        .I5(trunc_ln34_reg_597[0]),
        .O(input_14_fu_1520));
  FDRE #(
    .INIT(1'b0)) 
    \input_14_fu_152_reg[0] 
       (.C(ap_clk),
        .CE(input_14_fu_1520),
        .D(\input_15_fu_156_reg[15]_0 [0]),
        .Q(input_14_fu_152[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_14_fu_152_reg[10] 
       (.C(ap_clk),
        .CE(input_14_fu_1520),
        .D(\input_15_fu_156_reg[15]_0 [10]),
        .Q(input_14_fu_152[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_14_fu_152_reg[11] 
       (.C(ap_clk),
        .CE(input_14_fu_1520),
        .D(\input_15_fu_156_reg[15]_0 [11]),
        .Q(input_14_fu_152[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_14_fu_152_reg[12] 
       (.C(ap_clk),
        .CE(input_14_fu_1520),
        .D(\input_15_fu_156_reg[15]_0 [12]),
        .Q(input_14_fu_152[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_14_fu_152_reg[13] 
       (.C(ap_clk),
        .CE(input_14_fu_1520),
        .D(\input_15_fu_156_reg[15]_0 [13]),
        .Q(input_14_fu_152[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_14_fu_152_reg[14] 
       (.C(ap_clk),
        .CE(input_14_fu_1520),
        .D(\input_15_fu_156_reg[15]_0 [14]),
        .Q(input_14_fu_152[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_14_fu_152_reg[15] 
       (.C(ap_clk),
        .CE(input_14_fu_1520),
        .D(\input_15_fu_156_reg[15]_0 [15]),
        .Q(input_14_fu_152[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_14_fu_152_reg[1] 
       (.C(ap_clk),
        .CE(input_14_fu_1520),
        .D(\input_15_fu_156_reg[15]_0 [1]),
        .Q(input_14_fu_152[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_14_fu_152_reg[2] 
       (.C(ap_clk),
        .CE(input_14_fu_1520),
        .D(\input_15_fu_156_reg[15]_0 [2]),
        .Q(input_14_fu_152[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_14_fu_152_reg[3] 
       (.C(ap_clk),
        .CE(input_14_fu_1520),
        .D(\input_15_fu_156_reg[15]_0 [3]),
        .Q(input_14_fu_152[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_14_fu_152_reg[4] 
       (.C(ap_clk),
        .CE(input_14_fu_1520),
        .D(\input_15_fu_156_reg[15]_0 [4]),
        .Q(input_14_fu_152[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_14_fu_152_reg[5] 
       (.C(ap_clk),
        .CE(input_14_fu_1520),
        .D(\input_15_fu_156_reg[15]_0 [5]),
        .Q(input_14_fu_152[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_14_fu_152_reg[6] 
       (.C(ap_clk),
        .CE(input_14_fu_1520),
        .D(\input_15_fu_156_reg[15]_0 [6]),
        .Q(input_14_fu_152[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_14_fu_152_reg[7] 
       (.C(ap_clk),
        .CE(input_14_fu_1520),
        .D(\input_15_fu_156_reg[15]_0 [7]),
        .Q(input_14_fu_152[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_14_fu_152_reg[8] 
       (.C(ap_clk),
        .CE(input_14_fu_1520),
        .D(\input_15_fu_156_reg[15]_0 [8]),
        .Q(input_14_fu_152[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_14_fu_152_reg[9] 
       (.C(ap_clk),
        .CE(input_14_fu_1520),
        .D(\input_15_fu_156_reg[15]_0 [9]),
        .Q(input_14_fu_152[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \input_15_fu_156[15]_i_1 
       (.I0(trunc_ln_reg_601[0]),
        .I1(trunc_ln_reg_601[1]),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(Q),
        .I4(trunc_ln34_reg_597[0]),
        .I5(trunc_ln34_reg_597[1]),
        .O(input_15_fu_1560));
  FDRE #(
    .INIT(1'b0)) 
    \input_15_fu_156_reg[0] 
       (.C(ap_clk),
        .CE(input_15_fu_1560),
        .D(\input_15_fu_156_reg[15]_0 [0]),
        .Q(input_15_fu_156[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_15_fu_156_reg[10] 
       (.C(ap_clk),
        .CE(input_15_fu_1560),
        .D(\input_15_fu_156_reg[15]_0 [10]),
        .Q(input_15_fu_156[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_15_fu_156_reg[11] 
       (.C(ap_clk),
        .CE(input_15_fu_1560),
        .D(\input_15_fu_156_reg[15]_0 [11]),
        .Q(input_15_fu_156[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_15_fu_156_reg[12] 
       (.C(ap_clk),
        .CE(input_15_fu_1560),
        .D(\input_15_fu_156_reg[15]_0 [12]),
        .Q(input_15_fu_156[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_15_fu_156_reg[13] 
       (.C(ap_clk),
        .CE(input_15_fu_1560),
        .D(\input_15_fu_156_reg[15]_0 [13]),
        .Q(input_15_fu_156[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_15_fu_156_reg[14] 
       (.C(ap_clk),
        .CE(input_15_fu_1560),
        .D(\input_15_fu_156_reg[15]_0 [14]),
        .Q(input_15_fu_156[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_15_fu_156_reg[15] 
       (.C(ap_clk),
        .CE(input_15_fu_1560),
        .D(\input_15_fu_156_reg[15]_0 [15]),
        .Q(input_15_fu_156[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_15_fu_156_reg[1] 
       (.C(ap_clk),
        .CE(input_15_fu_1560),
        .D(\input_15_fu_156_reg[15]_0 [1]),
        .Q(input_15_fu_156[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_15_fu_156_reg[2] 
       (.C(ap_clk),
        .CE(input_15_fu_1560),
        .D(\input_15_fu_156_reg[15]_0 [2]),
        .Q(input_15_fu_156[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_15_fu_156_reg[3] 
       (.C(ap_clk),
        .CE(input_15_fu_1560),
        .D(\input_15_fu_156_reg[15]_0 [3]),
        .Q(input_15_fu_156[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_15_fu_156_reg[4] 
       (.C(ap_clk),
        .CE(input_15_fu_1560),
        .D(\input_15_fu_156_reg[15]_0 [4]),
        .Q(input_15_fu_156[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_15_fu_156_reg[5] 
       (.C(ap_clk),
        .CE(input_15_fu_1560),
        .D(\input_15_fu_156_reg[15]_0 [5]),
        .Q(input_15_fu_156[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_15_fu_156_reg[6] 
       (.C(ap_clk),
        .CE(input_15_fu_1560),
        .D(\input_15_fu_156_reg[15]_0 [6]),
        .Q(input_15_fu_156[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_15_fu_156_reg[7] 
       (.C(ap_clk),
        .CE(input_15_fu_1560),
        .D(\input_15_fu_156_reg[15]_0 [7]),
        .Q(input_15_fu_156[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_15_fu_156_reg[8] 
       (.C(ap_clk),
        .CE(input_15_fu_1560),
        .D(\input_15_fu_156_reg[15]_0 [8]),
        .Q(input_15_fu_156[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_15_fu_156_reg[9] 
       (.C(ap_clk),
        .CE(input_15_fu_1560),
        .D(\input_15_fu_156_reg[15]_0 [9]),
        .Q(input_15_fu_156[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    \input_1_fu_100[15]_i_1 
       (.I0(trunc_ln_reg_601[0]),
        .I1(trunc_ln_reg_601[1]),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(Q),
        .I4(trunc_ln34_reg_597[0]),
        .I5(trunc_ln34_reg_597[1]),
        .O(input_1_fu_1000));
  FDRE #(
    .INIT(1'b0)) 
    \input_1_fu_100_reg[0] 
       (.C(ap_clk),
        .CE(input_1_fu_1000),
        .D(\input_15_fu_156_reg[15]_0 [0]),
        .Q(input_1_fu_100[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_1_fu_100_reg[10] 
       (.C(ap_clk),
        .CE(input_1_fu_1000),
        .D(\input_15_fu_156_reg[15]_0 [10]),
        .Q(input_1_fu_100[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_1_fu_100_reg[11] 
       (.C(ap_clk),
        .CE(input_1_fu_1000),
        .D(\input_15_fu_156_reg[15]_0 [11]),
        .Q(input_1_fu_100[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_1_fu_100_reg[12] 
       (.C(ap_clk),
        .CE(input_1_fu_1000),
        .D(\input_15_fu_156_reg[15]_0 [12]),
        .Q(input_1_fu_100[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_1_fu_100_reg[13] 
       (.C(ap_clk),
        .CE(input_1_fu_1000),
        .D(\input_15_fu_156_reg[15]_0 [13]),
        .Q(input_1_fu_100[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_1_fu_100_reg[14] 
       (.C(ap_clk),
        .CE(input_1_fu_1000),
        .D(\input_15_fu_156_reg[15]_0 [14]),
        .Q(input_1_fu_100[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_1_fu_100_reg[15] 
       (.C(ap_clk),
        .CE(input_1_fu_1000),
        .D(\input_15_fu_156_reg[15]_0 [15]),
        .Q(input_1_fu_100[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_1_fu_100_reg[1] 
       (.C(ap_clk),
        .CE(input_1_fu_1000),
        .D(\input_15_fu_156_reg[15]_0 [1]),
        .Q(input_1_fu_100[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_1_fu_100_reg[2] 
       (.C(ap_clk),
        .CE(input_1_fu_1000),
        .D(\input_15_fu_156_reg[15]_0 [2]),
        .Q(input_1_fu_100[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_1_fu_100_reg[3] 
       (.C(ap_clk),
        .CE(input_1_fu_1000),
        .D(\input_15_fu_156_reg[15]_0 [3]),
        .Q(input_1_fu_100[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_1_fu_100_reg[4] 
       (.C(ap_clk),
        .CE(input_1_fu_1000),
        .D(\input_15_fu_156_reg[15]_0 [4]),
        .Q(input_1_fu_100[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_1_fu_100_reg[5] 
       (.C(ap_clk),
        .CE(input_1_fu_1000),
        .D(\input_15_fu_156_reg[15]_0 [5]),
        .Q(input_1_fu_100[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_1_fu_100_reg[6] 
       (.C(ap_clk),
        .CE(input_1_fu_1000),
        .D(\input_15_fu_156_reg[15]_0 [6]),
        .Q(input_1_fu_100[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_1_fu_100_reg[7] 
       (.C(ap_clk),
        .CE(input_1_fu_1000),
        .D(\input_15_fu_156_reg[15]_0 [7]),
        .Q(input_1_fu_100[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_1_fu_100_reg[8] 
       (.C(ap_clk),
        .CE(input_1_fu_1000),
        .D(\input_15_fu_156_reg[15]_0 [8]),
        .Q(input_1_fu_100[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_1_fu_100_reg[9] 
       (.C(ap_clk),
        .CE(input_1_fu_1000),
        .D(\input_15_fu_156_reg[15]_0 [9]),
        .Q(input_1_fu_100[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    \input_2_fu_104[15]_i_1 
       (.I0(trunc_ln_reg_601[0]),
        .I1(trunc_ln_reg_601[1]),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(Q),
        .I4(trunc_ln34_reg_597[1]),
        .I5(trunc_ln34_reg_597[0]),
        .O(input_2_fu_1040));
  FDRE #(
    .INIT(1'b0)) 
    \input_2_fu_104_reg[0] 
       (.C(ap_clk),
        .CE(input_2_fu_1040),
        .D(\input_15_fu_156_reg[15]_0 [0]),
        .Q(input_2_fu_104[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_2_fu_104_reg[10] 
       (.C(ap_clk),
        .CE(input_2_fu_1040),
        .D(\input_15_fu_156_reg[15]_0 [10]),
        .Q(input_2_fu_104[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_2_fu_104_reg[11] 
       (.C(ap_clk),
        .CE(input_2_fu_1040),
        .D(\input_15_fu_156_reg[15]_0 [11]),
        .Q(input_2_fu_104[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_2_fu_104_reg[12] 
       (.C(ap_clk),
        .CE(input_2_fu_1040),
        .D(\input_15_fu_156_reg[15]_0 [12]),
        .Q(input_2_fu_104[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_2_fu_104_reg[13] 
       (.C(ap_clk),
        .CE(input_2_fu_1040),
        .D(\input_15_fu_156_reg[15]_0 [13]),
        .Q(input_2_fu_104[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_2_fu_104_reg[14] 
       (.C(ap_clk),
        .CE(input_2_fu_1040),
        .D(\input_15_fu_156_reg[15]_0 [14]),
        .Q(input_2_fu_104[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_2_fu_104_reg[15] 
       (.C(ap_clk),
        .CE(input_2_fu_1040),
        .D(\input_15_fu_156_reg[15]_0 [15]),
        .Q(input_2_fu_104[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_2_fu_104_reg[1] 
       (.C(ap_clk),
        .CE(input_2_fu_1040),
        .D(\input_15_fu_156_reg[15]_0 [1]),
        .Q(input_2_fu_104[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_2_fu_104_reg[2] 
       (.C(ap_clk),
        .CE(input_2_fu_1040),
        .D(\input_15_fu_156_reg[15]_0 [2]),
        .Q(input_2_fu_104[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_2_fu_104_reg[3] 
       (.C(ap_clk),
        .CE(input_2_fu_1040),
        .D(\input_15_fu_156_reg[15]_0 [3]),
        .Q(input_2_fu_104[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_2_fu_104_reg[4] 
       (.C(ap_clk),
        .CE(input_2_fu_1040),
        .D(\input_15_fu_156_reg[15]_0 [4]),
        .Q(input_2_fu_104[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_2_fu_104_reg[5] 
       (.C(ap_clk),
        .CE(input_2_fu_1040),
        .D(\input_15_fu_156_reg[15]_0 [5]),
        .Q(input_2_fu_104[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_2_fu_104_reg[6] 
       (.C(ap_clk),
        .CE(input_2_fu_1040),
        .D(\input_15_fu_156_reg[15]_0 [6]),
        .Q(input_2_fu_104[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_2_fu_104_reg[7] 
       (.C(ap_clk),
        .CE(input_2_fu_1040),
        .D(\input_15_fu_156_reg[15]_0 [7]),
        .Q(input_2_fu_104[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_2_fu_104_reg[8] 
       (.C(ap_clk),
        .CE(input_2_fu_1040),
        .D(\input_15_fu_156_reg[15]_0 [8]),
        .Q(input_2_fu_104[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_2_fu_104_reg[9] 
       (.C(ap_clk),
        .CE(input_2_fu_1040),
        .D(\input_15_fu_156_reg[15]_0 [9]),
        .Q(input_2_fu_104[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \input_3_fu_108[15]_i_1 
       (.I0(trunc_ln_reg_601[0]),
        .I1(trunc_ln_reg_601[1]),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(Q),
        .I4(trunc_ln34_reg_597[0]),
        .I5(trunc_ln34_reg_597[1]),
        .O(input_3_fu_1080));
  FDRE #(
    .INIT(1'b0)) 
    \input_3_fu_108_reg[0] 
       (.C(ap_clk),
        .CE(input_3_fu_1080),
        .D(\input_15_fu_156_reg[15]_0 [0]),
        .Q(input_3_fu_108[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_3_fu_108_reg[10] 
       (.C(ap_clk),
        .CE(input_3_fu_1080),
        .D(\input_15_fu_156_reg[15]_0 [10]),
        .Q(input_3_fu_108[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_3_fu_108_reg[11] 
       (.C(ap_clk),
        .CE(input_3_fu_1080),
        .D(\input_15_fu_156_reg[15]_0 [11]),
        .Q(input_3_fu_108[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_3_fu_108_reg[12] 
       (.C(ap_clk),
        .CE(input_3_fu_1080),
        .D(\input_15_fu_156_reg[15]_0 [12]),
        .Q(input_3_fu_108[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_3_fu_108_reg[13] 
       (.C(ap_clk),
        .CE(input_3_fu_1080),
        .D(\input_15_fu_156_reg[15]_0 [13]),
        .Q(input_3_fu_108[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_3_fu_108_reg[14] 
       (.C(ap_clk),
        .CE(input_3_fu_1080),
        .D(\input_15_fu_156_reg[15]_0 [14]),
        .Q(input_3_fu_108[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_3_fu_108_reg[15] 
       (.C(ap_clk),
        .CE(input_3_fu_1080),
        .D(\input_15_fu_156_reg[15]_0 [15]),
        .Q(input_3_fu_108[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_3_fu_108_reg[1] 
       (.C(ap_clk),
        .CE(input_3_fu_1080),
        .D(\input_15_fu_156_reg[15]_0 [1]),
        .Q(input_3_fu_108[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_3_fu_108_reg[2] 
       (.C(ap_clk),
        .CE(input_3_fu_1080),
        .D(\input_15_fu_156_reg[15]_0 [2]),
        .Q(input_3_fu_108[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_3_fu_108_reg[3] 
       (.C(ap_clk),
        .CE(input_3_fu_1080),
        .D(\input_15_fu_156_reg[15]_0 [3]),
        .Q(input_3_fu_108[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_3_fu_108_reg[4] 
       (.C(ap_clk),
        .CE(input_3_fu_1080),
        .D(\input_15_fu_156_reg[15]_0 [4]),
        .Q(input_3_fu_108[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_3_fu_108_reg[5] 
       (.C(ap_clk),
        .CE(input_3_fu_1080),
        .D(\input_15_fu_156_reg[15]_0 [5]),
        .Q(input_3_fu_108[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_3_fu_108_reg[6] 
       (.C(ap_clk),
        .CE(input_3_fu_1080),
        .D(\input_15_fu_156_reg[15]_0 [6]),
        .Q(input_3_fu_108[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_3_fu_108_reg[7] 
       (.C(ap_clk),
        .CE(input_3_fu_1080),
        .D(\input_15_fu_156_reg[15]_0 [7]),
        .Q(input_3_fu_108[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_3_fu_108_reg[8] 
       (.C(ap_clk),
        .CE(input_3_fu_1080),
        .D(\input_15_fu_156_reg[15]_0 [8]),
        .Q(input_3_fu_108[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_3_fu_108_reg[9] 
       (.C(ap_clk),
        .CE(input_3_fu_1080),
        .D(\input_15_fu_156_reg[15]_0 [9]),
        .Q(input_3_fu_108[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \input_4_fu_112[15]_i_1 
       (.I0(trunc_ln_reg_601[0]),
        .I1(trunc_ln_reg_601[1]),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(Q),
        .I4(trunc_ln34_reg_597[0]),
        .I5(trunc_ln34_reg_597[1]),
        .O(input_4_fu_1120));
  FDRE #(
    .INIT(1'b0)) 
    \input_4_fu_112_reg[0] 
       (.C(ap_clk),
        .CE(input_4_fu_1120),
        .D(\input_15_fu_156_reg[15]_0 [0]),
        .Q(input_4_fu_112[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_4_fu_112_reg[10] 
       (.C(ap_clk),
        .CE(input_4_fu_1120),
        .D(\input_15_fu_156_reg[15]_0 [10]),
        .Q(input_4_fu_112[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_4_fu_112_reg[11] 
       (.C(ap_clk),
        .CE(input_4_fu_1120),
        .D(\input_15_fu_156_reg[15]_0 [11]),
        .Q(input_4_fu_112[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_4_fu_112_reg[12] 
       (.C(ap_clk),
        .CE(input_4_fu_1120),
        .D(\input_15_fu_156_reg[15]_0 [12]),
        .Q(input_4_fu_112[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_4_fu_112_reg[13] 
       (.C(ap_clk),
        .CE(input_4_fu_1120),
        .D(\input_15_fu_156_reg[15]_0 [13]),
        .Q(input_4_fu_112[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_4_fu_112_reg[14] 
       (.C(ap_clk),
        .CE(input_4_fu_1120),
        .D(\input_15_fu_156_reg[15]_0 [14]),
        .Q(input_4_fu_112[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_4_fu_112_reg[15] 
       (.C(ap_clk),
        .CE(input_4_fu_1120),
        .D(\input_15_fu_156_reg[15]_0 [15]),
        .Q(input_4_fu_112[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_4_fu_112_reg[1] 
       (.C(ap_clk),
        .CE(input_4_fu_1120),
        .D(\input_15_fu_156_reg[15]_0 [1]),
        .Q(input_4_fu_112[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_4_fu_112_reg[2] 
       (.C(ap_clk),
        .CE(input_4_fu_1120),
        .D(\input_15_fu_156_reg[15]_0 [2]),
        .Q(input_4_fu_112[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_4_fu_112_reg[3] 
       (.C(ap_clk),
        .CE(input_4_fu_1120),
        .D(\input_15_fu_156_reg[15]_0 [3]),
        .Q(input_4_fu_112[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_4_fu_112_reg[4] 
       (.C(ap_clk),
        .CE(input_4_fu_1120),
        .D(\input_15_fu_156_reg[15]_0 [4]),
        .Q(input_4_fu_112[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_4_fu_112_reg[5] 
       (.C(ap_clk),
        .CE(input_4_fu_1120),
        .D(\input_15_fu_156_reg[15]_0 [5]),
        .Q(input_4_fu_112[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_4_fu_112_reg[6] 
       (.C(ap_clk),
        .CE(input_4_fu_1120),
        .D(\input_15_fu_156_reg[15]_0 [6]),
        .Q(input_4_fu_112[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_4_fu_112_reg[7] 
       (.C(ap_clk),
        .CE(input_4_fu_1120),
        .D(\input_15_fu_156_reg[15]_0 [7]),
        .Q(input_4_fu_112[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_4_fu_112_reg[8] 
       (.C(ap_clk),
        .CE(input_4_fu_1120),
        .D(\input_15_fu_156_reg[15]_0 [8]),
        .Q(input_4_fu_112[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_4_fu_112_reg[9] 
       (.C(ap_clk),
        .CE(input_4_fu_1120),
        .D(\input_15_fu_156_reg[15]_0 [9]),
        .Q(input_4_fu_112[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \input_5_fu_116[15]_i_1 
       (.I0(trunc_ln_reg_601[0]),
        .I1(trunc_ln_reg_601[1]),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(Q),
        .I4(trunc_ln34_reg_597[0]),
        .I5(trunc_ln34_reg_597[1]),
        .O(input_5_fu_1160));
  FDRE #(
    .INIT(1'b0)) 
    \input_5_fu_116_reg[0] 
       (.C(ap_clk),
        .CE(input_5_fu_1160),
        .D(\input_15_fu_156_reg[15]_0 [0]),
        .Q(input_5_fu_116[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_5_fu_116_reg[10] 
       (.C(ap_clk),
        .CE(input_5_fu_1160),
        .D(\input_15_fu_156_reg[15]_0 [10]),
        .Q(input_5_fu_116[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_5_fu_116_reg[11] 
       (.C(ap_clk),
        .CE(input_5_fu_1160),
        .D(\input_15_fu_156_reg[15]_0 [11]),
        .Q(input_5_fu_116[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_5_fu_116_reg[12] 
       (.C(ap_clk),
        .CE(input_5_fu_1160),
        .D(\input_15_fu_156_reg[15]_0 [12]),
        .Q(input_5_fu_116[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_5_fu_116_reg[13] 
       (.C(ap_clk),
        .CE(input_5_fu_1160),
        .D(\input_15_fu_156_reg[15]_0 [13]),
        .Q(input_5_fu_116[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_5_fu_116_reg[14] 
       (.C(ap_clk),
        .CE(input_5_fu_1160),
        .D(\input_15_fu_156_reg[15]_0 [14]),
        .Q(input_5_fu_116[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_5_fu_116_reg[15] 
       (.C(ap_clk),
        .CE(input_5_fu_1160),
        .D(\input_15_fu_156_reg[15]_0 [15]),
        .Q(input_5_fu_116[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_5_fu_116_reg[1] 
       (.C(ap_clk),
        .CE(input_5_fu_1160),
        .D(\input_15_fu_156_reg[15]_0 [1]),
        .Q(input_5_fu_116[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_5_fu_116_reg[2] 
       (.C(ap_clk),
        .CE(input_5_fu_1160),
        .D(\input_15_fu_156_reg[15]_0 [2]),
        .Q(input_5_fu_116[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_5_fu_116_reg[3] 
       (.C(ap_clk),
        .CE(input_5_fu_1160),
        .D(\input_15_fu_156_reg[15]_0 [3]),
        .Q(input_5_fu_116[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_5_fu_116_reg[4] 
       (.C(ap_clk),
        .CE(input_5_fu_1160),
        .D(\input_15_fu_156_reg[15]_0 [4]),
        .Q(input_5_fu_116[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_5_fu_116_reg[5] 
       (.C(ap_clk),
        .CE(input_5_fu_1160),
        .D(\input_15_fu_156_reg[15]_0 [5]),
        .Q(input_5_fu_116[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_5_fu_116_reg[6] 
       (.C(ap_clk),
        .CE(input_5_fu_1160),
        .D(\input_15_fu_156_reg[15]_0 [6]),
        .Q(input_5_fu_116[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_5_fu_116_reg[7] 
       (.C(ap_clk),
        .CE(input_5_fu_1160),
        .D(\input_15_fu_156_reg[15]_0 [7]),
        .Q(input_5_fu_116[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_5_fu_116_reg[8] 
       (.C(ap_clk),
        .CE(input_5_fu_1160),
        .D(\input_15_fu_156_reg[15]_0 [8]),
        .Q(input_5_fu_116[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_5_fu_116_reg[9] 
       (.C(ap_clk),
        .CE(input_5_fu_1160),
        .D(\input_15_fu_156_reg[15]_0 [9]),
        .Q(input_5_fu_116[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \input_6_fu_120[15]_i_1 
       (.I0(trunc_ln_reg_601[0]),
        .I1(trunc_ln_reg_601[1]),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(Q),
        .I4(trunc_ln34_reg_597[1]),
        .I5(trunc_ln34_reg_597[0]),
        .O(input_6_fu_1200));
  FDRE #(
    .INIT(1'b0)) 
    \input_6_fu_120_reg[0] 
       (.C(ap_clk),
        .CE(input_6_fu_1200),
        .D(\input_15_fu_156_reg[15]_0 [0]),
        .Q(input_6_fu_120[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_6_fu_120_reg[10] 
       (.C(ap_clk),
        .CE(input_6_fu_1200),
        .D(\input_15_fu_156_reg[15]_0 [10]),
        .Q(input_6_fu_120[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_6_fu_120_reg[11] 
       (.C(ap_clk),
        .CE(input_6_fu_1200),
        .D(\input_15_fu_156_reg[15]_0 [11]),
        .Q(input_6_fu_120[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_6_fu_120_reg[12] 
       (.C(ap_clk),
        .CE(input_6_fu_1200),
        .D(\input_15_fu_156_reg[15]_0 [12]),
        .Q(input_6_fu_120[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_6_fu_120_reg[13] 
       (.C(ap_clk),
        .CE(input_6_fu_1200),
        .D(\input_15_fu_156_reg[15]_0 [13]),
        .Q(input_6_fu_120[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_6_fu_120_reg[14] 
       (.C(ap_clk),
        .CE(input_6_fu_1200),
        .D(\input_15_fu_156_reg[15]_0 [14]),
        .Q(input_6_fu_120[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_6_fu_120_reg[15] 
       (.C(ap_clk),
        .CE(input_6_fu_1200),
        .D(\input_15_fu_156_reg[15]_0 [15]),
        .Q(input_6_fu_120[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_6_fu_120_reg[1] 
       (.C(ap_clk),
        .CE(input_6_fu_1200),
        .D(\input_15_fu_156_reg[15]_0 [1]),
        .Q(input_6_fu_120[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_6_fu_120_reg[2] 
       (.C(ap_clk),
        .CE(input_6_fu_1200),
        .D(\input_15_fu_156_reg[15]_0 [2]),
        .Q(input_6_fu_120[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_6_fu_120_reg[3] 
       (.C(ap_clk),
        .CE(input_6_fu_1200),
        .D(\input_15_fu_156_reg[15]_0 [3]),
        .Q(input_6_fu_120[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_6_fu_120_reg[4] 
       (.C(ap_clk),
        .CE(input_6_fu_1200),
        .D(\input_15_fu_156_reg[15]_0 [4]),
        .Q(input_6_fu_120[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_6_fu_120_reg[5] 
       (.C(ap_clk),
        .CE(input_6_fu_1200),
        .D(\input_15_fu_156_reg[15]_0 [5]),
        .Q(input_6_fu_120[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_6_fu_120_reg[6] 
       (.C(ap_clk),
        .CE(input_6_fu_1200),
        .D(\input_15_fu_156_reg[15]_0 [6]),
        .Q(input_6_fu_120[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_6_fu_120_reg[7] 
       (.C(ap_clk),
        .CE(input_6_fu_1200),
        .D(\input_15_fu_156_reg[15]_0 [7]),
        .Q(input_6_fu_120[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_6_fu_120_reg[8] 
       (.C(ap_clk),
        .CE(input_6_fu_1200),
        .D(\input_15_fu_156_reg[15]_0 [8]),
        .Q(input_6_fu_120[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_6_fu_120_reg[9] 
       (.C(ap_clk),
        .CE(input_6_fu_1200),
        .D(\input_15_fu_156_reg[15]_0 [9]),
        .Q(input_6_fu_120[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \input_7_fu_124[15]_i_1 
       (.I0(trunc_ln_reg_601[0]),
        .I1(trunc_ln_reg_601[1]),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(Q),
        .I4(trunc_ln34_reg_597[0]),
        .I5(trunc_ln34_reg_597[1]),
        .O(input_7_fu_1240));
  FDRE #(
    .INIT(1'b0)) 
    \input_7_fu_124_reg[0] 
       (.C(ap_clk),
        .CE(input_7_fu_1240),
        .D(\input_15_fu_156_reg[15]_0 [0]),
        .Q(input_7_fu_124[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_7_fu_124_reg[10] 
       (.C(ap_clk),
        .CE(input_7_fu_1240),
        .D(\input_15_fu_156_reg[15]_0 [10]),
        .Q(input_7_fu_124[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_7_fu_124_reg[11] 
       (.C(ap_clk),
        .CE(input_7_fu_1240),
        .D(\input_15_fu_156_reg[15]_0 [11]),
        .Q(input_7_fu_124[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_7_fu_124_reg[12] 
       (.C(ap_clk),
        .CE(input_7_fu_1240),
        .D(\input_15_fu_156_reg[15]_0 [12]),
        .Q(input_7_fu_124[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_7_fu_124_reg[13] 
       (.C(ap_clk),
        .CE(input_7_fu_1240),
        .D(\input_15_fu_156_reg[15]_0 [13]),
        .Q(input_7_fu_124[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_7_fu_124_reg[14] 
       (.C(ap_clk),
        .CE(input_7_fu_1240),
        .D(\input_15_fu_156_reg[15]_0 [14]),
        .Q(input_7_fu_124[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_7_fu_124_reg[15] 
       (.C(ap_clk),
        .CE(input_7_fu_1240),
        .D(\input_15_fu_156_reg[15]_0 [15]),
        .Q(input_7_fu_124[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_7_fu_124_reg[1] 
       (.C(ap_clk),
        .CE(input_7_fu_1240),
        .D(\input_15_fu_156_reg[15]_0 [1]),
        .Q(input_7_fu_124[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_7_fu_124_reg[2] 
       (.C(ap_clk),
        .CE(input_7_fu_1240),
        .D(\input_15_fu_156_reg[15]_0 [2]),
        .Q(input_7_fu_124[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_7_fu_124_reg[3] 
       (.C(ap_clk),
        .CE(input_7_fu_1240),
        .D(\input_15_fu_156_reg[15]_0 [3]),
        .Q(input_7_fu_124[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_7_fu_124_reg[4] 
       (.C(ap_clk),
        .CE(input_7_fu_1240),
        .D(\input_15_fu_156_reg[15]_0 [4]),
        .Q(input_7_fu_124[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_7_fu_124_reg[5] 
       (.C(ap_clk),
        .CE(input_7_fu_1240),
        .D(\input_15_fu_156_reg[15]_0 [5]),
        .Q(input_7_fu_124[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_7_fu_124_reg[6] 
       (.C(ap_clk),
        .CE(input_7_fu_1240),
        .D(\input_15_fu_156_reg[15]_0 [6]),
        .Q(input_7_fu_124[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_7_fu_124_reg[7] 
       (.C(ap_clk),
        .CE(input_7_fu_1240),
        .D(\input_15_fu_156_reg[15]_0 [7]),
        .Q(input_7_fu_124[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_7_fu_124_reg[8] 
       (.C(ap_clk),
        .CE(input_7_fu_1240),
        .D(\input_15_fu_156_reg[15]_0 [8]),
        .Q(input_7_fu_124[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_7_fu_124_reg[9] 
       (.C(ap_clk),
        .CE(input_7_fu_1240),
        .D(\input_15_fu_156_reg[15]_0 [9]),
        .Q(input_7_fu_124[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \input_8_fu_128[15]_i_1 
       (.I0(trunc_ln_reg_601[1]),
        .I1(trunc_ln_reg_601[0]),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(Q),
        .I4(trunc_ln34_reg_597[0]),
        .I5(trunc_ln34_reg_597[1]),
        .O(input_8_fu_1280));
  FDRE #(
    .INIT(1'b0)) 
    \input_8_fu_128_reg[0] 
       (.C(ap_clk),
        .CE(input_8_fu_1280),
        .D(\input_15_fu_156_reg[15]_0 [0]),
        .Q(input_8_fu_128[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_8_fu_128_reg[10] 
       (.C(ap_clk),
        .CE(input_8_fu_1280),
        .D(\input_15_fu_156_reg[15]_0 [10]),
        .Q(input_8_fu_128[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_8_fu_128_reg[11] 
       (.C(ap_clk),
        .CE(input_8_fu_1280),
        .D(\input_15_fu_156_reg[15]_0 [11]),
        .Q(input_8_fu_128[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_8_fu_128_reg[12] 
       (.C(ap_clk),
        .CE(input_8_fu_1280),
        .D(\input_15_fu_156_reg[15]_0 [12]),
        .Q(input_8_fu_128[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_8_fu_128_reg[13] 
       (.C(ap_clk),
        .CE(input_8_fu_1280),
        .D(\input_15_fu_156_reg[15]_0 [13]),
        .Q(input_8_fu_128[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_8_fu_128_reg[14] 
       (.C(ap_clk),
        .CE(input_8_fu_1280),
        .D(\input_15_fu_156_reg[15]_0 [14]),
        .Q(input_8_fu_128[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_8_fu_128_reg[15] 
       (.C(ap_clk),
        .CE(input_8_fu_1280),
        .D(\input_15_fu_156_reg[15]_0 [15]),
        .Q(input_8_fu_128[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_8_fu_128_reg[1] 
       (.C(ap_clk),
        .CE(input_8_fu_1280),
        .D(\input_15_fu_156_reg[15]_0 [1]),
        .Q(input_8_fu_128[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_8_fu_128_reg[2] 
       (.C(ap_clk),
        .CE(input_8_fu_1280),
        .D(\input_15_fu_156_reg[15]_0 [2]),
        .Q(input_8_fu_128[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_8_fu_128_reg[3] 
       (.C(ap_clk),
        .CE(input_8_fu_1280),
        .D(\input_15_fu_156_reg[15]_0 [3]),
        .Q(input_8_fu_128[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_8_fu_128_reg[4] 
       (.C(ap_clk),
        .CE(input_8_fu_1280),
        .D(\input_15_fu_156_reg[15]_0 [4]),
        .Q(input_8_fu_128[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_8_fu_128_reg[5] 
       (.C(ap_clk),
        .CE(input_8_fu_1280),
        .D(\input_15_fu_156_reg[15]_0 [5]),
        .Q(input_8_fu_128[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_8_fu_128_reg[6] 
       (.C(ap_clk),
        .CE(input_8_fu_1280),
        .D(\input_15_fu_156_reg[15]_0 [6]),
        .Q(input_8_fu_128[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_8_fu_128_reg[7] 
       (.C(ap_clk),
        .CE(input_8_fu_1280),
        .D(\input_15_fu_156_reg[15]_0 [7]),
        .Q(input_8_fu_128[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_8_fu_128_reg[8] 
       (.C(ap_clk),
        .CE(input_8_fu_1280),
        .D(\input_15_fu_156_reg[15]_0 [8]),
        .Q(input_8_fu_128[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_8_fu_128_reg[9] 
       (.C(ap_clk),
        .CE(input_8_fu_1280),
        .D(\input_15_fu_156_reg[15]_0 [9]),
        .Q(input_8_fu_128[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \input_9_fu_132[15]_i_1 
       (.I0(trunc_ln_reg_601[1]),
        .I1(trunc_ln_reg_601[0]),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(Q),
        .I4(trunc_ln34_reg_597[0]),
        .I5(trunc_ln34_reg_597[1]),
        .O(input_9_fu_1320));
  FDRE #(
    .INIT(1'b0)) 
    \input_9_fu_132_reg[0] 
       (.C(ap_clk),
        .CE(input_9_fu_1320),
        .D(\input_15_fu_156_reg[15]_0 [0]),
        .Q(input_9_fu_132[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_9_fu_132_reg[10] 
       (.C(ap_clk),
        .CE(input_9_fu_1320),
        .D(\input_15_fu_156_reg[15]_0 [10]),
        .Q(input_9_fu_132[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_9_fu_132_reg[11] 
       (.C(ap_clk),
        .CE(input_9_fu_1320),
        .D(\input_15_fu_156_reg[15]_0 [11]),
        .Q(input_9_fu_132[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_9_fu_132_reg[12] 
       (.C(ap_clk),
        .CE(input_9_fu_1320),
        .D(\input_15_fu_156_reg[15]_0 [12]),
        .Q(input_9_fu_132[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_9_fu_132_reg[13] 
       (.C(ap_clk),
        .CE(input_9_fu_1320),
        .D(\input_15_fu_156_reg[15]_0 [13]),
        .Q(input_9_fu_132[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_9_fu_132_reg[14] 
       (.C(ap_clk),
        .CE(input_9_fu_1320),
        .D(\input_15_fu_156_reg[15]_0 [14]),
        .Q(input_9_fu_132[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_9_fu_132_reg[15] 
       (.C(ap_clk),
        .CE(input_9_fu_1320),
        .D(\input_15_fu_156_reg[15]_0 [15]),
        .Q(input_9_fu_132[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_9_fu_132_reg[1] 
       (.C(ap_clk),
        .CE(input_9_fu_1320),
        .D(\input_15_fu_156_reg[15]_0 [1]),
        .Q(input_9_fu_132[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_9_fu_132_reg[2] 
       (.C(ap_clk),
        .CE(input_9_fu_1320),
        .D(\input_15_fu_156_reg[15]_0 [2]),
        .Q(input_9_fu_132[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_9_fu_132_reg[3] 
       (.C(ap_clk),
        .CE(input_9_fu_1320),
        .D(\input_15_fu_156_reg[15]_0 [3]),
        .Q(input_9_fu_132[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_9_fu_132_reg[4] 
       (.C(ap_clk),
        .CE(input_9_fu_1320),
        .D(\input_15_fu_156_reg[15]_0 [4]),
        .Q(input_9_fu_132[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_9_fu_132_reg[5] 
       (.C(ap_clk),
        .CE(input_9_fu_1320),
        .D(\input_15_fu_156_reg[15]_0 [5]),
        .Q(input_9_fu_132[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_9_fu_132_reg[6] 
       (.C(ap_clk),
        .CE(input_9_fu_1320),
        .D(\input_15_fu_156_reg[15]_0 [6]),
        .Q(input_9_fu_132[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_9_fu_132_reg[7] 
       (.C(ap_clk),
        .CE(input_9_fu_1320),
        .D(\input_15_fu_156_reg[15]_0 [7]),
        .Q(input_9_fu_132[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_9_fu_132_reg[8] 
       (.C(ap_clk),
        .CE(input_9_fu_1320),
        .D(\input_15_fu_156_reg[15]_0 [8]),
        .Q(input_9_fu_132[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_9_fu_132_reg[9] 
       (.C(ap_clk),
        .CE(input_9_fu_1320),
        .D(\input_15_fu_156_reg[15]_0 [9]),
        .Q(input_9_fu_132[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \input_fu_96[15]_i_1 
       (.I0(trunc_ln_reg_601[0]),
        .I1(trunc_ln_reg_601[1]),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(Q),
        .I4(trunc_ln34_reg_597[0]),
        .I5(trunc_ln34_reg_597[1]),
        .O(input_fu_960));
  FDRE #(
    .INIT(1'b0)) 
    \input_fu_96_reg[0] 
       (.C(ap_clk),
        .CE(input_fu_960),
        .D(\input_15_fu_156_reg[15]_0 [0]),
        .Q(input_fu_96[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_fu_96_reg[10] 
       (.C(ap_clk),
        .CE(input_fu_960),
        .D(\input_15_fu_156_reg[15]_0 [10]),
        .Q(input_fu_96[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_fu_96_reg[11] 
       (.C(ap_clk),
        .CE(input_fu_960),
        .D(\input_15_fu_156_reg[15]_0 [11]),
        .Q(input_fu_96[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_fu_96_reg[12] 
       (.C(ap_clk),
        .CE(input_fu_960),
        .D(\input_15_fu_156_reg[15]_0 [12]),
        .Q(input_fu_96[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_fu_96_reg[13] 
       (.C(ap_clk),
        .CE(input_fu_960),
        .D(\input_15_fu_156_reg[15]_0 [13]),
        .Q(input_fu_96[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_fu_96_reg[14] 
       (.C(ap_clk),
        .CE(input_fu_960),
        .D(\input_15_fu_156_reg[15]_0 [14]),
        .Q(input_fu_96[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_fu_96_reg[15] 
       (.C(ap_clk),
        .CE(input_fu_960),
        .D(\input_15_fu_156_reg[15]_0 [15]),
        .Q(input_fu_96[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_fu_96_reg[1] 
       (.C(ap_clk),
        .CE(input_fu_960),
        .D(\input_15_fu_156_reg[15]_0 [1]),
        .Q(input_fu_96[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_fu_96_reg[2] 
       (.C(ap_clk),
        .CE(input_fu_960),
        .D(\input_15_fu_156_reg[15]_0 [2]),
        .Q(input_fu_96[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_fu_96_reg[3] 
       (.C(ap_clk),
        .CE(input_fu_960),
        .D(\input_15_fu_156_reg[15]_0 [3]),
        .Q(input_fu_96[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_fu_96_reg[4] 
       (.C(ap_clk),
        .CE(input_fu_960),
        .D(\input_15_fu_156_reg[15]_0 [4]),
        .Q(input_fu_96[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_fu_96_reg[5] 
       (.C(ap_clk),
        .CE(input_fu_960),
        .D(\input_15_fu_156_reg[15]_0 [5]),
        .Q(input_fu_96[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_fu_96_reg[6] 
       (.C(ap_clk),
        .CE(input_fu_960),
        .D(\input_15_fu_156_reg[15]_0 [6]),
        .Q(input_fu_96[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_fu_96_reg[7] 
       (.C(ap_clk),
        .CE(input_fu_960),
        .D(\input_15_fu_156_reg[15]_0 [7]),
        .Q(input_fu_96[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_fu_96_reg[8] 
       (.C(ap_clk),
        .CE(input_fu_960),
        .D(\input_15_fu_156_reg[15]_0 [8]),
        .Q(input_fu_96[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \input_fu_96_reg[9] 
       (.C(ap_clk),
        .CE(input_fu_960),
        .D(\input_15_fu_156_reg[15]_0 [9]),
        .Q(input_fu_96[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \max_val_reg_651[0]_i_1 
       (.I0(v_fu_364_p3[0]),
        .I1(max_val_5_fu_340_p3[0]),
        .I2(CO),
        .O(max_val_fu_378_p3[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \max_val_reg_651[0]_i_2 
       (.I0(input_9_fu_132[0]),
        .I1(input_11_fu_140[0]),
        .I2(\v_4_reg_657_reg[15] ),
        .I3(input_1_fu_100[0]),
        .I4(first_iter_0_fu_306_p2),
        .I5(input_3_fu_108[0]),
        .O(v_fu_364_p3[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \max_val_reg_651[0]_i_3 
       (.I0(input_8_fu_128[0]),
        .I1(input_10_fu_136[0]),
        .I2(\v_4_reg_657_reg[15] ),
        .I3(input_fu_96[0]),
        .I4(first_iter_0_fu_306_p2),
        .I5(input_2_fu_104[0]),
        .O(max_val_5_fu_340_p3[0]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \max_val_reg_651[10]_i_1 
       (.I0(v_fu_364_p3[10]),
        .I1(max_val_5_fu_340_p3[10]),
        .I2(CO),
        .O(max_val_fu_378_p3[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \max_val_reg_651[10]_i_2 
       (.I0(input_9_fu_132[10]),
        .I1(input_11_fu_140[10]),
        .I2(\v_4_reg_657_reg[15] ),
        .I3(input_1_fu_100[10]),
        .I4(first_iter_0_fu_306_p2),
        .I5(input_3_fu_108[10]),
        .O(v_fu_364_p3[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \max_val_reg_651[10]_i_3 
       (.I0(input_8_fu_128[10]),
        .I1(input_10_fu_136[10]),
        .I2(\v_4_reg_657_reg[15] ),
        .I3(input_fu_96[10]),
        .I4(first_iter_0_fu_306_p2),
        .I5(input_2_fu_104[10]),
        .O(max_val_5_fu_340_p3[10]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \max_val_reg_651[11]_i_1 
       (.I0(v_fu_364_p3[11]),
        .I1(max_val_5_fu_340_p3[11]),
        .I2(CO),
        .O(max_val_fu_378_p3[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \max_val_reg_651[11]_i_2 
       (.I0(input_9_fu_132[11]),
        .I1(input_11_fu_140[11]),
        .I2(\v_4_reg_657_reg[15] ),
        .I3(input_1_fu_100[11]),
        .I4(first_iter_0_fu_306_p2),
        .I5(input_3_fu_108[11]),
        .O(v_fu_364_p3[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \max_val_reg_651[11]_i_3 
       (.I0(input_8_fu_128[11]),
        .I1(input_10_fu_136[11]),
        .I2(\v_4_reg_657_reg[15] ),
        .I3(input_fu_96[11]),
        .I4(first_iter_0_fu_306_p2),
        .I5(input_2_fu_104[11]),
        .O(max_val_5_fu_340_p3[11]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \max_val_reg_651[12]_i_1 
       (.I0(v_fu_364_p3[12]),
        .I1(max_val_5_fu_340_p3[12]),
        .I2(CO),
        .O(max_val_fu_378_p3[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \max_val_reg_651[12]_i_2 
       (.I0(input_9_fu_132[12]),
        .I1(input_11_fu_140[12]),
        .I2(\v_4_reg_657_reg[15] ),
        .I3(input_1_fu_100[12]),
        .I4(first_iter_0_fu_306_p2),
        .I5(input_3_fu_108[12]),
        .O(v_fu_364_p3[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \max_val_reg_651[12]_i_3 
       (.I0(input_8_fu_128[12]),
        .I1(input_10_fu_136[12]),
        .I2(\v_4_reg_657_reg[15] ),
        .I3(input_fu_96[12]),
        .I4(first_iter_0_fu_306_p2),
        .I5(input_2_fu_104[12]),
        .O(max_val_5_fu_340_p3[12]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \max_val_reg_651[13]_i_1 
       (.I0(v_fu_364_p3[13]),
        .I1(max_val_5_fu_340_p3[13]),
        .I2(CO),
        .O(max_val_fu_378_p3[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \max_val_reg_651[13]_i_2 
       (.I0(input_9_fu_132[13]),
        .I1(input_11_fu_140[13]),
        .I2(\v_4_reg_657_reg[15] ),
        .I3(input_1_fu_100[13]),
        .I4(first_iter_0_fu_306_p2),
        .I5(input_3_fu_108[13]),
        .O(v_fu_364_p3[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \max_val_reg_651[13]_i_3 
       (.I0(input_8_fu_128[13]),
        .I1(input_10_fu_136[13]),
        .I2(\v_4_reg_657_reg[15] ),
        .I3(input_fu_96[13]),
        .I4(first_iter_0_fu_306_p2),
        .I5(input_2_fu_104[13]),
        .O(max_val_5_fu_340_p3[13]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \max_val_reg_651[14]_i_1 
       (.I0(v_fu_364_p3[14]),
        .I1(max_val_5_fu_340_p3[14]),
        .I2(CO),
        .O(max_val_fu_378_p3[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \max_val_reg_651[14]_i_2 
       (.I0(input_9_fu_132[14]),
        .I1(input_11_fu_140[14]),
        .I2(\v_4_reg_657_reg[15] ),
        .I3(input_1_fu_100[14]),
        .I4(first_iter_0_fu_306_p2),
        .I5(input_3_fu_108[14]),
        .O(v_fu_364_p3[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \max_val_reg_651[14]_i_3 
       (.I0(input_8_fu_128[14]),
        .I1(input_10_fu_136[14]),
        .I2(\v_4_reg_657_reg[15] ),
        .I3(input_fu_96[14]),
        .I4(first_iter_0_fu_306_p2),
        .I5(input_2_fu_104[14]),
        .O(max_val_5_fu_340_p3[14]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \max_val_reg_651[15]_i_1 
       (.I0(v_fu_364_p3[15]),
        .I1(max_val_5_fu_340_p3[15]),
        .I2(CO),
        .O(max_val_fu_378_p3[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \max_val_reg_651[15]_i_2 
       (.I0(input_9_fu_132[15]),
        .I1(input_11_fu_140[15]),
        .I2(\v_4_reg_657_reg[15] ),
        .I3(input_1_fu_100[15]),
        .I4(first_iter_0_fu_306_p2),
        .I5(input_3_fu_108[15]),
        .O(v_fu_364_p3[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \max_val_reg_651[15]_i_3 
       (.I0(input_8_fu_128[15]),
        .I1(input_10_fu_136[15]),
        .I2(\v_4_reg_657_reg[15] ),
        .I3(input_fu_96[15]),
        .I4(first_iter_0_fu_306_p2),
        .I5(input_2_fu_104[15]),
        .O(max_val_5_fu_340_p3[15]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \max_val_reg_651[1]_i_1 
       (.I0(v_fu_364_p3[1]),
        .I1(max_val_5_fu_340_p3[1]),
        .I2(CO),
        .O(max_val_fu_378_p3[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \max_val_reg_651[1]_i_2 
       (.I0(input_9_fu_132[1]),
        .I1(input_11_fu_140[1]),
        .I2(\v_4_reg_657_reg[15] ),
        .I3(input_1_fu_100[1]),
        .I4(first_iter_0_fu_306_p2),
        .I5(input_3_fu_108[1]),
        .O(v_fu_364_p3[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \max_val_reg_651[1]_i_3 
       (.I0(input_8_fu_128[1]),
        .I1(input_10_fu_136[1]),
        .I2(\v_4_reg_657_reg[15] ),
        .I3(input_fu_96[1]),
        .I4(first_iter_0_fu_306_p2),
        .I5(input_2_fu_104[1]),
        .O(max_val_5_fu_340_p3[1]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \max_val_reg_651[2]_i_1 
       (.I0(v_fu_364_p3[2]),
        .I1(max_val_5_fu_340_p3[2]),
        .I2(CO),
        .O(max_val_fu_378_p3[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \max_val_reg_651[2]_i_2 
       (.I0(input_9_fu_132[2]),
        .I1(input_11_fu_140[2]),
        .I2(\v_4_reg_657_reg[15] ),
        .I3(input_1_fu_100[2]),
        .I4(first_iter_0_fu_306_p2),
        .I5(input_3_fu_108[2]),
        .O(v_fu_364_p3[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \max_val_reg_651[2]_i_3 
       (.I0(input_8_fu_128[2]),
        .I1(input_10_fu_136[2]),
        .I2(\v_4_reg_657_reg[15] ),
        .I3(input_fu_96[2]),
        .I4(first_iter_0_fu_306_p2),
        .I5(input_2_fu_104[2]),
        .O(max_val_5_fu_340_p3[2]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \max_val_reg_651[3]_i_1 
       (.I0(v_fu_364_p3[3]),
        .I1(max_val_5_fu_340_p3[3]),
        .I2(CO),
        .O(max_val_fu_378_p3[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \max_val_reg_651[3]_i_2 
       (.I0(input_9_fu_132[3]),
        .I1(input_11_fu_140[3]),
        .I2(\v_4_reg_657_reg[15] ),
        .I3(input_1_fu_100[3]),
        .I4(first_iter_0_fu_306_p2),
        .I5(input_3_fu_108[3]),
        .O(v_fu_364_p3[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \max_val_reg_651[3]_i_3 
       (.I0(input_8_fu_128[3]),
        .I1(input_10_fu_136[3]),
        .I2(\v_4_reg_657_reg[15] ),
        .I3(input_fu_96[3]),
        .I4(first_iter_0_fu_306_p2),
        .I5(input_2_fu_104[3]),
        .O(max_val_5_fu_340_p3[3]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \max_val_reg_651[4]_i_1 
       (.I0(v_fu_364_p3[4]),
        .I1(max_val_5_fu_340_p3[4]),
        .I2(CO),
        .O(max_val_fu_378_p3[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \max_val_reg_651[4]_i_2 
       (.I0(input_9_fu_132[4]),
        .I1(input_11_fu_140[4]),
        .I2(\v_4_reg_657_reg[15] ),
        .I3(input_1_fu_100[4]),
        .I4(first_iter_0_fu_306_p2),
        .I5(input_3_fu_108[4]),
        .O(v_fu_364_p3[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \max_val_reg_651[4]_i_3 
       (.I0(input_8_fu_128[4]),
        .I1(input_10_fu_136[4]),
        .I2(\v_4_reg_657_reg[15] ),
        .I3(input_fu_96[4]),
        .I4(first_iter_0_fu_306_p2),
        .I5(input_2_fu_104[4]),
        .O(max_val_5_fu_340_p3[4]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \max_val_reg_651[5]_i_1 
       (.I0(v_fu_364_p3[5]),
        .I1(max_val_5_fu_340_p3[5]),
        .I2(CO),
        .O(max_val_fu_378_p3[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \max_val_reg_651[5]_i_2 
       (.I0(input_9_fu_132[5]),
        .I1(input_11_fu_140[5]),
        .I2(\v_4_reg_657_reg[15] ),
        .I3(input_1_fu_100[5]),
        .I4(first_iter_0_fu_306_p2),
        .I5(input_3_fu_108[5]),
        .O(v_fu_364_p3[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \max_val_reg_651[5]_i_3 
       (.I0(input_8_fu_128[5]),
        .I1(input_10_fu_136[5]),
        .I2(\v_4_reg_657_reg[15] ),
        .I3(input_fu_96[5]),
        .I4(first_iter_0_fu_306_p2),
        .I5(input_2_fu_104[5]),
        .O(max_val_5_fu_340_p3[5]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \max_val_reg_651[6]_i_1 
       (.I0(v_fu_364_p3[6]),
        .I1(max_val_5_fu_340_p3[6]),
        .I2(CO),
        .O(max_val_fu_378_p3[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \max_val_reg_651[6]_i_2 
       (.I0(input_9_fu_132[6]),
        .I1(input_11_fu_140[6]),
        .I2(\v_4_reg_657_reg[15] ),
        .I3(input_1_fu_100[6]),
        .I4(first_iter_0_fu_306_p2),
        .I5(input_3_fu_108[6]),
        .O(v_fu_364_p3[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \max_val_reg_651[6]_i_3 
       (.I0(input_8_fu_128[6]),
        .I1(input_10_fu_136[6]),
        .I2(\v_4_reg_657_reg[15] ),
        .I3(input_fu_96[6]),
        .I4(first_iter_0_fu_306_p2),
        .I5(input_2_fu_104[6]),
        .O(max_val_5_fu_340_p3[6]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \max_val_reg_651[7]_i_1 
       (.I0(v_fu_364_p3[7]),
        .I1(max_val_5_fu_340_p3[7]),
        .I2(CO),
        .O(max_val_fu_378_p3[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \max_val_reg_651[7]_i_2 
       (.I0(input_9_fu_132[7]),
        .I1(input_11_fu_140[7]),
        .I2(\v_4_reg_657_reg[15] ),
        .I3(input_1_fu_100[7]),
        .I4(first_iter_0_fu_306_p2),
        .I5(input_3_fu_108[7]),
        .O(v_fu_364_p3[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \max_val_reg_651[7]_i_3 
       (.I0(input_8_fu_128[7]),
        .I1(input_10_fu_136[7]),
        .I2(\v_4_reg_657_reg[15] ),
        .I3(input_fu_96[7]),
        .I4(first_iter_0_fu_306_p2),
        .I5(input_2_fu_104[7]),
        .O(max_val_5_fu_340_p3[7]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \max_val_reg_651[8]_i_1 
       (.I0(v_fu_364_p3[8]),
        .I1(max_val_5_fu_340_p3[8]),
        .I2(CO),
        .O(max_val_fu_378_p3[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \max_val_reg_651[8]_i_2 
       (.I0(input_9_fu_132[8]),
        .I1(input_11_fu_140[8]),
        .I2(\v_4_reg_657_reg[15] ),
        .I3(input_1_fu_100[8]),
        .I4(first_iter_0_fu_306_p2),
        .I5(input_3_fu_108[8]),
        .O(v_fu_364_p3[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \max_val_reg_651[8]_i_3 
       (.I0(input_8_fu_128[8]),
        .I1(input_10_fu_136[8]),
        .I2(\v_4_reg_657_reg[15] ),
        .I3(input_fu_96[8]),
        .I4(first_iter_0_fu_306_p2),
        .I5(input_2_fu_104[8]),
        .O(max_val_5_fu_340_p3[8]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \max_val_reg_651[9]_i_1 
       (.I0(v_fu_364_p3[9]),
        .I1(max_val_5_fu_340_p3[9]),
        .I2(CO),
        .O(max_val_fu_378_p3[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \max_val_reg_651[9]_i_2 
       (.I0(input_9_fu_132[9]),
        .I1(input_11_fu_140[9]),
        .I2(\v_4_reg_657_reg[15] ),
        .I3(input_1_fu_100[9]),
        .I4(first_iter_0_fu_306_p2),
        .I5(input_3_fu_108[9]),
        .O(v_fu_364_p3[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \max_val_reg_651[9]_i_3 
       (.I0(input_8_fu_128[9]),
        .I1(input_10_fu_136[9]),
        .I2(\v_4_reg_657_reg[15] ),
        .I3(input_fu_96[9]),
        .I4(first_iter_0_fu_306_p2),
        .I5(input_2_fu_104[9]),
        .O(max_val_5_fu_340_p3[9]));
  FDRE \trunc_ln34_reg_597_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\i_fu_92_reg_n_5_[0] ),
        .Q(trunc_ln34_reg_597[0]),
        .R(flow_control_loop_pipe_sequential_init_U_n_12));
  FDRE \trunc_ln34_reg_597_reg[1] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\i_fu_92_reg_n_5_[1] ),
        .Q(trunc_ln34_reg_597[1]),
        .R(flow_control_loop_pipe_sequential_init_U_n_12));
  FDRE \trunc_ln_reg_601_reg[0] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\i_fu_92_reg_n_5_[2] ),
        .Q(trunc_ln_reg_601[0]),
        .R(flow_control_loop_pipe_sequential_init_U_n_12));
  FDRE \trunc_ln_reg_601_reg[1] 
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .D(\i_fu_92_reg_n_5_[3] ),
        .Q(trunc_ln_reg_601[1]),
        .R(flow_control_loop_pipe_sequential_init_U_n_12));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \v_3_reg_663[0]_i_1 
       (.I0(input_13_fu_148[0]),
        .I1(input_15_fu_156[0]),
        .I2(\v_4_reg_657_reg[15] ),
        .I3(input_5_fu_116[0]),
        .I4(first_iter_0_fu_306_p2),
        .I5(input_7_fu_124[0]),
        .O(v_3_fu_426_p3[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \v_3_reg_663[10]_i_1 
       (.I0(input_13_fu_148[10]),
        .I1(input_15_fu_156[10]),
        .I2(\v_4_reg_657_reg[15] ),
        .I3(input_5_fu_116[10]),
        .I4(first_iter_0_fu_306_p2),
        .I5(input_7_fu_124[10]),
        .O(v_3_fu_426_p3[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \v_3_reg_663[11]_i_1 
       (.I0(input_13_fu_148[11]),
        .I1(input_15_fu_156[11]),
        .I2(\v_4_reg_657_reg[15] ),
        .I3(input_5_fu_116[11]),
        .I4(first_iter_0_fu_306_p2),
        .I5(input_7_fu_124[11]),
        .O(v_3_fu_426_p3[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \v_3_reg_663[12]_i_1 
       (.I0(input_13_fu_148[12]),
        .I1(input_15_fu_156[12]),
        .I2(\v_4_reg_657_reg[15] ),
        .I3(input_5_fu_116[12]),
        .I4(first_iter_0_fu_306_p2),
        .I5(input_7_fu_124[12]),
        .O(v_3_fu_426_p3[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \v_3_reg_663[13]_i_1 
       (.I0(input_13_fu_148[13]),
        .I1(input_15_fu_156[13]),
        .I2(\v_4_reg_657_reg[15] ),
        .I3(input_5_fu_116[13]),
        .I4(first_iter_0_fu_306_p2),
        .I5(input_7_fu_124[13]),
        .O(v_3_fu_426_p3[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \v_3_reg_663[14]_i_1 
       (.I0(input_13_fu_148[14]),
        .I1(input_15_fu_156[14]),
        .I2(\v_4_reg_657_reg[15] ),
        .I3(input_5_fu_116[14]),
        .I4(first_iter_0_fu_306_p2),
        .I5(input_7_fu_124[14]),
        .O(v_3_fu_426_p3[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \v_3_reg_663[15]_i_1 
       (.I0(input_13_fu_148[15]),
        .I1(input_15_fu_156[15]),
        .I2(\v_4_reg_657_reg[15] ),
        .I3(input_5_fu_116[15]),
        .I4(first_iter_0_fu_306_p2),
        .I5(input_7_fu_124[15]),
        .O(v_3_fu_426_p3[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \v_3_reg_663[1]_i_1 
       (.I0(input_13_fu_148[1]),
        .I1(input_15_fu_156[1]),
        .I2(\v_4_reg_657_reg[15] ),
        .I3(input_5_fu_116[1]),
        .I4(first_iter_0_fu_306_p2),
        .I5(input_7_fu_124[1]),
        .O(v_3_fu_426_p3[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \v_3_reg_663[2]_i_1 
       (.I0(input_13_fu_148[2]),
        .I1(input_15_fu_156[2]),
        .I2(\v_4_reg_657_reg[15] ),
        .I3(input_5_fu_116[2]),
        .I4(first_iter_0_fu_306_p2),
        .I5(input_7_fu_124[2]),
        .O(v_3_fu_426_p3[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \v_3_reg_663[3]_i_1 
       (.I0(input_13_fu_148[3]),
        .I1(input_15_fu_156[3]),
        .I2(\v_4_reg_657_reg[15] ),
        .I3(input_5_fu_116[3]),
        .I4(first_iter_0_fu_306_p2),
        .I5(input_7_fu_124[3]),
        .O(v_3_fu_426_p3[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \v_3_reg_663[4]_i_1 
       (.I0(input_13_fu_148[4]),
        .I1(input_15_fu_156[4]),
        .I2(\v_4_reg_657_reg[15] ),
        .I3(input_5_fu_116[4]),
        .I4(first_iter_0_fu_306_p2),
        .I5(input_7_fu_124[4]),
        .O(v_3_fu_426_p3[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \v_3_reg_663[5]_i_1 
       (.I0(input_13_fu_148[5]),
        .I1(input_15_fu_156[5]),
        .I2(\v_4_reg_657_reg[15] ),
        .I3(input_5_fu_116[5]),
        .I4(first_iter_0_fu_306_p2),
        .I5(input_7_fu_124[5]),
        .O(v_3_fu_426_p3[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \v_3_reg_663[6]_i_1 
       (.I0(input_13_fu_148[6]),
        .I1(input_15_fu_156[6]),
        .I2(\v_4_reg_657_reg[15] ),
        .I3(input_5_fu_116[6]),
        .I4(first_iter_0_fu_306_p2),
        .I5(input_7_fu_124[6]),
        .O(v_3_fu_426_p3[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \v_3_reg_663[7]_i_1 
       (.I0(input_13_fu_148[7]),
        .I1(input_15_fu_156[7]),
        .I2(\v_4_reg_657_reg[15] ),
        .I3(input_5_fu_116[7]),
        .I4(first_iter_0_fu_306_p2),
        .I5(input_7_fu_124[7]),
        .O(v_3_fu_426_p3[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \v_3_reg_663[8]_i_1 
       (.I0(input_13_fu_148[8]),
        .I1(input_15_fu_156[8]),
        .I2(\v_4_reg_657_reg[15] ),
        .I3(input_5_fu_116[8]),
        .I4(first_iter_0_fu_306_p2),
        .I5(input_7_fu_124[8]),
        .O(v_3_fu_426_p3[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \v_3_reg_663[9]_i_1 
       (.I0(input_13_fu_148[9]),
        .I1(input_15_fu_156[9]),
        .I2(\v_4_reg_657_reg[15] ),
        .I3(input_5_fu_116[9]),
        .I4(first_iter_0_fu_306_p2),
        .I5(input_7_fu_124[9]),
        .O(v_3_fu_426_p3[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \v_4_reg_657[0]_i_1 
       (.I0(input_12_fu_144[0]),
        .I1(input_14_fu_152[0]),
        .I2(\v_4_reg_657_reg[15] ),
        .I3(input_4_fu_112[0]),
        .I4(first_iter_0_fu_306_p2),
        .I5(input_6_fu_120[0]),
        .O(v_4_fu_402_p3[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \v_4_reg_657[10]_i_1 
       (.I0(input_12_fu_144[10]),
        .I1(input_14_fu_152[10]),
        .I2(\v_4_reg_657_reg[15] ),
        .I3(input_4_fu_112[10]),
        .I4(first_iter_0_fu_306_p2),
        .I5(input_6_fu_120[10]),
        .O(v_4_fu_402_p3[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \v_4_reg_657[11]_i_1 
       (.I0(input_12_fu_144[11]),
        .I1(input_14_fu_152[11]),
        .I2(\v_4_reg_657_reg[15] ),
        .I3(input_4_fu_112[11]),
        .I4(first_iter_0_fu_306_p2),
        .I5(input_6_fu_120[11]),
        .O(v_4_fu_402_p3[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \v_4_reg_657[12]_i_1 
       (.I0(input_12_fu_144[12]),
        .I1(input_14_fu_152[12]),
        .I2(\v_4_reg_657_reg[15] ),
        .I3(input_4_fu_112[12]),
        .I4(first_iter_0_fu_306_p2),
        .I5(input_6_fu_120[12]),
        .O(v_4_fu_402_p3[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \v_4_reg_657[13]_i_1 
       (.I0(input_12_fu_144[13]),
        .I1(input_14_fu_152[13]),
        .I2(\v_4_reg_657_reg[15] ),
        .I3(input_4_fu_112[13]),
        .I4(first_iter_0_fu_306_p2),
        .I5(input_6_fu_120[13]),
        .O(v_4_fu_402_p3[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \v_4_reg_657[14]_i_1 
       (.I0(input_12_fu_144[14]),
        .I1(input_14_fu_152[14]),
        .I2(\v_4_reg_657_reg[15] ),
        .I3(input_4_fu_112[14]),
        .I4(first_iter_0_fu_306_p2),
        .I5(input_6_fu_120[14]),
        .O(v_4_fu_402_p3[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \v_4_reg_657[15]_i_1 
       (.I0(input_12_fu_144[15]),
        .I1(input_14_fu_152[15]),
        .I2(\v_4_reg_657_reg[15] ),
        .I3(input_4_fu_112[15]),
        .I4(first_iter_0_fu_306_p2),
        .I5(input_6_fu_120[15]),
        .O(v_4_fu_402_p3[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \v_4_reg_657[1]_i_1 
       (.I0(input_12_fu_144[1]),
        .I1(input_14_fu_152[1]),
        .I2(\v_4_reg_657_reg[15] ),
        .I3(input_4_fu_112[1]),
        .I4(first_iter_0_fu_306_p2),
        .I5(input_6_fu_120[1]),
        .O(v_4_fu_402_p3[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \v_4_reg_657[2]_i_1 
       (.I0(input_12_fu_144[2]),
        .I1(input_14_fu_152[2]),
        .I2(\v_4_reg_657_reg[15] ),
        .I3(input_4_fu_112[2]),
        .I4(first_iter_0_fu_306_p2),
        .I5(input_6_fu_120[2]),
        .O(v_4_fu_402_p3[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \v_4_reg_657[3]_i_1 
       (.I0(input_12_fu_144[3]),
        .I1(input_14_fu_152[3]),
        .I2(\v_4_reg_657_reg[15] ),
        .I3(input_4_fu_112[3]),
        .I4(first_iter_0_fu_306_p2),
        .I5(input_6_fu_120[3]),
        .O(v_4_fu_402_p3[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \v_4_reg_657[4]_i_1 
       (.I0(input_12_fu_144[4]),
        .I1(input_14_fu_152[4]),
        .I2(\v_4_reg_657_reg[15] ),
        .I3(input_4_fu_112[4]),
        .I4(first_iter_0_fu_306_p2),
        .I5(input_6_fu_120[4]),
        .O(v_4_fu_402_p3[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \v_4_reg_657[5]_i_1 
       (.I0(input_12_fu_144[5]),
        .I1(input_14_fu_152[5]),
        .I2(\v_4_reg_657_reg[15] ),
        .I3(input_4_fu_112[5]),
        .I4(first_iter_0_fu_306_p2),
        .I5(input_6_fu_120[5]),
        .O(v_4_fu_402_p3[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \v_4_reg_657[6]_i_1 
       (.I0(input_12_fu_144[6]),
        .I1(input_14_fu_152[6]),
        .I2(\v_4_reg_657_reg[15] ),
        .I3(input_4_fu_112[6]),
        .I4(first_iter_0_fu_306_p2),
        .I5(input_6_fu_120[6]),
        .O(v_4_fu_402_p3[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \v_4_reg_657[7]_i_1 
       (.I0(input_12_fu_144[7]),
        .I1(input_14_fu_152[7]),
        .I2(\v_4_reg_657_reg[15] ),
        .I3(input_4_fu_112[7]),
        .I4(first_iter_0_fu_306_p2),
        .I5(input_6_fu_120[7]),
        .O(v_4_fu_402_p3[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \v_4_reg_657[8]_i_1 
       (.I0(input_12_fu_144[8]),
        .I1(input_14_fu_152[8]),
        .I2(\v_4_reg_657_reg[15] ),
        .I3(input_4_fu_112[8]),
        .I4(first_iter_0_fu_306_p2),
        .I5(input_6_fu_120[8]),
        .O(v_4_fu_402_p3[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \v_4_reg_657[9]_i_1 
       (.I0(input_12_fu_144[9]),
        .I1(input_14_fu_152[9]),
        .I2(\v_4_reg_657_reg[15] ),
        .I3(input_4_fu_112[9]),
        .I4(first_iter_0_fu_306_p2),
        .I5(input_6_fu_120[9]),
        .O(v_4_fu_402_p3[9]));
endmodule

(* ORIG_REF_NAME = "maxpool_maxpool_Pipeline_WRITE_OUTPUT" *) 
module cnn_pipeline_maxpool_0_1_maxpool_maxpool_Pipeline_WRITE_OUTPUT
   (ap_enable_reg_pp0_iter1,
    grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_out_stream_TLAST,
    D,
    ap_sig_allocacmp_i_1,
    load_p2,
    load_p2_0,
    E,
    \ap_CS_fsm_reg[5] ,
    \select_ln68_2_reg_185_reg[15]_0 ,
    ap_rst_n_inv,
    ap_clk,
    grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_ap_start_reg,
    out_stream_TREADY_int_regslice,
    Q,
    ap_rst_n,
    ap_ready,
    \data_p2_reg[1] ,
    \data_p2_reg[1]_0 ,
    \select_ln68_2_reg_185_reg[15]_1 ,
    \select_ln68_2_reg_185_reg[15]_2 );
  output ap_enable_reg_pp0_iter1;
  output [0:0]grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_out_stream_TLAST;
  output [1:0]D;
  output [1:0]ap_sig_allocacmp_i_1;
  output load_p2;
  output load_p2_0;
  output [0:0]E;
  output \ap_CS_fsm_reg[5] ;
  output [15:0]\select_ln68_2_reg_185_reg[15]_0 ;
  input ap_rst_n_inv;
  input ap_clk;
  input grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_ap_start_reg;
  input out_stream_TREADY_int_regslice;
  input [2:0]Q;
  input ap_rst_n;
  input ap_ready;
  input \data_p2_reg[1] ;
  input \data_p2_reg[1]_0 ;
  input [0:0]\select_ln68_2_reg_185_reg[15]_1 ;
  input [15:0]\select_ln68_2_reg_185_reg[15]_2 ;

  wire [1:0]D;
  wire [0:0]E;
  wire [2:0]Q;
  wire \ap_CS_fsm_reg[5] ;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1;
  wire ap_ready;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire [1:0]ap_sig_allocacmp_i_1;
  wire \data_p2_reg[1] ;
  wire \data_p2_reg[1]_0 ;
  wire flow_control_loop_pipe_sequential_init_U_n_15;
  wire flow_control_loop_pipe_sequential_init_U_n_5;
  wire flow_control_loop_pipe_sequential_init_U_n_8;
  wire grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_ap_start_reg;
  wire [0:0]grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_out_stream_TLAST;
  wire [2:0]i_2_fu_122_p2;
  wire \i_fu_62_reg_n_5_[0] ;
  wire \i_fu_62_reg_n_5_[1] ;
  wire \i_fu_62_reg_n_5_[2] ;
  wire load_p2;
  wire load_p2_0;
  wire out_stream_TREADY_int_regslice;
  wire [15:0]\select_ln68_2_reg_185_reg[15]_0 ;
  wire [0:0]\select_ln68_2_reg_185_reg[15]_1 ;
  wire [15:0]\select_ln68_2_reg_185_reg[15]_2 ;

  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(flow_control_loop_pipe_sequential_init_U_n_5),
        .Q(ap_enable_reg_pp0_iter1),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \data_p2[1]_i_2 
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(Q[1]),
        .I2(out_stream_TREADY_int_regslice),
        .I3(\data_p2_reg[1] ),
        .O(load_p2));
  LUT4 #(
    .INIT(16'h8000)) 
    \data_p2[1]_i_2__0 
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(Q[1]),
        .I2(out_stream_TREADY_int_regslice),
        .I3(\data_p2_reg[1]_0 ),
        .O(load_p2_0));
  cnn_pipeline_maxpool_0_1_maxpool_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U
       (.D(D),
        .Q(Q),
        .\ap_CS_fsm_reg[5] (\ap_CS_fsm_reg[5] ),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter1_reg(ap_enable_reg_pp0_iter1),
        .ap_ready(ap_ready),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .ap_sig_allocacmp_i_1(ap_sig_allocacmp_i_1),
        .grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_ap_start_reg(grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_ap_start_reg),
        .grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_ap_start_reg_reg(flow_control_loop_pipe_sequential_init_U_n_5),
        .grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_out_stream_TLAST(grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_out_stream_TLAST),
        .i_2_fu_122_p2(i_2_fu_122_p2),
        .\i_fu_62_reg[0] (flow_control_loop_pipe_sequential_init_U_n_15),
        .\i_fu_62_reg[2] (\i_fu_62_reg_n_5_[0] ),
        .\i_fu_62_reg[2]_0 (\i_fu_62_reg_n_5_[2] ),
        .\i_fu_62_reg[2]_1 (\i_fu_62_reg_n_5_[1] ),
        .\icmp_ln70_reg_190_reg[0] (flow_control_loop_pipe_sequential_init_U_n_8),
        .out_stream_TREADY_int_regslice(out_stream_TREADY_int_regslice));
  FDRE #(
    .INIT(1'b0)) 
    \i_fu_62_reg[0] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_15),
        .D(i_2_fu_122_p2[0]),
        .Q(\i_fu_62_reg_n_5_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_fu_62_reg[1] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_15),
        .D(i_2_fu_122_p2[1]),
        .Q(\i_fu_62_reg_n_5_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_fu_62_reg[2] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_15),
        .D(i_2_fu_122_p2[2]),
        .Q(\i_fu_62_reg_n_5_[2] ),
        .R(1'b0));
  FDRE \icmp_ln70_reg_190_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(flow_control_loop_pipe_sequential_init_U_n_8),
        .Q(grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_out_stream_TLAST),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \out_stream_TDATA_reg[15]_i_1 
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(Q[1]),
        .I2(out_stream_TREADY_int_regslice),
        .O(E));
  FDRE \select_ln68_2_reg_185_reg[0] 
       (.C(ap_clk),
        .CE(\select_ln68_2_reg_185_reg[15]_1 ),
        .D(\select_ln68_2_reg_185_reg[15]_2 [0]),
        .Q(\select_ln68_2_reg_185_reg[15]_0 [0]),
        .R(1'b0));
  FDRE \select_ln68_2_reg_185_reg[10] 
       (.C(ap_clk),
        .CE(\select_ln68_2_reg_185_reg[15]_1 ),
        .D(\select_ln68_2_reg_185_reg[15]_2 [10]),
        .Q(\select_ln68_2_reg_185_reg[15]_0 [10]),
        .R(1'b0));
  FDRE \select_ln68_2_reg_185_reg[11] 
       (.C(ap_clk),
        .CE(\select_ln68_2_reg_185_reg[15]_1 ),
        .D(\select_ln68_2_reg_185_reg[15]_2 [11]),
        .Q(\select_ln68_2_reg_185_reg[15]_0 [11]),
        .R(1'b0));
  FDRE \select_ln68_2_reg_185_reg[12] 
       (.C(ap_clk),
        .CE(\select_ln68_2_reg_185_reg[15]_1 ),
        .D(\select_ln68_2_reg_185_reg[15]_2 [12]),
        .Q(\select_ln68_2_reg_185_reg[15]_0 [12]),
        .R(1'b0));
  FDRE \select_ln68_2_reg_185_reg[13] 
       (.C(ap_clk),
        .CE(\select_ln68_2_reg_185_reg[15]_1 ),
        .D(\select_ln68_2_reg_185_reg[15]_2 [13]),
        .Q(\select_ln68_2_reg_185_reg[15]_0 [13]),
        .R(1'b0));
  FDRE \select_ln68_2_reg_185_reg[14] 
       (.C(ap_clk),
        .CE(\select_ln68_2_reg_185_reg[15]_1 ),
        .D(\select_ln68_2_reg_185_reg[15]_2 [14]),
        .Q(\select_ln68_2_reg_185_reg[15]_0 [14]),
        .R(1'b0));
  FDRE \select_ln68_2_reg_185_reg[15] 
       (.C(ap_clk),
        .CE(\select_ln68_2_reg_185_reg[15]_1 ),
        .D(\select_ln68_2_reg_185_reg[15]_2 [15]),
        .Q(\select_ln68_2_reg_185_reg[15]_0 [15]),
        .R(1'b0));
  FDRE \select_ln68_2_reg_185_reg[1] 
       (.C(ap_clk),
        .CE(\select_ln68_2_reg_185_reg[15]_1 ),
        .D(\select_ln68_2_reg_185_reg[15]_2 [1]),
        .Q(\select_ln68_2_reg_185_reg[15]_0 [1]),
        .R(1'b0));
  FDRE \select_ln68_2_reg_185_reg[2] 
       (.C(ap_clk),
        .CE(\select_ln68_2_reg_185_reg[15]_1 ),
        .D(\select_ln68_2_reg_185_reg[15]_2 [2]),
        .Q(\select_ln68_2_reg_185_reg[15]_0 [2]),
        .R(1'b0));
  FDRE \select_ln68_2_reg_185_reg[3] 
       (.C(ap_clk),
        .CE(\select_ln68_2_reg_185_reg[15]_1 ),
        .D(\select_ln68_2_reg_185_reg[15]_2 [3]),
        .Q(\select_ln68_2_reg_185_reg[15]_0 [3]),
        .R(1'b0));
  FDRE \select_ln68_2_reg_185_reg[4] 
       (.C(ap_clk),
        .CE(\select_ln68_2_reg_185_reg[15]_1 ),
        .D(\select_ln68_2_reg_185_reg[15]_2 [4]),
        .Q(\select_ln68_2_reg_185_reg[15]_0 [4]),
        .R(1'b0));
  FDRE \select_ln68_2_reg_185_reg[5] 
       (.C(ap_clk),
        .CE(\select_ln68_2_reg_185_reg[15]_1 ),
        .D(\select_ln68_2_reg_185_reg[15]_2 [5]),
        .Q(\select_ln68_2_reg_185_reg[15]_0 [5]),
        .R(1'b0));
  FDRE \select_ln68_2_reg_185_reg[6] 
       (.C(ap_clk),
        .CE(\select_ln68_2_reg_185_reg[15]_1 ),
        .D(\select_ln68_2_reg_185_reg[15]_2 [6]),
        .Q(\select_ln68_2_reg_185_reg[15]_0 [6]),
        .R(1'b0));
  FDRE \select_ln68_2_reg_185_reg[7] 
       (.C(ap_clk),
        .CE(\select_ln68_2_reg_185_reg[15]_1 ),
        .D(\select_ln68_2_reg_185_reg[15]_2 [7]),
        .Q(\select_ln68_2_reg_185_reg[15]_0 [7]),
        .R(1'b0));
  FDRE \select_ln68_2_reg_185_reg[8] 
       (.C(ap_clk),
        .CE(\select_ln68_2_reg_185_reg[15]_1 ),
        .D(\select_ln68_2_reg_185_reg[15]_2 [8]),
        .Q(\select_ln68_2_reg_185_reg[15]_0 [8]),
        .R(1'b0));
  FDRE \select_ln68_2_reg_185_reg[9] 
       (.C(ap_clk),
        .CE(\select_ln68_2_reg_185_reg[15]_1 ),
        .D(\select_ln68_2_reg_185_reg[15]_2 [9]),
        .Q(\select_ln68_2_reg_185_reg[15]_0 [9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "maxpool_regslice_both" *) 
module cnn_pipeline_maxpool_0_1_maxpool_regslice_both
   (ack_in_t_reg_0,
    \state_reg[0]_0 ,
    ap_block_pp0_stage0_subdone,
    \data_p1_reg[15]_0 ,
    ap_rst_n_inv,
    ap_clk,
    in_stream_TVALID,
    Q,
    ap_enable_reg_pp0_iter1,
    in_stream_TREADY_int_regslice,
    in_stream_TDATA);
  output ack_in_t_reg_0;
  output [0:0]\state_reg[0]_0 ;
  output ap_block_pp0_stage0_subdone;
  output [15:0]\data_p1_reg[15]_0 ;
  input ap_rst_n_inv;
  input ap_clk;
  input in_stream_TVALID;
  input [0:0]Q;
  input ap_enable_reg_pp0_iter1;
  input in_stream_TREADY_int_regslice;
  input [15:0]in_stream_TDATA;

  wire \FSM_sequential_state[0]_i_1_n_5 ;
  wire \FSM_sequential_state[1]_i_1_n_5 ;
  wire [0:0]Q;
  wire ack_in_t_i_2_n_5;
  wire ack_in_t_reg_0;
  wire ap_block_pp0_stage0_subdone;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1;
  wire ap_rst_n_inv;
  wire \data_p1[0]_i_1__0_n_5 ;
  wire \data_p1[10]_i_1__0_n_5 ;
  wire \data_p1[11]_i_1__0_n_5 ;
  wire \data_p1[12]_i_1__0_n_5 ;
  wire \data_p1[13]_i_1__0_n_5 ;
  wire \data_p1[14]_i_1__0_n_5 ;
  wire \data_p1[15]_i_2__0_n_5 ;
  wire \data_p1[1]_i_1__2_n_5 ;
  wire \data_p1[2]_i_1__0_n_5 ;
  wire \data_p1[3]_i_1__0_n_5 ;
  wire \data_p1[4]_i_1__0_n_5 ;
  wire \data_p1[5]_i_1__0_n_5 ;
  wire \data_p1[6]_i_1__0_n_5 ;
  wire \data_p1[7]_i_1__0_n_5 ;
  wire \data_p1[8]_i_1__0_n_5 ;
  wire \data_p1[9]_i_1__0_n_5 ;
  wire [15:0]\data_p1_reg[15]_0 ;
  wire \data_p2_reg_n_5_[0] ;
  wire \data_p2_reg_n_5_[10] ;
  wire \data_p2_reg_n_5_[11] ;
  wire \data_p2_reg_n_5_[12] ;
  wire \data_p2_reg_n_5_[13] ;
  wire \data_p2_reg_n_5_[14] ;
  wire \data_p2_reg_n_5_[15] ;
  wire \data_p2_reg_n_5_[1] ;
  wire \data_p2_reg_n_5_[2] ;
  wire \data_p2_reg_n_5_[3] ;
  wire \data_p2_reg_n_5_[4] ;
  wire \data_p2_reg_n_5_[5] ;
  wire \data_p2_reg_n_5_[6] ;
  wire \data_p2_reg_n_5_[7] ;
  wire \data_p2_reg_n_5_[8] ;
  wire \data_p2_reg_n_5_[9] ;
  wire [15:0]in_stream_TDATA;
  wire in_stream_TREADY_int_regslice;
  wire in_stream_TVALID;
  wire load_p1;
  wire load_p2;
  wire [1:1]state;
  wire \state[0]_i_1_n_5 ;
  wire \state[1]_i_1_n_5 ;
  wire [1:0]state__0;
  wire [0:0]\state_reg[0]_0 ;

  LUT6 #(
    .INIT(64'h8080FF80FFFFFFFF)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(\state_reg[0]_0 ),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(Q),
        .I3(state__0[0]),
        .I4(in_stream_TVALID),
        .I5(state__0[1]),
        .O(\FSM_sequential_state[0]_i_1_n_5 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'hFCCC4C4C)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(in_stream_TREADY_int_regslice),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(ack_in_t_reg_0),
        .I4(in_stream_TVALID),
        .O(\FSM_sequential_state[1]_i_1_n_5 ));
  (* FSM_ENCODED_STATES = "ZERO:01,TWO:10,ONE:11,iSTATE:00" *) 
  FDSE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1_n_5 ),
        .Q(state__0[0]),
        .S(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "ZERO:01,TWO:10,ONE:11,iSTATE:00" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_1_n_5 ),
        .Q(state__0[1]),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'hB0FFFAF0)) 
    ack_in_t_i_2
       (.I0(in_stream_TREADY_int_regslice),
        .I1(in_stream_TVALID),
        .I2(ack_in_t_reg_0),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .O(ack_in_t_i_2_n_5));
  FDRE #(
    .INIT(1'b0)) 
    ack_in_t_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ack_in_t_i_2_n_5),
        .Q(ack_in_t_reg_0),
        .R(ap_rst_n_inv));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \data_p1[0]_i_1__0 
       (.I0(\data_p2_reg_n_5_[0] ),
        .I1(in_stream_TDATA[0]),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .O(\data_p1[0]_i_1__0_n_5 ));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \data_p1[10]_i_1__0 
       (.I0(\data_p2_reg_n_5_[10] ),
        .I1(in_stream_TDATA[10]),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .O(\data_p1[10]_i_1__0_n_5 ));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \data_p1[11]_i_1__0 
       (.I0(\data_p2_reg_n_5_[11] ),
        .I1(in_stream_TDATA[11]),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .O(\data_p1[11]_i_1__0_n_5 ));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \data_p1[12]_i_1__0 
       (.I0(\data_p2_reg_n_5_[12] ),
        .I1(in_stream_TDATA[12]),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .O(\data_p1[12]_i_1__0_n_5 ));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \data_p1[13]_i_1__0 
       (.I0(\data_p2_reg_n_5_[13] ),
        .I1(in_stream_TDATA[13]),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .O(\data_p1[13]_i_1__0_n_5 ));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \data_p1[14]_i_1__0 
       (.I0(\data_p2_reg_n_5_[14] ),
        .I1(in_stream_TDATA[14]),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .O(\data_p1[14]_i_1__0_n_5 ));
  LUT6 #(
    .INIT(64'hE240404040404040)) 
    \data_p1[15]_i_1 
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(in_stream_TVALID),
        .I3(Q),
        .I4(ap_enable_reg_pp0_iter1),
        .I5(\state_reg[0]_0 ),
        .O(load_p1));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \data_p1[15]_i_2__0 
       (.I0(\data_p2_reg_n_5_[15] ),
        .I1(in_stream_TDATA[15]),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .O(\data_p1[15]_i_2__0_n_5 ));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \data_p1[1]_i_1__2 
       (.I0(\data_p2_reg_n_5_[1] ),
        .I1(in_stream_TDATA[1]),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .O(\data_p1[1]_i_1__2_n_5 ));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \data_p1[2]_i_1__0 
       (.I0(\data_p2_reg_n_5_[2] ),
        .I1(in_stream_TDATA[2]),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .O(\data_p1[2]_i_1__0_n_5 ));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \data_p1[3]_i_1__0 
       (.I0(\data_p2_reg_n_5_[3] ),
        .I1(in_stream_TDATA[3]),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .O(\data_p1[3]_i_1__0_n_5 ));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \data_p1[4]_i_1__0 
       (.I0(\data_p2_reg_n_5_[4] ),
        .I1(in_stream_TDATA[4]),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .O(\data_p1[4]_i_1__0_n_5 ));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \data_p1[5]_i_1__0 
       (.I0(\data_p2_reg_n_5_[5] ),
        .I1(in_stream_TDATA[5]),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .O(\data_p1[5]_i_1__0_n_5 ));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \data_p1[6]_i_1__0 
       (.I0(\data_p2_reg_n_5_[6] ),
        .I1(in_stream_TDATA[6]),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .O(\data_p1[6]_i_1__0_n_5 ));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \data_p1[7]_i_1__0 
       (.I0(\data_p2_reg_n_5_[7] ),
        .I1(in_stream_TDATA[7]),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .O(\data_p1[7]_i_1__0_n_5 ));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \data_p1[8]_i_1__0 
       (.I0(\data_p2_reg_n_5_[8] ),
        .I1(in_stream_TDATA[8]),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .O(\data_p1[8]_i_1__0_n_5 ));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \data_p1[9]_i_1__0 
       (.I0(\data_p2_reg_n_5_[9] ),
        .I1(in_stream_TDATA[9]),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .O(\data_p1[9]_i_1__0_n_5 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[0] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[0]_i_1__0_n_5 ),
        .Q(\data_p1_reg[15]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[10] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[10]_i_1__0_n_5 ),
        .Q(\data_p1_reg[15]_0 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[11] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[11]_i_1__0_n_5 ),
        .Q(\data_p1_reg[15]_0 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[12] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[12]_i_1__0_n_5 ),
        .Q(\data_p1_reg[15]_0 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[13] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[13]_i_1__0_n_5 ),
        .Q(\data_p1_reg[15]_0 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[14] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[14]_i_1__0_n_5 ),
        .Q(\data_p1_reg[15]_0 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[15] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[15]_i_2__0_n_5 ),
        .Q(\data_p1_reg[15]_0 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[1] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[1]_i_1__2_n_5 ),
        .Q(\data_p1_reg[15]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[2] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[2]_i_1__0_n_5 ),
        .Q(\data_p1_reg[15]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[3] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[3]_i_1__0_n_5 ),
        .Q(\data_p1_reg[15]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[4] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[4]_i_1__0_n_5 ),
        .Q(\data_p1_reg[15]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[5] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[5]_i_1__0_n_5 ),
        .Q(\data_p1_reg[15]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[6] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[6]_i_1__0_n_5 ),
        .Q(\data_p1_reg[15]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[7] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[7]_i_1__0_n_5 ),
        .Q(\data_p1_reg[15]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[8] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[8]_i_1__0_n_5 ),
        .Q(\data_p1_reg[15]_0 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[9] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[9]_i_1__0_n_5 ),
        .Q(\data_p1_reg[15]_0 [9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \data_p2[15]_i_1 
       (.I0(in_stream_TVALID),
        .I1(ack_in_t_reg_0),
        .O(load_p2));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[0] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TDATA[0]),
        .Q(\data_p2_reg_n_5_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[10] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TDATA[10]),
        .Q(\data_p2_reg_n_5_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[11] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TDATA[11]),
        .Q(\data_p2_reg_n_5_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[12] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TDATA[12]),
        .Q(\data_p2_reg_n_5_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[13] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TDATA[13]),
        .Q(\data_p2_reg_n_5_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[14] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TDATA[14]),
        .Q(\data_p2_reg_n_5_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[15] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TDATA[15]),
        .Q(\data_p2_reg_n_5_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[1] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TDATA[1]),
        .Q(\data_p2_reg_n_5_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[2] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TDATA[2]),
        .Q(\data_p2_reg_n_5_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[3] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TDATA[3]),
        .Q(\data_p2_reg_n_5_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[4] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TDATA[4]),
        .Q(\data_p2_reg_n_5_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[5] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TDATA[5]),
        .Q(\data_p2_reg_n_5_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[6] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TDATA[6]),
        .Q(\data_p2_reg_n_5_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[7] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TDATA[7]),
        .Q(\data_p2_reg_n_5_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[8] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TDATA[8]),
        .Q(\data_p2_reg_n_5_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[9] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TDATA[9]),
        .Q(\data_p2_reg_n_5_[9] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFF0F0F070F070F0)) 
    \state[0]_i_1 
       (.I0(Q),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(\state_reg[0]_0 ),
        .I3(state),
        .I4(ack_in_t_reg_0),
        .I5(in_stream_TVALID),
        .O(\state[0]_i_1_n_5 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h88F8FFFF)) 
    \state[1]_i_1 
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(Q),
        .I2(state),
        .I3(in_stream_TVALID),
        .I4(\state_reg[0]_0 ),
        .O(\state[1]_i_1_n_5 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\state[0]_i_1_n_5 ),
        .Q(\state_reg[0]_0 ),
        .R(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\state[1]_i_1_n_5 ),
        .Q(state),
        .S(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \trunc_ln34_reg_597[1]_i_2 
       (.I0(\state_reg[0]_0 ),
        .I1(ap_enable_reg_pp0_iter1),
        .O(ap_block_pp0_stage0_subdone));
endmodule

(* ORIG_REF_NAME = "maxpool_regslice_both" *) 
module cnn_pipeline_maxpool_0_1_maxpool_regslice_both_0
   (out_stream_TREADY_int_regslice,
    ap_rst_n_inv,
    out_stream_TVALID,
    ack_in_t_reg_0,
    \ap_CS_fsm_reg[0] ,
    ap_ready,
    ack_in_t_reg_1,
    out_stream_TDATA,
    ap_clk,
    out_stream_TREADY,
    Q,
    ap_enable_reg_pp0_iter1,
    D,
    out_stream_TDATA_reg,
    E,
    ap_start,
    ap_rst_n);
  output out_stream_TREADY_int_regslice;
  output ap_rst_n_inv;
  output out_stream_TVALID;
  output [0:0]ack_in_t_reg_0;
  output [0:0]\ap_CS_fsm_reg[0] ;
  output ap_ready;
  output ack_in_t_reg_1;
  output [15:0]out_stream_TDATA;
  input ap_clk;
  input out_stream_TREADY;
  input [2:0]Q;
  input ap_enable_reg_pp0_iter1;
  input [15:0]D;
  input [15:0]out_stream_TDATA_reg;
  input [0:0]E;
  input ap_start;
  input ap_rst_n;

  wire [15:0]D;
  wire [0:0]E;
  wire [2:0]Q;
  wire ack_in_t_i_1__0_n_5;
  wire [0:0]ack_in_t_reg_0;
  wire ack_in_t_reg_1;
  wire [0:0]\ap_CS_fsm_reg[0] ;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1;
  wire ap_ready;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire ap_start;
  wire \data_p1[0]_i_1_n_5 ;
  wire \data_p1[10]_i_1_n_5 ;
  wire \data_p1[11]_i_1_n_5 ;
  wire \data_p1[12]_i_1_n_5 ;
  wire \data_p1[13]_i_1_n_5 ;
  wire \data_p1[14]_i_1_n_5 ;
  wire \data_p1[15]_i_2_n_5 ;
  wire \data_p1[1]_i_1__1_n_5 ;
  wire \data_p1[2]_i_1_n_5 ;
  wire \data_p1[3]_i_1_n_5 ;
  wire \data_p1[4]_i_1_n_5 ;
  wire \data_p1[5]_i_1_n_5 ;
  wire \data_p1[6]_i_1_n_5 ;
  wire \data_p1[7]_i_1_n_5 ;
  wire \data_p1[8]_i_1_n_5 ;
  wire \data_p1[9]_i_1_n_5 ;
  wire \data_p2_reg_n_5_[0] ;
  wire \data_p2_reg_n_5_[10] ;
  wire \data_p2_reg_n_5_[11] ;
  wire \data_p2_reg_n_5_[12] ;
  wire \data_p2_reg_n_5_[13] ;
  wire \data_p2_reg_n_5_[14] ;
  wire \data_p2_reg_n_5_[15] ;
  wire \data_p2_reg_n_5_[1] ;
  wire \data_p2_reg_n_5_[2] ;
  wire \data_p2_reg_n_5_[3] ;
  wire \data_p2_reg_n_5_[4] ;
  wire \data_p2_reg_n_5_[5] ;
  wire \data_p2_reg_n_5_[6] ;
  wire \data_p2_reg_n_5_[7] ;
  wire \data_p2_reg_n_5_[8] ;
  wire \data_p2_reg_n_5_[9] ;
  wire load_p1;
  wire [1:0]next__0;
  wire [15:0]out_stream_TDATA;
  wire [15:0]out_stream_TDATA_reg;
  wire out_stream_TREADY;
  wire out_stream_TREADY_int_regslice;
  wire out_stream_TVALID;
  wire [1:1]state;
  wire \state[0]_i_1__0_n_5 ;
  wire \state[1]_i_1__0_n_5 ;
  wire [1:0]state__0;

  LUT6 #(
    .INIT(64'hAEEEEEEEFFFFFFFF)) 
    \FSM_sequential_state[0]_i_1__3 
       (.I0(out_stream_TREADY),
        .I1(state__0[0]),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(Q[1]),
        .I4(out_stream_TREADY_int_regslice),
        .I5(state__0[1]),
        .O(next__0[0]));
  LUT6 #(
    .INIT(64'hFC4C4C4C4C4C4C4C)) 
    \FSM_sequential_state[1]_i_1__0 
       (.I0(out_stream_TREADY),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(out_stream_TREADY_int_regslice),
        .I4(Q[1]),
        .I5(ap_enable_reg_pp0_iter1),
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
  LUT1 #(
    .INIT(2'h1)) 
    ack_in_t_i_1
       (.I0(ap_rst_n),
        .O(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hBF00FFFFFFAAFF00)) 
    ack_in_t_i_1__0
       (.I0(out_stream_TREADY),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(Q[1]),
        .I3(out_stream_TREADY_int_regslice),
        .I4(state__0[1]),
        .I5(state__0[0]),
        .O(ack_in_t_i_1__0_n_5));
  FDRE #(
    .INIT(1'b0)) 
    ack_in_t_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ack_in_t_i_1__0_n_5),
        .Q(out_stream_TREADY_int_regslice),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hF2F222F222F222F2)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(Q[0]),
        .I1(ap_start),
        .I2(Q[2]),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .I5(out_stream_TREADY),
        .O(\ap_CS_fsm_reg[0] ));
  LUT4 #(
    .INIT(16'hA222)) 
    ap_ready_INST_0
       (.I0(Q[2]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(out_stream_TREADY),
        .O(ap_ready));
  LUT6 #(
    .INIT(64'hCCF0CCF0AAAACCF0)) 
    \data_p1[0]_i_1 
       (.I0(\data_p2_reg_n_5_[0] ),
        .I1(D[0]),
        .I2(out_stream_TDATA_reg[0]),
        .I3(E),
        .I4(state__0[1]),
        .I5(state__0[0]),
        .O(\data_p1[0]_i_1_n_5 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \data_p1[0]_i_3 
       (.I0(out_stream_TREADY_int_regslice),
        .I1(Q[1]),
        .I2(ap_enable_reg_pp0_iter1),
        .O(ack_in_t_reg_1));
  LUT6 #(
    .INIT(64'hCCF0CCF0AAAACCF0)) 
    \data_p1[10]_i_1 
       (.I0(\data_p2_reg_n_5_[10] ),
        .I1(D[10]),
        .I2(out_stream_TDATA_reg[10]),
        .I3(E),
        .I4(state__0[1]),
        .I5(state__0[0]),
        .O(\data_p1[10]_i_1_n_5 ));
  LUT6 #(
    .INIT(64'hCCF0CCF0AAAACCF0)) 
    \data_p1[11]_i_1 
       (.I0(\data_p2_reg_n_5_[11] ),
        .I1(D[11]),
        .I2(out_stream_TDATA_reg[11]),
        .I3(E),
        .I4(state__0[1]),
        .I5(state__0[0]),
        .O(\data_p1[11]_i_1_n_5 ));
  LUT6 #(
    .INIT(64'hCCF0CCF0AAAACCF0)) 
    \data_p1[12]_i_1 
       (.I0(\data_p2_reg_n_5_[12] ),
        .I1(D[12]),
        .I2(out_stream_TDATA_reg[12]),
        .I3(E),
        .I4(state__0[1]),
        .I5(state__0[0]),
        .O(\data_p1[12]_i_1_n_5 ));
  LUT6 #(
    .INIT(64'hCCF0CCF0AAAACCF0)) 
    \data_p1[13]_i_1 
       (.I0(\data_p2_reg_n_5_[13] ),
        .I1(D[13]),
        .I2(out_stream_TDATA_reg[13]),
        .I3(E),
        .I4(state__0[1]),
        .I5(state__0[0]),
        .O(\data_p1[13]_i_1_n_5 ));
  LUT6 #(
    .INIT(64'hCCF0CCF0AAAACCF0)) 
    \data_p1[14]_i_1 
       (.I0(\data_p2_reg_n_5_[14] ),
        .I1(D[14]),
        .I2(out_stream_TDATA_reg[14]),
        .I3(E),
        .I4(state__0[1]),
        .I5(state__0[0]),
        .O(\data_p1[14]_i_1_n_5 ));
  LUT6 #(
    .INIT(64'hE222222240000000)) 
    \data_p1[15]_i_1__0 
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(out_stream_TREADY_int_regslice),
        .I3(Q[1]),
        .I4(ap_enable_reg_pp0_iter1),
        .I5(out_stream_TREADY),
        .O(load_p1));
  LUT6 #(
    .INIT(64'hCCF0CCF0AAAACCF0)) 
    \data_p1[15]_i_2 
       (.I0(\data_p2_reg_n_5_[15] ),
        .I1(D[15]),
        .I2(out_stream_TDATA_reg[15]),
        .I3(E),
        .I4(state__0[1]),
        .I5(state__0[0]),
        .O(\data_p1[15]_i_2_n_5 ));
  LUT6 #(
    .INIT(64'hCCF0CCF0AAAACCF0)) 
    \data_p1[1]_i_1__1 
       (.I0(\data_p2_reg_n_5_[1] ),
        .I1(D[1]),
        .I2(out_stream_TDATA_reg[1]),
        .I3(E),
        .I4(state__0[1]),
        .I5(state__0[0]),
        .O(\data_p1[1]_i_1__1_n_5 ));
  LUT6 #(
    .INIT(64'hCCF0CCF0AAAACCF0)) 
    \data_p1[2]_i_1 
       (.I0(\data_p2_reg_n_5_[2] ),
        .I1(D[2]),
        .I2(out_stream_TDATA_reg[2]),
        .I3(E),
        .I4(state__0[1]),
        .I5(state__0[0]),
        .O(\data_p1[2]_i_1_n_5 ));
  LUT6 #(
    .INIT(64'hCCF0CCF0AAAACCF0)) 
    \data_p1[3]_i_1 
       (.I0(\data_p2_reg_n_5_[3] ),
        .I1(D[3]),
        .I2(out_stream_TDATA_reg[3]),
        .I3(E),
        .I4(state__0[1]),
        .I5(state__0[0]),
        .O(\data_p1[3]_i_1_n_5 ));
  LUT6 #(
    .INIT(64'hCCF0CCF0AAAACCF0)) 
    \data_p1[4]_i_1 
       (.I0(\data_p2_reg_n_5_[4] ),
        .I1(D[4]),
        .I2(out_stream_TDATA_reg[4]),
        .I3(E),
        .I4(state__0[1]),
        .I5(state__0[0]),
        .O(\data_p1[4]_i_1_n_5 ));
  LUT6 #(
    .INIT(64'hCCF0CCF0AAAACCF0)) 
    \data_p1[5]_i_1 
       (.I0(\data_p2_reg_n_5_[5] ),
        .I1(D[5]),
        .I2(out_stream_TDATA_reg[5]),
        .I3(E),
        .I4(state__0[1]),
        .I5(state__0[0]),
        .O(\data_p1[5]_i_1_n_5 ));
  LUT6 #(
    .INIT(64'hCCF0CCF0AAAACCF0)) 
    \data_p1[6]_i_1 
       (.I0(\data_p2_reg_n_5_[6] ),
        .I1(D[6]),
        .I2(out_stream_TDATA_reg[6]),
        .I3(E),
        .I4(state__0[1]),
        .I5(state__0[0]),
        .O(\data_p1[6]_i_1_n_5 ));
  LUT6 #(
    .INIT(64'hCCF0CCF0AAAACCF0)) 
    \data_p1[7]_i_1 
       (.I0(\data_p2_reg_n_5_[7] ),
        .I1(D[7]),
        .I2(out_stream_TDATA_reg[7]),
        .I3(E),
        .I4(state__0[1]),
        .I5(state__0[0]),
        .O(\data_p1[7]_i_1_n_5 ));
  LUT6 #(
    .INIT(64'hCCF0CCF0AAAACCF0)) 
    \data_p1[8]_i_1 
       (.I0(\data_p2_reg_n_5_[8] ),
        .I1(D[8]),
        .I2(out_stream_TDATA_reg[8]),
        .I3(E),
        .I4(state__0[1]),
        .I5(state__0[0]),
        .O(\data_p1[8]_i_1_n_5 ));
  LUT6 #(
    .INIT(64'hCCF0CCF0AAAACCF0)) 
    \data_p1[9]_i_1 
       (.I0(\data_p2_reg_n_5_[9] ),
        .I1(D[9]),
        .I2(out_stream_TDATA_reg[9]),
        .I3(E),
        .I4(state__0[1]),
        .I5(state__0[0]),
        .O(\data_p1[9]_i_1_n_5 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[0] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[0]_i_1_n_5 ),
        .Q(out_stream_TDATA[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[10] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[10]_i_1_n_5 ),
        .Q(out_stream_TDATA[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[11] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[11]_i_1_n_5 ),
        .Q(out_stream_TDATA[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[12] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[12]_i_1_n_5 ),
        .Q(out_stream_TDATA[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[13] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[13]_i_1_n_5 ),
        .Q(out_stream_TDATA[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[14] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[14]_i_1_n_5 ),
        .Q(out_stream_TDATA[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[15] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[15]_i_2_n_5 ),
        .Q(out_stream_TDATA[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[1] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[1]_i_1__1_n_5 ),
        .Q(out_stream_TDATA[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[2] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[2]_i_1_n_5 ),
        .Q(out_stream_TDATA[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[3] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[3]_i_1_n_5 ),
        .Q(out_stream_TDATA[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[4] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[4]_i_1_n_5 ),
        .Q(out_stream_TDATA[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[5] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[5]_i_1_n_5 ),
        .Q(out_stream_TDATA[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[6] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[6]_i_1_n_5 ),
        .Q(out_stream_TDATA[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[7] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[7]_i_1_n_5 ),
        .Q(out_stream_TDATA[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[8] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[8]_i_1_n_5 ),
        .Q(out_stream_TDATA[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[9] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[9]_i_1_n_5 ),
        .Q(out_stream_TDATA[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(D[0]),
        .Q(\data_p2_reg_n_5_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[10] 
       (.C(ap_clk),
        .CE(E),
        .D(D[10]),
        .Q(\data_p2_reg_n_5_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[11] 
       (.C(ap_clk),
        .CE(E),
        .D(D[11]),
        .Q(\data_p2_reg_n_5_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[12] 
       (.C(ap_clk),
        .CE(E),
        .D(D[12]),
        .Q(\data_p2_reg_n_5_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[13] 
       (.C(ap_clk),
        .CE(E),
        .D(D[13]),
        .Q(\data_p2_reg_n_5_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[14] 
       (.C(ap_clk),
        .CE(E),
        .D(D[14]),
        .Q(\data_p2_reg_n_5_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[15] 
       (.C(ap_clk),
        .CE(E),
        .D(D[15]),
        .Q(\data_p2_reg_n_5_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(D[1]),
        .Q(\data_p2_reg_n_5_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[2] 
       (.C(ap_clk),
        .CE(E),
        .D(D[2]),
        .Q(\data_p2_reg_n_5_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[3] 
       (.C(ap_clk),
        .CE(E),
        .D(D[3]),
        .Q(\data_p2_reg_n_5_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[4] 
       (.C(ap_clk),
        .CE(E),
        .D(D[4]),
        .Q(\data_p2_reg_n_5_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[5] 
       (.C(ap_clk),
        .CE(E),
        .D(D[5]),
        .Q(\data_p2_reg_n_5_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[6] 
       (.C(ap_clk),
        .CE(E),
        .D(D[6]),
        .Q(\data_p2_reg_n_5_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[7] 
       (.C(ap_clk),
        .CE(E),
        .D(D[7]),
        .Q(\data_p2_reg_n_5_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[8] 
       (.C(ap_clk),
        .CE(E),
        .D(D[8]),
        .Q(\data_p2_reg_n_5_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[9] 
       (.C(ap_clk),
        .CE(E),
        .D(D[9]),
        .Q(\data_p2_reg_n_5_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    \select_ln68_2_reg_185[15]_i_1 
       (.I0(out_stream_TREADY_int_regslice),
        .I1(Q[1]),
        .I2(ap_enable_reg_pp0_iter1),
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
        .O(\state[0]_i_1__0_n_5 ));
  LUT6 #(
    .INIT(64'hAEEEEEEEFFFFFFFF)) 
    \state[1]_i_1__0 
       (.I0(out_stream_TREADY),
        .I1(state),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(Q[1]),
        .I4(out_stream_TREADY_int_regslice),
        .I5(out_stream_TVALID),
        .O(\state[1]_i_1__0_n_5 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\state[0]_i_1__0_n_5 ),
        .Q(out_stream_TVALID),
        .R(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\state[1]_i_1__0_n_5 ),
        .Q(state),
        .S(ap_rst_n_inv));
endmodule

(* ORIG_REF_NAME = "maxpool_regslice_both" *) 
module cnn_pipeline_maxpool_0_1_maxpool_regslice_both__parameterized0
   (out_stream_TKEEP,
    ack_in_t_reg_0,
    ap_clk,
    ap_rst_n_inv,
    out_stream_TREADY,
    ack_in_t_reg_1,
    out_stream_TREADY_int_regslice,
    Q,
    ap_enable_reg_pp0_iter1,
    load_p2);
  output [0:0]out_stream_TKEEP;
  output ack_in_t_reg_0;
  input ap_clk;
  input ap_rst_n_inv;
  input out_stream_TREADY;
  input ack_in_t_reg_1;
  input out_stream_TREADY_int_regslice;
  input [0:0]Q;
  input ap_enable_reg_pp0_iter1;
  input load_p2;

  wire [0:0]Q;
  wire ack_in_t_i_1__1_n_5;
  wire ack_in_t_reg_0;
  wire ack_in_t_reg_1;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1;
  wire ap_rst_n_inv;
  wire \data_p1[1]_i_2_n_5 ;
  wire [1:1]data_p2;
  wire \data_p2[1]_i_1_n_5 ;
  wire load_p1;
  wire load_p2;
  wire [1:0]next__0;
  wire [0:0]out_stream_TKEEP;
  wire out_stream_TREADY;
  wire out_stream_TREADY_int_regslice;
  wire [1:0]state__0;

  LUT6 #(
    .INIT(64'hAEEEEEEEFFFFFFFF)) 
    \FSM_sequential_state[0]_i_1__2 
       (.I0(out_stream_TREADY),
        .I1(state__0[0]),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(Q),
        .I4(out_stream_TREADY_int_regslice),
        .I5(state__0[1]),
        .O(next__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'hFCCC4C4C)) 
    \FSM_sequential_state[1]_i_1__1 
       (.I0(out_stream_TREADY),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(ack_in_t_reg_0),
        .I4(ack_in_t_reg_1),
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
    .INIT(32'hB0FFFAF0)) 
    ack_in_t_i_1__1
       (.I0(out_stream_TREADY),
        .I1(ack_in_t_reg_1),
        .I2(ack_in_t_reg_0),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .O(ack_in_t_i_1__1_n_5));
  FDRE #(
    .INIT(1'b0)) 
    ack_in_t_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ack_in_t_i_1__1_n_5),
        .Q(ack_in_t_reg_0),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hE222222240000000)) 
    \data_p1[1]_i_1 
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(out_stream_TREADY_int_regslice),
        .I3(Q),
        .I4(ap_enable_reg_pp0_iter1),
        .I5(out_stream_TREADY),
        .O(load_p1));
  LUT3 #(
    .INIT(8'hEF)) 
    \data_p1[1]_i_2 
       (.I0(data_p2),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .O(\data_p1[1]_i_2_n_5 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[1] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[1]_i_2_n_5 ),
        .Q(out_stream_TKEEP),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h8000)) 
    \data_p2[1]_i_1 
       (.I0(ack_in_t_reg_0),
        .I1(out_stream_TREADY_int_regslice),
        .I2(Q),
        .I3(ap_enable_reg_pp0_iter1),
        .O(\data_p2[1]_i_1_n_5 ));
  FDSE #(
    .INIT(1'b0)) 
    \data_p2_reg[1] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(1'b1),
        .Q(data_p2),
        .S(\data_p2[1]_i_1_n_5 ));
endmodule

(* ORIG_REF_NAME = "maxpool_regslice_both" *) 
module cnn_pipeline_maxpool_0_1_maxpool_regslice_both__parameterized0_1
   (out_stream_TSTRB,
    ack_in_t_reg_0,
    ap_clk,
    ap_rst_n_inv,
    out_stream_TREADY,
    ack_in_t_reg_1,
    out_stream_TREADY_int_regslice,
    Q,
    ap_enable_reg_pp0_iter1,
    load_p2);
  output [0:0]out_stream_TSTRB;
  output ack_in_t_reg_0;
  input ap_clk;
  input ap_rst_n_inv;
  input out_stream_TREADY;
  input ack_in_t_reg_1;
  input out_stream_TREADY_int_regslice;
  input [0:0]Q;
  input ap_enable_reg_pp0_iter1;
  input load_p2;

  wire [0:0]Q;
  wire ack_in_t_i_1__2_n_5;
  wire ack_in_t_reg_0;
  wire ack_in_t_reg_1;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1;
  wire ap_rst_n_inv;
  wire \data_p1[1]_i_2__0_n_5 ;
  wire [1:1]data_p2;
  wire \data_p2[1]_i_1_n_5 ;
  wire load_p1;
  wire load_p2;
  wire [1:0]next__0;
  wire out_stream_TREADY;
  wire out_stream_TREADY_int_regslice;
  wire [0:0]out_stream_TSTRB;
  wire [1:0]state__0;

  LUT6 #(
    .INIT(64'hAEEEEEEEFFFFFFFF)) 
    \FSM_sequential_state[0]_i_1__1 
       (.I0(out_stream_TREADY),
        .I1(state__0[0]),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(Q),
        .I4(out_stream_TREADY_int_regslice),
        .I5(state__0[1]),
        .O(next__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'hFCCC4C4C)) 
    \FSM_sequential_state[1]_i_1__2 
       (.I0(out_stream_TREADY),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(ack_in_t_reg_0),
        .I4(ack_in_t_reg_1),
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
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'hB0FFFAF0)) 
    ack_in_t_i_1__2
       (.I0(out_stream_TREADY),
        .I1(ack_in_t_reg_1),
        .I2(ack_in_t_reg_0),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .O(ack_in_t_i_1__2_n_5));
  FDRE #(
    .INIT(1'b0)) 
    ack_in_t_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ack_in_t_i_1__2_n_5),
        .Q(ack_in_t_reg_0),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hE222222240000000)) 
    \data_p1[1]_i_1__0 
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(out_stream_TREADY_int_regslice),
        .I3(Q),
        .I4(ap_enable_reg_pp0_iter1),
        .I5(out_stream_TREADY),
        .O(load_p1));
  LUT3 #(
    .INIT(8'hEF)) 
    \data_p1[1]_i_2__0 
       (.I0(data_p2),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .O(\data_p1[1]_i_2__0_n_5 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[1] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[1]_i_2__0_n_5 ),
        .Q(out_stream_TSTRB),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h8000)) 
    \data_p2[1]_i_1 
       (.I0(ack_in_t_reg_0),
        .I1(out_stream_TREADY_int_regslice),
        .I2(Q),
        .I3(ap_enable_reg_pp0_iter1),
        .O(\data_p2[1]_i_1_n_5 ));
  FDSE #(
    .INIT(1'b0)) 
    \data_p2_reg[1] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(1'b1),
        .Q(data_p2),
        .S(\data_p2[1]_i_1_n_5 ));
endmodule

(* ORIG_REF_NAME = "maxpool_regslice_both" *) 
module cnn_pipeline_maxpool_0_1_maxpool_regslice_both__parameterized1
   (out_stream_TLAST,
    ap_rst_n_inv,
    ap_clk,
    out_stream_TREADY,
    ack_in_t_reg_0,
    grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_out_stream_TLAST,
    E,
    out_stream_TLAST_reg,
    Q,
    ap_enable_reg_pp0_iter1,
    out_stream_TREADY_int_regslice);
  output [0:0]out_stream_TLAST;
  input ap_rst_n_inv;
  input ap_clk;
  input out_stream_TREADY;
  input ack_in_t_reg_0;
  input [0:0]grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_out_stream_TLAST;
  input [0:0]E;
  input [0:0]out_stream_TLAST_reg;
  input [0:0]Q;
  input ap_enable_reg_pp0_iter1;
  input out_stream_TREADY_int_regslice;

  wire [0:0]E;
  wire [0:0]Q;
  wire ack_in_t_i_1__3_n_5;
  wire ack_in_t_reg_0;
  wire ack_in_t_reg_n_5;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1;
  wire ap_rst_n_inv;
  wire \data_p1[0]_i_1__1_n_5 ;
  wire \data_p1[0]_i_2_n_5 ;
  wire [0:0]data_p2;
  wire \data_p2[0]_i_1_n_5 ;
  wire [0:0]grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_out_stream_TLAST;
  wire [1:0]next__0;
  wire [0:0]out_stream_TLAST;
  wire [0:0]out_stream_TLAST_reg;
  wire out_stream_TREADY;
  wire out_stream_TREADY_int_regslice;
  wire [1:0]state__0;

  LUT6 #(
    .INIT(64'hAEEEEEEEFFFFFFFF)) 
    \FSM_sequential_state[0]_i_1__0 
       (.I0(out_stream_TREADY),
        .I1(state__0[0]),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(Q),
        .I4(out_stream_TREADY_int_regslice),
        .I5(state__0[1]),
        .O(next__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'hFCCC4C4C)) 
    \FSM_sequential_state[1]_i_1__3 
       (.I0(out_stream_TREADY),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(ack_in_t_reg_n_5),
        .I4(ack_in_t_reg_0),
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
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'hB0FFFAF0)) 
    ack_in_t_i_1__3
       (.I0(out_stream_TREADY),
        .I1(ack_in_t_reg_0),
        .I2(ack_in_t_reg_n_5),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .O(ack_in_t_i_1__3_n_5));
  FDRE #(
    .INIT(1'b0)) 
    ack_in_t_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ack_in_t_i_1__3_n_5),
        .Q(ack_in_t_reg_n_5),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hABFBEFFFA8082000)) 
    \data_p1[0]_i_1__1 
       (.I0(\data_p1[0]_i_2_n_5 ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(ack_in_t_reg_0),
        .I4(out_stream_TREADY),
        .I5(out_stream_TLAST),
        .O(\data_p1[0]_i_1__1_n_5 ));
  LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
    \data_p1[0]_i_2 
       (.I0(data_p2),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_out_stream_TLAST),
        .I4(E),
        .I5(out_stream_TLAST_reg),
        .O(\data_p1[0]_i_2_n_5 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\data_p1[0]_i_1__1_n_5 ),
        .Q(out_stream_TLAST),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \data_p2[0]_i_1 
       (.I0(grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184_out_stream_TLAST),
        .I1(Q),
        .I2(out_stream_TLAST_reg),
        .I3(ack_in_t_reg_0),
        .I4(ack_in_t_reg_n_5),
        .I5(data_p2),
        .O(\data_p2[0]_i_1_n_5 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\data_p2[0]_i_1_n_5 ),
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
