module case_14_full_add (input [9:0] in, output [9:0] out);
    assign out[0] = in[0] ^ in[1] ^ in[2]; // Sum
    assign out[1] = (in[0] & in[1]) | (in[2] & (in[0] ^ in[1])); // Carry
    assign out[9:2] = 8'b0;
endmodule