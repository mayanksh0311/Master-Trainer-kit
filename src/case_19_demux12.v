module case_19_demux12 (input [9:0] in, output [9:0] out);
    assign out[0] = in[1] ? 1'b0 : in[0]; // Output 0
    assign out[1] = in[1] ? in[0] : 1'b0; // Output 1
    assign out[9:2] = 8'b0;
endmodule