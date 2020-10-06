`timescale 1ns / 1ps

module t20ms(input logic reset, clock, output reg clk2);

//where timer should stop counting
localparam limit = 20000000;
//register to save the value of timer count up
reg[24:0] countUp; 

always @ (posedge clock or posedge reset)
begin 
    if (reset)
     begin
        countUp = 0;
        clk2  = clk2;
     end
     
     else if (countUp < limit)
     begin
        countUp++;
        clk2 = clk2;
     end
     
     else if (countUp >= limit)
     begin 
        countUp = 0;
        clk2 = ~clk2;
     end
        
  end      
endmodule
