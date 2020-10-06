`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/03/2019 01:13:13 PM
// Design Name: 
// Module Name: multiplexer2
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


module multiplexer2(input logic i0,i1,s, output logic d);
reg d; 
always @(i1, i0, s) begin 
if(s==0) d <= i0; 
else d <= i1;
 end
endmodule
