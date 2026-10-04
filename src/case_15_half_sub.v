module case_15_half_sub (input [9:0] in, output [9:0] out);
    assign out[0] = in[0] ^ in[1];  // Diff
    assign out[1] = ~in[0] & in[1]; // Borrow
    assign out[9:2] = 8'b0;
endmodule