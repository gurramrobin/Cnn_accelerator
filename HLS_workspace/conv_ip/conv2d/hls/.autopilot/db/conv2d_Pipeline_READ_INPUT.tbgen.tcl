set moduleName conv2d_Pipeline_READ_INPUT
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
set C_modelName {conv2d_Pipeline_READ_INPUT}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ in_stream_V_data_V int 16 regular {axi_s 0 volatile  { in_stream Data } }  }
	{ in_stream_V_keep_V int 2 regular {axi_s 0 volatile  { in_stream Keep } }  }
	{ in_stream_V_strb_V int 2 regular {axi_s 0 volatile  { in_stream Strb } }  }
	{ in_stream_V_last_V int 1 regular {axi_s 0 volatile  { in_stream Last } }  }
	{ input_24_out int 16 regular {pointer 1}  }
	{ input_23_out int 16 regular {pointer 1}  }
	{ input_22_out int 16 regular {pointer 1}  }
	{ input_21_out int 16 regular {pointer 1}  }
	{ input_20_out int 16 regular {pointer 1}  }
	{ input_19_out int 16 regular {pointer 1}  }
	{ input_18_out int 16 regular {pointer 1}  }
	{ input_17_out int 16 regular {pointer 1}  }
	{ input_16_out int 16 regular {pointer 1}  }
	{ input_15_out int 16 regular {pointer 1}  }
	{ input_14_out int 16 regular {pointer 1}  }
	{ input_13_out int 16 regular {pointer 1}  }
	{ input_12_out int 16 regular {pointer 1}  }
	{ input_11_out int 16 regular {pointer 1}  }
	{ input_10_out int 16 regular {pointer 1}  }
	{ input_9_out int 16 regular {pointer 1}  }
	{ input_8_out int 16 regular {pointer 1}  }
	{ input_7_out int 16 regular {pointer 1}  }
	{ input_6_out int 16 regular {pointer 1}  }
	{ input_5_out int 16 regular {pointer 1}  }
	{ input_4_out int 16 regular {pointer 1}  }
	{ input_3_out int 16 regular {pointer 1}  }
	{ input_2_out int 16 regular {pointer 1}  }
	{ input_1_out int 16 regular {pointer 1}  }
	{ input_out int 16 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "in_stream_V_data_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_keep_V", "interface" : "axis", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_strb_V", "interface" : "axis", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "input_24_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_23_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_22_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_21_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_20_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_19_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_18_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_17_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_16_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_15_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_14_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_13_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_12_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_11_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_10_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_9_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_8_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_7_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_6_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_5_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_4_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_3_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_2_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_1_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "input_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 62
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ in_stream_TVALID sc_in sc_logic 1 invld 0 } 
	{ in_stream_TDATA sc_in sc_lv 16 signal 0 } 
	{ in_stream_TREADY sc_out sc_logic 1 inacc 3 } 
	{ in_stream_TKEEP sc_in sc_lv 2 signal 1 } 
	{ in_stream_TSTRB sc_in sc_lv 2 signal 2 } 
	{ in_stream_TLAST sc_in sc_lv 1 signal 3 } 
	{ input_24_out sc_out sc_lv 16 signal 4 } 
	{ input_24_out_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ input_23_out sc_out sc_lv 16 signal 5 } 
	{ input_23_out_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ input_22_out sc_out sc_lv 16 signal 6 } 
	{ input_22_out_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ input_21_out sc_out sc_lv 16 signal 7 } 
	{ input_21_out_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ input_20_out sc_out sc_lv 16 signal 8 } 
	{ input_20_out_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ input_19_out sc_out sc_lv 16 signal 9 } 
	{ input_19_out_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ input_18_out sc_out sc_lv 16 signal 10 } 
	{ input_18_out_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ input_17_out sc_out sc_lv 16 signal 11 } 
	{ input_17_out_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ input_16_out sc_out sc_lv 16 signal 12 } 
	{ input_16_out_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ input_15_out sc_out sc_lv 16 signal 13 } 
	{ input_15_out_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ input_14_out sc_out sc_lv 16 signal 14 } 
	{ input_14_out_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ input_13_out sc_out sc_lv 16 signal 15 } 
	{ input_13_out_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ input_12_out sc_out sc_lv 16 signal 16 } 
	{ input_12_out_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ input_11_out sc_out sc_lv 16 signal 17 } 
	{ input_11_out_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ input_10_out sc_out sc_lv 16 signal 18 } 
	{ input_10_out_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ input_9_out sc_out sc_lv 16 signal 19 } 
	{ input_9_out_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ input_8_out sc_out sc_lv 16 signal 20 } 
	{ input_8_out_ap_vld sc_out sc_logic 1 outvld 20 } 
	{ input_7_out sc_out sc_lv 16 signal 21 } 
	{ input_7_out_ap_vld sc_out sc_logic 1 outvld 21 } 
	{ input_6_out sc_out sc_lv 16 signal 22 } 
	{ input_6_out_ap_vld sc_out sc_logic 1 outvld 22 } 
	{ input_5_out sc_out sc_lv 16 signal 23 } 
	{ input_5_out_ap_vld sc_out sc_logic 1 outvld 23 } 
	{ input_4_out sc_out sc_lv 16 signal 24 } 
	{ input_4_out_ap_vld sc_out sc_logic 1 outvld 24 } 
	{ input_3_out sc_out sc_lv 16 signal 25 } 
	{ input_3_out_ap_vld sc_out sc_logic 1 outvld 25 } 
	{ input_2_out sc_out sc_lv 16 signal 26 } 
	{ input_2_out_ap_vld sc_out sc_logic 1 outvld 26 } 
	{ input_1_out sc_out sc_lv 16 signal 27 } 
	{ input_1_out_ap_vld sc_out sc_logic 1 outvld 27 } 
	{ input_out sc_out sc_lv 16 signal 28 } 
	{ input_out_ap_vld sc_out sc_logic 1 outvld 28 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "in_stream_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_stream_V_data_V", "role": "default" }} , 
 	{ "name": "in_stream_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "in_stream_V_data_V", "role": "default" }} , 
 	{ "name": "in_stream_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in_stream_V_last_V", "role": "default" }} , 
 	{ "name": "in_stream_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_stream_V_keep_V", "role": "default" }} , 
 	{ "name": "in_stream_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_stream_V_strb_V", "role": "default" }} , 
 	{ "name": "in_stream_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_stream_V_last_V", "role": "default" }} , 
 	{ "name": "input_24_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_24_out", "role": "default" }} , 
 	{ "name": "input_24_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_24_out", "role": "ap_vld" }} , 
 	{ "name": "input_23_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_23_out", "role": "default" }} , 
 	{ "name": "input_23_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_23_out", "role": "ap_vld" }} , 
 	{ "name": "input_22_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_22_out", "role": "default" }} , 
 	{ "name": "input_22_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_22_out", "role": "ap_vld" }} , 
 	{ "name": "input_21_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_21_out", "role": "default" }} , 
 	{ "name": "input_21_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_21_out", "role": "ap_vld" }} , 
 	{ "name": "input_20_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_20_out", "role": "default" }} , 
 	{ "name": "input_20_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_20_out", "role": "ap_vld" }} , 
 	{ "name": "input_19_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_19_out", "role": "default" }} , 
 	{ "name": "input_19_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_19_out", "role": "ap_vld" }} , 
 	{ "name": "input_18_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_18_out", "role": "default" }} , 
 	{ "name": "input_18_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_18_out", "role": "ap_vld" }} , 
 	{ "name": "input_17_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_17_out", "role": "default" }} , 
 	{ "name": "input_17_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_17_out", "role": "ap_vld" }} , 
 	{ "name": "input_16_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_16_out", "role": "default" }} , 
 	{ "name": "input_16_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_16_out", "role": "ap_vld" }} , 
 	{ "name": "input_15_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_15_out", "role": "default" }} , 
 	{ "name": "input_15_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_15_out", "role": "ap_vld" }} , 
 	{ "name": "input_14_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_14_out", "role": "default" }} , 
 	{ "name": "input_14_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_14_out", "role": "ap_vld" }} , 
 	{ "name": "input_13_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_13_out", "role": "default" }} , 
 	{ "name": "input_13_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_13_out", "role": "ap_vld" }} , 
 	{ "name": "input_12_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_12_out", "role": "default" }} , 
 	{ "name": "input_12_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_12_out", "role": "ap_vld" }} , 
 	{ "name": "input_11_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_11_out", "role": "default" }} , 
 	{ "name": "input_11_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_11_out", "role": "ap_vld" }} , 
 	{ "name": "input_10_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_10_out", "role": "default" }} , 
 	{ "name": "input_10_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_10_out", "role": "ap_vld" }} , 
 	{ "name": "input_9_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_9_out", "role": "default" }} , 
 	{ "name": "input_9_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_9_out", "role": "ap_vld" }} , 
 	{ "name": "input_8_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_8_out", "role": "default" }} , 
 	{ "name": "input_8_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_8_out", "role": "ap_vld" }} , 
 	{ "name": "input_7_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_7_out", "role": "default" }} , 
 	{ "name": "input_7_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_7_out", "role": "ap_vld" }} , 
 	{ "name": "input_6_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_6_out", "role": "default" }} , 
 	{ "name": "input_6_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_6_out", "role": "ap_vld" }} , 
 	{ "name": "input_5_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_5_out", "role": "default" }} , 
 	{ "name": "input_5_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_5_out", "role": "ap_vld" }} , 
 	{ "name": "input_4_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_4_out", "role": "default" }} , 
 	{ "name": "input_4_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_4_out", "role": "ap_vld" }} , 
 	{ "name": "input_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_3_out", "role": "default" }} , 
 	{ "name": "input_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_3_out", "role": "ap_vld" }} , 
 	{ "name": "input_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_2_out", "role": "default" }} , 
 	{ "name": "input_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_2_out", "role": "ap_vld" }} , 
 	{ "name": "input_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_1_out", "role": "default" }} , 
 	{ "name": "input_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_1_out", "role": "ap_vld" }} , 
 	{ "name": "input_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_out", "role": "default" }} , 
 	{ "name": "input_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "input_out", "role": "ap_vld" }}  ]}

set ArgLastReadFirstWriteLatency {
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
		input_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "27", "Max" : "27"}
	, {"Name" : "Interval", "Min" : "26", "Max" : "26"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	in_stream_V_data_V { axis {  { in_stream_TVALID in_vld 0 1 }  { in_stream_TDATA in_data 0 16 } } }
	in_stream_V_keep_V { axis {  { in_stream_TKEEP in_data 0 2 } } }
	in_stream_V_strb_V { axis {  { in_stream_TSTRB in_data 0 2 } } }
	in_stream_V_last_V { axis {  { in_stream_TREADY in_acc 1 1 }  { in_stream_TLAST in_data 0 1 } } }
	input_24_out { ap_vld {  { input_24_out out_data 1 16 }  { input_24_out_ap_vld out_vld 1 1 } } }
	input_23_out { ap_vld {  { input_23_out out_data 1 16 }  { input_23_out_ap_vld out_vld 1 1 } } }
	input_22_out { ap_vld {  { input_22_out out_data 1 16 }  { input_22_out_ap_vld out_vld 1 1 } } }
	input_21_out { ap_vld {  { input_21_out out_data 1 16 }  { input_21_out_ap_vld out_vld 1 1 } } }
	input_20_out { ap_vld {  { input_20_out out_data 1 16 }  { input_20_out_ap_vld out_vld 1 1 } } }
	input_19_out { ap_vld {  { input_19_out out_data 1 16 }  { input_19_out_ap_vld out_vld 1 1 } } }
	input_18_out { ap_vld {  { input_18_out out_data 1 16 }  { input_18_out_ap_vld out_vld 1 1 } } }
	input_17_out { ap_vld {  { input_17_out out_data 1 16 }  { input_17_out_ap_vld out_vld 1 1 } } }
	input_16_out { ap_vld {  { input_16_out out_data 1 16 }  { input_16_out_ap_vld out_vld 1 1 } } }
	input_15_out { ap_vld {  { input_15_out out_data 1 16 }  { input_15_out_ap_vld out_vld 1 1 } } }
	input_14_out { ap_vld {  { input_14_out out_data 1 16 }  { input_14_out_ap_vld out_vld 1 1 } } }
	input_13_out { ap_vld {  { input_13_out out_data 1 16 }  { input_13_out_ap_vld out_vld 1 1 } } }
	input_12_out { ap_vld {  { input_12_out out_data 1 16 }  { input_12_out_ap_vld out_vld 1 1 } } }
	input_11_out { ap_vld {  { input_11_out out_data 1 16 }  { input_11_out_ap_vld out_vld 1 1 } } }
	input_10_out { ap_vld {  { input_10_out out_data 1 16 }  { input_10_out_ap_vld out_vld 1 1 } } }
	input_9_out { ap_vld {  { input_9_out out_data 1 16 }  { input_9_out_ap_vld out_vld 1 1 } } }
	input_8_out { ap_vld {  { input_8_out out_data 1 16 }  { input_8_out_ap_vld out_vld 1 1 } } }
	input_7_out { ap_vld {  { input_7_out out_data 1 16 }  { input_7_out_ap_vld out_vld 1 1 } } }
	input_6_out { ap_vld {  { input_6_out out_data 1 16 }  { input_6_out_ap_vld out_vld 1 1 } } }
	input_5_out { ap_vld {  { input_5_out out_data 1 16 }  { input_5_out_ap_vld out_vld 1 1 } } }
	input_4_out { ap_vld {  { input_4_out out_data 1 16 }  { input_4_out_ap_vld out_vld 1 1 } } }
	input_3_out { ap_vld {  { input_3_out out_data 1 16 }  { input_3_out_ap_vld out_vld 1 1 } } }
	input_2_out { ap_vld {  { input_2_out out_data 1 16 }  { input_2_out_ap_vld out_vld 1 1 } } }
	input_1_out { ap_vld {  { input_1_out out_data 1 16 }  { input_1_out_ap_vld out_vld 1 1 } } }
	input_out { ap_vld {  { input_out out_data 1 16 }  { input_out_ap_vld out_vld 1 1 } } }
}
