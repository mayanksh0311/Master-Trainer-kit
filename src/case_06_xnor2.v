module case_06_xnor2 (input [9:0] in, output [9:0] out);
    assign out[0] = ~(in[0] ^ in[1]);
    assign out[9:1] = 9'b0;
endmodule