module case_16_full_sub (input [9:0] in, output [9:0] out);
    assign out[0] = in[0] ^ in[1] ^ in[2]; // Diff
    assign out[1] = (~in[0] & in[1]) | (in[2] & ~(in[0] ^ in[1])); // Borrow
    assign out[9:2] = 8'b0;
endmodule