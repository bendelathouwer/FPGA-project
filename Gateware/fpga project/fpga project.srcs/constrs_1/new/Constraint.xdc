## This file is a general .xdc for the ARTY Z7-20 Rev.B
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project

## Clock Signal
set_property -dict {PACKAGE_PIN H16 IOSTANDARD LVCMOS33} [get_ports clk]
create_clock -period 8.000 -name sys_clk_pin -waveform {0.000 4.000} -add [get_ports clk]


## Pmod Header JA
#set_property -dict { PACKAGE_PIN Y18   IOSTANDARD LVCMOS33 } [get_ports { ja_p[1] }]; #IO_L17P_T2_34 Sch=JA1_P (Pin 1)
#set_property -dict { PACKAGE_PIN Y19   IOSTANDARD LVCMOS33 } [get_ports { ja_n[1] }]; #IO_L17N_T2_34 Sch=JA1_N (Pin 2)
#set_property -dict { PACKAGE_PIN Y16   IOSTANDARD LVCMOS33 } [get_ports { ja_p[2] }]; #IO_L7P_T1_34 Sch=JA2_P (Pin 3)
#set_property -dict { PACKAGE_PIN Y17   IOSTANDARD LVCMOS33 } [get_ports { ja_n[2] }]; #IO_L7N_T1_34 Sch=JA2_N (Pin 4)
#set_property -dict { PACKAGE_PIN U18   IOSTANDARD LVCMOS33 } [get_ports { ja_p[3] }]; #IO_L12P_T1_MRCC_34 Sch=JA3_P (Pin 7)
#set_property -dict { PACKAGE_PIN U19   IOSTANDARD LVCMOS33 } [get_ports { ja_n[3] }]; #IO_L12N_T1_MRCC_34 Sch=JA3_N (Pin 8)
#set_property -dict { PACKAGE_PIN W18   IOSTANDARD LVCMOS33 } [get_ports { ja_p[4] }]; #IO_L22P_T3_34 Sch=JA4_P (Pin 9)
#set_property -dict { PACKAGE_PIN W19   IOSTANDARD LVCMOS33 } [get_ports { ja_n[4] }]; #IO_L22N_T3_34 Sch=JA4_N (Pin 10)

## Pmod Header JB
#set_property -dict { PACKAGE_PIN W14   IOSTANDARD LVCMOS33 } [get_ports { jb_p[1] }]; #IO_L8P_T1_34 Sch=JB1_P (Pin 1)
#set_property -dict { PACKAGE_PIN Y14   IOSTANDARD LVCMOS33 } [get_ports { jb_n[1] }]; #IO_L8N_T1_34 Sch=JB1_N (Pin 2)
#set_property -dict { PACKAGE_PIN T11   IOSTANDARD LVCMOS33 } [get_ports { jb_p[2] }]; #IO_L1P_T0_34 Sch=JB2_P (Pin 3)
#set_property -dict { PACKAGE_PIN T10   IOSTANDARD LVCMOS33 } [get_ports { jb_n[2] }]; #IO_L1N_T0_34 Sch=JB2_N (Pin 4)
#set_property -dict { PACKAGE_PIN V16   IOSTANDARD LVCMOS33 } [get_ports { jb_p[3] }]; #IO_L18P_T2_34 Sch=JB3_P (Pin 7)
#set_property -dict { PACKAGE_PIN W16   IOSTANDARD LVCMOS33 } [get_ports { jb_n[3] }]; #IO_L18N_T2_34 Sch=JB3_N (Pin 8)
#set_property -dict { PACKAGE_PIN V12   IOSTANDARD LVCMOS33 } [get_ports { jb_p[4] }]; #IO_L4P_T0_34 Sch=JB4_P (Pin 9)
#set_property -dict { PACKAGE_PIN W13   IOSTANDARD LVCMOS33 } [get_ports { jb_n[4] }]; #IO_L4N_T0_34 Sch=JB4_N (Pin 10)



## HDMI RX Signals


set_property PROHIBIT true [get_sites T5]
set_property PROHIBIT true [get_sites T9]
set_property PROHIBIT true [get_sites U10]
set_property PROHIBIT true [get_sites U5]
set_property PROHIBIT true [get_sites U7]
set_property PROHIBIT true [get_sites U8]
set_property PROHIBIT true [get_sites U9]
set_property PROHIBIT true [get_sites V10]
set_property PROHIBIT true [get_sites V11]
set_property PROHIBIT true [get_sites V5]
set_property PROHIBIT true [get_sites V6]
set_property PROHIBIT true [get_sites V7]
set_property PROHIBIT true [get_sites V8]
set_property PROHIBIT true [get_sites W10]
set_property PROHIBIT true [get_sites W11]
set_property PROHIBIT true [get_sites W6]
set_property PROHIBIT true [get_sites W8]
set_property PROHIBIT true [get_sites W9]
set_property PROHIBIT true [get_sites Y11]
set_property PROHIBIT true [get_sites Y12]
set_property PROHIBIT true [get_sites Y13]
set_property PROHIBIT true [get_sites Y6]
set_property PROHIBIT true [get_sites Y7]
set_property PROHIBIT true [get_sites Y8]
set_property PROHIBIT true [get_sites Y9]
