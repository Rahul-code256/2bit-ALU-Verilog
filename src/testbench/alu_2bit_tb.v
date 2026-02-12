`timescale 1ns/1ps

module alu_2bit_tb;

reg [1:0] A, B;
reg [2:0] ALU_Sel;
wire [1:0] Result;
wire Carry;

alu_2bit DUT (
    .A(A),
    .B(B),
    .ALU_Sel(ALU_Sel),
    .Result(Result),
    .Carry(Carry)
);

initial begin
    $display("A B ALU_Sel | Result Carry");

    A = 2'b01; B = 2'b01;

    ALU_Sel = 3'b000; #10; // ADD
    ALU_Sel = 3'b001; #10; // SUB
    ALU_Sel = 3'b010; #10; // AND
    ALU_Sel = 3'b011; #10; // OR
    ALU_Sel = 3'b100; #10; // XOR

    $stop;
end

endmodule
