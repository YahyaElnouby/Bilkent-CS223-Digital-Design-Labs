`timescale 1ns / 1ps

module counterUp(input logic reset, clock, limitP, output reg finalCount );

//new clock to be used after time slowing
   wire clk2 ;
//where timer should stop counting
    integer limit = limitP;
//register to save the value of timer count up
    reg[24:0] countUp; 

t20ms t20ms (reset, clock,clk2);

always @ (posedge reset or posedge clk2)
begin 
    if (reset)
     begin
        finalCount  = 0;
        countUp = 0;
     end
     
     else if(countUp < limit)
     begin
        countUp++;
        finalCount = finalCount;
     end
     
     else if(countUp >= limit)
     begin 
        countUp = 0;
        finalCount = ~finalCount;
     end
        
  end      
endmodule
