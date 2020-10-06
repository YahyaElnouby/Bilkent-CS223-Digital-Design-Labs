`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/03/2019 04:01:36 PM
// Design Name: 
// Module Name: multiplexer8
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


module multiplexer8(
input logic i0,i1,i2,i3,i4,i5,i6,i7,s0,s1,s2,
output logic y );

reg y;
wire w0,w1,w2,w3,w4;

multiplexer4 m0 (i0,i1,i2,i3,s1,s0,w0);
multiplexer4 m1 (i4,i5,i6,i7,s1,s0,w1);
not          n  (w2,s2);
and          a0 (w3,w0,w2);
and          a1 (w4,w1,s2);
or           o  (y,w3,w4);


    
    
endmodule
