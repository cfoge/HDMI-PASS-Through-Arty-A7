set_property SRC_FILE_INFO {cfile:c:/Users/robdj/Desktop/hdmi_pass_through_ZyboZ7-10-master/dvipass/dvipass.gen/sources_1/ip/clk_wiz_125M_200M/clk_wiz_125M_200M.xdc rfile:../../../dvipass.gen/sources_1/ip/clk_wiz_125M_200M/clk_wiz_125M_200M.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.08
