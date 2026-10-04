module case_12_xnor3 (input [9:0] in, output [9:0] out);
    assign out[0] = ~(in[0] ^ in[1] ^ in[2]);
    assign out[9:1] = 9'b0;
endmodule