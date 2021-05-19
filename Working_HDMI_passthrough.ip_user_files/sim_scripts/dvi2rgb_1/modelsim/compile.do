vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/xil_defaultlib

vmap xpm modelsim_lib/msim/xpm
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xpm  -incr -sv "+incdir+../../../../dvi_pass_verilog.gen/sources_1/ip/dvi2rgb_1/src/ila_pixclk/hdl/verilog" "+incdir+../../../../dvi_pass_verilog.gen/sources_1/ip/dvi2rgb_1/src/ila_refclk/hdl/verilog" \
"C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93 \
"C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../dvi_pass_verilog.gen/sources_1/ip/dvi2rgb_1/src/ila_pixclk/hdl/verilog" "+incdir+../../../../dvi_pass_verilog.gen/sources_1/ip/dvi2rgb_1/src/ila_refclk/hdl/verilog" \
"../../../../dvi_pass_verilog.gen/sources_1/ip/dvi2rgb_1/src/ila_pixclk/sim/ila_pixclk.v" \
"../../../../dvi_pass_verilog.gen/sources_1/ip/dvi2rgb_1/src/ila_refclk/sim/ila_refclk.v" \

vcom -work xil_defaultlib  -93 \
"../../../ipstatic/src/DVI_Constants.vhd" \
"../../../ipstatic/src/ChannelBond.vhd" \
"../../../ipstatic/src/SyncAsync.vhd" \
"../../../ipstatic/src/GlitchFilter.vhd" \
"../../../ipstatic/src/TWI_SlaveCtl.vhd" \
"../../../ipstatic/src/EEPROM_8b.vhd" \
"../../../ipstatic/src/InputSERDES.vhd" \
"../../../ipstatic/src/PhaseAlign.vhd" \
"../../../ipstatic/src/ResyncToBUFG.vhd" \
"../../../ipstatic/src/SyncAsyncReset.vhd" \
"../../../ipstatic/src/SyncBase.vhd" \
"../../../ipstatic/src/TMDS_Clocking.vhd" \
"../../../ipstatic/src/TMDS_Decoder.vhd" \
"../../../ipstatic/src/dvi2rgb.vhd" \
"../../../../dvi_pass_verilog.gen/sources_1/ip/dvi2rgb_1/sim/dvi2rgb_1.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

