`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/03/2019 06:24:24 PM
// Design Name: 
// Module Name: functionMux
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


module functionMux(
input logic a,b,c,d,
output logic y);

wire dnot, w1, w2, w3;
//not n0 (dnot, d);
decoder2to4 decoder(d, 1, w1, dnot,w2,w3);
multiplexer8 m0 (dnot, dnot, d, dnot, dnot,dnot,1 ,d, c, b, a, y);

endmodule
