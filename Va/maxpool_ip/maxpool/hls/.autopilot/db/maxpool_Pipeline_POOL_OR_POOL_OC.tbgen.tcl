set moduleName maxpool_Pipeline_POOL_OR_POOL_OC
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set isPipelined_legacy 1
set pipeline_type loop_auto_rewind
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
set cdfgNum 6
set C_modelName {maxpool_Pipeline_POOL_OR_POOL_OC}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ input_2_reload int 16 regular  }
	{ input_reload int 16 regular  }
	{ input_10_reload int 16 regular  }
	{ input_8_reload int 16 regular  }
	{ input_3_reload int 16 regular  }
	{ input_1_reload int 16 regular  }
	{ input_11_reload int 16 regular  }
	{ input_9_reload int 16 regular  }
	{ input_6_reload int 16 regular  }
	{ input_4_reload int 16 regular  }
	{ input_14_reload int 16 regular  }
	{ input_12_reload int 16 regular  }
	{ input_7_reload int 16 regular  }
	{ input_5_reload int 16 regular  }
	{ input_15_reload int 16 regular  }
	{ input_13_reload int 16 regular  }
	{ output_3_out int 16 regular {pointer 1}  }
	{ output_2_out int 16 regular {pointer 1}  }
	{ output_1_out int 16 regular {pointer 1}  }
	{ output_out int 16 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "input_2_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "input_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "input_10_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "input_8_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "input_3_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "input_1_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "input_11_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "input_9_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "input_6_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "input_4_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "input_14_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "input_12_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "input_7_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "input_5_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "input_15_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "input_13_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "output_3_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_2_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_1_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 30
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ input_2_reload sc_in sc_lv 16 signal 0 } 
	{ input_reload sc_in sc_lv 16 signal 1 } 
	{ input_10_reload sc_in sc_lv 16 signal 2 } 
	{ input_8_reload sc_in sc_lv 16 signal 3 } 
	{ input_3_reload sc_in sc_lv 16 signal 4 } 
	{ input_1_reload sc_in sc_lv 16 signal 5 } 
	{ input_11_reload sc_in sc_lv 16 signal 6 } 
	{ input_9_reload sc_in sc_lv 16 signal 7 } 
	{ input_6_reload sc_in sc_lv 16 signal 8 } 
	{ input_4_reload sc_in sc_lv 16 signal 9 } 
	{ input_14_reload sc_in sc_lv 16 signal 10 } 
	{ input_12_reload sc_in sc_lv 16 signal 11 } 
	{ input_7_reload sc_in sc_lv 16 signal 12 } 
	{ input_5_reload sc_in sc_lv 16 signal 13 } 
	{ input_15_reload sc_in sc_lv 16 signal 14 } 
	{ input_13_reload sc_in sc_lv 16 signal 15 } 
	{ output_3_out sc_out sc_lv 16 signal 16 } 
	{ output_3_out_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ output_2_out sc_out sc_lv 16 signal 17 } 
	{ output_2_out_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ output_1_out sc_out sc_lv 16 signal 18 } 
	{ output_1_out_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ output_out sc_out sc_lv 16 signal 19 } 
	{ output_out_ap_vld sc_out sc_logic 1 outvld 19 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "input_2_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_2_reload", "role": "default" }} , 
 	{ "name": "input_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_reload", "role": "default" }} , 
 	{ "name": "input_10_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_10_reload", "role": "default" }} , 
 	{ "name": "input_8_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_8_reload", "role": "default" }} , 
 	{ "name": "input_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_3_reload", "role": "default" }} , 
 	{ "name": "input_1_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_1_reload", "role": "default" }} , 
 	{ "name": "input_11_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_11_reload", "role": "default" }} , 
 	{ "name": "input_9_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_9_reload", "role": "default" }} , 
 	{ "name": "input_6_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_6_reload", "role": "default" }} , 
 	{ "name": "input_4_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_4_reload", "role": "default" }} , 
 	{ "name": "input_14_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_14_reload", "role": "default" }} , 
 	{ "name": "input_12_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_12_reload", "role": "default" }} , 
 	{ "name": "input_7_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_7_reload", "role": "default" }} , 
 	{ "name": "input_5_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_5_reload", "role": "default" }} , 
 	{ "name": "input_15_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_15_reload", "role": "default" }} , 
 	{ "name": "input_13_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_13_reload", "role": "default" }} , 
 	{ "name": "output_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "output_3_out", "role": "default" }} , 
 	{ "name": "output_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_3_out", "role": "ap_vld" }} , 
 	{ "name": "output_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "output_2_out", "role": "default" }} , 
 	{ "name": "output_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_2_out", "role": "ap_vld" }} , 
 	{ "name": "output_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "output_1_out", "role": "default" }} , 
 	{ "name": "output_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_1_out", "role": "ap_vld" }} , 
 	{ "name": "output_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "output_out", "role": "default" }} , 
 	{ "name": "output_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_out", "role": "ap_vld" }}  ]}

