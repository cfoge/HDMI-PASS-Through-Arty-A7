`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: CFOGE
// Engineer: Robert D Jordan
// 
// Create Date: 18.05.2021 09:08:56
// Design Name: DVI pass thorugh
// Module Name: dvi_pass_top
// Project Name: DVI passthrough example
// Target Devices: ARTY A7 20
// Tool Versions: Vivado 2020.2
// Description: 
// Any HDMI source is fed into the HDMI Rx port of the Arty z7-20,  
// passed through the dvi2rgb and rgb2dvi IP cores and is sent out 
// un-altered through the HDMI Tx port. 720p res
// 
// Dependencies: 
// N/A
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module dvi_pass_top(
        input sysclk_i     , // 125MH System Clock Input
		input async_reset_i    , // Reset switch on board
		input btn0,btn1,btn2,btn3, // switches and buttons
		// HDMI In/Rx
		input tmds_rx_clk_p_i  ,
        input tmds_rx_clk_n_i  ,
        input [2:0] tmds_rx_data_p_i ,
        input [2:0] tmds_rx_data_n_i ,
		output  hdmi_rx_hpd_o , // HPD must be driven, this is the hot plug detect
		// I2C (DDC)
		inout sda_io       ,
		inout scl_io     ,
		// HDMI Out/Tx
        output tmds_tx_clk_p_o ,
        output tmds_tx_clk_n_o ,
        output [2:0] tmds_tx_data_p_o ,
        output [2:0] tmds_tx_data_n_o 
    );


///// Registers and wires
wire [23:0] vid_pData       ; //vid data from DVI2RGB
wire [23:0] vid_pData_fx       ; //Post fx vid data
wire vid_pVDE           ;
wire vid_pHSync        ;
wire vid_pVSync         ;
wire pixelclk           ;
wire locked             ;
wire clk_200M           ;
wire pixel_clk_sync_rst ;

wire sda_i             ;
wire sda_o             ;
wire sda_t             ;
wire scl_i              ;
wire scl_o             ;
wire scl_t             ;

///Asign
assign hdmi_rx_hpd_o = 1'b1 ;

////Sub modules
 clk_wiz_125M_200M clkwiz_inst 
    ( 
 
   .clk_out1(clk_200M),
               
   .reset(async_reset_i),
   .locked(locked),
  
   .clk_in1(sysclk_i)
 );

  dvi2rgb_1 dvi2rgb_inst
  (
    .TMDS_Clk_p(tmds_rx_clk_p_i),
    .TMDS_Clk_n(tmds_rx_clk_n_i),
    .TMDS_Data_p(tmds_rx_data_p_i),
    .TMDS_Data_n(tmds_rx_data_n_i),
    .RefClk(clk_200M),
    .aRst(async_reset_i), //Active high asynchronous RefClk reset
    .vid_pData(vid_pData),
    .vid_pVDE(vid_pVDE),
    .vid_pHSync(vid_pHSync),
    .vid_pVSync(vid_pVSync),
    .PixelClk(pixelclk),
    .aPixelClkLckd(open), 
    .SDA_I(sda_i),
    .SDA_O(sda_o),
    .SDA_T(sda_t),
    .SCL_I(scl_i),
    .SCL_O(scl_o),
    .SCL_T(scl_t),
    .pRst(0)   // Active high PixelClk synchronous reset
  );
  
 IOBUF     #(
     .DRIVE(12),
     .IOSTANDARD("DEFAULT"),
     .SLEW("SLOW")
	) 
	SDA_IOBUF_inst
	(
    .O(sda_i), // Buffer output
    .IO(sda_io), // Buffer inout port(connect directly to top-level port)
    .I(sda_o),  // Bufferinput
    .T(sda_t)   // 3-state enable input,high=input,low=output
    ); 

 IOBUF
  #(
     .DRIVE(12),
     .IOSTANDARD("DEFAULT"),
     .SLEW("SLOW")
	) 
  SCL_IOBUF_inst
    (
    .O(scl_i),  // Buffer output
    .IO(scl_io), // Buffer inout port(connect directly to top-level port)
    .I(scl_o),  // Buffer input
    .T(scl_t)   // 3-state enable input,high=input,low=output
    ); 
    
  rgb2dvi_0 rgb2dvi_inst
 (
    .TMDS_Clk_p(tmds_tx_clk_p_o),
    .TMDS_Clk_n(tmds_tx_clk_n_o),
    .TMDS_Data_p(tmds_tx_data_p_o),
    .TMDS_Data_n(tmds_tx_data_n_o),
    .aRst(async_reset_i),
    .vid_pData(vid_pData_fx),
    .vid_pVDE(vid_pVDE),
    .vid_pHSync(vid_pHSync),
    .vid_pVSync(vid_pVSync),
    .PixelClk(pixelclk)
  );
  
  //fx module
  rgb_invert rgb_invert_inist(
        .vid_pData_in(vid_pData),
        .mode({btn3,btn2,btn1,btn0}),
        .vid_pData_out(vid_pData_fx),
        .pxclk(pixelclk)
    );
  
  //


endmodule