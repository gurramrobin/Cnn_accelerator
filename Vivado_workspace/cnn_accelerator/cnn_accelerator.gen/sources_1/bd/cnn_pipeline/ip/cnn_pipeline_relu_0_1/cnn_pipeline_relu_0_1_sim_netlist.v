// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Fri Jun 12 17:37:18 2026
// Host        : DESKTOP-1HEQ2M2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/CHINNA/Vivado_workspace/cnn_accelerator/cnn_accelerator.gen/sources_1/bd/cnn_pipeline/ip/cnn_pipeline_relu_0_1/cnn_pipeline_relu_0_1_sim_netlist.v
// Design      : cnn_pipeline_relu_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "cnn_pipeline_relu_0_1,relu,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "HLS" *) 
(* X_CORE_INFO = "relu,Vivado 2025.2" *) (* hls_module = "yes" *) 
(* NotValidForBitStream *)
module cnn_pipeline_relu_0_1
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

  wire \<const0> ;
  wire ap_clk;
  wire ap_done;
  wire ap_idle;
  wire ap_ready;
  wire ap_rst_n;
  wire ap_start;
  wire [15:0]in_stream_TDATA;
  wire [1:0]in_stream_TKEEP;
  wire [0:0]in_stream_TLAST;
  wire in_stream_TREADY;
  wire in_stream_TVALID;
  wire [14:0]\^out_stream_TDATA ;
  wire [1:0]out_stream_TKEEP;
  wire [0:0]out_stream_TLAST;
  wire out_stream_TREADY;
  wire [1:0]out_stream_TSTRB;
  wire out_stream_TVALID;
  wire [15:15]NLW_inst_out_stream_TDATA_UNCONNECTED;

  assign out_stream_TDATA[15] = \<const0> ;
  assign out_stream_TDATA[14:0] = \^out_stream_TDATA [14:0];
  GND GND
       (.G(\<const0> ));
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* SDX_KERNEL = "true" *) 
  (* SDX_KERNEL_SYNTH_INST = "inst" *) 
  (* SDX_KERNEL_TYPE = "hls" *) 
  (* ap_ST_fsm_pp0_stage0 = "1'b1" *) 
  cnn_pipeline_relu_0_1_relu inst
       (.ap_clk(ap_clk),
        .ap_done(ap_done),
        .ap_idle(ap_idle),
        .ap_ready(ap_ready),
        .ap_rst_n(ap_rst_n),
        .ap_start(ap_start),
        .in_stream_TDATA(in_stream_TDATA),
        .in_stream_TKEEP(in_stream_TKEEP),
        .in_stream_TLAST(in_stream_TLAST),
        .in_stream_TREADY(in_stream_TREADY),
        .in_stream_TSTRB({1'b0,1'b0}),
        .in_stream_TVALID(in_stream_TVALID),
        .out_stream_TDATA({NLW_inst_out_stream_TDATA_UNCONNECTED[15],\^out_stream_TDATA }),
        .out_stream_TKEEP(out_stream_TKEEP),
        .out_stream_TLAST(out_stream_TLAST),
        .out_stream_TREADY(out_stream_TREADY),
        .out_stream_TSTRB(out_stream_TSTRB),
        .out_stream_TVALID(out_stream_TVALID));
endmodule

(* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "relu" *) (* ap_ST_fsm_pp0_stage0 = "1'b1" *) 
(* hls_module = "yes" *) 
module cnn_pipeline_relu_0_1_relu
   (ap_clk,
    ap_rst_n,
    ap_start,
    ap_done,
    ap_idle,
    ap_ready,
    in_stream_TVALID,
    out_stream_TREADY,
    in_stream_TDATA,
    in_stream_TREADY,
    in_stream_TKEEP,
    in_stream_TSTRB,
    in_stream_TLAST,
    out_stream_TDATA,
    out_stream_TVALID,
    out_stream_TKEEP,
    out_stream_TSTRB,
    out_stream_TLAST);
  input ap_clk;
  input ap_rst_n;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  input in_stream_TVALID;
  input out_stream_TREADY;
  input [15:0]in_stream_TDATA;
  output in_stream_TREADY;
  input [1:0]in_stream_TKEEP;
  input [1:0]in_stream_TSTRB;
  input [0:0]in_stream_TLAST;
  output [15:0]out_stream_TDATA;
  output out_stream_TVALID;
  output [1:0]out_stream_TKEEP;
  output [1:0]out_stream_TSTRB;
  output [0:0]out_stream_TLAST;

  wire \<const0> ;
  wire ap_clk;
  wire ap_condition_103;
  wire ap_done;
  wire ap_enable_reg_pp0_iter1;
  wire ap_idle;
  wire ap_loop_exit_ready_pp0_iter1_reg;
  wire ap_loop_init;
  wire ap_ready;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire ap_start;
  wire [3:0]i_3_fu_148_p2;
  wire [3:0]i_fu_70;
  wire [0:0]icmp_ln32_fu_154_p2;
  wire [15:0]in_stream_TDATA;
  wire [1:0]in_stream_TKEEP;
  wire [1:0]in_stream_TKEEP_int_regslice;
  wire [0:0]in_stream_TLAST;
  wire [0:0]in_stream_TLAST_int_regslice;
  wire in_stream_TREADY;
  wire in_stream_TVALID;
  wire in_stream_TVALID_int_regslice;
  wire load_p2;
  wire [14:0]\^out_stream_TDATA ;
  wire [1:0]out_stream_TKEEP;
  wire [0:0]out_stream_TLAST;
  wire out_stream_TREADY;
  wire [0:0]\^out_stream_TSTRB ;
  wire out_stream_TVALID;
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
  wire regslice_both_in_stream_V_data_V_U_n_5;
  wire regslice_both_in_stream_V_data_V_U_n_7;
  wire regslice_both_in_stream_V_data_V_U_n_8;
  wire regslice_both_in_stream_V_data_V_U_n_9;
  wire regslice_both_out_stream_V_data_V_U_n_10;
  wire regslice_both_out_stream_V_data_V_U_n_11;
  wire regslice_both_out_stream_V_data_V_U_n_5;
  wire regslice_both_out_stream_V_keep_V_U_n_4;

  assign out_stream_TDATA[15] = \<const0> ;
  assign out_stream_TDATA[14:0] = \^out_stream_TDATA [14:0];
  assign out_stream_TSTRB[1] = \^out_stream_TSTRB [0];
  assign out_stream_TSTRB[0] = \^out_stream_TSTRB [0];
  GND GND
       (.G(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(regslice_both_out_stream_V_data_V_U_n_11),
        .Q(ap_enable_reg_pp0_iter1),
        .R(ap_rst_n_inv));
  LUT2 #(
    .INIT(4'h1)) 
    ap_idle_INST_0
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(ap_start),
        .O(ap_idle));
  FDRE ap_loop_exit_ready_pp0_iter1_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(regslice_both_out_stream_V_data_V_U_n_5),
        .Q(ap_loop_exit_ready_pp0_iter1_reg),
        .R(1'b0));
  cnn_pipeline_relu_0_1_relu_flow_control_loop_pipe flow_control_loop_pipe_U
       (.D(i_3_fu_148_p2),
        .Q(i_fu_70),
        .ap_clk(ap_clk),
        .ap_loop_init(ap_loop_init),
        .ap_loop_init_reg_0(regslice_both_out_stream_V_data_V_U_n_10),
        .ap_start(ap_start),
        .icmp_ln32_fu_154_p2(icmp_ln32_fu_154_p2));
  FDRE #(
    .INIT(1'b0)) 
    \i_fu_70_reg[0] 
       (.C(ap_clk),
        .CE(ap_condition_103),
        .D(i_3_fu_148_p2[0]),
        .Q(i_fu_70[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_fu_70_reg[1] 
       (.C(ap_clk),
        .CE(ap_condition_103),
        .D(i_3_fu_148_p2[1]),
        .Q(i_fu_70[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_fu_70_reg[2] 
       (.C(ap_clk),
        .CE(ap_condition_103),
        .D(i_3_fu_148_p2[2]),
        .Q(i_fu_70[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_fu_70_reg[3] 
       (.C(ap_clk),
        .CE(ap_condition_103),
        .D(i_3_fu_148_p2[3]),
        .Q(i_fu_70[3]),
        .R(1'b0));
  cnn_pipeline_relu_0_1_relu_regslice_both regslice_both_in_stream_V_data_V_U
       (.CO(regslice_both_in_stream_V_data_V_U_n_5),
        .Q(in_stream_TVALID_int_regslice),
        .ack_in_t_reg_0(in_stream_TREADY),
        .ap_clk(ap_clk),
        .ap_condition_103(ap_condition_103),
        .ap_rst_n_inv(ap_rst_n_inv),
        .\data_p1_reg[14]_0 ({regslice_both_in_stream_V_data_V_U_n_7,regslice_both_in_stream_V_data_V_U_n_8,regslice_both_in_stream_V_data_V_U_n_9,regslice_both_in_stream_V_data_V_U_n_10,regslice_both_in_stream_V_data_V_U_n_11,regslice_both_in_stream_V_data_V_U_n_12,regslice_both_in_stream_V_data_V_U_n_13,regslice_both_in_stream_V_data_V_U_n_14,regslice_both_in_stream_V_data_V_U_n_15,regslice_both_in_stream_V_data_V_U_n_16,regslice_both_in_stream_V_data_V_U_n_17,regslice_both_in_stream_V_data_V_U_n_18,regslice_both_in_stream_V_data_V_U_n_19,regslice_both_in_stream_V_data_V_U_n_20,regslice_both_in_stream_V_data_V_U_n_21}),
        .in_stream_TDATA(in_stream_TDATA),
        .in_stream_TVALID(in_stream_TVALID));
  cnn_pipeline_relu_0_1_relu_regslice_both__parameterized0 regslice_both_in_stream_V_keep_V_U
       (.Q(in_stream_TKEEP_int_regslice),
        .ap_clk(ap_clk),
        .ap_condition_103(ap_condition_103),
        .ap_rst_n_inv(ap_rst_n_inv),
        .in_stream_TKEEP(in_stream_TKEEP),
        .in_stream_TVALID(in_stream_TVALID));
  cnn_pipeline_relu_0_1_relu_regslice_both__parameterized1 regslice_both_in_stream_V_last_V_U
       (.ap_clk(ap_clk),
        .ap_condition_103(ap_condition_103),
        .ap_rst_n_inv(ap_rst_n_inv),
        .in_stream_TLAST(in_stream_TLAST),
        .in_stream_TLAST_int_regslice(in_stream_TLAST_int_regslice),
        .in_stream_TVALID(in_stream_TVALID));
  cnn_pipeline_relu_0_1_relu_regslice_both_0 regslice_both_out_stream_V_data_V_U
       (.CO(regslice_both_in_stream_V_data_V_U_n_5),
        .E(load_p2),
        .Q(in_stream_TVALID_int_regslice),
        .ap_clk(ap_clk),
        .ap_condition_103(ap_condition_103),
        .ap_done(ap_done),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .ap_loop_exit_ready_pp0_iter1_reg(ap_loop_exit_ready_pp0_iter1_reg),
        .ap_loop_exit_ready_pp0_iter1_reg_reg(regslice_both_out_stream_V_data_V_U_n_5),
        .ap_loop_init(ap_loop_init),
        .ap_loop_init_reg(regslice_both_out_stream_V_data_V_U_n_10),
        .ap_ready(ap_ready),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .ap_start(ap_start),
        .ap_start_0(regslice_both_out_stream_V_data_V_U_n_11),
        .\data_p2_reg[14]_0 ({regslice_both_in_stream_V_data_V_U_n_7,regslice_both_in_stream_V_data_V_U_n_8,regslice_both_in_stream_V_data_V_U_n_9,regslice_both_in_stream_V_data_V_U_n_10,regslice_both_in_stream_V_data_V_U_n_11,regslice_both_in_stream_V_data_V_U_n_12,regslice_both_in_stream_V_data_V_U_n_13,regslice_both_in_stream_V_data_V_U_n_14,regslice_both_in_stream_V_data_V_U_n_15,regslice_both_in_stream_V_data_V_U_n_16,regslice_both_in_stream_V_data_V_U_n_17,regslice_both_in_stream_V_data_V_U_n_18,regslice_both_in_stream_V_data_V_U_n_19,regslice_both_in_stream_V_data_V_U_n_20,regslice_both_in_stream_V_data_V_U_n_21}),
        .\data_p2_reg[1]_0 (regslice_both_out_stream_V_keep_V_U_n_4),
        .icmp_ln32_fu_154_p2(icmp_ln32_fu_154_p2),
        .out_stream_TDATA(\^out_stream_TDATA ),
        .out_stream_TREADY(out_stream_TREADY),
        .out_stream_TVALID(out_stream_TVALID));
  cnn_pipeline_relu_0_1_relu_regslice_both__parameterized0_1 regslice_both_out_stream_V_keep_V_U
       (.D(in_stream_TKEEP_int_regslice),
        .E(load_p2),
        .ack_in_t_reg_0(regslice_both_out_stream_V_keep_V_U_n_4),
        .ap_clk(ap_clk),
        .ap_condition_103(ap_condition_103),
        .ap_rst_n_inv(ap_rst_n_inv),
        .out_stream_TKEEP(out_stream_TKEEP),
        .out_stream_TREADY(out_stream_TREADY));
  cnn_pipeline_relu_0_1_relu_regslice_both__parameterized1_2 regslice_both_out_stream_V_last_V_U
       (.ap_clk(ap_clk),
        .ap_condition_103(ap_condition_103),
        .ap_rst_n_inv(ap_rst_n_inv),
        .in_stream_TLAST_int_regslice(in_stream_TLAST_int_regslice),
        .out_stream_TLAST(out_stream_TLAST),
        .out_stream_TREADY(out_stream_TREADY));
  cnn_pipeline_relu_0_1_relu_regslice_both__parameterized0_3 regslice_both_out_stream_V_strb_V_U
       (.ap_clk(ap_clk),
        .ap_condition_103(ap_condition_103),
        .ap_rst_n_inv(ap_rst_n_inv),
        .out_stream_TREADY(out_stream_TREADY),
        .out_stream_TSTRB(\^out_stream_TSTRB ));
endmodule

(* ORIG_REF_NAME = "relu_flow_control_loop_pipe" *) 
module cnn_pipeline_relu_0_1_relu_flow_control_loop_pipe
   (ap_loop_init,
    icmp_ln32_fu_154_p2,
    D,
    ap_loop_init_reg_0,
    ap_clk,
    Q,
    ap_start);
  output ap_loop_init;
  output [0:0]icmp_ln32_fu_154_p2;
  output [3:0]D;
  input ap_loop_init_reg_0;
  input ap_clk;
  input [3:0]Q;
  input ap_start;

  wire [3:0]D;
  wire [3:0]Q;
  wire ap_clk;
  wire ap_loop_init;
  wire ap_loop_init_reg_0;
  wire ap_start;
  wire [0:0]icmp_ln32_fu_154_p2;

  FDRE #(
    .INIT(1'b1)) 
    ap_loop_init_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_init_reg_0),
        .Q(ap_loop_init),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000101010)) 
    ap_ready_INST_0_i_3
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(ap_loop_init),
        .I4(ap_start),
        .I5(Q[0]),
        .O(icmp_ln32_fu_154_p2));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \i_fu_70[0]_i_1 
       (.I0(ap_loop_init),
        .I1(Q[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h12)) 
    \i_fu_70[1]_i_1 
       (.I0(Q[0]),
        .I1(ap_loop_init),
        .I2(Q[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0708)) 
    \i_fu_70[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(ap_loop_init),
        .I3(Q[2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h007F0080)) 
    \i_fu_70[3]_i_2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(ap_loop_init),
        .I4(Q[3]),
        .O(D[3]));
endmodule

(* ORIG_REF_NAME = "relu_regslice_both" *) 
module cnn_pipeline_relu_0_1_relu_regslice_both
   (ack_in_t_reg_0,
    CO,
    Q,
    \data_p1_reg[14]_0 ,
    ap_rst_n_inv,
    ap_clk,
    ap_condition_103,
    in_stream_TVALID,
    in_stream_TDATA);
  output ack_in_t_reg_0;
  output [0:0]CO;
  output [0:0]Q;
  output [14:0]\data_p1_reg[14]_0 ;
  input ap_rst_n_inv;
  input ap_clk;
  input ap_condition_103;
  input in_stream_TVALID;
  input [15:0]in_stream_TDATA;

  wire [0:0]CO;
  wire \FSM_sequential_state[0]_i_1__1_n_4 ;
  wire \FSM_sequential_state[1]_i_1_n_4 ;
  wire [0:0]Q;
  wire ack_in_t_i_2_n_4;
  wire ack_in_t_reg_0;
  wire ap_clk;
  wire ap_condition_103;
  wire ap_rst_n_inv;
  wire \data_p1[14]_i_10_n_4 ;
  wire \data_p1[14]_i_11_n_4 ;
  wire \data_p1[14]_i_12_n_4 ;
  wire \data_p1[14]_i_13_n_4 ;
  wire \data_p1[14]_i_14_n_4 ;
  wire \data_p1[14]_i_15_n_4 ;
  wire \data_p1[14]_i_16_n_4 ;
  wire \data_p1[14]_i_17_n_4 ;
  wire \data_p1[14]_i_18_n_4 ;
  wire \data_p1[14]_i_19_n_4 ;
  wire \data_p1[14]_i_4_n_4 ;
  wire \data_p1[14]_i_5_n_4 ;
  wire \data_p1[14]_i_6_n_4 ;
  wire \data_p1[14]_i_7_n_4 ;
  wire \data_p1[14]_i_8_n_4 ;
  wire \data_p1[14]_i_9_n_4 ;
  wire [14:0]\data_p1_reg[14]_0 ;
  wire \data_p1_reg[14]_i_3_n_10 ;
  wire \data_p1_reg[14]_i_3_n_11 ;
  wire \data_p1_reg[14]_i_3_n_5 ;
  wire \data_p1_reg[14]_i_3_n_6 ;
  wire \data_p1_reg[14]_i_3_n_7 ;
  wire \data_p1_reg[14]_i_3_n_8 ;
  wire \data_p1_reg[14]_i_3_n_9 ;
  wire \data_p1_reg_n_4_[15] ;
  wire \data_p2_reg_n_4_[0] ;
  wire \data_p2_reg_n_4_[10] ;
  wire \data_p2_reg_n_4_[11] ;
  wire \data_p2_reg_n_4_[12] ;
  wire \data_p2_reg_n_4_[13] ;
  wire \data_p2_reg_n_4_[14] ;
  wire \data_p2_reg_n_4_[15] ;
  wire \data_p2_reg_n_4_[1] ;
  wire \data_p2_reg_n_4_[2] ;
  wire \data_p2_reg_n_4_[3] ;
  wire \data_p2_reg_n_4_[4] ;
  wire \data_p2_reg_n_4_[5] ;
  wire \data_p2_reg_n_4_[6] ;
  wire \data_p2_reg_n_4_[7] ;
  wire \data_p2_reg_n_4_[8] ;
  wire \data_p2_reg_n_4_[9] ;
  wire [15:0]in_stream_TDATA;
  wire in_stream_TVALID;
  wire load_p1;
  wire load_p2;
  wire [15:0]p_0_in;
  wire [1:1]state;
  wire \state[0]_i_1_n_4 ;
  wire \state[1]_i_1_n_4 ;
  wire [1:0]state__0;
  wire [7:0]\NLW_data_p1_reg[14]_i_3_O_UNCONNECTED ;

  LUT4 #(
    .INIT(16'hAEFF)) 
    \FSM_sequential_state[0]_i_1__1 
       (.I0(ap_condition_103),
        .I1(state__0[0]),
        .I2(in_stream_TVALID),
        .I3(state__0[1]),
        .O(\FSM_sequential_state[0]_i_1__1_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFCCC4C4C)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(ap_condition_103),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(ack_in_t_reg_0),
        .I4(in_stream_TVALID),
        .O(\FSM_sequential_state[1]_i_1_n_4 ));
  (* FSM_ENCODED_STATES = "ZERO:01,TWO:10,ONE:11,iSTATE:00" *) 
  FDSE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1__1_n_4 ),
        .Q(state__0[0]),
        .S(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "ZERO:01,TWO:10,ONE:11,iSTATE:00" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_1_n_4 ),
        .Q(state__0[1]),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hB0FFFAF0)) 
    ack_in_t_i_2
       (.I0(ap_condition_103),
        .I1(in_stream_TVALID),
        .I2(ack_in_t_reg_0),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .O(ack_in_t_i_2_n_4));
  FDRE #(
    .INIT(1'b0)) 
    ack_in_t_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ack_in_t_i_2_n_4),
        .Q(ack_in_t_reg_0),
        .R(ap_rst_n_inv));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \data_p1[0]_i_1__1 
       (.I0(\data_p2_reg_n_4_[0] ),
        .I1(in_stream_TDATA[0]),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .O(p_0_in[0]));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \data_p1[10]_i_1 
       (.I0(\data_p2_reg_n_4_[10] ),
        .I1(in_stream_TDATA[10]),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .O(p_0_in[10]));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \data_p1[11]_i_1 
       (.I0(\data_p2_reg_n_4_[11] ),
        .I1(in_stream_TDATA[11]),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .O(p_0_in[11]));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \data_p1[12]_i_1 
       (.I0(\data_p2_reg_n_4_[12] ),
        .I1(in_stream_TDATA[12]),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .O(p_0_in[12]));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \data_p1[13]_i_1 
       (.I0(\data_p2_reg_n_4_[13] ),
        .I1(in_stream_TDATA[13]),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .O(p_0_in[13]));
  LUT2 #(
    .INIT(4'hE)) 
    \data_p1[14]_i_10 
       (.I0(\data_p1_reg[14]_0 [2]),
        .I1(\data_p1_reg[14]_0 [3]),
        .O(\data_p1[14]_i_10_n_4 ));
  LUT2 #(
    .INIT(4'hE)) 
    \data_p1[14]_i_11 
       (.I0(\data_p1_reg[14]_0 [0]),
        .I1(\data_p1_reg[14]_0 [1]),
        .O(\data_p1[14]_i_11_n_4 ));
  LUT2 #(
    .INIT(4'h1)) 
    \data_p1[14]_i_12 
       (.I0(\data_p1_reg[14]_0 [14]),
        .I1(\data_p1_reg_n_4_[15] ),
        .O(\data_p1[14]_i_12_n_4 ));
  LUT2 #(
    .INIT(4'h1)) 
    \data_p1[14]_i_13 
       (.I0(\data_p1_reg[14]_0 [12]),
        .I1(\data_p1_reg[14]_0 [13]),
        .O(\data_p1[14]_i_13_n_4 ));
  LUT2 #(
    .INIT(4'h1)) 
    \data_p1[14]_i_14 
       (.I0(\data_p1_reg[14]_0 [10]),
        .I1(\data_p1_reg[14]_0 [11]),
        .O(\data_p1[14]_i_14_n_4 ));
  LUT2 #(
    .INIT(4'h1)) 
    \data_p1[14]_i_15 
       (.I0(\data_p1_reg[14]_0 [8]),
        .I1(\data_p1_reg[14]_0 [9]),
        .O(\data_p1[14]_i_15_n_4 ));
  LUT2 #(
    .INIT(4'h1)) 
    \data_p1[14]_i_16 
       (.I0(\data_p1_reg[14]_0 [6]),
        .I1(\data_p1_reg[14]_0 [7]),
        .O(\data_p1[14]_i_16_n_4 ));
  LUT2 #(
    .INIT(4'h1)) 
    \data_p1[14]_i_17 
       (.I0(\data_p1_reg[14]_0 [4]),
        .I1(\data_p1_reg[14]_0 [5]),
        .O(\data_p1[14]_i_17_n_4 ));
  LUT2 #(
    .INIT(4'h1)) 
    \data_p1[14]_i_18 
       (.I0(\data_p1_reg[14]_0 [2]),
        .I1(\data_p1_reg[14]_0 [3]),
        .O(\data_p1[14]_i_18_n_4 ));
  LUT2 #(
    .INIT(4'h1)) 
    \data_p1[14]_i_19 
       (.I0(\data_p1_reg[14]_0 [0]),
        .I1(\data_p1_reg[14]_0 [1]),
        .O(\data_p1[14]_i_19_n_4 ));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \data_p1[14]_i_1__0 
       (.I0(\data_p2_reg_n_4_[14] ),
        .I1(in_stream_TDATA[14]),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .O(p_0_in[14]));
  LUT2 #(
    .INIT(4'h2)) 
    \data_p1[14]_i_4 
       (.I0(\data_p1_reg[14]_0 [14]),
        .I1(\data_p1_reg_n_4_[15] ),
        .O(\data_p1[14]_i_4_n_4 ));
  LUT2 #(
    .INIT(4'hE)) 
    \data_p1[14]_i_5 
       (.I0(\data_p1_reg[14]_0 [12]),
        .I1(\data_p1_reg[14]_0 [13]),
        .O(\data_p1[14]_i_5_n_4 ));
  LUT2 #(
    .INIT(4'hE)) 
    \data_p1[14]_i_6 
       (.I0(\data_p1_reg[14]_0 [10]),
        .I1(\data_p1_reg[14]_0 [11]),
        .O(\data_p1[14]_i_6_n_4 ));
  LUT2 #(
    .INIT(4'hE)) 
    \data_p1[14]_i_7 
       (.I0(\data_p1_reg[14]_0 [8]),
        .I1(\data_p1_reg[14]_0 [9]),
        .O(\data_p1[14]_i_7_n_4 ));
  LUT2 #(
    .INIT(4'hE)) 
    \data_p1[14]_i_8 
       (.I0(\data_p1_reg[14]_0 [6]),
        .I1(\data_p1_reg[14]_0 [7]),
        .O(\data_p1[14]_i_8_n_4 ));
  LUT2 #(
    .INIT(4'hE)) 
    \data_p1[14]_i_9 
       (.I0(\data_p1_reg[14]_0 [4]),
        .I1(\data_p1_reg[14]_0 [5]),
        .O(\data_p1[14]_i_9_n_4 ));
  LUT4 #(
    .INIT(16'hE240)) 
    \data_p1[15]_i_1 
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(in_stream_TVALID),
        .I3(ap_condition_103),
        .O(load_p1));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \data_p1[15]_i_2 
       (.I0(\data_p2_reg_n_4_[15] ),
        .I1(in_stream_TDATA[15]),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .O(p_0_in[15]));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \data_p1[1]_i_1__1 
       (.I0(\data_p2_reg_n_4_[1] ),
        .I1(in_stream_TDATA[1]),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .O(p_0_in[1]));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \data_p1[2]_i_1 
       (.I0(\data_p2_reg_n_4_[2] ),
        .I1(in_stream_TDATA[2]),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .O(p_0_in[2]));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \data_p1[3]_i_1 
       (.I0(\data_p2_reg_n_4_[3] ),
        .I1(in_stream_TDATA[3]),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .O(p_0_in[3]));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \data_p1[4]_i_1 
       (.I0(\data_p2_reg_n_4_[4] ),
        .I1(in_stream_TDATA[4]),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .O(p_0_in[4]));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \data_p1[5]_i_1 
       (.I0(\data_p2_reg_n_4_[5] ),
        .I1(in_stream_TDATA[5]),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .O(p_0_in[5]));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \data_p1[6]_i_1 
       (.I0(\data_p2_reg_n_4_[6] ),
        .I1(in_stream_TDATA[6]),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .O(p_0_in[6]));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \data_p1[7]_i_1 
       (.I0(\data_p2_reg_n_4_[7] ),
        .I1(in_stream_TDATA[7]),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .O(p_0_in[7]));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \data_p1[8]_i_1 
       (.I0(\data_p2_reg_n_4_[8] ),
        .I1(in_stream_TDATA[8]),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .O(p_0_in[8]));
  LUT4 #(
    .INIT(16'hCCAC)) 
    \data_p1[9]_i_1 
       (.I0(\data_p2_reg_n_4_[9] ),
        .I1(in_stream_TDATA[9]),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .O(p_0_in[9]));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[0] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[0]),
        .Q(\data_p1_reg[14]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[10] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[10]),
        .Q(\data_p1_reg[14]_0 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[11] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[11]),
        .Q(\data_p1_reg[14]_0 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[12] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[12]),
        .Q(\data_p1_reg[14]_0 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[13] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[13]),
        .Q(\data_p1_reg[14]_0 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[14] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[14]),
        .Q(\data_p1_reg[14]_0 [14]),
        .R(1'b0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \data_p1_reg[14]_i_3 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({CO,\data_p1_reg[14]_i_3_n_5 ,\data_p1_reg[14]_i_3_n_6 ,\data_p1_reg[14]_i_3_n_7 ,\data_p1_reg[14]_i_3_n_8 ,\data_p1_reg[14]_i_3_n_9 ,\data_p1_reg[14]_i_3_n_10 ,\data_p1_reg[14]_i_3_n_11 }),
        .DI({\data_p1[14]_i_4_n_4 ,\data_p1[14]_i_5_n_4 ,\data_p1[14]_i_6_n_4 ,\data_p1[14]_i_7_n_4 ,\data_p1[14]_i_8_n_4 ,\data_p1[14]_i_9_n_4 ,\data_p1[14]_i_10_n_4 ,\data_p1[14]_i_11_n_4 }),
        .O(\NLW_data_p1_reg[14]_i_3_O_UNCONNECTED [7:0]),
        .S({\data_p1[14]_i_12_n_4 ,\data_p1[14]_i_13_n_4 ,\data_p1[14]_i_14_n_4 ,\data_p1[14]_i_15_n_4 ,\data_p1[14]_i_16_n_4 ,\data_p1[14]_i_17_n_4 ,\data_p1[14]_i_18_n_4 ,\data_p1[14]_i_19_n_4 }));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[15] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[15]),
        .Q(\data_p1_reg_n_4_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[1] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[1]),
        .Q(\data_p1_reg[14]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[2] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[2]),
        .Q(\data_p1_reg[14]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[3] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[3]),
        .Q(\data_p1_reg[14]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[4] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[4]),
        .Q(\data_p1_reg[14]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[5] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[5]),
        .Q(\data_p1_reg[14]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[6] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[6]),
        .Q(\data_p1_reg[14]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[7] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[7]),
        .Q(\data_p1_reg[14]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[8] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[8]),
        .Q(\data_p1_reg[14]_0 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[9] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[9]),
        .Q(\data_p1_reg[14]_0 [9]),
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
        .Q(\data_p2_reg_n_4_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[10] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TDATA[10]),
        .Q(\data_p2_reg_n_4_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[11] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TDATA[11]),
        .Q(\data_p2_reg_n_4_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[12] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TDATA[12]),
        .Q(\data_p2_reg_n_4_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[13] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TDATA[13]),
        .Q(\data_p2_reg_n_4_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[14] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TDATA[14]),
        .Q(\data_p2_reg_n_4_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[15] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TDATA[15]),
        .Q(\data_p2_reg_n_4_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[1] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TDATA[1]),
        .Q(\data_p2_reg_n_4_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[2] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TDATA[2]),
        .Q(\data_p2_reg_n_4_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[3] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TDATA[3]),
        .Q(\data_p2_reg_n_4_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[4] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TDATA[4]),
        .Q(\data_p2_reg_n_4_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[5] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TDATA[5]),
        .Q(\data_p2_reg_n_4_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[6] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TDATA[6]),
        .Q(\data_p2_reg_n_4_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[7] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TDATA[7]),
        .Q(\data_p2_reg_n_4_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[8] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TDATA[8]),
        .Q(\data_p2_reg_n_4_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[9] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TDATA[9]),
        .Q(\data_p2_reg_n_4_[9] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFCCC4C4C)) 
    \state[0]_i_1 
       (.I0(ap_condition_103),
        .I1(Q),
        .I2(state),
        .I3(ack_in_t_reg_0),
        .I4(in_stream_TVALID),
        .O(\state[0]_i_1_n_4 ));
  LUT4 #(
    .INIT(16'hAEFF)) 
    \state[1]_i_1 
       (.I0(ap_condition_103),
        .I1(state),
        .I2(in_stream_TVALID),
        .I3(Q),
        .O(\state[1]_i_1_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\state[0]_i_1_n_4 ),
        .Q(Q),
        .R(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\state[1]_i_1_n_4 ),
        .Q(state),
        .S(ap_rst_n_inv));
endmodule

(* ORIG_REF_NAME = "relu_regslice_both" *) 
module cnn_pipeline_relu_0_1_relu_regslice_both_0
   (ap_rst_n_inv,
    ap_loop_exit_ready_pp0_iter1_reg_reg,
    ap_ready,
    out_stream_TVALID,
    ap_condition_103,
    E,
    ap_loop_init_reg,
    ap_start_0,
    ap_done,
    out_stream_TDATA,
    ap_clk,
    ap_loop_exit_ready_pp0_iter1_reg,
    out_stream_TREADY,
    ap_enable_reg_pp0_iter1,
    ap_start,
    Q,
    \data_p2_reg[1]_0 ,
    ap_loop_init,
    ap_rst_n,
    icmp_ln32_fu_154_p2,
    CO,
    \data_p2_reg[14]_0 );
  output ap_rst_n_inv;
  output ap_loop_exit_ready_pp0_iter1_reg_reg;
  output ap_ready;
  output out_stream_TVALID;
  output ap_condition_103;
  output [0:0]E;
  output ap_loop_init_reg;
  output ap_start_0;
  output ap_done;
  output [14:0]out_stream_TDATA;
  input ap_clk;
  input ap_loop_exit_ready_pp0_iter1_reg;
  input out_stream_TREADY;
  input ap_enable_reg_pp0_iter1;
  input ap_start;
  input [0:0]Q;
  input \data_p2_reg[1]_0 ;
  input ap_loop_init;
  input ap_rst_n;
  input [0:0]icmp_ln32_fu_154_p2;
  input [0:0]CO;
  input [14:0]\data_p2_reg[14]_0 ;

  wire [0:0]CO;
  wire [0:0]E;
  wire \FSM_sequential_state[0]_i_1__5_n_4 ;
  wire \FSM_sequential_state[1]_i_1__2_n_4 ;
  wire [0:0]Q;
  wire ack_in_t_i_1__2_n_4;
  wire ap_block_pp0_stage0_11001;
  wire ap_block_pp0_stage0_subdone2;
  wire ap_block_pp0_stage0_subdone24_out;
  wire ap_clk;
  wire ap_condition_103;
  wire ap_done;
  wire ap_enable_reg_pp0_iter1;
  wire ap_loop_exit_ready_pp0_iter1_reg;
  wire ap_loop_exit_ready_pp0_iter1_reg_reg;
  wire ap_loop_init;
  wire ap_loop_init_reg;
  wire ap_ready;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire ap_start;
  wire ap_start_0;
  wire \data_p1[0]_i_1__2_n_4 ;
  wire \data_p1[10]_i_1__0_n_4 ;
  wire \data_p1[11]_i_1__0_n_4 ;
  wire \data_p1[12]_i_1__0_n_4 ;
  wire \data_p1[13]_i_1__0_n_4 ;
  wire \data_p1[14]_i_2_n_4 ;
  wire \data_p1[1]_i_1__2_n_4 ;
  wire \data_p1[2]_i_1__0_n_4 ;
  wire \data_p1[3]_i_1__0_n_4 ;
  wire \data_p1[4]_i_1__0_n_4 ;
  wire \data_p1[5]_i_1__0_n_4 ;
  wire \data_p1[6]_i_1__0_n_4 ;
  wire \data_p1[7]_i_1__0_n_4 ;
  wire \data_p1[8]_i_1__0_n_4 ;
  wire \data_p1[9]_i_1__0_n_4 ;
  wire \data_p2[14]_i_1_n_4 ;
  wire [14:0]\data_p2_reg[14]_0 ;
  wire \data_p2_reg[1]_0 ;
  wire \data_p2_reg_n_4_[0] ;
  wire \data_p2_reg_n_4_[10] ;
  wire \data_p2_reg_n_4_[11] ;
  wire \data_p2_reg_n_4_[12] ;
  wire \data_p2_reg_n_4_[13] ;
  wire \data_p2_reg_n_4_[14] ;
  wire \data_p2_reg_n_4_[1] ;
  wire \data_p2_reg_n_4_[2] ;
  wire \data_p2_reg_n_4_[3] ;
  wire \data_p2_reg_n_4_[4] ;
  wire \data_p2_reg_n_4_[5] ;
  wire \data_p2_reg_n_4_[6] ;
  wire \data_p2_reg_n_4_[7] ;
  wire \data_p2_reg_n_4_[8] ;
  wire \data_p2_reg_n_4_[9] ;
  wire [0:0]icmp_ln32_fu_154_p2;
  wire load_p1;
  wire load_p2;
  wire [14:0]out_stream_TDATA;
  wire out_stream_TREADY;
  wire out_stream_TREADY_int_regslice;
  wire out_stream_TVALID;
  wire regslice_both_out_stream_V_data_V_U_apdone_blk;
  wire [1:1]state;
  wire \state[0]_i_1__0_n_4 ;
  wire \state[1]_i_1__0_n_4 ;
  wire [1:0]state__0;

  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hAEFF)) 
    \FSM_sequential_state[0]_i_1__5 
       (.I0(out_stream_TREADY),
        .I1(state__0[0]),
        .I2(ap_condition_103),
        .I3(state__0[1]),
        .O(\FSM_sequential_state[0]_i_1__5_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFCCC4C4C)) 
    \FSM_sequential_state[1]_i_1__2 
       (.I0(out_stream_TREADY),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(out_stream_TREADY_int_regslice),
        .I4(ap_condition_103),
        .O(\FSM_sequential_state[1]_i_1__2_n_4 ));
  (* FSM_ENCODED_STATES = "ZERO:01,TWO:10,ONE:11,iSTATE:00" *) 
  FDSE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1__5_n_4 ),
        .Q(state__0[0]),
        .S(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "ZERO:01,TWO:10,ONE:11,iSTATE:00" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_1__2_n_4 ),
        .Q(state__0[1]),
        .R(ap_rst_n_inv));
  LUT1 #(
    .INIT(2'h1)) 
    ack_in_t_i_1
       (.I0(ap_rst_n),
        .O(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hB0FFFAF0)) 
    ack_in_t_i_1__2
       (.I0(out_stream_TREADY),
        .I1(ap_condition_103),
        .I2(out_stream_TREADY_int_regslice),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .O(ack_in_t_i_1__2_n_4));
  FDRE #(
    .INIT(1'b0)) 
    ack_in_t_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ack_in_t_i_1__2_n_4),
        .Q(out_stream_TREADY_int_regslice),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    ap_done_INST_0
       (.I0(ap_loop_exit_ready_pp0_iter1_reg),
        .I1(ap_block_pp0_stage0_11001),
        .O(ap_done));
  LUT6 #(
    .INIT(64'hEF0FEE0CFFFFEE0C)) 
    ap_done_INST_0_i_1
       (.I0(ap_loop_exit_ready_pp0_iter1_reg),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(out_stream_TREADY_int_regslice),
        .I3(regslice_both_out_stream_V_data_V_U_apdone_blk),
        .I4(ap_start),
        .I5(Q),
        .O(ap_block_pp0_stage0_11001));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h70)) 
    ap_done_INST_0_i_2
       (.I0(out_stream_TREADY),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .O(regslice_both_out_stream_V_data_V_U_apdone_blk));
  LUT3 #(
    .INIT(8'hE2)) 
    ap_enable_reg_pp0_iter1_i_1
       (.I0(ap_start),
        .I1(ap_block_pp0_stage0_11001),
        .I2(ap_enable_reg_pp0_iter1),
        .O(ap_start_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    ap_loop_exit_ready_pp0_iter1_reg_i_1
       (.I0(ap_loop_exit_ready_pp0_iter1_reg),
        .I1(ap_ready),
        .I2(ap_block_pp0_stage0_11001),
        .O(ap_loop_exit_ready_pp0_iter1_reg_reg));
  LUT4 #(
    .INIT(16'hFF4F)) 
    ap_loop_init_i_1
       (.I0(ap_condition_103),
        .I1(ap_loop_init),
        .I2(ap_rst_n),
        .I3(ap_ready),
        .O(ap_loop_init_reg));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    ap_ready_INST_0
       (.I0(ap_block_pp0_stage0_subdone24_out),
        .I1(ap_block_pp0_stage0_subdone2),
        .I2(ap_start),
        .I3(Q),
        .I4(out_stream_TREADY_int_regslice),
        .I5(icmp_ln32_fu_154_p2),
        .O(ap_ready));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0888)) 
    ap_ready_INST_0_i_1
       (.I0(ap_loop_exit_ready_pp0_iter1_reg),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(out_stream_TREADY),
        .O(ap_block_pp0_stage0_subdone24_out));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h2AAA2222)) 
    ap_ready_INST_0_i_2
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(out_stream_TREADY_int_regslice),
        .I2(out_stream_TREADY),
        .I3(state__0[0]),
        .I4(state__0[1]),
        .O(ap_block_pp0_stage0_subdone2));
  LUT5 #(
    .INIT(32'hFB080808)) 
    \data_p1[0]_i_1__2 
       (.I0(\data_p2_reg_n_4_[0] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(CO),
        .I4(\data_p2_reg[14]_0 [0]),
        .O(\data_p1[0]_i_1__2_n_4 ));
  LUT5 #(
    .INIT(32'hFB080808)) 
    \data_p1[10]_i_1__0 
       (.I0(\data_p2_reg_n_4_[10] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(CO),
        .I4(\data_p2_reg[14]_0 [10]),
        .O(\data_p1[10]_i_1__0_n_4 ));
  LUT5 #(
    .INIT(32'hFB080808)) 
    \data_p1[11]_i_1__0 
       (.I0(\data_p2_reg_n_4_[11] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(CO),
        .I4(\data_p2_reg[14]_0 [11]),
        .O(\data_p1[11]_i_1__0_n_4 ));
  LUT5 #(
    .INIT(32'hFB080808)) 
    \data_p1[12]_i_1__0 
       (.I0(\data_p2_reg_n_4_[12] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(CO),
        .I4(\data_p2_reg[14]_0 [12]),
        .O(\data_p1[12]_i_1__0_n_4 ));
  LUT5 #(
    .INIT(32'hFB080808)) 
    \data_p1[13]_i_1__0 
       (.I0(\data_p2_reg_n_4_[13] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(CO),
        .I4(\data_p2_reg[14]_0 [13]),
        .O(\data_p1[13]_i_1__0_n_4 ));
  LUT4 #(
    .INIT(16'hE240)) 
    \data_p1[14]_i_1 
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(ap_condition_103),
        .I3(out_stream_TREADY),
        .O(load_p1));
  LUT5 #(
    .INIT(32'hFB080808)) 
    \data_p1[14]_i_2 
       (.I0(\data_p2_reg_n_4_[14] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(CO),
        .I4(\data_p2_reg[14]_0 [14]),
        .O(\data_p1[14]_i_2_n_4 ));
  LUT5 #(
    .INIT(32'hFB080808)) 
    \data_p1[1]_i_1__2 
       (.I0(\data_p2_reg_n_4_[1] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(CO),
        .I4(\data_p2_reg[14]_0 [1]),
        .O(\data_p1[1]_i_1__2_n_4 ));
  LUT5 #(
    .INIT(32'hFB080808)) 
    \data_p1[2]_i_1__0 
       (.I0(\data_p2_reg_n_4_[2] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(CO),
        .I4(\data_p2_reg[14]_0 [2]),
        .O(\data_p1[2]_i_1__0_n_4 ));
  LUT5 #(
    .INIT(32'hFB080808)) 
    \data_p1[3]_i_1__0 
       (.I0(\data_p2_reg_n_4_[3] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(CO),
        .I4(\data_p2_reg[14]_0 [3]),
        .O(\data_p1[3]_i_1__0_n_4 ));
  LUT5 #(
    .INIT(32'hFB080808)) 
    \data_p1[4]_i_1__0 
       (.I0(\data_p2_reg_n_4_[4] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(CO),
        .I4(\data_p2_reg[14]_0 [4]),
        .O(\data_p1[4]_i_1__0_n_4 ));
  LUT5 #(
    .INIT(32'hFB080808)) 
    \data_p1[5]_i_1__0 
       (.I0(\data_p2_reg_n_4_[5] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(CO),
        .I4(\data_p2_reg[14]_0 [5]),
        .O(\data_p1[5]_i_1__0_n_4 ));
  LUT5 #(
    .INIT(32'hFB080808)) 
    \data_p1[6]_i_1__0 
       (.I0(\data_p2_reg_n_4_[6] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(CO),
        .I4(\data_p2_reg[14]_0 [6]),
        .O(\data_p1[6]_i_1__0_n_4 ));
  LUT5 #(
    .INIT(32'hFB080808)) 
    \data_p1[7]_i_1__0 
       (.I0(\data_p2_reg_n_4_[7] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(CO),
        .I4(\data_p2_reg[14]_0 [7]),
        .O(\data_p1[7]_i_1__0_n_4 ));
  LUT5 #(
    .INIT(32'hFB080808)) 
    \data_p1[8]_i_1__0 
       (.I0(\data_p2_reg_n_4_[8] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(CO),
        .I4(\data_p2_reg[14]_0 [8]),
        .O(\data_p1[8]_i_1__0_n_4 ));
  LUT5 #(
    .INIT(32'hFB080808)) 
    \data_p1[9]_i_1__0 
       (.I0(\data_p2_reg_n_4_[9] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(CO),
        .I4(\data_p2_reg[14]_0 [9]),
        .O(\data_p1[9]_i_1__0_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[0] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[0]_i_1__2_n_4 ),
        .Q(out_stream_TDATA[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[10] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[10]_i_1__0_n_4 ),
        .Q(out_stream_TDATA[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[11] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[11]_i_1__0_n_4 ),
        .Q(out_stream_TDATA[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[12] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[12]_i_1__0_n_4 ),
        .Q(out_stream_TDATA[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[13] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[13]_i_1__0_n_4 ),
        .Q(out_stream_TDATA[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[14] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[14]_i_2_n_4 ),
        .Q(out_stream_TDATA[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[1] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[1]_i_1__2_n_4 ),
        .Q(out_stream_TDATA[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[2] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[2]_i_1__0_n_4 ),
        .Q(out_stream_TDATA[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[3] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[3]_i_1__0_n_4 ),
        .Q(out_stream_TDATA[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[4] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[4]_i_1__0_n_4 ),
        .Q(out_stream_TDATA[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[5] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[5]_i_1__0_n_4 ),
        .Q(out_stream_TDATA[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[6] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[6]_i_1__0_n_4 ),
        .Q(out_stream_TDATA[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[7] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[7]_i_1__0_n_4 ),
        .Q(out_stream_TDATA[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[8] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[8]_i_1__0_n_4 ),
        .Q(out_stream_TDATA[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[9] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[9]_i_1__0_n_4 ),
        .Q(out_stream_TDATA[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h08)) 
    \data_p2[14]_i_1 
       (.I0(out_stream_TREADY_int_regslice),
        .I1(ap_condition_103),
        .I2(CO),
        .O(\data_p2[14]_i_1_n_4 ));
  LUT6 #(
    .INIT(64'h1F00000000000000)) 
    \data_p2[14]_i_2 
       (.I0(ap_loop_exit_ready_pp0_iter1_reg),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(regslice_both_out_stream_V_data_V_U_apdone_blk),
        .I3(ap_start),
        .I4(Q),
        .I5(out_stream_TREADY_int_regslice),
        .O(load_p2));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \data_p2[1]_i_1__0 
       (.I0(ap_block_pp0_stage0_subdone24_out),
        .I1(ap_block_pp0_stage0_subdone2),
        .I2(ap_start),
        .I3(Q),
        .I4(out_stream_TREADY_int_regslice),
        .I5(\data_p2_reg[1]_0 ),
        .O(E));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[0] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(\data_p2_reg[14]_0 [0]),
        .Q(\data_p2_reg_n_4_[0] ),
        .R(\data_p2[14]_i_1_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[10] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(\data_p2_reg[14]_0 [10]),
        .Q(\data_p2_reg_n_4_[10] ),
        .R(\data_p2[14]_i_1_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[11] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(\data_p2_reg[14]_0 [11]),
        .Q(\data_p2_reg_n_4_[11] ),
        .R(\data_p2[14]_i_1_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[12] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(\data_p2_reg[14]_0 [12]),
        .Q(\data_p2_reg_n_4_[12] ),
        .R(\data_p2[14]_i_1_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[13] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(\data_p2_reg[14]_0 [13]),
        .Q(\data_p2_reg_n_4_[13] ),
        .R(\data_p2[14]_i_1_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[14] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(\data_p2_reg[14]_0 [14]),
        .Q(\data_p2_reg_n_4_[14] ),
        .R(\data_p2[14]_i_1_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[1] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(\data_p2_reg[14]_0 [1]),
        .Q(\data_p2_reg_n_4_[1] ),
        .R(\data_p2[14]_i_1_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[2] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(\data_p2_reg[14]_0 [2]),
        .Q(\data_p2_reg_n_4_[2] ),
        .R(\data_p2[14]_i_1_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[3] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(\data_p2_reg[14]_0 [3]),
        .Q(\data_p2_reg_n_4_[3] ),
        .R(\data_p2[14]_i_1_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[4] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(\data_p2_reg[14]_0 [4]),
        .Q(\data_p2_reg_n_4_[4] ),
        .R(\data_p2[14]_i_1_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[5] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(\data_p2_reg[14]_0 [5]),
        .Q(\data_p2_reg_n_4_[5] ),
        .R(\data_p2[14]_i_1_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[6] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(\data_p2_reg[14]_0 [6]),
        .Q(\data_p2_reg_n_4_[6] ),
        .R(\data_p2[14]_i_1_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[7] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(\data_p2_reg[14]_0 [7]),
        .Q(\data_p2_reg_n_4_[7] ),
        .R(\data_p2[14]_i_1_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[8] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(\data_p2_reg[14]_0 [8]),
        .Q(\data_p2_reg_n_4_[8] ),
        .R(\data_p2[14]_i_1_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[9] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(\data_p2_reg[14]_0 [9]),
        .Q(\data_p2_reg_n_4_[9] ),
        .R(\data_p2[14]_i_1_n_4 ));
  LUT6 #(
    .INIT(64'h0800080008008800)) 
    \i_fu_70[3]_i_1 
       (.I0(Q),
        .I1(ap_start),
        .I2(regslice_both_out_stream_V_data_V_U_apdone_blk),
        .I3(out_stream_TREADY_int_regslice),
        .I4(ap_enable_reg_pp0_iter1),
        .I5(ap_loop_exit_ready_pp0_iter1_reg),
        .O(ap_condition_103));
  LUT5 #(
    .INIT(32'hFCCC4C4C)) 
    \state[0]_i_1__0 
       (.I0(out_stream_TREADY),
        .I1(out_stream_TVALID),
        .I2(state),
        .I3(out_stream_TREADY_int_regslice),
        .I4(ap_condition_103),
        .O(\state[0]_i_1__0_n_4 ));
  LUT4 #(
    .INIT(16'hAEFF)) 
    \state[1]_i_1__0 
       (.I0(out_stream_TREADY),
        .I1(state),
        .I2(ap_condition_103),
        .I3(out_stream_TVALID),
        .O(\state[1]_i_1__0_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\state[0]_i_1__0_n_4 ),
        .Q(out_stream_TVALID),
        .R(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\state[1]_i_1__0_n_4 ),
        .Q(state),
        .S(ap_rst_n_inv));
endmodule

(* ORIG_REF_NAME = "relu_regslice_both" *) 
module cnn_pipeline_relu_0_1_relu_regslice_both__parameterized0
   (Q,
    ap_rst_n_inv,
    ap_clk,
    ap_condition_103,
    in_stream_TVALID,
    in_stream_TKEEP);
  output [1:0]Q;
  input ap_rst_n_inv;
  input ap_clk;
  input ap_condition_103;
  input in_stream_TVALID;
  input [1:0]in_stream_TKEEP;

  wire [1:0]Q;
  wire ack_in_t_i_1__0_n_4;
  wire ack_in_t_reg_n_4;
  wire ap_clk;
  wire ap_condition_103;
  wire ap_rst_n_inv;
  wire \data_p1[0]_i_1_n_4 ;
  wire \data_p1[1]_i_2_n_4 ;
  wire [1:0]data_p2;
  wire [1:0]in_stream_TKEEP;
  wire in_stream_TVALID;
  wire load_p1;
  wire load_p2;
  wire [1:0]next__0;
  wire [1:0]state__0;

  LUT4 #(
    .INIT(16'hAEFF)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(ap_condition_103),
        .I1(state__0[0]),
        .I2(in_stream_TVALID),
        .I3(state__0[1]),
        .O(next__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFCCC4C4C)) 
    \FSM_sequential_state[1]_i_1__1 
       (.I0(ap_condition_103),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(ack_in_t_reg_n_4),
        .I4(in_stream_TVALID),
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
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hB0FFFAF0)) 
    ack_in_t_i_1__0
       (.I0(ap_condition_103),
        .I1(in_stream_TVALID),
        .I2(ack_in_t_reg_n_4),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .O(ack_in_t_i_1__0_n_4));
  FDRE #(
    .INIT(1'b0)) 
    ack_in_t_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ack_in_t_i_1__0_n_4),
        .Q(ack_in_t_reg_n_4),
        .R(ap_rst_n_inv));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[0]_i_1 
       (.I0(data_p2[0]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(in_stream_TKEEP[0]),
        .O(\data_p1[0]_i_1_n_4 ));
  LUT4 #(
    .INIT(16'hE240)) 
    \data_p1[1]_i_1__0 
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(in_stream_TVALID),
        .I3(ap_condition_103),
        .O(load_p1));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[1]_i_2 
       (.I0(data_p2[1]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(in_stream_TKEEP[1]),
        .O(\data_p1[1]_i_2_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[0] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[0]_i_1_n_4 ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[1] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[1]_i_2_n_4 ),
        .Q(Q[1]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \data_p2[1]_i_1 
       (.I0(in_stream_TVALID),
        .I1(ack_in_t_reg_n_4),
        .O(load_p2));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[0] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TKEEP[0]),
        .Q(data_p2[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[1] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(in_stream_TKEEP[1]),
        .Q(data_p2[1]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "relu_regslice_both" *) 
module cnn_pipeline_relu_0_1_relu_regslice_both__parameterized0_1
   (ack_in_t_reg_0,
    out_stream_TKEEP,
    ap_rst_n_inv,
    ap_clk,
    out_stream_TREADY,
    ap_condition_103,
    D,
    E);
  output ack_in_t_reg_0;
  output [1:0]out_stream_TKEEP;
  input ap_rst_n_inv;
  input ap_clk;
  input out_stream_TREADY;
  input ap_condition_103;
  input [1:0]D;
  input [0:0]E;

  wire [1:0]D;
  wire [0:0]E;
  wire ack_in_t_i_1__3_n_4;
  wire ack_in_t_reg_0;
  wire ap_clk;
  wire ap_condition_103;
  wire ap_rst_n_inv;
  wire \data_p1[0]_i_1__0_n_4 ;
  wire \data_p1[1]_i_2__0_n_4 ;
  wire [1:0]data_p2;
  wire load_p1;
  wire [1:0]next__0;
  wire [1:0]out_stream_TKEEP;
  wire out_stream_TREADY;
  wire [1:0]state__0;

  LUT4 #(
    .INIT(16'hAEFF)) 
    \FSM_sequential_state[0]_i_1__2 
       (.I0(out_stream_TREADY),
        .I1(state__0[0]),
        .I2(ap_condition_103),
        .I3(state__0[1]),
        .O(next__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hFCCC4C4C)) 
    \FSM_sequential_state[1]_i_1__4 
       (.I0(out_stream_TREADY),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(ack_in_t_reg_0),
        .I4(ap_condition_103),
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
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hB0FFFAF0)) 
    ack_in_t_i_1__3
       (.I0(out_stream_TREADY),
        .I1(ap_condition_103),
        .I2(ack_in_t_reg_0),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .O(ack_in_t_i_1__3_n_4));
  FDRE #(
    .INIT(1'b0)) 
    ack_in_t_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ack_in_t_i_1__3_n_4),
        .Q(ack_in_t_reg_0),
        .R(ap_rst_n_inv));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[0]_i_1__0 
       (.I0(data_p2[0]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[0]),
        .O(\data_p1[0]_i_1__0_n_4 ));
  LUT4 #(
    .INIT(16'hE240)) 
    \data_p1[1]_i_1 
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(ap_condition_103),
        .I3(out_stream_TREADY),
        .O(load_p1));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[1]_i_2__0 
       (.I0(data_p2[1]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[1]),
        .O(\data_p1[1]_i_2__0_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[0] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[0]_i_1__0_n_4 ),
        .Q(out_stream_TKEEP[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[1] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[1]_i_2__0_n_4 ),
        .Q(out_stream_TKEEP[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(D[0]),
        .Q(data_p2[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(D[1]),
        .Q(data_p2[1]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "relu_regslice_both" *) 
module cnn_pipeline_relu_0_1_relu_regslice_both__parameterized0_3
   (out_stream_TSTRB,
    ap_rst_n_inv,
    ap_clk,
    out_stream_TREADY,
    ap_condition_103);
  output [0:0]out_stream_TSTRB;
  input ap_rst_n_inv;
  input ap_clk;
  input out_stream_TREADY;
  input ap_condition_103;

  wire ack_in_t_i_1__4_n_4;
  wire ack_in_t_reg_n_4;
  wire ap_clk;
  wire ap_condition_103;
  wire ap_rst_n_inv;
  wire \data_p1[1]_i_1_n_4 ;
  wire [1:1]data_p2;
  wire \data_p2[1]_i_1_n_4 ;
  wire [1:0]next__0;
  wire out_stream_TREADY;
  wire [0:0]out_stream_TSTRB;
  wire [1:0]state__0;

  LUT4 #(
    .INIT(16'hAEFF)) 
    \FSM_sequential_state[0]_i_1__3 
       (.I0(out_stream_TREADY),
        .I1(state__0[0]),
        .I2(ap_condition_103),
        .I3(state__0[1]),
        .O(next__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hFCCC4C4C)) 
    \FSM_sequential_state[1]_i_1__3 
       (.I0(out_stream_TREADY),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(ack_in_t_reg_n_4),
        .I4(ap_condition_103),
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
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hB0FFFAF0)) 
    ack_in_t_i_1__4
       (.I0(out_stream_TREADY),
        .I1(ap_condition_103),
        .I2(ack_in_t_reg_n_4),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .O(ack_in_t_i_1__4_n_4));
  FDRE #(
    .INIT(1'b0)) 
    ack_in_t_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ack_in_t_i_1__4_n_4),
        .Q(ack_in_t_reg_n_4),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFBFBFFFFF8083000)) 
    \data_p1[1]_i_1 
       (.I0(data_p2),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(ap_condition_103),
        .I4(out_stream_TREADY),
        .I5(out_stream_TSTRB),
        .O(\data_p1[1]_i_1_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\data_p1[1]_i_1_n_4 ),
        .Q(out_stream_TSTRB),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hF8)) 
    \data_p2[1]_i_1 
       (.I0(ack_in_t_reg_n_4),
        .I1(ap_condition_103),
        .I2(data_p2),
        .O(\data_p2[1]_i_1_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\data_p2[1]_i_1_n_4 ),
        .Q(data_p2),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "relu_regslice_both" *) 
module cnn_pipeline_relu_0_1_relu_regslice_both__parameterized1
   (in_stream_TLAST_int_regslice,
    ap_rst_n_inv,
    ap_clk,
    ap_condition_103,
    in_stream_TVALID,
    in_stream_TLAST);
  output [0:0]in_stream_TLAST_int_regslice;
  input ap_rst_n_inv;
  input ap_clk;
  input ap_condition_103;
  input in_stream_TVALID;
  input [0:0]in_stream_TLAST;

  wire ack_in_t_i_1__1_n_4;
  wire ack_in_t_reg_n_4;
  wire ap_clk;
  wire ap_condition_103;
  wire ap_rst_n_inv;
  wire \data_p1[0]_i_1__3_n_4 ;
  wire \data_p1[0]_i_2_n_4 ;
  wire [0:0]data_p2;
  wire \data_p2[0]_i_1_n_4 ;
  wire [0:0]in_stream_TLAST;
  wire [0:0]in_stream_TLAST_int_regslice;
  wire in_stream_TVALID;
  wire [1:0]next__0;
  wire [1:0]state__0;

  LUT4 #(
    .INIT(16'hAEFF)) 
    \FSM_sequential_state[0]_i_1__0 
       (.I0(ap_condition_103),
        .I1(state__0[0]),
        .I2(in_stream_TVALID),
        .I3(state__0[1]),
        .O(next__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFCCC4C4C)) 
    \FSM_sequential_state[1]_i_1__0 
       (.I0(ap_condition_103),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(ack_in_t_reg_n_4),
        .I4(in_stream_TVALID),
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
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hB0FFFAF0)) 
    ack_in_t_i_1__1
       (.I0(ap_condition_103),
        .I1(in_stream_TVALID),
        .I2(ack_in_t_reg_n_4),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .O(ack_in_t_i_1__1_n_4));
  FDRE #(
    .INIT(1'b0)) 
    ack_in_t_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ack_in_t_i_1__1_n_4),
        .Q(ack_in_t_reg_n_4),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hABFBEFFFA8082000)) 
    \data_p1[0]_i_1__3 
       (.I0(\data_p1[0]_i_2_n_4 ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(in_stream_TVALID),
        .I4(ap_condition_103),
        .I5(in_stream_TLAST_int_regslice),
        .O(\data_p1[0]_i_1__3_n_4 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[0]_i_2 
       (.I0(data_p2),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(in_stream_TLAST),
        .O(\data_p1[0]_i_2_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\data_p1[0]_i_1__3_n_4 ),
        .Q(in_stream_TLAST_int_regslice),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hBF80)) 
    \data_p2[0]_i_1 
       (.I0(in_stream_TLAST),
        .I1(in_stream_TVALID),
        .I2(ack_in_t_reg_n_4),
        .I3(data_p2),
        .O(\data_p2[0]_i_1_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\data_p2[0]_i_1_n_4 ),
        .Q(data_p2),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "relu_regslice_both" *) 
module cnn_pipeline_relu_0_1_relu_regslice_both__parameterized1_2
   (out_stream_TLAST,
    ap_rst_n_inv,
    ap_clk,
    out_stream_TREADY,
    ap_condition_103,
    in_stream_TLAST_int_regslice);
  output [0:0]out_stream_TLAST;
  input ap_rst_n_inv;
  input ap_clk;
  input out_stream_TREADY;
  input ap_condition_103;
  input [0:0]in_stream_TLAST_int_regslice;

  wire ack_in_t_i_1__5_n_4;
  wire ack_in_t_reg_n_4;
  wire ap_clk;
  wire ap_condition_103;
  wire ap_rst_n_inv;
  wire \data_p1[0]_i_1__4_n_4 ;
  wire \data_p1[0]_i_2__0_n_4 ;
  wire [0:0]data_p2;
  wire \data_p2[0]_i_1__0_n_4 ;
  wire [0:0]in_stream_TLAST_int_regslice;
  wire [1:0]next__0;
  wire [0:0]out_stream_TLAST;
  wire out_stream_TREADY;
  wire [1:0]state__0;

  LUT4 #(
    .INIT(16'hAEFF)) 
    \FSM_sequential_state[0]_i_1__4 
       (.I0(out_stream_TREADY),
        .I1(state__0[0]),
        .I2(ap_condition_103),
        .I3(state__0[1]),
        .O(next__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hFCCC4C4C)) 
    \FSM_sequential_state[1]_i_1__5 
       (.I0(out_stream_TREADY),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(ack_in_t_reg_n_4),
        .I4(ap_condition_103),
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
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hB0FFFAF0)) 
    ack_in_t_i_1__5
       (.I0(out_stream_TREADY),
        .I1(ap_condition_103),
        .I2(ack_in_t_reg_n_4),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .O(ack_in_t_i_1__5_n_4));
  FDRE #(
    .INIT(1'b0)) 
    ack_in_t_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ack_in_t_i_1__5_n_4),
        .Q(ack_in_t_reg_n_4),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hABFBEFFFA8082000)) 
    \data_p1[0]_i_1__4 
       (.I0(\data_p1[0]_i_2__0_n_4 ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(ap_condition_103),
        .I4(out_stream_TREADY),
        .I5(out_stream_TLAST),
        .O(\data_p1[0]_i_1__4_n_4 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[0]_i_2__0 
       (.I0(data_p2),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(in_stream_TLAST_int_regslice),
        .O(\data_p1[0]_i_2__0_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\data_p1[0]_i_1__4_n_4 ),
        .Q(out_stream_TLAST),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hBF80)) 
    \data_p2[0]_i_1__0 
       (.I0(in_stream_TLAST_int_regslice),
        .I1(ap_condition_103),
        .I2(ack_in_t_reg_n_4),
        .I3(data_p2),
        .O(\data_p2[0]_i_1__0_n_4 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\data_p2[0]_i_1__0_n_4 ),
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
