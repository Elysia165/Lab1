`timescale 1ns / 1ps

module top_full_adder (
    input  K1,
    input  K2,
    input  K3,
    input  reset,   
    output L1,
    output L2
);


reg A, B, Cin;


always @(negedge K1 or negedge reset) begin
    if(!reset) begin      
        A <= 1'b0;
    end else begin
        A <= ~A;          
    end
end

always @(negedge K2 or negedge reset) begin
    if(!reset) begin
        B <= 1'b0;
    end else begin
        B <= ~B;
    end
end

always @(negedge K3 or negedge reset) begin
    if(!reset) begin
        Cin <= 1'b0;
    end else begin
        Cin <= ~Cin;
    end
end


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
