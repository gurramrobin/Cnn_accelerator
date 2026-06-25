set moduleName conv2d_Pipeline_CONV_OR_CONV_OC2
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
set cdfgNum 7
set C_modelName {conv2d_Pipeline_CONV_OR_CONV_OC2}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ input_reload int 16 regular  }
	{ input_1_reload int 16 regular  }
	{ input_2_reload int 16 regular  }
	{ input_5_reload int 16 regular  }
	{ input_6_reload int 16 regular  }
	{ input_7_reload int 16 regular  }
	{ input_10_reload int 16 regular  }
	{ input_11_reload int 16 regular  }
	{ input_12_reload int 16 regular  }
	{ sext_ln96 int 16 regular  }
	{ shl_ln int 24 regular  }
	{ input_3_reload int 16 regular  }
	{ input_8_reload int 16 regular  }
	{ input_13_reload int 16 regular  }
	{ sext_ln96_1 int 16 regular  }
	{ input_4_reload int 16 regular  }
	{ input_9_reload int 16 regular  }
	{ input_14_reload int 16 regular  }
	{ sext_ln96_2 int 16 regular  }
	{ input_15_reload int 16 regular  }
	{ input_16_reload int 16 regular  }
	{ input_17_reload int 16 regular  }
	{ sext_ln96_3 int 16 regular  }
	{ input_18_reload int 16 regular  }
	{ sext_ln96_4 int 16 regular  }
	{ input_19_reload int 16 regular  }
	{ sext_ln96_5 int 16 regular  }
	{ input_20_reload int 16 regular  }
	{ input_21_reload int 16 regular  }
	{ input_22_reload int 16 regular  }
	{ sext_ln96_6 int 16 regular  }
	{ input_23_reload int 16 regular  }
	{ sext_ln96_7 int 16 regular  }
	{ input_24_reload int 16 regular  }
	{ sext_ln96_8 int 16 regular  }
	{ output_8_out int 16 regular {pointer 1}  }
	{ output_7_out int 16 regular {pointer 1}  }
	{ output_6_out int 16 regular {pointer 1}  }
	{ output_5_out int 16 regular {pointer 1}  }
	{ output_4_out int 16 regular {pointer 1}  }
	{ output_3_out int 16 regular {pointer 1}  }
	{ output_2_out int 16 regular {pointer 1}  }
	{ output_1_out int 16 regular {pointer 1}  }
	{ output_out int 16 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "input_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "input_1_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "input_2_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "input_5_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "input_6_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "input_7_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "input_10_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "input_11_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "input_12_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln96", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "shl_ln", "interface" : "wire", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "input_3_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "input_8_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "input_13_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln96_1", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "input_4_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "input_9_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "input_14_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln96_2", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "input_15_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "input_16_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "input_17_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln96_3", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "input_18_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln96_4", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "input_19_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln96_5", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "input_20_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "input_21_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "input_22_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln96_6", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "input_23_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln96_7", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "input_24_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln96_8", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "output_8_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_7_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_6_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_5_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_4_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_3_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_2_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_1_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 59
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ input_reload sc_in sc_lv 16 signal 0 } 
	{ input_1_reload sc_in sc_lv 16 signal 1 } 
	{ input_2_reload sc_in sc_lv 16 signal 2 } 
	{ input_5_reload sc_in sc_lv 16 signal 3 } 
	{ input_6_reload sc_in sc_lv 16 signal 4 } 
	{ input_7_reload sc_in sc_lv 16 signal 5 } 
	{ input_10_reload sc_in sc_lv 16 signal 6 } 
	{ input_11_reload sc_in sc_lv 16 signal 7 } 
	{ input_12_reload sc_in sc_lv 16 signal 8 } 
	{ sext_ln96 sc_in sc_lv 16 signal 9 } 
	{ shl_ln sc_in sc_lv 24 signal 10 } 
	{ input_3_reload sc_in sc_lv 16 signal 11 } 
	{ input_8_reload sc_in sc_lv 16 signal 12 } 
	{ input_13_reload sc_in sc_lv 16 signal 13 } 
	{ sext_ln96_1 sc_in sc_lv 16 signal 14 } 
	{ input_4_reload sc_in sc_lv 16 signal 15 } 
	{ input_9_reload sc_in sc_lv 16 signal 16 } 
	{ input_14_reload sc_in sc_lv 16 signal 17 } 
	{ sext_ln96_2 sc_in sc_lv 16 signal 18 } 
	{ input_15_reload sc_in sc_lv 16 signal 19 } 
	{ input_16_reload sc_in sc_lv 16 signal 20 } 
	{ input_17_reload sc_in sc_lv 16 signal 21 } 
	{ sext_ln96_3 sc_in sc_lv 16 signal 22 } 
	{ input_18_reload sc_in sc_lv 16 signal 23 } 
	{ sext_ln96_4 sc_in sc_lv 16 signal 24 } 
	{ input_19_reload sc_in sc_lv 16 signal 25 } 
	{ sext_ln96_5 sc_in sc_lv 16 signal 26 } 
	{ input_20_reload sc_in sc_lv 16 signal 27 } 
	{ input_21_reload sc_in sc_lv 16 signal 28 } 
	{ input_22_reload sc_in sc_lv 16 signal 29 } 
	{ sext_ln96_6 sc_in sc_lv 16 signal 30 } 
	{ input_23_reload sc_in sc_lv 16 signal 31 } 
	{ sext_ln96_7 sc_in sc_lv 16 signal 32 } 
	{ input_24_reload sc_in sc_lv 16 signal 33 } 
	{ sext_ln96_8 sc_in sc_lv 16 signal 34 } 
	{ output_8_out sc_out sc_lv 16 signal 35 } 
	{ output_8_out_ap_vld sc_out sc_logic 1 outvld 35 } 
	{ output_7_out sc_out sc_lv 16 signal 36 } 
	{ output_7_out_ap_vld sc_out sc_logic 1 outvld 36 } 
	{ output_6_out sc_out sc_lv 16 signal 37 } 
	{ output_6_out_ap_vld sc_out sc_logic 1 outvld 37 } 
	{ output_5_out sc_out sc_lv 16 signal 38 } 
	{ output_5_out_ap_vld sc_out sc_logic 1 outvld 38 } 
	{ output_4_out sc_out sc_lv 16 signal 39 } 
	{ output_4_out_ap_vld sc_out sc_logic 1 outvld 39 } 
	{ output_3_out sc_out sc_lv 16 signal 40 } 
	{ output_3_out_ap_vld sc_out sc_logic 1 outvld 40 } 
	{ output_2_out sc_out sc_lv 16 signal 41 } 
	{ output_2_out_ap_vld sc_out sc_logic 1 outvld 41 } 
	{ output_1_out sc_out sc_lv 16 signal 42 } 
	{ output_1_out_ap_vld sc_out sc_logic 1 outvld 42 } 
	{ output_out sc_out sc_lv 16 signal 43 } 
	{ output_out_ap_vld sc_out sc_logic 1 outvld 43 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "input_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_reload", "role": "default" }} , 
 	{ "name": "input_1_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_1_reload", "role": "default" }} , 
 	{ "name": "input_2_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_2_reload", "role": "default" }} , 
 	{ "name": "input_5_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_5_reload", "role": "default" }} , 
 	{ "name": "input_6_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_6_reload", "role": "default" }} , 
 	{ "name": "input_7_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_7_reload", "role": "default" }} , 
 	{ "name": "input_10_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_10_reload", "role": "default" }} , 
 	{ "name": "input_11_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_11_reload", "role": "default" }} , 
 	{ "name": "input_12_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_12_reload", "role": "default" }} , 
 	{ "name": "sext_ln96", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln96", "role": "default" }} , 
 	{ "name": "shl_ln", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "shl_ln", "role": "default" }} , 
 	{ "name": "input_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_3_reload", "role": "default" }} , 
 	{ "name": "input_8_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_8_reload", "role": "default" }} , 
 	{ "name": "input_13_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_13_reload", "role": "default" }} , 
 	{ "name": "sext_ln96_1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln96_1", "role": "default" }} , 
 	{ "name": "input_4_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_4_reload", "role": "default" }} , 
 	{ "name": "input_9_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_9_reload", "role": "default" }} , 
 	{ "name": "input_14_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_14_reload", "role": "default" }} , 
 	{ "name": "sext_ln96_2", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln96_2", "role": "default" }} , 
 	{ "name": "input_15_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_15_reload", "role": "default" }} , 
 	{ "name": "input_16_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_16_reload", "role": "default" }} , 
 	{ "name": "input_17_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_17_reload", "role": "default" }} , 
 	{ "name": "sext_ln96_3", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln96_3", "role": "default" }} , 
 	{ "name": "input_18_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_18_reload", "role": "default" }} , 
 	{ "name": "sext_ln96_4", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln96_4", "role": "default" }} , 
 	{ "name": "input_19_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_19_reload", "role": "default" }} , 
 	{ "name": "sext_ln96_5", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln96_5", "role": "default" }} , 
 	{ "name": "input_20_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_20_reload", "role": "default" }} , 
 	{ "name": "input_21_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_21_reload", "role": "default" }} , 
 	{ "name": "input_22_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_22_reload", "role": "default" }} , 
 	{ "name": "sext_ln96_6", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln96_6", "role": "default" }} , 
 	{ "name": "input_23_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_23_reload", "role": "default" }} , 
 	{ "name": "sext_ln96_7", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln96_7", "role": "default" }} , 
 	{ "name": "input_24_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_24_reload", "role": "default" }} , 
 	{ "name": "sext_ln96_8", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln96_8", "role": "default" }} , 
 	{ "name": "output_8_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "output_8_out", "role": "default" }} , 
 	{ "name": "output_8_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_8_out", "role": "ap_vld" }} , 
 	{ "name": "output_7_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "output_7_out", "role": "default" }} , 
 	{ "name": "output_7_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_7_out", "role": "ap_vld" }} , 
 	{ "name": "output_6_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "output_6_out", "role": "default" }} , 
 	{ "name": "output_6_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_6_out", "role": "ap_vld" }} , 
 	{ "name": "output_5_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "output_5_out", "role": "default" }} , 
 	{ "name": "output_5_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_5_out", "role": "ap_vld" }} , 
 	{ "name": "output_4_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "output_4_out", "role": "default" }} , 
 	{ "name": "output_4_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_4_out", "role": "ap_vld" }} , 
 	{ "name": "output_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "output_3_out", "role": "default" }} , 
 	{ "name": "output_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_3_out", "role": "ap_vld" }} , 
 	{ "name": "output_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "output_2_out", "role": "default" }} , 
 	{ "name": "output_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_2_out", "role": "ap_vld" }} , 
 	{ "name": "output_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "output_1_out", "role": "default" }} , 
 	{ "name": "output_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_1_out", "role": "ap_vld" }} , 
 	{ "name": "output_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "output_out", "role": "default" }} , 
 	{ "name": "output_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_out", "role": "ap_vld" }}  ]}

