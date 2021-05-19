vlib work
vlib riviera

vlib riviera/xpm
vlib riviera/xil_defaultlib

vmap xpm riviera/xpm
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xpm  -sv2k12 "+incdir+../../../ipstatic" \
"C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../ipstatic" \
"../../../../dvi_pass_verilog.gen/sources_1/ip/clk_wiz_125M_200M/clk_wiz_125M_200M_clk_wiz.v" \
"../../../../dvi_pass_verilog.gen/sources_1/ip/clk_wiz_125M_200M/clk_wiz_125M_200M.v" \

vlog -work xil_defaultlib \
"glbl.v"
