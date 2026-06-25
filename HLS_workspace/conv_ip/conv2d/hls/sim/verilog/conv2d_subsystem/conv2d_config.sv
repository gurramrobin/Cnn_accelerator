//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
//Tool Version Limit: 2025.11
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================
`ifndef CONV2D_CONFIG__SV                        
    `define CONV2D_CONFIG__SV                    
                                                            
    class conv2d_config extends uvm_object;            
                                                            
        int check_ena;                                      
        int cover_ena;                                      
        svr_pkg::svr_config port_bias_cfg;
        svr_pkg::svr_config port_in_stream_cfg;
        svr_pkg::svr_config port_weight_stream_cfg;
        svr_pkg::svr_config port_out_stream_cfg;

        `uvm_object_utils_begin(conv2d_config)         
        `uvm_field_object(port_bias_cfg, UVM_DEFAULT)
        `uvm_field_object(port_in_stream_cfg, UVM_DEFAULT)
        `uvm_field_object(port_weight_stream_cfg, UVM_DEFAULT)
        `uvm_field_object(port_out_stream_cfg, UVM_DEFAULT)
        `uvm_field_int   (check_ena , UVM_DEFAULT)          
        `uvm_field_int   (cover_ena , UVM_DEFAULT)          
        `uvm_object_utils_end                               

        function new (string name = "conv2d_config");
            super.new(name);                                
            port_bias_cfg = svr_pkg::svr_config::type_id::create("port_bias_cfg");
            port_in_stream_cfg = svr_pkg::svr_config::type_id::create("port_in_stream_cfg");
            port_weight_stream_cfg = svr_pkg::svr_config::type_id::create("port_weight_stream_cfg");
            port_out_stream_cfg = svr_pkg::svr_config::type_id::create("port_out_stream_cfg");
        endfunction                                         
                                                            
    endclass                                                
                                                            
`endif                                                      
