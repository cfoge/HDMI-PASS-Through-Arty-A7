`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: CFOGE
// Engineer: Robert D Jordan 
// 
// Create Date: 26.06.2021 17:36:42
// Design Name: 
// Module Name: colourise
// Project Name: 
//Target Devices: Arty Z7
// Tool Versions: Vivado 2020.2 
// Description: Coloursises video luma data, giving false colour
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module colourise(
        input [7:0] vid_pData_in, //luma data in
        input [2:0] mode,
        output [23:0] vid_pData_out //colour pixel data out
    );
    
    reg [23:0] vid;
    reg [7:0] red;
    reg [7:0] green;
    reg [7:0] blue;

    always @ (vid_pData_in, mode) begin
        if ((vid_pData_in >=0) && (vid_pData_in<=50))
            begin
            red = 252; //colour red
            green = 3;
            blue = 3;
            vid = {red, green, blue};
            end
            
        if ((vid_pData_in >=51) && (vid_pData_in<=100))
            begin
            red = 252; //colour yellow
            green = 240;
            blue = 3;
            vid = {red, green, blue};
            end
            
        if ((vid_pData_in >=101) && (vid_pData_in<=150))
            begin
            red = 3; //colour green
            green = 252;
            blue = 107;
            vid = {red, green, blue};
            end
            
        if ((vid_pData_in >=151) && (vid_pData_in<=200))
            begin
            red = 3; //colour blue
            green = 198;
            blue = 252;
            vid = {red, green, blue};
            end
            
        if ((vid_pData_in >=201) && (vid_pData_in<=256))
            begin
            red = 219; //colour purple
            green = 3;
            blue = 252;
            vid = {red, green, blue};
            end
                     
            
    end
    
    assign vid_pData_out = vid;
    
endmodule
