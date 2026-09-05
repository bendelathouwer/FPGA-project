// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Fri Mar  6 20:06:35 2026
// Host        : DESKTOP-1SOIGBV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ soc_core_axi_bram_ctrl_0_bram_0_sim_netlist.v
// Design      : soc_core_axi_bram_ctrl_0_bram_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "soc_core_axi_bram_ctrl_0_bram_0,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_12 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 61280)
`pragma protect data_block
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
AqnDUt4=
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
