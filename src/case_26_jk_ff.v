module case_26_jk_ff (input [9:0] sw, input [3:0] btn, output reg [9:0] out);
    wire J   = sw[0];
    wire K   = sw[1];
    wire Clk = btn[0];
    wire Rst = btn[1];
    reg Q, Qbar;
    
    always @(posedge Clk or posedge Rst) begin
        if (Rst) begin
            Q <= 1'b0;
            Qbar <= 1'b1;
        end else begin
            Q <= (J & ~Q) | (~K & Q);
            Qbar <= ~((J & ~Q) | (~K & Q));
        end
    end
    
    always @(*) begin
        out[0] = Q;
        out[1] = Qbar;
        out[9:2] = 8'b0;
    end
endmodule