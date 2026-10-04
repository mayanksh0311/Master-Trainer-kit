module case_32_alu (input [9:0] in, output reg [9:0] out);
    wire [3:0] A  = in[3:0];
    wire [3:0] B  = in[7:4];
    wire [1:0] Op = in[9:8];
    
    always @(*) begin
        case(Op)
            2'b00: out[4:0] = A + B;         // ADD (Output 4 is Carry)
            2'b01: out[4:0] = A - B;         // SUB (Output 4 is Borrow)
            2'b10: out[4:0] = {1'b0, A & B}; // Bitwise AND
            2'b11: out[4:0] = {1'b0, A | B}; // Bitwise OR
        endcase
        out[9:5] = 5'b0; // Turn off unused LEDs
    end
endmodule