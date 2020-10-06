`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/03/2019 07:30:45 PM
// Design Name: 
// Module Name: mux4DataFlow_tb
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


module mux4DataFlow_tb;

reg i0,i1,i2,i3,s0,s1;
wire y;

multiplexer4DataFlow uut (.i0(i0),.i1(i1),.i2(i2),.i3(i3),.s1(s1),.s0(s0),.y(y));
initial begin
#100

#10; i0=1; i1=0; i2=1; i3=0; s0=0; s1=0;
#10; i0=1; i1=0; i2=1; i3=0; s0=0; s1=1;
#10; i0=1; i1=0; i2=1; i3=0; s0=1; s1=0;
#10  i0=1; i1=0; i2=1; i3=0; s0=1; s1=1;
end

endmodule
