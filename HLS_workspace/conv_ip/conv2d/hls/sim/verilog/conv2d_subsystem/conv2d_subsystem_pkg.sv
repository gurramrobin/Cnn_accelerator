//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
//Tool Version Limit: 2025.11
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================
`timescale 1ns/1ps 

`ifndef CONV2D_SUBSYSTEM_PKG__SV          
    `define CONV2D_SUBSYSTEM_PKG__SV      
                                                     
    package conv2d_subsystem_pkg;               
                                                     
        import uvm_pkg::*;                           
        import file_agent_pkg::*;                    
        import svr_pkg::*;
                                                     
        `include "uvm_macros.svh"                  
                                                     
        `include "conv2d_config.sv"           
        `include "conv2d_reference_model.sv"  
        `include "conv2d_scoreboard.sv"       
        `include "conv2d_subsystem_monitor.sv"
        `include "conv2d_virtual_sequencer.sv"
        `include "conv2d_pkg_sequence_lib.sv" 
        `include "conv2d_env.sv"              
                                                     
    endpackage                                       
                                                     
`endif                                               
