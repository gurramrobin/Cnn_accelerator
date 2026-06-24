set ModuleHierarchy {[{
"Name" : "conv2d", "RefName" : "conv2d","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_conv2d_Pipeline_READ_INPUT_fu_252", "RefName" : "conv2d_Pipeline_READ_INPUT","ID" : "1","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "READ_INPUT","RefName" : "READ_INPUT","ID" : "2","Type" : "pipeline"},]},
	{"Name" : "grp_conv2d_Pipeline_READ_WEIGHTS_fu_289", "RefName" : "conv2d_Pipeline_READ_WEIGHTS","ID" : "3","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "READ_WEIGHTS","RefName" : "READ_WEIGHTS","ID" : "4","Type" : "pipeline"},]},
	{"Name" : "grp_conv2d_Pipeline_CONV_OR_CONV_OC2_fu_310", "RefName" : "conv2d_Pipeline_CONV_OR_CONV_OC2","ID" : "5","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "CONV_OR_CONV_OC2","RefName" : "CONV_OR_CONV_OC2","ID" : "6","Type" : "pipeline"},]},
	{"Name" : "grp_conv2d_Pipeline_WRITE_OUTPUT_fu_358", "RefName" : "conv2d_Pipeline_WRITE_OUTPUT","ID" : "7","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "WRITE_OUTPUT","RefName" : "WRITE_OUTPUT","ID" : "8","Type" : "pipeline"},]},]
}]}