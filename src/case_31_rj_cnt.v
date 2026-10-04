module case_31_rj_cnt (input [9:0] sw, input [3:0] btn, output reg [9:0] out);
    wire Mode = sw[0]; 
    wire Clk  = btn[0];
    wire Rst  = btn[1];
    reg [3:0] Count;
    
    always @(posedge Clk or posedge Rst) begin
        if (Rst) 
            Count <= 4'b0001; 
        else if (Mode == 1'b0) 
            Count <= {Count[2:0], Count[3]};  
        else                    
            Count <= {Count[2:0], ~Count[3]}; 
    end
    
    always @(*) begin
        out[3:0] = Count;
        out[9:4] = 6'b0;
    end
endmodule