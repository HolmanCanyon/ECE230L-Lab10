module TFlipFlop(
    input T,
    input Clock,
    output reg Q
    output NotQ
);

    initial begin
        Q <= 0;
    end

    always @(posedge Clock, T) begin
        if (T) begin 
            Q <= NotQ;
        end
    end

    assign NotQ = ~Q;
endmodule