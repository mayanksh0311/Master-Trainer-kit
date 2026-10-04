module case_24_up_cnt (input [3:0] btn, output reg [9:0] out);
    wire Clk = btn[0];
    wire Rst = btn[1];
    reg [3:0] Count;
    
    always @(posedge Clk or posedge Rst) begin
        if (Rst) Count <= 4'b0000;
        else     Count <= Count + 1;
    end
    
    always @(*) begin
        out[3:0] = Count;
        out[9:4] = 6'b0;
    end
endmodule