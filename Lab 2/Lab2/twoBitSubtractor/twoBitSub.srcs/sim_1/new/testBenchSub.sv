`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2019 12:05:22 AM
// Design Name: 
// Module Name: testBenchSub
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


module testBenchSub;
// input
  reg a, b, c, d; reg bin;
// outputs
  wire d0, d1; wire bout;
// Instantiate 

  twoBitSub uut(.a(a), .b(b), .c(c),.d(d), .bin(bin), .d0(d0), .d1(d1), .bout(bout));
initial begin
  #100;
  #10 a=0;  b=0; c=0;  d=0; bin=0;
  #10 a=0;  b=0; c=0;  d=1; bin=0;
  #10 a=0;  b=0; c=1;  d=0; bin=0;
  #10 a=0;  b=0; c=1;  d=1; bin=0;
  #10 a=0;  b=1; c=0;  d=0; bin=0;
  #10 a=0;  b=1; c=0;  d=1; bin=0;
  #10 a=0;  b=1; c=1;  d=0; bin=0;
  #10 a=0;  b=1; c=1;  d=1; bin=0;
  #10 a=1;  b=1; c=0;  d=0; bin=0;
  #10 a=1;  b=0; c=0;  d=1; bin=0;
  #10 a=1;  b=0; c=1;  d=0; bin=0;
  #10 a=1;  b=0; c=1;  d=1; bin=0;
  #10 a=1;  b=1; c=0;  d=0; bin=0;
  #10 a=1;  b=1; c=0;  d=1; bin=0;
  #10 a=1;  b=1; c=1;  d=0; bin=0;
  #10 a=1;  b=1; b=1;  d=1; bin=0;
  #10 a=0;  b=0; c=0;  d=0; bin=1;
  #10 a=0;  b=0; c=0;  d=1; bin=1;
  #10 a=0;  b=0; c=1;  d=0; bin=1;
  #10 a=0;  b=0; c=1;  d=1; bin=1;
  #10 a=0;  b=1; c=0;  d=0; bin=1;
  #10 a=0;  b=1; c=0;  d=1; bin=1;
  #10 a=0;  b=1; c=1;  d=0; bin=1;
  #10 a=0;  b=1; c=1;  d=1; bin=1;
  #10 a=1;  b=1; c=0;  d=0; bin=1;
  #10 a=1;  b=0; c=0;  d=1; bin=1;
  #10 a=1;  b=0; c=1;  d=0; bin=1;
  #10 a=1;  b=0; c=1;  d=1; bin=1;
  #10 a=1;  b=1; c=0;  d=0; bin=1;
  #10 a=1;  b=1; c=0;  d=1; bin=1;
  #10 a=1;  b=1; c=1;  d=0; bin=1;
  #10 a=1;  b=1; b=1;  d=1; bin=1;
end
  initial $monitor($time,,"a=%b, b=%b, c=%b, b=%b, bin=%b, d0=%b, d1=%b, bout=%b", a,b,c,d,bin,d0,d1,bout);
endmodule
