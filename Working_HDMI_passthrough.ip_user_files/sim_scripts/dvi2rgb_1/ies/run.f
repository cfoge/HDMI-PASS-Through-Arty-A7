-makelib ies_lib/xpm -sv \
  "C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../dvi_pass_verilog.gen/sources_1/ip/dvi2rgb_1/src/ila_pixclk/sim/ila_pixclk.v" \
  "../../../../dvi_pass_verilog.gen/sources_1/ip/dvi2rgb_1/src/ila_refclk/sim/ila_refclk.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
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
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

