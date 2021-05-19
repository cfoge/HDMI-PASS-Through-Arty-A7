-makelib ies_lib/xpm -sv \
  "C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../dvi_pass_verilog.gen/sources_1/ip/clk_wiz_125M_200M/clk_wiz_125M_200M_clk_wiz.v" \
  "../../../../dvi_pass_verilog.gen/sources_1/ip/clk_wiz_125M_200M/clk_wiz_125M_200M.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