set ArgLastReadFirstWriteLatency {
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
		output_out {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "21", "Max" : "21"}
	, {"Name" : "Interval", "Min" : "10", "Max" : "10"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	input_reload { ap_none {  { input_reload in_data 0 16 } } }
	input_1_reload { ap_none {  { input_1_reload in_data 0 16 } } }
	input_2_reload { ap_none {  { input_2_reload in_data 0 16 } } }
	input_5_reload { ap_none {  { input_5_reload in_data 0 16 } } }
	input_6_reload { ap_none {  { input_6_reload in_data 0 16 } } }
	input_7_reload { ap_none {  { input_7_reload in_data 0 16 } } }
	input_10_reload { ap_none {  { input_10_reload in_data 0 16 } } }
	input_11_reload { ap_none {  { input_11_reload in_data 0 16 } } }
	input_12_reload { ap_none {  { input_12_reload in_data 0 16 } } }
	sext_ln96 { ap_none {  { sext_ln96 in_data 0 16 } } }
	shl_ln { ap_none {  { shl_ln in_data 0 24 } } }
	input_3_reload { ap_none {  { input_3_reload in_data 0 16 } } }
	input_8_reload { ap_none {  { input_8_reload in_data 0 16 } } }
	input_13_reload { ap_none {  { input_13_reload in_data 0 16 } } }
	sext_ln96_1 { ap_none {  { sext_ln96_1 in_data 0 16 } } }
	input_4_reload { ap_none {  { input_4_reload in_data 0 16 } } }
	input_9_reload { ap_none {  { input_9_reload in_data 0 16 } } }
	input_14_reload { ap_none {  { input_14_reload in_data 0 16 } } }
	sext_ln96_2 { ap_none {  { sext_ln96_2 in_data 0 16 } } }
	input_15_reload { ap_none {  { input_15_reload in_data 0 16 } } }
	input_16_reload { ap_none {  { input_16_reload in_data 0 16 } } }
	input_17_reload { ap_none {  { input_17_reload in_data 0 16 } } }
	sext_ln96_3 { ap_none {  { sext_ln96_3 in_data 0 16 } } }
	input_18_reload { ap_none {  { input_18_reload in_data 0 16 } } }
	sext_ln96_4 { ap_none {  { sext_ln96_4 in_data 0 16 } } }
	input_19_reload { ap_none {  { input_19_reload in_data 0 16 } } }
	sext_ln96_5 { ap_none {  { sext_ln96_5 in_data 0 16 } } }
	input_20_reload { ap_none {  { input_20_reload in_data 0 16 } } }
	input_21_reload { ap_none {  { input_21_reload in_data 0 16 } } }
	input_22_reload { ap_none {  { input_22_reload in_data 0 16 } } }
	sext_ln96_6 { ap_none {  { sext_ln96_6 in_data 0 16 } } }
	input_23_reload { ap_none {  { input_23_reload in_data 0 16 } } }
	sext_ln96_7 { ap_none {  { sext_ln96_7 in_data 0 16 } } }
	input_24_reload { ap_none {  { input_24_reload in_data 0 16 } } }
	sext_ln96_8 { ap_none {  { sext_ln96_8 in_data 0 16 } } }
	output_8_out { ap_vld {  { output_8_out out_data 1 16 }  { output_8_out_ap_vld out_vld 1 1 } } }
	output_7_out { ap_vld {  { output_7_out out_data 1 16 }  { output_7_out_ap_vld out_vld 1 1 } } }
	output_6_out { ap_vld {  { output_6_out out_data 1 16 }  { output_6_out_ap_vld out_vld 1 1 } } }
	output_5_out { ap_vld {  { output_5_out out_data 1 16 }  { output_5_out_ap_vld out_vld 1 1 } } }
	output_4_out { ap_vld {  { output_4_out out_data 1 16 }  { output_4_out_ap_vld out_vld 1 1 } } }
	output_3_out { ap_vld {  { output_3_out out_data 1 16 }  { output_3_out_ap_vld out_vld 1 1 } } }
	output_2_out { ap_vld {  { output_2_out out_data 1 16 }  { output_2_out_ap_vld out_vld 1 1 } } }
	output_1_out { ap_vld {  { output_1_out out_data 1 16 }  { output_1_out_ap_vld out_vld 1 1 } } }
	output_out { ap_vld {  { output_out out_data 1 16 }  { output_out_ap_vld out_vld 1 1 } } }
}
