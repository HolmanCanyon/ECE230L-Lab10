module TFlipFlop(
    input T,
    input Clock,
    output reg Q,
    output NotQ
);

    initial begin
        Q <= 0;
    end

    always @(posedge Clock) begin
        if (T) begin 
            Q <= ~Q;
        end
    end

    assign NotQ = ~Q;
endmodule