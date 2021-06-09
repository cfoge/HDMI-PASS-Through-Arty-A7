`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.06.2021 15:09:41
// Design Name: 
// Module Name: bus_delay_shiftreg_tb
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


module bus_delay_shiftreg_tb(

    );
    
    reg clk;
    reg [7:0] inputbus;
    wire [7:0] outputbus;
    
      // Instantiate design (16-bit shift register) by passing MSB and connect with TB signals
   bus_delay_shiftreg UUT  (  .inputbus (inputbus),
                             .clk (clk),
                             .outputbus (outputbus));
   
   // Generate clock time period = 20ns, freq => 50MHz
   always #10 clk = ~clk;
 
   // Initialize variables to default values at time 0
   initial begin
      clk <= 0;
      inputbus <=0;
      
   end  
   
   // Drive main stimulus to the design to verify if this works
   initial begin       
  
   repeat (2) @ (posedge clk)
         inputbus <= 8'b11111111;
         

   inputbus <= 8'b00000000;
   

   end           
                             
                             
endmodule
