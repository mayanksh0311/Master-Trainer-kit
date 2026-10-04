`timescale 1ns / 1ps

module master_trainer_top (
    input wire [15:0] sw,
    input wire [3:0] btn,       
    output reg [15:0] led
);

    wire [4:0] sel = sw[15:11]; 
    wire [9:0] d_sw = sw[9:0];  
    wire alu_override = sw[10];
    
    wire [9:0] o [0:31]; 
    wire [9:0] o_alu;

    // Logic Gates
    case_00_not      u00 (.in(d_sw), .out(o[0]));        
    case_01_and2     u01 (.in(d_sw), .out(o[1]));
    case_02_or2      u02 (.in(d_sw), .out(o[2]));
    case_03_nand2    u03 (.in(d_sw), .out(o[3]));
    case_04_nor2     u04 (.in(d_sw), .out(o[4]));
    case_05_xor2     u05 (.in(d_sw), .out(o[5]));
    case_06_xnor2    u06 (.in(d_sw), .out(o[6]));
    case_07_and3     u07 (.in(d_sw), .out(o[7]));
    case_08_or3      u08 (.in(d_sw), .out(o[8]));
    case_09_nand3    u09 (.in(d_sw), .out(o[9]));
    case_10_nor3     u10 (.in(d_sw), .out(o[10]));
    case_11_xor3     u11 (.in(d_sw), .out(o[11]));
    case_12_xnor3    u12 (.in(d_sw), .out(o[12]));

    // Combinational Circuits
    case_13_half_add u13 (.in(d_sw), .out(o[13]));
    case_14_full_add u14 (.in(d_sw), .out(o[14]));
    case_15_half_sub u15 (.in(d_sw), .out(o[15]));
    case_16_full_sub u16 (.in(d_sw), .out(o[16]));
    case_17_mux21    u17 (.in(d_sw), .out(o[17]));
    case_18_mux41    u18 (.in(d_sw), .out(o[18]));
    case_19_demux12  u19 (.in(d_sw), .out(o[19]));
    case_20_demux14  u20 (.in(d_sw), .out(o[20]));

    // Sequential Circuits
    case_21_sr_latch u21 (.btn(btn), .out(o[21])); 
    case_22_d_ff     u22 (.sw(d_sw), .btn(btn), .out(o[22]));
    case_23_t_ff     u23 (.sw(d_sw), .btn(btn), .out(o[23]));
    case_24_up_cnt   u24 (.btn(btn), .out(o[24]));
    case_25_dn_cnt   u25 (.btn(btn), .out(o[25]));
    case_26_jk_ff    u26 (.sw(d_sw), .btn(btn), .out(o[26]));
    case_27_siso     u27 (.sw(d_sw), .btn(btn), .out(o[27]));
    case_28_sipo     u28 (.sw(d_sw), .btn(btn), .out(o[28]));
    case_29_piso     u29 (.sw(d_sw), .btn(btn), .out(o[29]));
    case_30_pipo     u30 (.sw(d_sw), .btn(btn), .out(o[30]));
    case_31_rj_cnt   u31 (.sw(d_sw), .btn(btn), .out(o[31]));

    // 4-bit ALU
    case_32_alu      u32 (.in(d_sw), .out(o_alu));

    always @(*) begin
        led[15:11] = sel;          
        led[10]    = alu_override; 

        if (alu_override == 1'b1) begin
            led[9:0] = o_alu;
        end else begin
            led[9:0] = o[sel]; 
        end
    end
endmodule
