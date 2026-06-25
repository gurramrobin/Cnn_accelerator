//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
//Tool Version Limit: 2025.11
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================
`ifndef CONV2D_VIRTUAL_SEQUENCER__SV                        
    `define CONV2D_VIRTUAL_SEQUENCER__SV                    
                                                                       
    class conv2d_virtual_sequencer extends uvm_sequencer;         
        svr_master_sequencer#(16) svr_port_bias_sqr;
        svr_master_sequencer#(21) svr_port_in_stream_sqr;
        svr_master_sequencer#(21) svr_port_weight_stream_sqr;
        svr_slave_sequencer#(21) svr_port_out_stream_sqr;
 
        function new (string name, uvm_component parent);              
            super.new(name, parent);                                   
            //`uvm_info(this.get_full_name(), "new is called", UVM_LOW)
        endfunction                                                    
                                                                       
        `uvm_component_utils_begin(conv2d_virtual_sequencer)      
        `uvm_component_utils_end                                       
                                                                       
    endclass

`endif
