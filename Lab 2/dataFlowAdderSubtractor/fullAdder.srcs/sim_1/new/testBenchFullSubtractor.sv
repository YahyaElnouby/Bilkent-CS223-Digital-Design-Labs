`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2019 09:57:10 PM
// Design Name: 
// Module Name: testBenchFullSubtractor
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


module testBenchFullSubtractor;

// input
reg a; reg b; reg bin;
// outputs
wire d; wire bout;
// Instantiate 
  bitFullSubtractor uut2(.a(a), .b(b), .bin(bin), .d(d), .bout(bout));
initial begin
  #100;
  #10 a=0; b=0; bin=0;
  #10 a=0; b=0; bin=1;
  #10 a=0; b=1; bin=0;
  #10 a=0; b=1; bin=1;
  #10 a=1; b=0; bin=0;
  #10 a=1; b=0; bin=1;
  #10 a=1; b=1; bin=0;
  #10 a=1; b=1; bin=1;
end
  initial $monitor($time,,"a=%d,b=%d,bin=%d, d=%d, bout=%d", a,b,bin,d,bout);

endmodule
