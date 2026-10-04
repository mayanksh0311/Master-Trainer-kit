module case_21_sr_latch (input [3:0] btn, output [9:0] out);
    wire Set = btn[2];
    wire Rst = btn[1];
    reg Q, Qbar;
    
    always @(*) begin
        if (Set)      begin Q = 1'b1; Qbar = 1'b0; end
        else if (Rst) begin Q = 1'b0; Qbar = 1'b1; end
    end
    
    assign out[0] = Q;
    assign out[1] = Qbar;
    assign out[9:2] = 8'b0;
endmodule