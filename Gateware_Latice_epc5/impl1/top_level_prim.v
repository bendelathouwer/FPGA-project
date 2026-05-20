// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.14.0.75.2
// Netlist written on Tue May 19 18:26:39 2026
//
// Verilog Description of module top_level
//

module top_level (clk, reset, R1, G1, B1, R2, G2, B2, A, B, 
            C, D, E, LAT, OE);   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/top.vhdl(5[8:17])
    input clk;   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/top.vhdl(7[9:12])
    input reset;   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/top.vhdl(8[9:14])
    output R1;   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/top.vhdl(11[9:11])
    output G1;   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/top.vhdl(11[13:15])
    output B1;   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/top.vhdl(11[17:19])
    output R2;   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/top.vhdl(12[9:11])
    output G2;   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/top.vhdl(12[13:15])
    output B2;   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/top.vhdl(12[17:19])
    output A;   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/top.vhdl(14[9:10])
    output B;   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/top.vhdl(14[12:13])
    output C;   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/top.vhdl(14[15:16])
    output D;   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/top.vhdl(14[18:19])
    output E;   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/top.vhdl(14[21:22])
    output LAT;   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/top.vhdl(16[9:12])
    output OE;   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/top.vhdl(17[9:11])
    
    wire clk_c /* synthesis DSPPORT_20=CLK3, CLOCK_NET_FOR_BUS20=20, is_clock=1, SET_AS_NETWORK=clk_c */ ;   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/top.vhdl(7[9:12])
    wire reset_c /* synthesis DSPPORT_20=RST3, RESET_NET_FOR_BUS20=20 */ ;   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/top.vhdl(8[9:14])
    wire VCC_net /* synthesis CE_NET_FOR_BUS20=20, DSPPORT_20=CE3 */ ;
    
    wire GND_net, R1_c, G1_c, B1_c, R2_c, G2_c, B2_c, A_c, B_c, 
        C_c, D_c, E_c, LAT_c, OE_c, matrix_clk_sig, n134;
    
    VHI i5 (.Z(VCC_net));
    hub75E_driver hub75_inst (.R_in({GND_net, GND_net, GND_net}), .G_in({GND_net, 
            GND_net, GND_net}), .B_in({GND_net, GND_net}), .matrix_clockIN(matrix_clk_sig), 
            .R1(R1_c), .G1(G1_c), .B1(B1_c), .R2(R2_c), .G2(G2_c), 
            .B2(B2_c), .A(A_c), .B(B_c), .C(C_c), .D(D_c), .E(E_c), 
            .LAT(LAT_c), .OE(OE_c));   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/top.vhdl(146[18:31])
    LUT4 i58_1_lut (.A(reset_c), .Z(n134)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/top.vhdl(8[9:14])
    defparam i58_1_lut.init = 16'h5555;
    OB R1_pad (.I(R1_c), .O(R1));   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/top.vhdl(11[9:11])
    \clock_divider(5000,200,26042)  clk_div_inst (.GND_net(GND_net), .VCC_net(VCC_net), 
            .matrix_clk_sig(matrix_clk_sig), .clk_c(clk_c));   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/top.vhdl(115[20:33])
    OB G1_pad (.I(G1_c), .O(G1));   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/top.vhdl(11[13:15])
    GSR GSR_INST (.GSR(n134));
    VLO i1 (.Z(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    OB B1_pad (.I(B1_c), .O(B1));   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/top.vhdl(11[17:19])
    OB R2_pad (.I(R2_c), .O(R2));   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/top.vhdl(12[9:11])
    OB G2_pad (.I(G2_c), .O(G2));   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/top.vhdl(12[13:15])
    OB B2_pad (.I(B2_c), .O(B2));   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/top.vhdl(12[17:19])
    OB A_pad (.I(A_c), .O(A));   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/top.vhdl(14[9:10])
    OB B_pad (.I(B_c), .O(B));   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/top.vhdl(14[12:13])
    OB C_pad (.I(C_c), .O(C));   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/top.vhdl(14[15:16])
    OB D_pad (.I(D_c), .O(D));   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/top.vhdl(14[18:19])
    OB E_pad (.I(E_c), .O(E));   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/top.vhdl(14[21:22])
    OB LAT_pad (.I(LAT_c), .O(LAT));   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/top.vhdl(16[9:12])
    OB OE_pad (.I(OE_c), .O(OE));   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/top.vhdl(17[9:11])
    IB clk_pad (.I(clk), .O(clk_c));   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/top.vhdl(7[9:12])
    IB reset_pad (.I(reset), .O(reset_c));   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/top.vhdl(8[9:14])
    
endmodule
//
// Verilog Description of module hub75E_driver
//

module hub75E_driver (R_in, G_in, B_in, matrix_clockIN, R1, G1, 
            B1, R2, G2, B2, A, B, C, D, E, LAT, OE, matrix_latch_clock_IN);   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/hub75e_driver.vhd(28[8:21])
    input [2:0]R_in;   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/hub75e_driver.vhd(31[13:17])
    input [2:0]G_in;   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/hub75e_driver.vhd(32[13:17])
    input [1:0]B_in;   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/hub75e_driver.vhd(33[13:17])
    input matrix_clockIN;   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/hub75e_driver.vhd(34[5:19])
    output R1;   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/hub75e_driver.vhd(36[13:15])
    output G1;   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/hub75e_driver.vhd(36[17:19])
    output B1;   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/hub75e_driver.vhd(36[21:23])
    output R2;   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/hub75e_driver.vhd(36[25:27])
    output G2;   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/hub75e_driver.vhd(36[29:31])
    output B2;   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/hub75e_driver.vhd(36[33:35])
    output A;   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/hub75e_driver.vhd(37[13:14])
    output B;   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/hub75e_driver.vhd(37[16:17])
    output C;   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/hub75e_driver.vhd(37[19:20])
    output D;   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/hub75e_driver.vhd(37[22:23])
    output E;   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/hub75e_driver.vhd(37[25:26])
    output LAT;   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/hub75e_driver.vhd(38[13:16])
    output OE;   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/hub75e_driver.vhd(38[18:20])
    output matrix_latch_clock_IN;   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/hub75e_driver.vhd(38[22:43])
    
    
    
endmodule
//
// Verilog Description of module \clock_divider(5000,200,26042) 
//

module \clock_divider(5000,200,26042)  (GND_net, VCC_net, matrix_clk_sig, 
            clk_c);
    input GND_net;
    input VCC_net;
    output matrix_clk_sig;
    input clk_c;
    
    wire VCC_net /* synthesis CE_NET_FOR_BUS20=20, DSPPORT_20=CE3 */ ;
    wire clk_c /* synthesis DSPPORT_20=CLK3, CLOCK_NET_FOR_BUS20=20, is_clock=1, SET_AS_NETWORK=clk_c */ ;   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/top.vhdl(7[9:12])
    
    wire n166;
    wire [31:0]counter3;   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/clk_div.vhdl(33[12:20])
    wire [31:0]n133;
    
    wire n167, n135, matrix_clockOUT_N_198, n165, n164, n163, n162, 
        n161, n160, n159, n158, n157, n156, n155, n154, n153, 
        n152, n222, n239, n223, n227, n231, n238, n221, n172, 
        n220, n226, n237, n236, n230;
    
    CCU2C counter3_39_add_4_31 (.A0(counter3[29]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter3[30]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n166), .COUT(n167), .S0(n133[29]), .S1(n133[30]));   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/clk_div.vhdl(72[25:33])
    defparam counter3_39_add_4_31.INIT0 = 16'haaa0;
    defparam counter3_39_add_4_31.INIT1 = 16'haaa0;
    defparam counter3_39_add_4_31.INJECT1_0 = "NO";
    defparam counter3_39_add_4_31.INJECT1_1 = "NO";
    LUT4 i1_2_lut (.A(matrix_clk_sig), .B(n135), .Z(matrix_clockOUT_N_198)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut.init = 16'h6666;
    CCU2C counter3_39_add_4_29 (.A0(counter3[27]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter3[28]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n165), .COUT(n166), .S0(n133[27]), .S1(n133[28]));   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/clk_div.vhdl(72[25:33])
    defparam counter3_39_add_4_29.INIT0 = 16'haaa0;
    defparam counter3_39_add_4_29.INIT1 = 16'haaa0;
    defparam counter3_39_add_4_29.INJECT1_0 = "NO";
    defparam counter3_39_add_4_29.INJECT1_1 = "NO";
    CCU2C counter3_39_add_4_27 (.A0(counter3[25]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter3[26]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n164), .COUT(n165), .S0(n133[25]), .S1(n133[26]));   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/clk_div.vhdl(72[25:33])
    defparam counter3_39_add_4_27.INIT0 = 16'haaa0;
    defparam counter3_39_add_4_27.INIT1 = 16'haaa0;
    defparam counter3_39_add_4_27.INJECT1_0 = "NO";
    defparam counter3_39_add_4_27.INJECT1_1 = "NO";
    CCU2C counter3_39_add_4_25 (.A0(counter3[23]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter3[24]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n163), .COUT(n164), .S0(n133[23]), .S1(n133[24]));   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/clk_div.vhdl(72[25:33])
    defparam counter3_39_add_4_25.INIT0 = 16'haaa0;
    defparam counter3_39_add_4_25.INIT1 = 16'haaa0;
    defparam counter3_39_add_4_25.INJECT1_0 = "NO";
    defparam counter3_39_add_4_25.INJECT1_1 = "NO";
    CCU2C counter3_39_add_4_23 (.A0(counter3[21]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter3[22]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n162), .COUT(n163), .S0(n133[21]), .S1(n133[22]));   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/clk_div.vhdl(72[25:33])
    defparam counter3_39_add_4_23.INIT0 = 16'haaa0;
    defparam counter3_39_add_4_23.INIT1 = 16'haaa0;
    defparam counter3_39_add_4_23.INJECT1_0 = "NO";
    defparam counter3_39_add_4_23.INJECT1_1 = "NO";
    CCU2C counter3_39_add_4_21 (.A0(counter3[19]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter3[20]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n161), .COUT(n162), .S0(n133[19]), .S1(n133[20]));   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/clk_div.vhdl(72[25:33])
    defparam counter3_39_add_4_21.INIT0 = 16'haaa0;
    defparam counter3_39_add_4_21.INIT1 = 16'haaa0;
    defparam counter3_39_add_4_21.INJECT1_0 = "NO";
    defparam counter3_39_add_4_21.INJECT1_1 = "NO";
    CCU2C counter3_39_add_4_19 (.A0(counter3[17]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter3[18]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n160), .COUT(n161), .S0(n133[17]), .S1(n133[18]));   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/clk_div.vhdl(72[25:33])
    defparam counter3_39_add_4_19.INIT0 = 16'haaa0;
    defparam counter3_39_add_4_19.INIT1 = 16'haaa0;
    defparam counter3_39_add_4_19.INJECT1_0 = "NO";
    defparam counter3_39_add_4_19.INJECT1_1 = "NO";
    CCU2C counter3_39_add_4_17 (.A0(counter3[15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter3[16]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n159), .COUT(n160), .S0(n133[15]), .S1(n133[16]));   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/clk_div.vhdl(72[25:33])
    defparam counter3_39_add_4_17.INIT0 = 16'haaa0;
    defparam counter3_39_add_4_17.INIT1 = 16'haaa0;
    defparam counter3_39_add_4_17.INJECT1_0 = "NO";
    defparam counter3_39_add_4_17.INJECT1_1 = "NO";
    CCU2C counter3_39_add_4_15 (.A0(counter3[13]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter3[14]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n158), .COUT(n159), .S0(n133[13]), .S1(n133[14]));   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/clk_div.vhdl(72[25:33])
    defparam counter3_39_add_4_15.INIT0 = 16'haaa0;
    defparam counter3_39_add_4_15.INIT1 = 16'haaa0;
    defparam counter3_39_add_4_15.INJECT1_0 = "NO";
    defparam counter3_39_add_4_15.INJECT1_1 = "NO";
    CCU2C counter3_39_add_4_13 (.A0(counter3[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter3[12]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n157), .COUT(n158), .S0(n133[11]), .S1(n133[12]));   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/clk_div.vhdl(72[25:33])
    defparam counter3_39_add_4_13.INIT0 = 16'haaa0;
    defparam counter3_39_add_4_13.INIT1 = 16'haaa0;
    defparam counter3_39_add_4_13.INJECT1_0 = "NO";
    defparam counter3_39_add_4_13.INJECT1_1 = "NO";
    CCU2C counter3_39_add_4_11 (.A0(counter3[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter3[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n156), .COUT(n157), .S0(n133[9]), .S1(n133[10]));   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/clk_div.vhdl(72[25:33])
    defparam counter3_39_add_4_11.INIT0 = 16'haaa0;
    defparam counter3_39_add_4_11.INIT1 = 16'haaa0;
    defparam counter3_39_add_4_11.INJECT1_0 = "NO";
    defparam counter3_39_add_4_11.INJECT1_1 = "NO";
    CCU2C counter3_39_add_4_9 (.A0(counter3[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter3[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n155), .COUT(n156), .S0(n133[7]), .S1(n133[8]));   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/clk_div.vhdl(72[25:33])
    defparam counter3_39_add_4_9.INIT0 = 16'haaa0;
    defparam counter3_39_add_4_9.INIT1 = 16'haaa0;
    defparam counter3_39_add_4_9.INJECT1_0 = "NO";
    defparam counter3_39_add_4_9.INJECT1_1 = "NO";
    CCU2C counter3_39_add_4_7 (.A0(counter3[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter3[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n154), .COUT(n155), .S0(n133[5]), .S1(n133[6]));   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/clk_div.vhdl(72[25:33])
    defparam counter3_39_add_4_7.INIT0 = 16'haaa0;
    defparam counter3_39_add_4_7.INIT1 = 16'haaa0;
    defparam counter3_39_add_4_7.INJECT1_0 = "NO";
    defparam counter3_39_add_4_7.INJECT1_1 = "NO";
    CCU2C counter3_39_add_4_5 (.A0(counter3[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter3[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n153), .COUT(n154), .S0(n133[3]), .S1(n133[4]));   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/clk_div.vhdl(72[25:33])
    defparam counter3_39_add_4_5.INIT0 = 16'haaa0;
    defparam counter3_39_add_4_5.INIT1 = 16'haaa0;
    defparam counter3_39_add_4_5.INJECT1_0 = "NO";
    defparam counter3_39_add_4_5.INJECT1_1 = "NO";
    CCU2C counter3_39_add_4_3 (.A0(counter3[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter3[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n152), .COUT(n153), .S0(n133[1]), .S1(n133[2]));   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/clk_div.vhdl(72[25:33])
    defparam counter3_39_add_4_3.INIT0 = 16'haaa0;
    defparam counter3_39_add_4_3.INIT1 = 16'haaa0;
    defparam counter3_39_add_4_3.INJECT1_0 = "NO";
    defparam counter3_39_add_4_3.INJECT1_1 = "NO";
    CCU2C counter3_39_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter3[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n152), .S1(n133[0]));   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/clk_div.vhdl(72[25:33])
    defparam counter3_39_add_4_1.INIT0 = 16'h0000;
    defparam counter3_39_add_4_1.INIT1 = 16'h555f;
    defparam counter3_39_add_4_1.INJECT1_0 = "NO";
    defparam counter3_39_add_4_1.INJECT1_1 = "NO";
    LUT4 i130_1_lut (.A(counter3[7]), .Z(n222)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/clk_div.vhdl(72[25:33])
    defparam i130_1_lut.init = 16'h5555;
    FD1S3IX counter3_39__i31 (.D(n133[31]), .CK(clk_c), .CD(n135), .Q(counter3[31])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/clk_div.vhdl(72[25:33])
    defparam counter3_39__i31.GSR = "ENABLED";
    FD1S3IX counter3_39__i0 (.D(n133[0]), .CK(clk_c), .CD(n135), .Q(counter3[0])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/clk_div.vhdl(72[25:33])
    defparam counter3_39__i0.GSR = "ENABLED";
    FD1S3AX matrix_clk_reg_36 (.D(matrix_clockOUT_N_198), .CK(clk_c), .Q(matrix_clk_sig)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=20, LSE_RCOL=33, LSE_LLINE=115, LSE_RLINE=115 */ ;   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/clk_div.vhdl(41[10] 74[12])
    defparam matrix_clk_reg_36.GSR = "ENABLED";
    FD1S3IX counter3_39__i30 (.D(n133[30]), .CK(clk_c), .CD(n135), .Q(counter3[30])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/clk_div.vhdl(72[25:33])
    defparam counter3_39__i30.GSR = "ENABLED";
    FD1S3IX counter3_39__i29 (.D(n133[29]), .CK(clk_c), .CD(n135), .Q(counter3[29])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/clk_div.vhdl(72[25:33])
    defparam counter3_39__i29.GSR = "ENABLED";
    FD1S3IX counter3_39__i28 (.D(n133[28]), .CK(clk_c), .CD(n135), .Q(counter3[28])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/clk_div.vhdl(72[25:33])
    defparam counter3_39__i28.GSR = "ENABLED";
    FD1S3IX counter3_39__i27 (.D(n133[27]), .CK(clk_c), .CD(n135), .Q(counter3[27])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/clk_div.vhdl(72[25:33])
    defparam counter3_39__i27.GSR = "ENABLED";
    FD1S3IX counter3_39__i26 (.D(n133[26]), .CK(clk_c), .CD(n135), .Q(counter3[26])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/clk_div.vhdl(72[25:33])
    defparam counter3_39__i26.GSR = "ENABLED";
    FD1S3IX counter3_39__i25 (.D(n133[25]), .CK(clk_c), .CD(n135), .Q(counter3[25])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/clk_div.vhdl(72[25:33])
    defparam counter3_39__i25.GSR = "ENABLED";
    FD1S3IX counter3_39__i24 (.D(n133[24]), .CK(clk_c), .CD(n135), .Q(counter3[24])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/clk_div.vhdl(72[25:33])
    defparam counter3_39__i24.GSR = "ENABLED";
    FD1S3IX counter3_39__i23 (.D(n133[23]), .CK(clk_c), .CD(n135), .Q(counter3[23])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/clk_div.vhdl(72[25:33])
    defparam counter3_39__i23.GSR = "ENABLED";
    FD1S3IX counter3_39__i22 (.D(n133[22]), .CK(clk_c), .CD(n135), .Q(counter3[22])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/clk_div.vhdl(72[25:33])
    defparam counter3_39__i22.GSR = "ENABLED";
    FD1S3IX counter3_39__i21 (.D(n133[21]), .CK(clk_c), .CD(n135), .Q(counter3[21])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/clk_div.vhdl(72[25:33])
    defparam counter3_39__i21.GSR = "ENABLED";
    FD1S3IX counter3_39__i20 (.D(n133[20]), .CK(clk_c), .CD(n135), .Q(counter3[20])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/clk_div.vhdl(72[25:33])
    defparam counter3_39__i20.GSR = "ENABLED";
    FD1S3IX counter3_39__i19 (.D(n133[19]), .CK(clk_c), .CD(n135), .Q(counter3[19])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/clk_div.vhdl(72[25:33])
    defparam counter3_39__i19.GSR = "ENABLED";
    FD1S3IX counter3_39__i18 (.D(n133[18]), .CK(clk_c), .CD(n135), .Q(counter3[18])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/clk_div.vhdl(72[25:33])
    defparam counter3_39__i18.GSR = "ENABLED";
    FD1S3IX counter3_39__i17 (.D(n133[17]), .CK(clk_c), .CD(n135), .Q(counter3[17])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/clk_div.vhdl(72[25:33])
    defparam counter3_39__i17.GSR = "ENABLED";
    FD1S3IX counter3_39__i16 (.D(n133[16]), .CK(clk_c), .CD(n135), .Q(counter3[16])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/clk_div.vhdl(72[25:33])
    defparam counter3_39__i16.GSR = "ENABLED";
    FD1S3IX counter3_39__i15 (.D(n133[15]), .CK(clk_c), .CD(n135), .Q(counter3[15])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/clk_div.vhdl(72[25:33])
    defparam counter3_39__i15.GSR = "ENABLED";
    FD1S3IX counter3_39__i14 (.D(n133[14]), .CK(clk_c), .CD(n135), .Q(counter3[14])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/clk_div.vhdl(72[25:33])
    defparam counter3_39__i14.GSR = "ENABLED";
    FD1S3IX counter3_39__i13 (.D(n133[13]), .CK(clk_c), .CD(n135), .Q(counter3[13])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/clk_div.vhdl(72[25:33])
    defparam counter3_39__i13.GSR = "ENABLED";
    FD1S3IX counter3_39__i12 (.D(n133[12]), .CK(clk_c), .CD(n135), .Q(counter3[12])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/clk_div.vhdl(72[25:33])
    defparam counter3_39__i12.GSR = "ENABLED";
    FD1S3IX counter3_39__i11 (.D(n133[11]), .CK(clk_c), .CD(n135), .Q(counter3[11])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/clk_div.vhdl(72[25:33])
    defparam counter3_39__i11.GSR = "ENABLED";
    FD1S3IX counter3_39__i10 (.D(n133[10]), .CK(clk_c), .CD(n135), .Q(counter3[10])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/clk_div.vhdl(72[25:33])
    defparam counter3_39__i10.GSR = "ENABLED";
    FD1S3IX counter3_39__i9 (.D(n133[9]), .CK(clk_c), .CD(n135), .Q(counter3[9])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/clk_div.vhdl(72[25:33])
    defparam counter3_39__i9.GSR = "ENABLED";
    FD1S3IX counter3_39__i8 (.D(n133[8]), .CK(clk_c), .CD(n135), .Q(counter3[8])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/clk_div.vhdl(72[25:33])
    defparam counter3_39__i8.GSR = "ENABLED";
    FD1S3IX counter3_39__i7 (.D(n133[7]), .CK(clk_c), .CD(n135), .Q(counter3[7])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/clk_div.vhdl(72[25:33])
    defparam counter3_39__i7.GSR = "ENABLED";
    FD1S3IX counter3_39__i6 (.D(n133[6]), .CK(clk_c), .CD(n135), .Q(counter3[6])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/clk_div.vhdl(72[25:33])
    defparam counter3_39__i6.GSR = "ENABLED";
    FD1S3IX counter3_39__i5 (.D(n133[5]), .CK(clk_c), .CD(n135), .Q(counter3[5])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/clk_div.vhdl(72[25:33])
    defparam counter3_39__i5.GSR = "ENABLED";
    FD1S3IX counter3_39__i4 (.D(n133[4]), .CK(clk_c), .CD(n135), .Q(counter3[4])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/clk_div.vhdl(72[25:33])
    defparam counter3_39__i4.GSR = "ENABLED";
    FD1S3IX counter3_39__i3 (.D(n133[3]), .CK(clk_c), .CD(n135), .Q(counter3[3])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/clk_div.vhdl(72[25:33])
    defparam counter3_39__i3.GSR = "ENABLED";
    FD1S3IX counter3_39__i2 (.D(n133[2]), .CK(clk_c), .CD(n135), .Q(counter3[2])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/clk_div.vhdl(72[25:33])
    defparam counter3_39__i2.GSR = "ENABLED";
    FD1S3IX counter3_39__i1 (.D(n133[1]), .CK(clk_c), .CD(n135), .Q(counter3[1])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/clk_div.vhdl(72[25:33])
    defparam counter3_39__i1.GSR = "ENABLED";
    CCU2C equal_141_32 (.A0(n222), .B0(n223), .C0(n227), .D0(n231), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n239), 
          .S1(n135));
    defparam equal_141_32.INIT0 = 16'h0001;
    defparam equal_141_32.INIT1 = 16'h0000;
    defparam equal_141_32.INJECT1_0 = "YES";
    defparam equal_141_32.INJECT1_1 = "NO";
    CCU2C equal_141_31 (.A0(counter3[17]), .B0(counter3[26]), .C0(counter3[22]), 
          .D0(counter3[24]), .A1(counter3[12]), .B1(counter3[28]), .C1(counter3[31]), 
          .D1(n221), .CIN(n238), .COUT(n239));
    defparam equal_141_31.INIT0 = 16'h0001;
    defparam equal_141_31.INIT1 = 16'h0001;
    defparam equal_141_31.INJECT1_0 = "YES";
    defparam equal_141_31.INJECT1_1 = "YES";
    LUT4 i131_1_lut (.A(counter3[3]), .Z(n223)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/clk_div.vhdl(72[25:33])
    defparam i131_1_lut.init = 16'h5555;
    LUT4 i135_1_lut (.A(counter3[8]), .Z(n227)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/clk_div.vhdl(72[25:33])
    defparam i135_1_lut.init = 16'h5555;
    LUT4 i139_1_lut (.A(counter3[5]), .Z(n231)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/clk_div.vhdl(72[25:33])
    defparam i139_1_lut.init = 16'h5555;
    LUT4 i129_1_lut (.A(counter3[13]), .Z(n221)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/clk_div.vhdl(72[25:33])
    defparam i129_1_lut.init = 16'h5555;
    LUT4 i80_1_lut (.A(counter3[4]), .Z(n172)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/clk_div.vhdl(72[25:33])
    defparam i80_1_lut.init = 16'h5555;
    LUT4 i128_1_lut (.A(counter3[10]), .Z(n220)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/clk_div.vhdl(72[25:33])
    defparam i128_1_lut.init = 16'h5555;
    CCU2C counter3_39_add_4_33 (.A0(counter3[31]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n167), .S0(n133[31]));   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/clk_div.vhdl(72[25:33])
    defparam counter3_39_add_4_33.INIT0 = 16'haaa0;
    defparam counter3_39_add_4_33.INIT1 = 16'h0000;
    defparam counter3_39_add_4_33.INJECT1_0 = "NO";
    defparam counter3_39_add_4_33.INJECT1_1 = "NO";
    LUT4 i134_1_lut (.A(counter3[0]), .Z(n226)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/clk_div.vhdl(72[25:33])
    defparam i134_1_lut.init = 16'h5555;
    CCU2C equal_141_29 (.A0(counter3[30]), .B0(counter3[29]), .C0(counter3[16]), 
          .D0(counter3[25]), .A1(counter3[27]), .B1(counter3[9]), .C1(counter3[21]), 
          .D1(counter3[18]), .CIN(n237), .COUT(n238));
    defparam equal_141_29.INIT0 = 16'h0001;
    defparam equal_141_29.INIT1 = 16'h0001;
    defparam equal_141_29.INJECT1_0 = "YES";
    defparam equal_141_29.INJECT1_1 = "YES";
    CCU2C equal_141_27 (.A0(n172), .B0(counter3[19]), .C0(counter3[20]), 
          .D0(counter3[23]), .A1(counter3[11]), .B1(counter3[15]), .C1(counter3[2]), 
          .D1(counter3[1]), .CIN(n236), .COUT(n237));
    defparam equal_141_27.INIT0 = 16'h0001;
    defparam equal_141_27.INIT1 = 16'h0001;
    defparam equal_141_27.INJECT1_0 = "YES";
    defparam equal_141_27.INJECT1_1 = "YES";
    LUT4 i138_1_lut (.A(counter3[14]), .Z(n230)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/clk_div.vhdl(72[25:33])
    defparam i138_1_lut.init = 16'h5555;
    CCU2C equal_141_0 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n220), .B1(n226), .C1(counter3[6]), .D1(n230), .COUT(n236));
    defparam equal_141_0.INIT0 = 16'h000F;
    defparam equal_141_0.INIT1 = 16'h0001;
    defparam equal_141_0.INJECT1_0 = "NO";
    defparam equal_141_0.INJECT1_1 = "YES";
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

