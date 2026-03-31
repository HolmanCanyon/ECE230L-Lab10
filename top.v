module top(
    input [3:0] sw,
    input btnC,
    output [5:0] led
);
    DFlipFlop DFlipFlop(
        .D(sw[0]),
        .Q(led[0]),
        .NotQ(led[1]),
        .Clock(btnC)
    );

endmodule