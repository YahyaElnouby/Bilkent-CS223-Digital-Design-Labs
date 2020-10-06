`timescale 1ns / 1ps

module StepMotorState_tb;

reg clk, reset, enable, direction, reverse;
wire A, Ab, B, Bb;

StepMotorState uut( .clk(clk), .reset(reset), .enable(enable), .direction(direction), .reverse(reverse),
.A(A), .Ab(Ab),.B(B),.Bb(Bb) );
    initial
        begin
            reset <= 1; #10;
            reset <= 0; enable <= 1; direction <=1; reverse <=0; #10;
            enable <= 0; direction <= 1; reverse <=0; #15;
            enable <= 1; direction <=1;  reverse <=0; #10;
            enable <= 0; direction <= 1; reverse <=0; #10;
            enable <= 1; direction <=1;  reverse <=0; #10;
            enable <= 0; direction <= 1; reverse <=0; #10;
            enable <= 1; direction <=1;  reverse <=0; #10;
            enable <= 0; direction <= 1; reverse <=0; #10;
            enable <= 1; direction <=0;  reverse <=1; #10;
            enable <= 1; direction <=0;  reverse <=1; #10;
            enable <= 0; direction <= 0; reverse <=1; #30;
            enable <= 1; direction <=0;  reverse <=1; #10;
            enable <= 0; direction <= 0; reverse <=1; #10;
            enable <= 1; direction <=0;  reverse <=1; #10;
            enable <= 0; direction <= 0; reverse <=1; #10;  
            enable <= 1; direction <=0;  reverse <=1; #10;        
            enable <= 0; direction <= 0; reverse <=1; #20;
               
        end

    always
        begin
            clk <= 1; #5;
            clk <= 0; #5;
        end
endmodule

