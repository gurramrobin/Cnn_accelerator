//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
//Tool Version Limit: 2025.11
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================
`timescale 1ns/1ps 

`ifndef MAXPOOL_SUBSYSTEM_PKG__SV          
    `define MAXPOOL_SUBSYSTEM_PKG__SV      
                                                     
    package maxpool_subsystem_pkg;               
                                                     
        import uvm_pkg::*;                           
        import file_agent_pkg::*;                    
        import svr_pkg::*;
                                                     
        `include "uvm_macros.svh"                  
                                                     
        `include "maxpool_config.sv"           
        `include "maxpool_reference_model.sv"  
        `include "maxpool_scoreboard.sv"       
        `include "maxpool_subsystem_monitor.sv"
        `include "maxpool_virtual_sequencer.sv"
        `include "maxpool_pkg_sequence_lib.sv" 
        `include "maxpool_env.sv"              
                                                     
    endpackage                                       
                                                     
`endif                                               
