`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.05.2021 13:19:52
// Design Name: 
// Module Name: rgb_invert
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module rgb_invert(
        input [23:0] vid_pData_in,
        input [3:0] mode,
        output [23:0] vid_pData_out
    );
    
    reg [23:0] vid;
    wire [7:0] red =  vid_pData_in[7:0];
    wire [7:0] green =  vid_pData_in[15:8];
    wire [7:0] blue =  vid_pData_in[23:16];
    
    always @ (vid_pData_in, mode) begin
        case (mode)
            3'b000  :
                begin
                     vid = {blue,green,red};
                end
            3'b001  :
                begin
                     vid = {~blue,~green,~red};
                end
            3'b010  :
                begin
                     vid = {green,red, blue};
                end
            3'b011  :
                begin
                     vid = {blue,green,red};
                end
            3'b100  :
                begin
                     vid = {green^red,red, blue^green};
                end
            3'b101  :
                begin
                     vid = {~red,red&green, blue^green};
                end
            3'b111  :
                begin
                     vid = {red,~red, blue};
                end
                
            
            default :  
                begin
                     vid = {blue,green,red};
                end
            
        endcase
        
        
    end
    
    assign vid_pData_out = vid;
    
endmodule
