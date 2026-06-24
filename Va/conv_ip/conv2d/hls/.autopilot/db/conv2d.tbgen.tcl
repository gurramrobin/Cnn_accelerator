set moduleName conv2d
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set isPipelined_legacy 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set restart_counter_num 0
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 7
set C_modelName {conv2d}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ in_stream_V_data_V int 16 regular {axi_s 0 volatile  { in_stream Data } }  }
	{ in_stream_V_keep_V int 2 regular {axi_s 0 volatile  { in_stream Keep } }  }
	{ in_stream_V_strb_V int 2 regular {axi_s 0 volatile  { in_stream Strb } }  }
	{ in_stream_V_last_V int 1 regular {axi_s 0 volatile  { in_stream Last } }  }
	{ weight_stream_V_data_V int 16 regular {axi_s 0 volatile  { weight_stream Data } }  }
	{ weight_stream_V_keep_V int 2 regular {axi_s 0 volatile  { weight_stream Keep } }  }
	{ weight_stream_V_strb_V int 2 regular {axi_s 0 volatile  { weight_stream Strb } }  }
	{ weight_stream_V_last_V int 1 regular {axi_s 0 volatile  { weight_stream Last } }  }
	{ bias int 16 regular  }
	{ out_stream_V_data_V int 16 regular {axi_s 1 volatile  { out_stream Data } }  }
	{ out_stream_V_keep_V int 2 regular {axi_s 1 volatile  { out_stream Keep } }  }
	{ out_stream_V_strb_V int 2 regular {axi_s 1 volatile  { out_stream Strb } }  }
	{ out_stream_V_last_V int 1 regular {axi_s 1 volatile  { out_stream Last } }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "in_stream_V_data_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_keep_V", "interface" : "axis", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_strb_V", "interface" : "axis", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "weight_stream_V_data_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weight_stream_V_keep_V", "interface" : "axis", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "weight_stream_V_strb_V", "interface" : "axis", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "weight_stream_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "bias", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "out_stream_V_data_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_V_keep_V", "interface" : "axis", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_V_strb_V", "interface" : "axis", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ in_stream_TDATA sc_in sc_lv 16 signal 0 } 
	{ in_stream_TVALID sc_in sc_logic 1 invld 3 } 
	{ in_stream_TREADY sc_out sc_logic 1 inacc 3 } 
	{ in_stream_TKEEP sc_in sc_lv 2 signal 1 } 
	{ in_stream_TSTRB sc_in sc_lv 2 signal 2 } 
	{ in_stream_TLAST sc_in sc_lv 1 signal 3 } 
	{ weight_stream_TDATA sc_in sc_lv 16 signal 4 } 
	{ weight_stream_TVALID sc_in sc_logic 1 invld 7 } 
	{ weight_stream_TREADY sc_out sc_logic 1 inacc 7 } 
	{ weight_stream_TKEEP sc_in sc_lv 2 signal 5 } 
	{ weight_stream_TSTRB sc_in sc_lv 2 signal 6 } 
	{ weight_stream_TLAST sc_in sc_lv 1 signal 7 } 
	{ bias sc_in sc_lv 16 signal 8 } 
	{ out_stream_TDATA sc_out sc_lv 16 signal 9 } 
	{ out_stream_TVALID sc_out sc_logic 1 outvld 12 } 
	{ out_stream_TREADY sc_in sc_logic 1 outacc 12 } 
	{ out_stream_TKEEP sc_out sc_lv 2 signal 10 } 
	{ out_stream_TSTRB sc_out sc_lv 2 signal 11 } 
	{ out_stream_TLAST sc_out sc_lv 1 signal 12 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "in_stream_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "in_stream_V_data_V", "role": "default" }} , 
 	{ "name": "in_stream_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_stream_V_last_V", "role": "default" }} , 
 	{ "name": "in_stream_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in_stream_V_last_V", "role": "default" }} , 
 	{ "name": "in_stream_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_stream_V_keep_V", "role": "default" }} , 
 	{ "name": "in_stream_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_stream_V_strb_V", "role": "default" }} , 
 	{ "name": "in_stream_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_stream_V_last_V", "role": "default" }} , 
 	{ "name": "weight_stream_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weight_stream_V_data_V", "role": "default" }} , 
 	{ "name": "weight_stream_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "weight_stream_V_last_V", "role": "default" }} , 
 	{ "name": "weight_stream_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "weight_stream_V_last_V", "role": "default" }} , 
 	{ "name": "weight_stream_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "weight_stream_V_keep_V", "role": "default" }} , 
 	{ "name": "weight_stream_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "weight_stream_V_strb_V", "role": "default" }} , 
 	{ "name": "weight_stream_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_stream_V_last_V", "role": "default" }} , 
 	{ "name": "bias", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias", "role": "default" }} , 
 	{ "name": "out_stream_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "out_stream_V_data_V", "role": "default" }} , 
 	{ "name": "out_stream_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_stream_V_last_V", "role": "default" }} , 
 	{ "name": "out_stream_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "out_stream_V_last_V", "role": "default" }} , 
 	{ "name": "out_stream_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_stream_V_keep_V", "role": "default" }} , 
 	{ "name": "out_stream_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_stream_V_strb_V", "role": "default" }} , 
 	{ "name": "out_stream_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_V_last_V", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	conv2d {
		in_stream_V_data_V {Type I LastRead 1 FirstWrite -1}
		in_stream_V_keep_V {Type I LastRead 1 FirstWrite -1}
		in_stream_V_strb_V {Type I LastRead 1 FirstWrite -1}
		in_stream_V_last_V {Type I LastRead 1 FirstWrite -1}
		weight_stream_V_data_V {Type I LastRead 1 FirstWrite -1}
		weight_stream_V_keep_V {Type I LastRead 1 FirstWrite -1}
		weight_stream_V_strb_V {Type I LastRead 1 FirstWrite -1}
		weight_stream_V_last_V {Type I LastRead 1 FirstWrite -1}
		bias {Type I LastRead 3 FirstWrite -1}
		out_stream_V_data_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_keep_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_strb_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_last_V {Type O LastRead -1 FirstWrite 1}}
	conv2d_Pipeline_READ_INPUT {
		in_stream_V_data_V {Type I LastRead 1 FirstWrite -1}
		in_stream_V_keep_V {Type I LastRead 1 FirstWrite -1}
		in_stream_V_strb_V {Type I LastRead 1 FirstWrite -1}
		in_stream_V_last_V {Type I LastRead 1 FirstWrite -1}
		input_24_out {Type O LastRead -1 FirstWrite 0}
		input_23_out {Type O LastRead -1 FirstWrite 0}
		input_22_out {Type O LastRead -1 FirstWrite 0}
		input_21_out {Type O LastRead -1 FirstWrite 0}
		input_20_out {Type O LastRead -1 FirstWrite 0}
		input_19_out {Type O LastRead -1 FirstWrite 0}
		input_18_out {Type O LastRead -1 FirstWrite 0}
		input_17_out {Type O LastRead -1 FirstWrite 0}
		input_16_out {Type O LastRead -1 FirstWrite 0}
		input_15_out {Type O LastRead -1 FirstWrite 0}
		input_14_out {Type O LastRead -1 FirstWrite 0}
		input_13_out {Type O LastRead -1 FirstWrite 0}
		input_12_out {Type O LastRead -1 FirstWrite 0}
		input_11_out {Type O LastRead -1 FirstWrite 0}
		input_10_out {Type O LastRead -1 FirstWrite 0}
		input_9_out {Type O LastRead -1 FirstWrite 0}
		input_8_out {Type O LastRead -1 FirstWrite 0}
		input_7_out {Type O LastRead -1 FirstWrite 0}
		input_6_out {Type O LastRead -1 FirstWrite 0}
		input_5_out {Type O LastRead -1 FirstWrite 0}
		input_4_out {Type O LastRead -1 FirstWrite 0}
		input_3_out {Type O LastRead -1 FirstWrite 0}
		input_2_out {Type O LastRead -1 FirstWrite 0}
		input_1_out {Type O LastRead -1 FirstWrite 0}
		input_out {Type O LastRead -1 FirstWrite 0}}
	conv2d_Pipeline_READ_WEIGHTS {
		weight_stream_V_data_V {Type I LastRead 1 FirstWrite -1}
		weight_stream_V_keep_V {Type I LastRead 1 FirstWrite -1}
		weight_stream_V_strb_V {Type I LastRead 1 FirstWrite -1}
		weight_stream_V_last_V {Type I LastRead 1 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}
		p_out1 {Type O LastRead -1 FirstWrite 0}
		p_out2 {Type O LastRead -1 FirstWrite 0}
		p_out3 {Type O LastRead -1 FirstWrite 0}
		p_out4 {Type O LastRead -1 FirstWrite 0}
		p_out5 {Type O LastRead -1 FirstWrite 0}
		p_out6 {Type O LastRead -1 FirstWrite 0}
		p_out7 {Type O LastRead -1 FirstWrite 0}
		p_out8 {Type O LastRead -1 FirstWrite 0}}
	conv2d_Pipeline_CONV_OR_CONV_OC2 {
		input_reload {Type I LastRead 0 FirstWrite -1}
		input_1_reload {Type I LastRead 0 FirstWrite -1}
		input_2_reload {Type I LastRead 0 FirstWrite -1}
		input_5_reload {Type I LastRead 0 FirstWrite -1}
		input_6_reload {Type I LastRead 0 FirstWrite -1}
		input_7_reload {Type I LastRead 0 FirstWrite -1}
		input_10_reload {Type I LastRead 0 FirstWrite -1}
		input_11_reload {Type I LastRead 0 FirstWrite -1}
		input_12_reload {Type I LastRead 0 FirstWrite -1}
		sext_ln96 {Type I LastRead 0 FirstWrite -1}
		shl_ln {Type I LastRead 0 FirstWrite -1}
		input_3_reload {Type I LastRead 0 FirstWrite -1}
		input_8_reload {Type I LastRead 0 FirstWrite -1}
		input_13_reload {Type I LastRead 0 FirstWrite -1}
		sext_ln96_1 {Type I LastRead 0 FirstWrite -1}
		input_4_reload {Type I LastRead 0 FirstWrite -1}
		input_9_reload {Type I LastRead 0 FirstWrite -1}
		input_14_reload {Type I LastRead 0 FirstWrite -1}
		sext_ln96_2 {Type I LastRead 0 FirstWrite -1}
		input_15_reload {Type I LastRead 0 FirstWrite -1}
		input_16_reload {Type I LastRead 0 FirstWrite -1}
		input_17_reload {Type I LastRead 0 FirstWrite -1}
		sext_ln96_3 {Type I LastRead 0 FirstWrite -1}
		input_18_reload {Type I LastRead 0 FirstWrite -1}
		sext_ln96_4 {Type I LastRead 0 FirstWrite -1}
		input_19_reload {Type I LastRead 0 FirstWrite -1}
		sext_ln96_5 {Type I LastRead 0 FirstWrite -1}
		input_20_reload {Type I LastRead 0 FirstWrite -1}
		input_21_reload {Type I LastRead 0 FirstWrite -1}
		input_22_reload {Type I LastRead 0 FirstWrite -1}
		sext_ln96_6 {Type I LastRead 0 FirstWrite -1}
		input_23_reload {Type I LastRead 0 FirstWrite -1}
		sext_ln96_7 {Type I LastRead 0 FirstWrite -1}
		input_24_reload {Type I LastRead 0 FirstWrite -1}
		sext_ln96_8 {Type I LastRead 0 FirstWrite -1}
		output_8_out {Type O LastRead -1 FirstWrite 10}
		output_7_out {Type O LastRead -1 FirstWrite 10}
		output_6_out {Type O LastRead -1 FirstWrite 10}
		output_5_out {Type O LastRead -1 FirstWrite 10}
		output_4_out {Type O LastRead -1 FirstWrite 10}
		output_3_out {Type O LastRead -1 FirstWrite 10}
		output_2_out {Type O LastRead -1 FirstWrite 10}
		output_1_out {Type O LastRead -1 FirstWrite 10}
		output_out {Type O LastRead -1 FirstWrite 10}}
	conv2d_Pipeline_WRITE_OUTPUT {
		output_reload {Type I LastRead 0 FirstWrite -1}
		output_1_reload {Type I LastRead 0 FirstWrite -1}
		output_2_reload {Type I LastRead 0 FirstWrite -1}
		output_3_reload {Type I LastRead 0 FirstWrite -1}
		output_4_reload {Type I LastRead 0 FirstWrite -1}
		output_5_reload {Type I LastRead 0 FirstWrite -1}
		output_6_reload {Type I LastRead 0 FirstWrite -1}
		output_7_reload {Type I LastRead 0 FirstWrite -1}
		output_8_reload {Type I LastRead 0 FirstWrite -1}
		out_stream_V_data_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_keep_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_strb_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_last_V {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "66", "Max" : "66"}
	, {"Name" : "Interval", "Min" : "67", "Max" : "67"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	in_stream_V_data_V { axis {  { in_stream_TDATA in_data 0 16 } } }
	in_stream_V_keep_V { axis {  { in_stream_TKEEP in_data 0 2 } } }
	in_stream_V_strb_V { axis {  { in_stream_TSTRB in_data 0 2 } } }
	in_stream_V_last_V { axis {  { in_stream_TVALID in_vld 0 1 }  { in_stream_TREADY in_acc 1 1 }  { in_stream_TLAST in_data 0 1 } } }
	weight_stream_V_data_V { axis {  { weight_stream_TDATA in_data 0 16 } } }
	weight_stream_V_keep_V { axis {  { weight_stream_TKEEP in_data 0 2 } } }
	weight_stream_V_strb_V { axis {  { weight_stream_TSTRB in_data 0 2 } } }
	weight_stream_V_last_V { axis {  { weight_stream_TVALID in_vld 0 1 }  { weight_stream_TREADY in_acc 1 1 }  { weight_stream_TLAST in_data 0 1 } } }
	bias { ap_none {  { bias in_data 0 16 } } }
	out_stream_V_data_V { axis {  { out_stream_TDATA out_data 1 16 } } }
	out_stream_V_keep_V { axis {  { out_stream_TKEEP out_data 1 2 } } }
	out_stream_V_strb_V { axis {  { out_stream_TSTRB out_data 1 2 } } }
	out_stream_V_last_V { axis {  { out_stream_TVALID out_vld 1 1 }  { out_stream_TREADY out_acc 0 1 }  { out_stream_TLAST out_data 1 1 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
