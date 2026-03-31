module JKFlipFlop (
  input J, K, Clock,
  output reg Q,
  output NotQ
);

  initial begin 
    Q <= 0;
  end
  
  
  always @(posedge Clock) begin 
    if (J & K) begin 
      Q <= ~Q;
    end else begin
      if (Q) begin
        Q <= ~K;
      end
      else begin
        Q <= J;
      end
    end
  end

  assign NotQ = ~Q;

  endmodule 
