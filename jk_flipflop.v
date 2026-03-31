module jk_flipflop (
  input J, K, Clock
  output reg Q
  output NotQ
);

  initial begin 
    Q <= 0
  end
  
  
  always @(posedge Clock) begin 
    if (Q == 0) begin
      Q <= J
    end
    
    else begin
      Q <= ~K
    end
  end

  assign NotQ = ~Q;

  endmodule 
