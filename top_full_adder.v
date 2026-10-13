`timescale 1ns / 1ps

module top_full_adder (
    input K1,
    input K2,
    input K3,
    output L1,
    output L2
);
    wire A = ~K1;
    wire B = ~K2;
    wire Cin = ~K3;
    wire S;
    wire Cout;

    full_adder u_full_adder (
        .A(A),
        .B(B),
        .Cin(Cin),
        .S(S),
        .Cout(Cout)
    );
    assign L1 = ~S;
    assign L2 = ~Cout;
endmodule