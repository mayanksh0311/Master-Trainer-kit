module case_18_mux41 (input [9:0] in, output [9:0] out);
    assign out[0] = (in[5:4] == 2'b00) ? in[0] :
                    (in[5:4] == 2'b01) ? in[1] :
                    (in[5:4] == 2'b10) ? in[2] : in[3];
    assign out[9:1] = 9'b0;
endmodule