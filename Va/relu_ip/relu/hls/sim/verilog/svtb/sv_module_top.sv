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
import relu_subsystem_pkg::*;
`include "relu_subsys_test_sequence_lib.sv"
`include "relu_test_lib.sv"


module sv_module_top;


    misc_interface              misc_if ( .clock(apatb_relu_top.AESL_clock), .reset(apatb_relu_top.AESL_reset) );
    assign apatb_relu_top.ap_start = misc_if.tb2dut_ap_start;
    assign misc_if.dut2tb_ap_done = apatb_relu_top.ap_done;
    assign misc_if.dut2tb_ap_ready = apatb_relu_top.ap_ready;
    initial begin
        uvm_config_db #(virtual misc_interface)::set(null, "uvm_test_top.top_env.*", "misc_if", misc_if);
    end


    svr_if #(21)  svr_in_stream_if    (.clk  (apatb_relu_top.AESL_clock), .rst(apatb_relu_top.AESL_reset));
    assign svr_in_stream_if.ready = apatb_relu_top.in_stream_TREADY;
    assign apatb_relu_top.in_stream_TVALID = svr_in_stream_if.valid;
    assign apatb_relu_top.in_stream_TDATA = svr_in_stream_if.data[15:0];
    assign apatb_relu_top.in_stream_TKEEP = svr_in_stream_if.data[17:16];
    assign apatb_relu_top.in_stream_TSTRB = svr_in_stream_if.data[19:18];
    assign apatb_relu_top.in_stream_TLAST = svr_in_stream_if.data[20:20];
    initial begin
        uvm_config_db #( virtual svr_if#(21) )::set(null, "uvm_test_top.top_env.env_master_svr_in_stream.*", "vif", svr_in_stream_if);
    end


    svr_if #(21)  svr_out_stream_if    (.clk  (apatb_relu_top.AESL_clock), .rst(apatb_relu_top.AESL_reset));
    assign apatb_relu_top.out_stream_TREADY = svr_out_stream_if.ready;
    assign svr_out_stream_if.valid = apatb_relu_top.out_stream_TVALID;
    assign svr_out_stream_if.data[15:0] = apatb_relu_top.out_stream_TDATA;
    assign svr_out_stream_if.data[17:16] = apatb_relu_top.out_stream_TKEEP;
    assign svr_out_stream_if.data[19:18] = apatb_relu_top.out_stream_TSTRB;
    assign svr_out_stream_if.data[20:20] = apatb_relu_top.out_stream_TLAST;
    initial begin
        uvm_config_db #( virtual svr_if#(21) )::set(null, "uvm_test_top.top_env.env_slave_svr_out_stream.*", "vif", svr_out_stream_if);
    end


    initial begin
        run_test();
    end
endmodule
`endif
