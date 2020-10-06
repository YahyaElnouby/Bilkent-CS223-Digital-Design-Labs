`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/03/2019 01:21:13 PM
// Design Name: 
// Module Name: multiplexer4_tb
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


module multiplexer4_tb;
reg i0,i1,i2,i3,s0,s1;
wire y;

multiplexer4 uut (.i0(i0),.i1(i1),.i2(i2),.i3(i3),.s0(s0),.s1(s1),.y(y));
initial begin
#100

#10; i0=1; i1=0; i2=1; i3=0; s0=0; s1=0;
#10; i0=1; i1=0; i2=1; i3=0; s0=0; s1=1;
#10; i0=1; i1=0; i2=1; i3=0; s0=1; s1=0;
#10  i0=1; i1=0; i2=1; i3=0; s0=1; s1=1;
end

endmodule
