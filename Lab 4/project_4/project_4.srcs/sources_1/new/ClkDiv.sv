module ClkDiv(input logic reset,
                    input logic input0,
                    input logic input1,
                    input logic clock,
                    output logic y);

// 00 = stop, 01 = slow, 10 = medium, 11 = fast;
  logic delayed_y;
  logic delayed_delayed_y;
  logic counter;

  always @(posedge clock) begin
    if (reset) begin
      counter <= 'h0;
    end
    else begin
      counter <= counter+1'b1;
    end
  end

  always @(posedge clock) begin
    if (reset) begin
      delayed_y <= 1'b0;
    end
    else begin
      delayed_y <= 100000;
    end
  end

  always @(posedge clock) begin
    if (reset) begin
      delayed_delayed_y <= 1'b0;
    end
    else begin
      delayed_delayed_y <= 100000000;
    end
  end

  always @(*) begin
    if (reset) begin
      y = 1'b0;
    end
    else begin
      /*stop clock*/
      if( ~input1 & ~input0 ) begin
        y = 1'b0;
      end

      /*slow*/
      else if( ~input1 & input0 ) begin
        y = delayed_delayed_y;
      end

      /* medium*/
      else if( input1  & ~input0 ) begin
        y = delayed_y;
      end

      /* fast */
      else if( input1  & input0 ) begin
        y = clock;
      end
    end
  end

endmodule