`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.06.2021 16:47:26
// Design Name: 
// Module Name: dff
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


module dff(
input [7:0] D, // Data input 
input clk, // clock input 
output [7:0] Q  // output Q 
);

reg [0:8] [7:0] FIFO; 
always@(posedge clk) begin
    FIFO[0:8] <= {D,FIFO[0:7]};
    
end




endmodule 