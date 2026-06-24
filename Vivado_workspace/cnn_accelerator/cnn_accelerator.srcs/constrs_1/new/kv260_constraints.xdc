create_clock -period 5.000 -name sys_clk [get_ports sys_clk]
set_property PACKAGE_PIN H12 [get_ports sys_clk]
set_property IOSTANDARD LVCMOS33 [get_ports sys_clk]