set ArgLastReadFirstWriteLatency {
	maxpool_Pipeline_POOL_OR_POOL_OC {
		input_2_reload {Type I LastRead 0 FirstWrite -1}
		input_reload {Type I LastRead 0 FirstWrite -1}
		input_10_reload {Type I LastRead 0 FirstWrite -1}
		input_8_reload {Type I LastRead 0 FirstWrite -1}
		input_3_reload {Type I LastRead 0 FirstWrite -1}
		input_1_reload {Type I LastRead 0 FirstWrite -1}
		input_11_reload {Type I LastRead 0 FirstWrite -1}
		input_9_reload {Type I LastRead 0 FirstWrite -1}
		input_6_reload {Type I LastRead 0 FirstWrite -1}
		input_4_reload {Type I LastRead 0 FirstWrite -1}
		input_14_reload {Type I LastRead 0 FirstWrite -1}
		input_12_reload {Type I LastRead 0 FirstWrite -1}
		input_7_reload {Type I LastRead 0 FirstWrite -1}
		input_5_reload {Type I LastRead 0 FirstWrite -1}
		input_15_reload {Type I LastRead 0 FirstWrite -1}
		input_13_reload {Type I LastRead 0 FirstWrite -1}
		output_3_out {Type O LastRead -1 FirstWrite 0}
		output_2_out {Type O LastRead -1 FirstWrite 0}
		output_1_out {Type O LastRead -1 FirstWrite 0}
		output_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "6", "Max" : "6"}
	, {"Name" : "Interval", "Min" : "5", "Max" : "5"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	input_2_reload { ap_none {  { input_2_reload in_data 0 16 } } }
	input_reload { ap_none {  { input_reload in_data 0 16 } } }
	input_10_reload { ap_none {  { input_10_reload in_data 0 16 } } }
	input_8_reload { ap_none {  { input_8_reload in_data 0 16 } } }
	input_3_reload { ap_none {  { input_3_reload in_data 0 16 } } }
	input_1_reload { ap_none {  { input_1_reload in_data 0 16 } } }
	input_11_reload { ap_none {  { input_11_reload in_data 0 16 } } }
	input_9_reload { ap_none {  { input_9_reload in_data 0 16 } } }
	input_6_reload { ap_none {  { input_6_reload in_data 0 16 } } }
	input_4_reload { ap_none {  { input_4_reload in_data 0 16 } } }
	input_14_reload { ap_none {  { input_14_reload in_data 0 16 } } }
	input_12_reload { ap_none {  { input_12_reload in_data 0 16 } } }
	input_7_reload { ap_none {  { input_7_reload in_data 0 16 } } }
	input_5_reload { ap_none {  { input_5_reload in_data 0 16 } } }
	input_15_reload { ap_none {  { input_15_reload in_data 0 16 } } }
	input_13_reload { ap_none {  { input_13_reload in_data 0 16 } } }
	output_3_out { ap_vld {  { output_3_out out_data 1 16 }  { output_3_out_ap_vld out_vld 1 1 } } }
	output_2_out { ap_vld {  { output_2_out out_data 1 16 }  { output_2_out_ap_vld out_vld 1 1 } } }
	output_1_out { ap_vld {  { output_1_out out_data 1 16 }  { output_1_out_ap_vld out_vld 1 1 } } }
	output_out { ap_vld {  { output_out out_data 1 16 }  { output_out_ap_vld out_vld 1 1 } } }
}
