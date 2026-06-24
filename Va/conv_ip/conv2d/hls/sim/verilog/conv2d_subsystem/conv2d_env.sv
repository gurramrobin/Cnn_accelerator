//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
//Tool Version Limit: 2025.11
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================
`ifndef CONV2D_ENV__SV                                                                                   
    `define CONV2D_ENV__SV                                                                               
                                                                                                                    
                                                                                                                    
    class conv2d_env extends uvm_env;                                                                          
                                                                                                                    
        conv2d_virtual_sequencer conv2d_virtual_sqr;                                                      
        conv2d_config conv2d_cfg;                                                                         
                                                                                                                    
        svr_pkg::svr_env#(16) env_master_svr_bias;
        svr_pkg::svr_env#(21) env_master_svr_in_stream;
        svr_pkg::svr_env#(21) env_master_svr_weight_stream;
        svr_pkg::svr_env#(21) env_slave_svr_out_stream;
                                                                                                                    
        conv2d_reference_model   refm;                                                                         
                                                                                                                    
        conv2d_subsystem_monitor subsys_mon;                                                                   
                                                                                                                    
        `uvm_component_utils_begin(conv2d_env)                                                                 
        `uvm_field_object (env_master_svr_bias,  UVM_DEFAULT | UVM_REFERENCE)
        `uvm_field_object (env_master_svr_in_stream,  UVM_DEFAULT | UVM_REFERENCE)
        `uvm_field_object (env_master_svr_weight_stream,  UVM_DEFAULT | UVM_REFERENCE)
        `uvm_field_object (env_slave_svr_out_stream,  UVM_DEFAULT | UVM_REFERENCE)
        `uvm_field_object (refm, UVM_DEFAULT | UVM_REFERENCE)                                                       
        `uvm_field_object (conv2d_virtual_sqr, UVM_DEFAULT | UVM_REFERENCE)                                    
        `uvm_field_object (conv2d_cfg        , UVM_DEFAULT)                                                    
        `uvm_component_utils_end                                                                                    
                                                                                                                    
        function new (string name = "conv2d_env", uvm_component parent = null);                              
            super.new(name, parent);                                                                                
        endfunction                                                                                                 
                                                                                                                    
        extern virtual function void build_phase(uvm_phase phase);                                                  
        extern virtual function void connect_phase(uvm_phase phase);                                                
        extern virtual task          run_phase(uvm_phase phase);                                                    
                                                                                                                    
    endclass                                                                                                        
                                                                                                                    
    function void conv2d_env::build_phase(uvm_phase phase);                                                    
        super.build_phase(phase);                                                                                   
        conv2d_cfg = conv2d_config::type_id::create("conv2d_cfg", this);                           
                                                                                                                    
        conv2d_cfg.port_bias_cfg.svr_type = svr_pkg::SVR_MASTER ;
        env_master_svr_bias  = svr_env#(16)::type_id::create("env_master_svr_bias", this);
        uvm_config_db#(svr_pkg::svr_config)::set(this, "env_master_svr_bias*", "cfg", conv2d_cfg.port_bias_cfg);
        conv2d_cfg.port_bias_cfg.prt_type = svr_pkg::AP_NONE;
        conv2d_cfg.port_bias_cfg.is_active = svr_pkg::SVR_ACTIVE;
        conv2d_cfg.port_bias_cfg.spec_cfg = svr_pkg::NORMAL;
        conv2d_cfg.port_bias_cfg.reset_level = svr_pkg::RESET_LEVEL_LOW;
 
        conv2d_cfg.port_in_stream_cfg.svr_type = svr_pkg::SVR_MASTER ;
        env_master_svr_in_stream  = svr_env#(21)::type_id::create("env_master_svr_in_stream", this);
        uvm_config_db#(svr_pkg::svr_config)::set(this, "env_master_svr_in_stream*", "cfg", conv2d_cfg.port_in_stream_cfg);
        conv2d_cfg.port_in_stream_cfg.prt_type = svr_pkg::AXIS;
        conv2d_cfg.port_in_stream_cfg.is_active = svr_pkg::SVR_ACTIVE;
        conv2d_cfg.port_in_stream_cfg.spec_cfg = svr_pkg::NORMAL;
        conv2d_cfg.port_in_stream_cfg.reset_level = svr_pkg::RESET_LEVEL_LOW;
 
        conv2d_cfg.port_weight_stream_cfg.svr_type = svr_pkg::SVR_MASTER ;
        env_master_svr_weight_stream  = svr_env#(21)::type_id::create("env_master_svr_weight_stream", this);
        uvm_config_db#(svr_pkg::svr_config)::set(this, "env_master_svr_weight_stream*", "cfg", conv2d_cfg.port_weight_stream_cfg);
        conv2d_cfg.port_weight_stream_cfg.prt_type = svr_pkg::AXIS;
        conv2d_cfg.port_weight_stream_cfg.is_active = svr_pkg::SVR_ACTIVE;
        conv2d_cfg.port_weight_stream_cfg.spec_cfg = svr_pkg::NORMAL;
        conv2d_cfg.port_weight_stream_cfg.reset_level = svr_pkg::RESET_LEVEL_LOW;
 
        conv2d_cfg.port_out_stream_cfg.svr_type = svr_pkg::SVR_SLAVE ;
        env_slave_svr_out_stream  = svr_env#(21)::type_id::create("env_slave_svr_out_stream", this);
        uvm_config_db#(svr_pkg::svr_config)::set(this, "env_slave_svr_out_stream*", "cfg", conv2d_cfg.port_out_stream_cfg);
        conv2d_cfg.port_out_stream_cfg.prt_type = svr_pkg::AXIS;
        conv2d_cfg.port_out_stream_cfg.is_active = svr_pkg::SVR_ACTIVE;
        conv2d_cfg.port_out_stream_cfg.spec_cfg = svr_pkg::NORMAL;
        conv2d_cfg.port_out_stream_cfg.reset_level = svr_pkg::RESET_LEVEL_LOW;
 



        refm = conv2d_reference_model::type_id::create("refm", this);


        uvm_config_db#(conv2d_reference_model)::set(this, "*", "refm", refm);


        `uvm_info(this.get_full_name(), "set reference model by uvm_config_db", UVM_LOW)


        subsys_mon = conv2d_subsystem_monitor::type_id::create("subsys_mon", this);


        conv2d_virtual_sqr = conv2d_virtual_sequencer::type_id::create("conv2d_virtual_sqr", this);
        `uvm_info(this.get_full_name(), "build_phase done", UVM_LOW)
    endfunction


    function void conv2d_env::connect_phase(uvm_phase phase);
        super.connect_phase(phase);


        conv2d_virtual_sqr.svr_port_bias_sqr = env_master_svr_bias.m_agt.sqr;
        env_master_svr_bias.m_agt.mon.item_collect_port.connect(subsys_mon.svr_master_bias_imp);
 
        conv2d_virtual_sqr.svr_port_in_stream_sqr = env_master_svr_in_stream.m_agt.sqr;
        env_master_svr_in_stream.m_agt.mon.item_collect_port.connect(subsys_mon.svr_master_in_stream_imp);
 
        conv2d_virtual_sqr.svr_port_weight_stream_sqr = env_master_svr_weight_stream.m_agt.sqr;
        env_master_svr_weight_stream.m_agt.mon.item_collect_port.connect(subsys_mon.svr_master_weight_stream_imp);
 
        conv2d_virtual_sqr.svr_port_out_stream_sqr = env_slave_svr_out_stream.s_agt.sqr;
        env_slave_svr_out_stream.s_agt.mon.item_collect_port.connect(subsys_mon.svr_slave_out_stream_imp);
 
        refm.conv2d_cfg = conv2d_cfg;
        `uvm_info(this.get_full_name(), "connect phase done", UVM_LOW)
    endfunction


    task conv2d_env::run_phase(uvm_phase phase);
        `uvm_info(this.get_full_name(), "conv2d_env is running", UVM_LOW)
    endtask


`endif
