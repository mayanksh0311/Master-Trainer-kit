module case_30_pipo (input [9:0] sw, input [3:0] btn, output reg [9:0] out);
    wire [3:0] Pin = sw[3:0];
    wire Clk = btn[0];
    wire Rst = btn[1];
    reg [3:0] Pout;
    
    always @(posedge Clk or posedge Rst) begin
        if (Rst) Pout <= 4'b0000;
        else     Pout <= Pin;
    end
    
    always @(*) begin
        out[3:0] = Pout;
        out[9:4] = 6'b0;
    end
endmodule