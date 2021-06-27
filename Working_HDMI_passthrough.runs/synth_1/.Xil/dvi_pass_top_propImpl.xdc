set_property SRC_FILE_INFO {cfile:C:/Users/robdj/Documents/RMIT_2021/CAP_STONE/DVI_PASSTHROUGH_CAPS/Working_HDMI_passthrough/Working_HDMI_passthrough.srcs/constrs_1/imports/digilent-xdc-master/Arty-Z7-20-Master.xdc rfile:../../../Working_HDMI_passthrough.srcs/constrs_1/imports/digilent-xdc-master/Arty-Z7-20-Master.xdc id:1} [current_design]
set_property src_info {type:XDC file:1 line:7 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN H16 IOSTANDARD LVCMOS33} [get_ports sysclk_i]
set_property src_info {type:XDC file:1 line:13 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN M20 IOSTANDARD LVCMOS33} [get_ports async_reset_i];
set_property src_info {type:XDC file:1 line:14 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN M19 IOSTANDARD LVCMOS33} [get_ports sw2];
set_property src_info {type:XDC file:1 line:25 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN R14 IOSTANDARD LVCMOS33} [get_ports led0]
set_property src_info {type:XDC file:1 line:26 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN P14 IOSTANDARD LVCMOS33} [get_ports led1]
set_property src_info {type:XDC file:1 line:27 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN N16 IOSTANDARD LVCMOS33} [get_ports led2]
set_property src_info {type:XDC file:1 line:28 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN M14 IOSTANDARD LVCMOS33} [get_ports led3]
set_property src_info {type:XDC file:1 line:31 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN D19 IOSTANDARD LVCMOS33} [get_ports btn0]
set_property src_info {type:XDC file:1 line:32 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN D20 IOSTANDARD LVCMOS33} [get_ports btn1]
set_property src_info {type:XDC file:1 line:33 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN L20 IOSTANDARD LVCMOS33} [get_ports btn2]
set_property src_info {type:XDC file:1 line:34 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN L19    IOSTANDARD LVCMOS33 } [get_ports { btn3 }]; #IO_L9P_T1_DQS_AD3P_35 Sch=BTN3
set_property src_info {type:XDC file:1 line:64 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN H17   IOSTANDARD LVCMOS33 } [get_ports { hdmi_rx_cec }]; #IO_L13N_T2_MRCC_35 Sch=HDMI_RX_CEC
set_property src_info {type:XDC file:1 line:65 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN P19   IOSTANDARD TMDS_33  } [get_ports { tmds_rx_clk_n_i }]; #IO_L13N_T2_MRCC_34 Sch=HDMI_RX_CLK_N
set_property src_info {type:XDC file:1 line:66 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN N18   IOSTANDARD TMDS_33  } [get_ports { tmds_rx_clk_p_i }]; #IO_L13P_T2_MRCC_34 Sch=HDMI_RX_CLK_P
set_property src_info {type:XDC file:1 line:67 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN W20   IOSTANDARD TMDS_33  } [get_ports { tmds_rx_data_n_i[0] }]; #IO_L16N_T2_34 Sch=HDMI_RX_D0_N
set_property src_info {type:XDC file:1 line:68 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN V20   IOSTANDARD TMDS_33  } [get_ports { tmds_rx_data_p_i[0] }]; #IO_L16P_T2_34 Sch=HDMI_RX_D0_P
set_property src_info {type:XDC file:1 line:69 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN U20   IOSTANDARD TMDS_33  } [get_ports { tmds_rx_data_n_i[1] }]; #IO_L15N_T2_DQS_34 Sch=HDMI_RX_D1_N
set_property src_info {type:XDC file:1 line:70 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN T20   IOSTANDARD TMDS_33  } [get_ports { tmds_rx_data_p_i[1] }]; #IO_L15P_T2_DQS_34 Sch=HDMI_RX_D1_P
set_property src_info {type:XDC file:1 line:71 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN P20   IOSTANDARD TMDS_33  } [get_ports { tmds_rx_data_n_i[2] }]; #IO_L14N_T2_SRCC_34 Sch=HDMI_RX_D2_N
set_property src_info {type:XDC file:1 line:72 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN N20   IOSTANDARD TMDS_33  } [get_ports { tmds_rx_data_p_i[2] }]; #IO_L14P_T2_SRCC_34 Sch=HDMI_RX_D2_P
set_property src_info {type:XDC file:1 line:73 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN T19   IOSTANDARD LVCMOS33 } [get_ports { hdmi_rx_hpd_o }]; #IO_25_34 Sch=HDMI_RX_HPD
set_property src_info {type:XDC file:1 line:74 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN U14   IOSTANDARD LVCMOS33 } [get_ports { scl_io }]; #IO_L11P_T1_SRCC_34 Sch=HDMI_RX_SCL
set_property src_info {type:XDC file:1 line:75 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN U15   IOSTANDARD LVCMOS33 } [get_ports { sda_io }]; #IO_L11N_T1_SRCC_34 Sch=HDMI_RX_SDA
set_property src_info {type:XDC file:1 line:78 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN G15   IOSTANDARD LVCMOS33 } [get_ports { hdmi_tx_cec }]; #IO_L19N_T3_VREF_35 Sch=HDMI_TX_CEC
set_property src_info {type:XDC file:1 line:79 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN L17   IOSTANDARD TMDS_33  } [get_ports { tmds_tx_clk_n_o }]; #IO_L11N_T1_SRCC_35 Sch=HDMI_TX_CLK_N
set_property src_info {type:XDC file:1 line:80 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN L16   IOSTANDARD TMDS_33  } [get_ports { tmds_tx_clk_p_o }]; #IO_L11P_T1_SRCC_35 Sch=HDMI_TX_CLK_P
set_property src_info {type:XDC file:1 line:81 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN K18   IOSTANDARD TMDS_33  } [get_ports { tmds_tx_data_n_o[0] }]; #IO_L12N_T1_MRCC_35 Sch=HDMI_TX_D0_N
set_property src_info {type:XDC file:1 line:82 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN K17   IOSTANDARD TMDS_33  } [get_ports { tmds_tx_data_p_o[0] }]; #IO_L12P_T1_MRCC_35 Sch=HDMI_TX_D0_P
set_property src_info {type:XDC file:1 line:83 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN J19   IOSTANDARD TMDS_33  } [get_ports { tmds_tx_data_n_o[1] }]; #IO_L10N_T1_AD11N_35 Sch=HDMI_TX_D1_N
set_property src_info {type:XDC file:1 line:84 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN K19   IOSTANDARD TMDS_33  } [get_ports { tmds_tx_data_p_o[1] }]; #IO_L10P_T1_AD11P_35 Sch=HDMI_TX_D1_P
set_property src_info {type:XDC file:1 line:85 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN H18   IOSTANDARD TMDS_33  } [get_ports { tmds_tx_data_n_o[2] }]; #IO_L14N_T2_AD4N_SRCC_35 Sch=HDMI_TX_D2_N
set_property src_info {type:XDC file:1 line:86 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN J18   IOSTANDARD TMDS_33  } [get_ports { tmds_tx_data_p_o[2] }]; #IO_L14P_T2_AD4P_SRCC_35 Sch=HDMI_TX_D2_P
set_property src_info {type:XDC file:1 line:87 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN R19   IOSTANDARD LVCMOS33 } [get_ports { hdmi_tx_hpdn }]; #IO_0_34 Sch=HDMI_TX_HDPN
set_property src_info {type:XDC file:1 line:88 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN M17   IOSTANDARD LVCMOS33 } [get_ports { hdmi_tx_scl }]; #IO_L8P_T1_AD10P_35 Sch=HDMI_TX_SCL
set_property src_info {type:XDC file:1 line:89 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN M18   IOSTANDARD LVCMOS33 } [get_ports { hdmi_tx_sda }]; #IO_L8N_T1_AD10N_35 Sch=HDMI_TX_SDA
set_property src_info {type:XDC file:1 line:189 export:INPUT save:INPUT read:READ} [current_design]
set_property MARK_DEBUG false [get_nets led2_OBUF]
set_property src_info {type:XDC file:1 line:190 export:INPUT save:INPUT read:READ} [current_design]
set_property MARK_DEBUG true [get_nets {led_control/fade_up_down/cnt[0]}]
set_property src_info {type:XDC file:1 line:191 export:INPUT save:INPUT read:READ} [current_design]
set_property MARK_DEBUG true [get_nets {led_control/fade_up_down/cnt[1]}]
set_property src_info {type:XDC file:1 line:192 export:INPUT save:INPUT read:READ} [current_design]
set_property MARK_DEBUG true [get_nets {led_control/fade_up_down/cnt[2]}]
set_property src_info {type:XDC file:1 line:193 export:INPUT save:INPUT read:READ} [current_design]
set_property MARK_DEBUG true [get_nets {led_control/fade_up_down/cnt[3]}]
set_property src_info {type:XDC file:1 line:194 export:INPUT save:INPUT read:READ} [current_design]
set_property MARK_DEBUG true [get_nets {led_control/fade_up_down/cnt[4]}]
set_property src_info {type:XDC file:1 line:195 export:INPUT save:INPUT read:READ} [current_design]
set_property MARK_DEBUG true [get_nets {led_control/fade_up_down/cnt[5]}]
set_property src_info {type:XDC file:1 line:196 export:INPUT save:INPUT read:READ} [current_design]
set_property MARK_DEBUG true [get_nets {led_control/fade_up_down/cnt[6]}]
set_property src_info {type:XDC file:1 line:197 export:INPUT save:INPUT read:READ} [current_design]
set_property MARK_DEBUG true [get_nets {led_control/fade_up_down/cnt[7]}]
