module case_29_piso (input [9:0] sw, input [3:0] btn, output reg [9:0] out);
    wire [3:0] Pin = sw[3:0];
    wire Load = btn[3];  // Hold btn[3] and tap btn[0] to load
    wire Clk  = btn[0];
    wire Rst  = btn[1];
    reg [3:0] ShiftReg;
    
    always @(posedge Clk or posedge Rst) begin
        if (Rst)       ShiftReg <= 4'b0000;
        else if (Load) ShiftReg <= Pin; 
        else           ShiftReg <= {ShiftReg[2:0], 1'b0}; 
    end
    
    always @(*) begin
        out[0] = ShiftReg[3];
        out[9:1] = 9'b0;
    end
endmodule