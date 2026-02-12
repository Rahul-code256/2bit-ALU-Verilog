module alu_2bit (
    input  [1:0] A,
    input  [1:0] B,
    input  [2:0] ALU_Sel,
    output reg [1:0] Result,
    output reg Carry
);

always @(*) begin
    Carry = 0;
    case (ALU_Sel)
        3'b000: {Carry, Result} = A + B;   // Addition
        3'b001: {Carry, Result} = A - B;   // Subtraction
        3'b010: Result = A & B;            // AND
        3'b011: Result = A | B;            // OR
        3'b100: Result = A ^ B;            // XOR
        default: Result = 2'b00;
    endcase
end

endmodule
