`timescale 1ns / 1ps

module StepMotorInterface(input clk, enable, direction, reverse, reset, Speed0, Speed1,
 output A, Ab, B, Bb, a, b, c, d, e, f, g, dp, 
 output [3:0] an );

//we will be used as the new clock after been divided
 wire new_clk;
 //this integers are to represent the decimal place in the seven segment display
 integer ones = 0;
 integer tens = 0;
 integer hundreds = 0;
 integer thousands = 0;
 
 //here is where the speed will be controlled according to the inputs
 always@(Speed0 or Speed1)
 begin
 if(Speed0 ==1 && Speed1 == 1) //the motor to stop for the given inputs
    begin
        ones <= 0;
        tens <= 0;
        hundreds <= 0;
        thousands <= 0;
    end
if(Speed0 ==1 && Speed1 == 0) //the motor to have low speed
    begin
        ones <= 0;
        tens <= 5;
        hundreds <= 2;
        thousands <= 0;
    end
if(Speed0 ==0 && Speed1 == 1) //the motor to have medium speed
    begin
        ones <= 0;
        tens <= 0;
        hundreds <= 5;
        thousands <= 0;
    end
if(Speed0 ==0 && Speed1 == 0) //the motor to have fast speed
    begin
        ones <= 0;
        tens <= 0;
        hundreds <= 0;
        thousands <= 1;
    end
end
        
 //in this part I am connecting the inputs in the interface using my FSM class done 
 //to go through the states according to the inputs
 StepMotorState sm(.clk(new_clk), .reset(reset), .enable(enable), .direction(direction), 
 .reverse(reverse), .A(A), .Ab(Ab), .B(B), .Bb(Bb));
 
 //This is for the clk divider in which we will use to control the speed the car
 ClkDiv div(.input0(Speed0), .input1(Speed1), .reset(reset), .clock(clk), .y(new_clk));
 
 //this is to display the speed on the FPGA seven segment display
 SevSeg_4digit sevenDisplay(.clk(clk), .in0(ones), .in1(tens), .in2(hundreds), .in3(thousands),
 .a(a), .b(b), .c(c), .d(d), .e(e), .f(f), .g(g), .dp(dp), .an(an));

endmodule
