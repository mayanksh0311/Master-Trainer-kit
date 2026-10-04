module case_23_t_ff (input [9:0] sw, input [3:0] btn, output reg [9:0] out);
    wire T   = sw[0];
    wire Clk = btn[0];
    wire Rst = btn[1];
    reg Q;
    
    always @(posedge Clk or posedge Rst) begin
        if (Rst) Q <= 1'b0;
        else if (T) Q <= ~Q;
    end
    
    always @(*) begin
        out[0] = Q;
        out[9:1] = 9'b0;
    end
endmodule