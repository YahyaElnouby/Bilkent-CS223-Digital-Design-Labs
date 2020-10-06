`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/03/2019 06:33:09 PM
// Design Name: 
// Module Name: functionMux_tb
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


module functionMux_tb;

reg a, b, c, d;

wire y;

//instantiate

functionMux uut (.a(a),.b(b),.c(c),.d(d),.y(y));

initial begin
#100

#10; a=0; b=0; c=0; d=0;
#10; a=0; b=0; c=0; d=1;
#10; a=0; b=0; c=1; d=0;
#10; a=0; b=0; c=1; d=1;
#10; a=0; b=1; c=0; d=0;
#10; a=0; b=1; c=0; d=1;
#10; a=0; b=1; c=1; d=0;
#10; a=0; b=1; c=1; d=1;
#10; a=1; b=0; c=0; d=0;
#10; a=1; b=0; c=0; d=1;
#10; a=1; b=0; c=1; d=0;
#10; a=1; b=0; c=1; d=1;
#10; a=1; b=1; c=0; d=0;
#10; a=1; b=1; c=0; d=1;
#10; a=1; b=1; c=1; d=0;
#10; a=1; b=1; c=1; d=1;




end



endmodule
