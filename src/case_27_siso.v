module case_27_siso (input [9:0] sw, input [3:0] btn, output reg [9:0] out);
    wire Sin = sw[0];
    wire Clk = btn[0];
    wire Rst = btn[1];
    reg [3:0] ShiftReg;
    
    always @(posedge Clk or posedge Rst) begin
        if (Rst) ShiftReg <= 4'b0000;
        else     ShiftReg <= {ShiftReg[2:0], Sin}; 
    end
    
    always @(*) begin
        out[0] = ShiftReg[3];
        out[9:1] = 9'b0;
    end
endmodule