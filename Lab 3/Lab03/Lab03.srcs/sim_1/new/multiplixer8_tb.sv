`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/03/2019 04:32:39 PM
// Design Name: 
// Module Name: multiplixer8_tb
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


module multiplixer8_tb;

reg i0,i1,i2,i3,i4,i5,i6,i7,s0,s1,s2;
wire y;

//istnatiate
multiplexer8 uut(.i0(i0),.i1(i1),.i2(i2),.i3(i3),.i4(i4),.i5(i5),.i6(i6),.i7(i7),.s0(s0),.s1(s1),.s2(s2),.y(y));

initial begin
#100

#10; i0=0; i1=1; i2=0; i3=1; i4=1; i5=0; i6=1; i7=0; s0=0; s1=0; s2=0;
#10; i0=0; i1=1; i2=0; i3=1; i4=1; i5=0; i6=1; i7=0; s0=0; s1=0; s2=1;
#10; i0=0; i1=1; i2=0; i3=1; i4=1; i5=0; i6=1; i7=0; s0=0; s1=1; s2=0;
#10; i0=0; i1=1; i2=0; i3=1; i4=1; i5=0; i6=1; i7=0; s0=0; s1=1; s2=1;
#10; i0=0; i1=1; i2=0; i3=1; i4=1; i5=0; i6=1; i7=0; s0=1; s1=0; s2=0;
#10; i0=0; i1=1; i2=0; i3=1; i4=1; i5=0; i6=1; i7=0; s0=1; s1=0; s2=1;
#10; i0=0; i1=1; i2=0; i3=1; i4=1; i5=0; i6=1; i7=0; s0=1; s1=1; s2=0;
#10; i0=0; i1=1; i2=0; i3=1; i4=1; i5=0; i6=1; i7=0; s0=1; s1=1; s2=1;

end

endmodule
