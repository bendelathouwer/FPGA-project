// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.14.0.75.2
// Netlist written on Wed May 20 17:12:18 2026
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
    
    
    wire GND_net, VCC_net;
    
    VHI i12 (.Z(VCC_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    VLO i1 (.Z(GND_net));
    GSR GSR_INST (.GSR(VCC_net));
    OB OE_pad (.I(GND_net), .O(OE));   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/top.vhdl(17[9:11])
    OB LAT_pad (.I(GND_net), .O(LAT));   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/top.vhdl(16[9:12])
    OB E_pad (.I(GND_net), .O(E));   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/top.vhdl(14[21:22])
    OB D_pad (.I(GND_net), .O(D));   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/top.vhdl(14[18:19])
    OB C_pad (.I(GND_net), .O(C));   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/top.vhdl(14[15:16])
    OB B_pad (.I(GND_net), .O(B));   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/top.vhdl(14[12:13])
    OB A_pad (.I(GND_net), .O(A));   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/top.vhdl(14[9:10])
    OB B2_pad (.I(GND_net), .O(B2));   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/top.vhdl(12[17:19])
    OB G2_pad (.I(GND_net), .O(G2));   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/top.vhdl(12[13:15])
    OB R2_pad (.I(GND_net), .O(R2));   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/top.vhdl(12[9:11])
    OB B1_pad (.I(GND_net), .O(B1));   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/top.vhdl(11[17:19])
    OB G1_pad (.I(GND_net), .O(G1));   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/top.vhdl(11[13:15])
    OB R1_pad (.I(GND_net), .O(R1));   // c:/users/bende/documents/github/fpga-project/gateware_latice_epc5/top.vhdl(11[9:11])
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

