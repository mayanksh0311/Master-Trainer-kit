module case_17_mux21 (input [9:0] in, output [9:0] out);
    assign out[0] = in[2] ? in[1] : in[0];
    assign out[9:1] = 9'b0;
endmodule