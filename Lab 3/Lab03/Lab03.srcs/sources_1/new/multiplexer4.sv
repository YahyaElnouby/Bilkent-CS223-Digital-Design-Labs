`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/03/2019 01:15:08 PM
// Design Name: 
// Module Name: multiplexer4
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

module multiplexer4(input logic i0,i1,i2,i3,s0,s1, output logic y);

reg y;
wire w0,w1;

multiplexer2 m0 (i0,i1,s1,w0);
multiplexer2 m1 (i2,i3,s1,w1);
multiplexer2 m2 (w0,w1,s0,y);
endmodule
