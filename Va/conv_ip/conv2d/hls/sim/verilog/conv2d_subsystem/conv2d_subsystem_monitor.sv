//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
//Tool Version Limit: 2025.11
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================

`ifndef CONV2D_SUBSYSTEM_MONITOR_SV
`define CONV2D_SUBSYSTEM_MONITOR_SV

`uvm_analysis_imp_decl(_svr_master_bias)
`uvm_analysis_imp_decl(_svr_master_in_stream)
`uvm_analysis_imp_decl(_svr_master_weight_stream)
`uvm_analysis_imp_decl(_svr_slave_out_stream)

class conv2d_subsystem_monitor extends uvm_component;

    conv2d_reference_model refm;
    conv2d_scoreboard scbd;

    `uvm_component_utils_begin(conv2d_subsystem_monitor)
    `uvm_component_utils_end

    uvm_analysis_imp_svr_master_bias#(svr_pkg::svr_transfer#(16), conv2d_subsystem_monitor) svr_master_bias_imp;
    uvm_analysis_imp_svr_master_in_stream#(svr_pkg::svr_transfer#(21), conv2d_subsystem_monitor) svr_master_in_stream_imp;
    uvm_analysis_imp_svr_master_weight_stream#(svr_pkg::svr_transfer#(21), conv2d_subsystem_monitor) svr_master_weight_stream_imp;
    uvm_analysis_imp_svr_slave_out_stream#(svr_pkg::svr_transfer#(21), conv2d_subsystem_monitor) svr_slave_out_stream_imp;

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        if (!uvm_config_db#(conv2d_reference_model)::get(this, "", "refm", refm))
            `uvm_fatal(this.get_full_name(), "No refm from high level")
        `uvm_info(this.get_full_name(), "get reference model by uvm_config_db", UVM_MEDIUM)
        scbd = conv2d_scoreboard::type_id::create("scbd", this);
    endfunction

    virtual function void connect_phase(uvm_phase phase);
        super.connect_phase(phase);
    endfunction

    function new (string name = "", uvm_component parent = null);
        super.new(name, parent);
        svr_master_bias_imp = new("svr_master_bias_imp", this);
        svr_master_in_stream_imp = new("svr_master_in_stream_imp", this);
        svr_master_weight_stream_imp = new("svr_master_weight_stream_imp", this);
        svr_slave_out_stream_imp = new("svr_slave_out_stream_imp", this);
    endfunction

    virtual function void write_svr_master_bias(svr_transfer#(16) tr);
        refm.write_svr_master_bias(tr);
        scbd.write_svr_master_bias(tr);
    endfunction

    virtual function void write_svr_master_in_stream(svr_transfer#(21) tr);
        refm.write_svr_master_in_stream(tr);
        scbd.write_svr_master_in_stream(tr);
    endfunction

    virtual function void write_svr_master_weight_stream(svr_transfer#(21) tr);
        refm.write_svr_master_weight_stream(tr);
        scbd.write_svr_master_weight_stream(tr);
    endfunction

    virtual function void write_svr_slave_out_stream(svr_transfer#(21) tr);
        refm.write_svr_slave_out_stream(tr);
        scbd.write_svr_slave_out_stream(tr);
    endfunction
endclass
`endif
