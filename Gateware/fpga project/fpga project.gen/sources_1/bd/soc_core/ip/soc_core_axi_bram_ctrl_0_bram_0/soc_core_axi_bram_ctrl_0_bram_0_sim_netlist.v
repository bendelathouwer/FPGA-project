// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Fri Mar  6 20:06:37 2026
// Host        : DESKTOP-1SOIGBV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/Users/bende/Documents/GitHub/FPGA-project/Gateware/fpga
//               project/fpga
//               project.gen/sources_1/bd/soc_core/ip/soc_core_axi_bram_ctrl_0_bram_0/soc_core_axi_bram_ctrl_0_bram_0_sim_netlist.v}
// Design      : soc_core_axi_bram_ctrl_0_bram_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "soc_core_axi_bram_ctrl_0_bram_0,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module soc_core_axi_bram_ctrl_0_bram_0
   (clka,
    rsta,
    ena,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    web,
    addrb,
    dinb,
    doutb,
    rsta_busy,
    rstb_busy);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [31:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_mode = "slave BRAM_PORTB" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB RST" *) input rstb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [3:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [31:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [31:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;
  output rsta_busy;
  output rstb_busy;

  wire [31:0]addra;
  wire [31:0]addrb;
  wire clka;
  wire clkb;
  wire [31:0]dina;
  wire [31:0]dinb;
  wire [31:0]douta;
  wire [31:0]doutb;
  wire ena;
  wire enb;
  wire rsta;
  wire rsta_busy;
  wire rstb;
  wire rstb_busy;
  wire [3:0]wea;
  wire [3:0]web;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "32" *) 
  (* C_ADDRB_WIDTH = "32" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "1" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     10.7492 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "1" *) 
  (* C_HAS_RSTB = "1" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "NONE" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2048" *) 
  (* C_READ_DEPTH_B = "2048" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "1" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
  (* C_WRITE_DEPTH_A = "2048" *) 
  (* C_WRITE_DEPTH_B = "2048" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  soc_core_axi_bram_ctrl_0_bram_0_blk_mem_gen_v8_4_12 U0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addra[12:2],1'b0,1'b0}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addrb[12:2],1'b0,1'b0}),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[31:0]),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(rsta),
        .rsta_busy(rsta_busy),
        .rstb(rstb),
        .rstb_busy(rstb_busy),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[31:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
YqH9kwIC39+qbZg4PSfFsXuB9k9wnuxNryS/CfnEri6Ci9fSC6fsrQ/T/hnt3u/yolbJ8DJa1Qu6
Qnm24A9jLbA+fu3Nsmm6/rM6a4vU6OfVl/gTFd/CiWDutv6Dhn6Lim4uUNPahoOR/A2Yc4Zo2tdI
kMLO9gn9WlH2l3O2oXs=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XJYO2VHd/cnMxQd3i7/2qRhl57dl+doEKuhAunQyv3vpGRG/jlNxj8PqrgLoF0HMdqE3qJUVE/oq
kBSapqjVjLDMOrNGQ+Tc6VGsKMZH8FE/TXHQJ/IM5Iuiu2eozEwwVUomF+7cfqn+9OsVsqCONQ1M
g0oRlangiqasJDhhMfnlGGqwAwmgWRGQA6dmhTuua1s8zdvIv540zY6p5au8cAKVhqyyKK7wbxEE
SGuFqX+NYoyRV+rfWCcWM+hJEmnWS8LNAKkd13YE2+17sPYzUdZ23DmTxXK6KlAxKFW27CBySUfg
qdNXp2DSs2KAQYih27pBNMuHfGbM/ATFPWFvxg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
lYoEi/e8HsDTz6N11EDe/B/iitERmeYndlCklmCluwgb0N4W80JUGVlkd7NlRZHRNhxaNBJPkcjC
n61nO0tb17NwsMwjbY5TF8JWRYTNw1JXCFacvQYrdKv4/7QNQEtwVGiCLxFhOA8aHlWMZIrc2fri
VRMVWaEBcPwCGorlVIM=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QEw9fEsWFbdX0OQLvYs/gl+zyEOW3ak9TdQVaq+0AXXOT3LIqF7wDxJ6ZBnlf9mNbdsUVH5tAz1o
H8u7ihJl1L3THEvugW+TS8hkvVbEA9rKO2vV15KAj4Lla7UdFT/xDfe79RFarlLI7yGrubjgdoRi
QWy//UKsffG7IWNwmoSuppWiWB4ZHJtkunNyIkm70JPGyZF62VxJg1MTT+5LUbZG5vZjjuHZud9w
xJaKv1tFP/x8RVqLU5gPOqGqTW7/nKO2S+450Vo4D9vAmBVVcXpaL1EbSmCvQ+qJmcQKtf9qYFRV
Zko08hbpHjPxstqvTDro01jRzB8592m4xU2TWA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TC7q853CWBPPJgbRfgDV1lmjUwSAtliljShAyNFg8sfRfwDzchthzoSPH1UCHV++E2JXacEKq1lB
UWsNP92U4Xh0/Gu+6esOI0pJb8I+TRTxyBN1I4cRQEfQHcwfhbSdeH3yX9OV3opLEqYmT37hWU+J
zCawYnxVESI0FtRzEXve9gdEWlrKKckrT/hp4mvxxOjvOkOSQBvy0elgUOqh6mEOZl+JnUbsR+Wm
CoZLE1eefMZy3FnVmyDNPv3JPXi88aLXMyimal0MYFkTiS4XJiGT3eAIMIbksehXY+eYi/KFpZWQ
GHpX+lG3UmiWWLwyPakFwKEHbrBc70AlJ2eV9g==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
j9nmCKgjPWNChPbpSW6EWLrMA6oCG2JGPoum8px09v0PEAh0DRXZi0J8HPzXUsZgOEMcKpA7X54u
YFcDDCLAQ+urha/eSPbQYHQh4yGCursxAQ1C6LEyNQ2wJ0eLlO2bJeAl/gof06zqsYVM2lLJVNv5
wao1k2bmgPdfpfY3c9vPD0fSMuZPS41EoRS0cQhO5GTZnKdjxm6tEUL3GnTjB8ynSCIbCJUsMtAX
4FRHNa52gudx5B5fagR+lXgFhE7e++rWTJELr7SYB+r5Es8qZLTpCH8TrQxEkV0rY/+e4sAjNE2D
gHw8GD7VcUtc15B8y1BbVmh29qc8Nd3V2i/miA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UkCD6I/Vye4qNoNoa3hIexBXG3xyKUJPAHAjIo7UcNVCDXpMQiYEtPDqExZMfiPlJn2nswCYIfIJ
FYWqMCloKSQyyI/7yZ2EtbyWEklb/P5IyZyvGi6hhFUo/JFTb12b4bK0gZPr+bCDdlVQKTx5GVHz
wptdUJO2omSj8axVMPbLRRtVzlJIZ29dTJ2ATXVXAcBxPnFfHRAMnYYKLeeLExX61vQvpqrkLQHm
XG7hpVzJi56gYKAzxa2BLq072OCVpVS70bfWlhlSTVcSlCrUf+EcarEk4FD8+Ih2NCvrqremG6yn
TtcBn8Xr8M/6zhOYvLi6AD6eArDMKA8n+Ccv8A==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
A5y5QVZU8yjPexRVPioSiAGohCHD5DX5FVobuMyhcgQRExLUhPvnnS8HOtxTj/2IapEcz68gFMGG
Hpi+m725u85/om/Vze9pGIW9Mn328Kz2FIg3W5EvGstfGwY+48LiAGAmTR269JS4lJGVYWYOz7Xk
S8cEsFd2m7j8iyKtARJzD90+UdXq/cIIh725jC9i8nbgxB364zddvm1Z/DF3JRw1qFp6GGcuRai1
KNcJ1j8c9wtIgktpsteU3e5+bxHEw8NT3gWXUFYjm00NDq97Jals8Jjktmum2nQxoF7ivPacfEey
gnSF6jRMkTsZObzc30hAhs0CEtc33hZLhPLHSn8pQ0WyvKJLHdd5s2yckgTZtqxC1Sbwe7WEgNXe
ZMX3pIkz+aoXsAL7GBLyVBMVQcyMoF0w8QGAaTe8sqatABwPqXidYRqNROTf62IYcMpV89XYgaTv
EwIn/oni9KOFd2BFVxRZbFGGC4IjvigsTBUijI+Dk6kVnDh240clGcc4

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Omtp+lCaqUx7Z4qdFj2zrN8LpCkit2eX4hlMtig+ielGm/x4FSZkpjoFmiqdKFPi2eg0pg09MSai
XyGH68UzAR7Xrj8f1jlIoUmMKp4GcxfdqfTeuu7kWGOJEP6cvgTjSJFj2gawDv7f4yZcltnK2x0L
e4GW/rBTmGvZtKWb2ahjINLxPuh3dDaSaWdb+zVgbtyrI5FrjxBkq+aOxSjyNsqnCx1L0uWbxnkl
88NbXN3dTaECXHNm/fsleayM5hKis7kTv9BFajJMGy+BhQlmIYpE+F5zchnTTFUFJZCz1sX9Fc8e
HcY7irB8mR3ajdzjUZLBQEMktp096Nheq3U75A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hpeBLwN9x2ZFDwroYLlUe5GjjDepHik2l0c2s3/6S7JPCRkzQSyt2V1Ad/JewAs/QNp5SXSbYYB4
rQl0My1LDMF3xw43r0g2IbcyHVpPhGp0W5msuQdF67afnsRv90iJYWLMI3QkYGCTWAzl4HrLxFSg
3z8XZRK670IcxznOrlvgHmIKsvubZrBkuc1EynrVb9Nw16QnIx2rc4WgcEXeFf+4i1RoYLDd3gXK
NFCNMdtaRYUThunFP6Z4ViZ5UnDmKq+IMhd31jTaqIlWOBDxPI1+v5RJYxIyTbn4rxlKR2fNbl5/
z4OUjBTd+1GH3I2OXlqmAOvIhpe2Z2HH7nZu/A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Mt2RhTSUwEIEWeNARbyL+EdfS1UF6nPaL/fKl/7oO2gina93egwCWDLl1fbBtkfaPco0cu4MJ9K3
OraAsyHRlY+MNShmJ1LzAIA1LjZx4y55lu9dlQqSUXR7AW7wVbkg1864mK+hM/1XygU0jvebKNW9
B7xSER+asLO6pxi0mt7uC2PHxLPAYEszFhmnap82TtbDGdQ2qtyekY+ngs+N2fAdsblxVwJruiMl
e6XJ127M8N1mYwhWU2HtRpBOSnnKoHgD9fG51XK/rhk8DxT66QnX9uLPB+H25eDupBJGi1Y5o6x8
hOwZiSUVlBLh7brfzevh7+eRn+7es6wBas0+3w==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 61408)
`pragma protect data_block
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
DYSiaRQq93nh7RaAkEHCdoaQsQ==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
