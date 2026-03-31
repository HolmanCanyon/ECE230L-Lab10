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

    TFlipFlop TFlipFlop(
        .T(sw[3]),
        .Q(led[4]),
        .NotQ(led[5]),
        .Clock(btnC)
    );

    JKFlipFlop JKFlipFlop(
        .J(sw[1]),
        .K(sw[2])
        .Q(led[2]),
        .NotQ(led[3]),
        .Clock(btnC)
    );

endmodule