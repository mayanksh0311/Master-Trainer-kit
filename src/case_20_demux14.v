module case_20_demux14 (input [9:0] in, output [9:0] out);
    assign out[0] = (in[2:1] == 2'b00) ? in[0] : 1'b0;
    assign out[1] = (in[2:1] == 2'b01) ? in[0] : 1'b0;
    assign out[2] = (in[2:1] == 2'b10) ? in[0] : 1'b0;
    assign out[3] = (in[2:1] == 2'b11) ? in[0] : 1'b0;
    assign out[9:4] = 6'b0;
endmodule