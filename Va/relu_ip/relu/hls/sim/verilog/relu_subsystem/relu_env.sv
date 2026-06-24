//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
//Tool Version Limit: 2025.11
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================
`ifndef RELU_ENV__SV                                                                                   
    `define RELU_ENV__SV                                                                               
                                                                                                                    
                                                                                                                    
    class relu_env extends uvm_env;                                                                          
                                                                                                                    
        relu_virtual_sequencer relu_virtual_sqr;                                                      
        relu_config relu_cfg;                                                                         
                                                                                                                    
        svr_pkg::svr_env#(21) env_master_svr_in_stream;
        svr_pkg::svr_env#(21) env_slave_svr_out_stream;
                                                                                                                    
        relu_reference_model   refm;                                                                         
                                                                                                                    
        relu_subsystem_monitor subsys_mon;                                                                   
                                                                                                                    
        `uvm_component_utils_begin(relu_env)                                                                 
        `uvm_field_object (env_master_svr_in_stream,  UVM_DEFAULT | UVM_REFERENCE)
        `uvm_field_object (env_slave_svr_out_stream,  UVM_DEFAULT | UVM_REFERENCE)
        `uvm_field_object (refm, UVM_DEFAULT | UVM_REFERENCE)                                                       
        `uvm_field_object (relu_virtual_sqr, UVM_DEFAULT | UVM_REFERENCE)                                    
        `uvm_field_object (relu_cfg        , UVM_DEFAULT)                                                    
        `uvm_component_utils_end                                                                                    
                                                                                                                    
        function new (string name = "relu_env", uvm_component parent = null);                              
            super.new(name, parent);                                                                                
        endfunction                                                                                                 
                                                                                                                    
        extern virtual function void build_phase(uvm_phase phase);                                                  
        extern virtual function void connect_phase(uvm_phase phase);                                                
        extern virtual task          run_phase(uvm_phase phase);                                                    
                                                                                                                    
    endclass                                                                                                        
                                                                                                                    
    function void relu_env::build_phase(uvm_phase phase);                                                    
        super.build_phase(phase);                                                                                   
        relu_cfg = relu_config::type_id::create("relu_cfg", this);                           
                                                                                                                    
        relu_cfg.port_in_stream_cfg.svr_type = svr_pkg::SVR_MASTER ;
        env_master_svr_in_stream  = svr_env#(21)::type_id::create("env_master_svr_in_stream", this);
        uvm_config_db#(svr_pkg::svr_config)::set(this, "env_master_svr_in_stream*", "cfg", relu_cfg.port_in_stream_cfg);
        relu_cfg.port_in_stream_cfg.prt_type = svr_pkg::AXIS;
        relu_cfg.port_in_stream_cfg.is_active = svr_pkg::SVR_ACTIVE;
        relu_cfg.port_in_stream_cfg.spec_cfg = svr_pkg::NORMAL;
        relu_cfg.port_in_stream_cfg.reset_level = svr_pkg::RESET_LEVEL_LOW;
 
        relu_cfg.port_out_stream_cfg.svr_type = svr_pkg::SVR_SLAVE ;
        env_slave_svr_out_stream  = svr_env#(21)::type_id::create("env_slave_svr_out_stream", this);
        uvm_config_db#(svr_pkg::svr_config)::set(this, "env_slave_svr_out_stream*", "cfg", relu_cfg.port_out_stream_cfg);
        relu_cfg.port_out_stream_cfg.prt_type = svr_pkg::AXIS;
        relu_cfg.port_out_stream_cfg.is_active = svr_pkg::SVR_ACTIVE;
        relu_cfg.port_out_stream_cfg.spec_cfg = svr_pkg::NORMAL;
        relu_cfg.port_out_stream_cfg.reset_level = svr_pkg::RESET_LEVEL_LOW;
 



        refm = relu_reference_model::type_id::create("refm", this);


        uvm_config_db#(relu_reference_model)::set(this, "*", "refm", refm);


        `uvm_info(this.get_full_name(), "set reference model by uvm_config_db", UVM_LOW)


        subsys_mon = relu_subsystem_monitor::type_id::create("subsys_mon", this);


        relu_virtual_sqr = relu_virtual_sequencer::type_id::create("relu_virtual_sqr", this);
        `uvm_info(this.get_full_name(), "build_phase done", UVM_LOW)
    endfunction


    function void relu_env::connect_phase(uvm_phase phase);
        super.connect_phase(phase);


        relu_virtual_sqr.svr_port_in_stream_sqr = env_master_svr_in_stream.m_agt.sqr;
        env_master_svr_in_stream.m_agt.mon.item_collect_port.connect(subsys_mon.svr_master_in_stream_imp);
 
        relu_virtual_sqr.svr_port_out_stream_sqr = env_slave_svr_out_stream.s_agt.sqr;
        env_slave_svr_out_stream.s_agt.mon.item_collect_port.connect(subsys_mon.svr_slave_out_stream_imp);
 
        refm.relu_cfg = relu_cfg;
        `uvm_info(this.get_full_name(), "connect phase done", UVM_LOW)
    endfunction


    task relu_env::run_phase(uvm_phase phase);
        `uvm_info(this.get_full_name(), "relu_env is running", UVM_LOW)
    endtask


`endif
