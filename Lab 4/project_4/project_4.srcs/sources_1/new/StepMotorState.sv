`timescale 1ns / 1ps

module StepMotorState(
    input logic clk, reset, enable, direction, reverse,
    output logic A,Ab,B,Bb);

typedef enum logic [1:0] {State0, State1, State2, State3} State;
State currentState, nextState;

always_ff @(posedge clk)
if(reset) currentState <= State0;
else currentState <= nextState;

always_comb

case(currentState)
State0: if(enable && direction &&!reverse) nextState = State1;
    else if (enable && !direction && reverse) nextState = State3;
    else nextState = State0; 
    
State1: if(enable && direction &&!reverse) nextState = State2;
    else if (enable && !direction && reverse) nextState = State0;
    else nextState = State1;
    
State2: if(enable && direction &&!reverse) nextState = State3;
    else if (enable && !direction && reverse) nextState = State1;
    else nextState = State2;  
    
State3: if(enable && direction &&!reverse) nextState = State0;
    else if (enable && !direction && reverse) nextState = State2;
    else nextState = State3; 

    default nextState = State0;
    
endcase

//always @(currentState)
//case(currentState)
//State0 : begin A<=1; B<=1; Ab<=0; Bb<=0; end
//State1 : begin A<=0; B<=1; Ab<=1; Bb<=0; end
//State2 : begin A<=0; B<=0; Ab<=1; Bb<=1; end
//State3 : begin A<=1; B<=0; Ab<=0; Bb<=1; end
//endcase


assign A = (currentState == State0 | currentState == State3);
assign Ab = (currentState == State0 | currentState == State1);
assign B = (currentState == State1 | currentState == State2);
assign Bb = (currentState == State2 | currentState == State3);

endmodule
