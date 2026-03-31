module DFlipFlop(
    input D,
    input clock,
    output reg Q
    output NotQ
);

    initial begin
        Q <= 0;
    end

    always @(posedge clock)
        Q <= D;

    assign NotQ = ~Q;
endmodule