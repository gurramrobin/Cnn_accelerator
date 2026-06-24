//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
//Tool Version Limit: 2025.11
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================

`ifndef SV_MODULE_TOP_SV
`define SV_MODULE_TOP_SV


`timescale 1ns/1ps


`include "uvm_macros.svh"
import uvm_pkg::*;
import file_agent_pkg::*;
import svr_pkg::*;
import conv2d_subsystem_pkg::*;
`include "conv2d_subsys_test_sequence_lib.sv"
`include "conv2d_test_lib.sv"


module sv_module_top;


    misc_interface              misc_if ( .clock(apatb_conv2d_top.AESL_clock), .reset(apatb_conv2d_top.AESL_reset) );
    assign apatb_conv2d_top.ap_start = misc_if.tb2dut_ap_start;
    assign misc_if.dut2tb_ap_done = apatb_conv2d_top.ap_done;
    assign misc_if.dut2tb_ap_ready = apatb_conv2d_top.ap_ready;
    initial begin
        uvm_config_db #(virtual misc_interface)::set(null, "uvm_test_top.top_env.*", "misc_if", misc_if);
    end


    svr_if #(16)  svr_bias_if    (.clk  (apatb_conv2d_top.AESL_clock), .rst(apatb_conv2d_top.AESL_reset));
    assign apatb_conv2d_top.bias = svr_bias_if.data[15:0];
    assign svr_bias_if.ready = svr_bias_if.valid & misc_if.tb2dut_ap_start;
    initial begin
        uvm_config_db #( virtual svr_if#(16) )::set(null, "uvm_test_top.top_env.env_master_svr_bias.*", "vif", svr_bias_if);
    end


    svr_if #(21)  svr_in_stream_if    (.clk  (apatb_conv2d_top.AESL_clock), .rst(apatb_conv2d_top.AESL_reset));
    assign svr_in_stream_if.ready = apatb_conv2d_top.in_stream_TREADY;
    assign apatb_conv2d_top.in_stream_TVALID = svr_in_stream_if.valid;
    assign apatb_conv2d_top.in_stream_TDATA = svr_in_stream_if.data[15:0];
    assign apatb_conv2d_top.in_stream_TKEEP = svr_in_stream_if.data[17:16];
    assign apatb_conv2d_top.in_stream_TSTRB = svr_in_stream_if.data[19:18];
    assign apatb_conv2d_top.in_stream_TLAST = svr_in_stream_if.data[20:20];
    initial begin
        uvm_config_db #( virtual svr_if#(21) )::set(null, "uvm_test_top.top_env.env_master_svr_in_stream.*", "vif", svr_in_stream_if);
    end


    svr_if #(21)  svr_weight_stream_if    (.clk  (apatb_conv2d_top.AESL_clock), .rst(apatb_conv2d_top.AESL_reset));
    assign svr_weight_stream_if.ready = apatb_conv2d_top.weight_stream_TREADY;
    assign apatb_conv2d_top.weight_stream_TVALID = svr_weight_stream_if.valid;
    assign apatb_conv2d_top.weight_stream_TDATA = svr_weight_stream_if.data[15:0];
    assign apatb_conv2d_top.weight_stream_TKEEP = svr_weight_stream_if.data[17:16];
    assign apatb_conv2d_top.weight_stream_TSTRB = svr_weight_stream_if.data[19:18];
    assign apatb_conv2d_top.weight_stream_TLAST = svr_weight_stream_if.data[20:20];
    initial begin
        uvm_config_db #( virtual svr_if#(21) )::set(null, "uvm_test_top.top_env.env_master_svr_weight_stream.*", "vif", svr_weight_stream_if);
    end


    svr_if #(21)  svr_out_stream_if    (.clk  (apatb_conv2d_top.AESL_clock), .rst(apatb_conv2d_top.AESL_reset));
    assign apatb_conv2d_top.out_stream_TREADY = svr_out_stream_if.ready;
    assign svr_out_stream_if.valid = apatb_conv2d_top.out_stream_TVALID;
    assign svr_out_stream_if.data[15:0] = apatb_conv2d_top.out_stream_TDATA;
    assign svr_out_stream_if.data[17:16] = apatb_conv2d_top.out_stream_TKEEP;
    assign svr_out_stream_if.data[19:18] = apatb_conv2d_top.out_stream_TSTRB;
    assign svr_out_stream_if.data[20:20] = apatb_conv2d_top.out_stream_TLAST;
    initial begin
        uvm_config_db #( virtual svr_if#(21) )::set(null, "uvm_test_top.top_env.env_slave_svr_out_stream.*", "vif", svr_out_stream_if);
    end


    initial begin
        run_test();
    end
endmodule
`endif
