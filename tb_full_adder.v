`timescale 1ns/1ns

module tb_full_adder ();
    reg A = 0;
    reg B = 0;
    reg Cin = 0;
    wire S;
    wire Cout;

    full_adder dut (
        .A(A),
        .B(B),
        .Cin(Cin),
        .S(S),
        .Cout(Cout)
    );

    initial begin
        $dumpfile("tb_full_adder.vcd");
        $dumpvars(0, tb_full_adder);
    end

    initial begin
       #40 $finish;
    end

    initial begin
        #5 A = 0; B = 0; Cin = 1;
        #5 A = 0; B = 1; Cin = 0;
        #5 A = 0; B = 1; Cin = 1;
        #5 A = 1; B = 0; Cin = 0;
        #5 A = 1; B = 0; Cin = 1;
        #5 A = 1; B = 1; Cin = 0;
        #5 A = 1; B = 1; Cin = 1;
    end

    
endmodule