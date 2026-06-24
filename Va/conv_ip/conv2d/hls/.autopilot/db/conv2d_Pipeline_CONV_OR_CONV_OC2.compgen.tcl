# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler conv2d_sparsemux_7_2_16_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {onehotencoding_realdef}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler conv2d_mac_muladd_16s_16s_24s_24_4_1 BINDTYPE {op} TYPE {all} IMPL {dsp_slice} LATENCY 3
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 78 \
    name input_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_reload \
    op interface \
    ports { input_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 79 \
    name input_1_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_1_reload \
    op interface \
    ports { input_1_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 80 \
    name input_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_2_reload \
    op interface \
    ports { input_2_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 81 \
    name input_5_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_5_reload \
    op interface \
    ports { input_5_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 82 \
    name input_6_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_6_reload \
    op interface \
    ports { input_6_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 83 \
    name input_7_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_7_reload \
    op interface \
    ports { input_7_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 84 \
    name input_10_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_10_reload \
    op interface \
    ports { input_10_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 85 \
    name input_11_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_11_reload \
    op interface \
    ports { input_11_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 86 \
    name input_12_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_12_reload \
    op interface \
    ports { input_12_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 87 \
    name sext_ln96 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln96 \
    op interface \
    ports { sext_ln96 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 88 \
    name shl_ln \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_shl_ln \
    op interface \
    ports { shl_ln { I 24 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 89 \
    name input_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_3_reload \
    op interface \
    ports { input_3_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 90 \
    name input_8_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_8_reload \
    op interface \
    ports { input_8_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 91 \
    name input_13_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_13_reload \
    op interface \
    ports { input_13_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 92 \
    name sext_ln96_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln96_1 \
    op interface \
    ports { sext_ln96_1 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 93 \
    name input_4_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_4_reload \
    op interface \
    ports { input_4_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 94 \
    name input_9_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_9_reload \
    op interface \
    ports { input_9_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 95 \
    name input_14_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_14_reload \
    op interface \
    ports { input_14_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 96 \
    name sext_ln96_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln96_2 \
    op interface \
    ports { sext_ln96_2 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 97 \
    name input_15_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_15_reload \
    op interface \
    ports { input_15_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 98 \
    name input_16_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_16_reload \
    op interface \
    ports { input_16_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 99 \
    name input_17_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_17_reload \
    op interface \
    ports { input_17_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 100 \
    name sext_ln96_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln96_3 \
    op interface \
    ports { sext_ln96_3 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 101 \
    name input_18_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_18_reload \
    op interface \
    ports { input_18_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 102 \
    name sext_ln96_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln96_4 \
    op interface \
    ports { sext_ln96_4 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 103 \
    name input_19_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_19_reload \
    op interface \
    ports { input_19_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 104 \
    name sext_ln96_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln96_5 \
    op interface \
    ports { sext_ln96_5 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 105 \
    name input_20_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_20_reload \
    op interface \
    ports { input_20_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 106 \
    name input_21_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_21_reload \
    op interface \
    ports { input_21_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 107 \
    name input_22_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_22_reload \
    op interface \
    ports { input_22_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 108 \
    name sext_ln96_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln96_6 \
    op interface \
    ports { sext_ln96_6 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 109 \
    name input_23_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_23_reload \
    op interface \
    ports { input_23_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 110 \
    name sext_ln96_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln96_7 \
    op interface \
    ports { sext_ln96_7 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 111 \
    name input_24_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_24_reload \
    op interface \
    ports { input_24_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 112 \
    name sext_ln96_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln96_8 \
    op interface \
    ports { sext_ln96_8 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 113 \
    name output_8_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_output_8_out \
    op interface \
    ports { output_8_out { O 16 vector } output_8_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 114 \
    name output_7_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_output_7_out \
    op interface \
    ports { output_7_out { O 16 vector } output_7_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 115 \
    name output_6_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_output_6_out \
    op interface \
    ports { output_6_out { O 16 vector } output_6_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 116 \
    name output_5_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_output_5_out \
    op interface \
    ports { output_5_out { O 16 vector } output_5_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 117 \
    name output_4_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_output_4_out \
    op interface \
    ports { output_4_out { O 16 vector } output_4_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 118 \
    name output_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_output_3_out \
    op interface \
    ports { output_3_out { O 16 vector } output_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 119 \
    name output_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_output_2_out \
    op interface \
    ports { output_2_out { O 16 vector } output_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 120 \
    name output_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_output_1_out \
    op interface \
    ports { output_1_out { O 16 vector } output_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 121 \
    name output_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_output_out \
    op interface \
    ports { output_out { O 16 vector } output_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName conv2d_flow_control_loop_pipe_sequential_init_U
set CompName conv2d_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix conv2d_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


