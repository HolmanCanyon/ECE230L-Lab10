module DFlipFlop(
    input data,
    input store,
    output reg memory
);

    always @(posedge store)
        memory <= data;

endmodule