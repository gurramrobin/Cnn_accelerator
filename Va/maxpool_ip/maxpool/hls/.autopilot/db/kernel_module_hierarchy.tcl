set ModuleHierarchy {[{
"Name" : "maxpool", "RefName" : "maxpool","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_maxpool_Pipeline_READ_INPUT_fu_132", "RefName" : "maxpool_Pipeline_READ_INPUT","ID" : "1","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "READ_INPUT","RefName" : "READ_INPUT","ID" : "2","Type" : "pipeline"},]},
	{"Name" : "grp_maxpool_Pipeline_POOL_OR_POOL_OC_fu_160", "RefName" : "maxpool_Pipeline_POOL_OR_POOL_OC","ID" : "3","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "POOL_OR_POOL_OC","RefName" : "POOL_OR_POOL_OC","ID" : "4","Type" : "pipeline"},]},
	{"Name" : "grp_maxpool_Pipeline_WRITE_OUTPUT_fu_184", "RefName" : "maxpool_Pipeline_WRITE_OUTPUT","ID" : "5","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "WRITE_OUTPUT","RefName" : "WRITE_OUTPUT","ID" : "6","Type" : "pipeline"},]},]
}]}