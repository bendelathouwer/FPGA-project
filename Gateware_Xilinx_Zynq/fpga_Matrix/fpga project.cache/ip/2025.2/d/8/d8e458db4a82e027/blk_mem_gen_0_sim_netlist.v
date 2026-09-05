// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Mon May 25 08:00:45 2026
// Host        : Benny running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [3:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;

  wire [3:0]addra;
  wire clka;
  wire [15:0]dina;
  wire [15:0]douta;
  wire ena;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [15:0]NLW_U0_doutb_UNCONNECTED;
  wire [3:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "4" *) 
  (* C_ADDRB_WIDTH = "4" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.87285 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "16" *) 
  (* C_READ_DEPTH_B = "16" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "16" *) 
  (* C_WRITE_DEPTH_B = "16" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_12 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[15:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[3:0]),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[3:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20320)
`pragma protect data_block
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
KtD6T3Y0gTh/jYimkRfgTXD/IUJTB5OzlEUJHg==
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
