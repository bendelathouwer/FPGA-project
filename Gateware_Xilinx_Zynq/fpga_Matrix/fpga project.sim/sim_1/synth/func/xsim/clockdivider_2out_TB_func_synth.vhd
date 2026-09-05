-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
-- Date        : Sat Mar  7 09:34:13 2026
-- Host        : DESKTOP-1SOIGBV running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file {C:/Users/bende/Documents/GitHub/FPGA-project/Gateware/fpga
--               project/fpga project.sim/sim_1/synth/func/xsim/clockdivider_2out_TB_func_synth.vhd}
-- Design      : clock_divider
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity clock_divider is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    clk_out1 : out STD_LOGIC;
    clk_out2 : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of clock_divider : entity is true;
  attribute DIVISOR1 : integer;
  attribute DIVISOR1 of clock_divider : entity is 50000000;
  attribute DIVISOR2 : integer;
  attribute DIVISOR2 of clock_divider : entity is 20000000;
end clock_divider;

architecture STRUCTURE of clock_divider is
  signal clk_IBUF : STD_LOGIC;
  signal clk_IBUF_BUFG : STD_LOGIC;
  signal clk_out1_OBUF : STD_LOGIC;
  signal clk_out2_OBUF : STD_LOGIC;
  signal clk_reg1_i_1_n_0 : STD_LOGIC;
  signal clk_reg2_i_1_n_0 : STD_LOGIC;
  signal counter1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \counter1[31]_i_10_n_0\ : STD_LOGIC;
  signal \counter1[31]_i_2_n_0\ : STD_LOGIC;
  signal \counter1[31]_i_3_n_0\ : STD_LOGIC;
  signal \counter1[31]_i_4_n_0\ : STD_LOGIC;
  signal \counter1[31]_i_5_n_0\ : STD_LOGIC;
  signal \counter1[31]_i_7_n_0\ : STD_LOGIC;
  signal \counter1[31]_i_8_n_0\ : STD_LOGIC;
  signal \counter1[31]_i_9_n_0\ : STD_LOGIC;
  signal \counter1_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \counter1_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \counter1_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \counter1_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \counter1_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \counter1_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \counter1_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \counter1_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \counter1_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \counter1_reg[20]_i_2_n_1\ : STD_LOGIC;
  signal \counter1_reg[20]_i_2_n_2\ : STD_LOGIC;
  signal \counter1_reg[20]_i_2_n_3\ : STD_LOGIC;
  signal \counter1_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \counter1_reg[24]_i_2_n_1\ : STD_LOGIC;
  signal \counter1_reg[24]_i_2_n_2\ : STD_LOGIC;
  signal \counter1_reg[24]_i_2_n_3\ : STD_LOGIC;
  signal \counter1_reg[28]_i_2_n_0\ : STD_LOGIC;
  signal \counter1_reg[28]_i_2_n_1\ : STD_LOGIC;
  signal \counter1_reg[28]_i_2_n_2\ : STD_LOGIC;
  signal \counter1_reg[28]_i_2_n_3\ : STD_LOGIC;
  signal \counter1_reg[31]_i_6_n_2\ : STD_LOGIC;
  signal \counter1_reg[31]_i_6_n_3\ : STD_LOGIC;
  signal \counter1_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \counter1_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \counter1_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \counter1_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \counter1_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \counter1_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \counter1_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \counter1_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \counter1_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter1_reg_n_0_[10]\ : STD_LOGIC;
  signal \counter1_reg_n_0_[11]\ : STD_LOGIC;
  signal \counter1_reg_n_0_[12]\ : STD_LOGIC;
  signal \counter1_reg_n_0_[13]\ : STD_LOGIC;
  signal \counter1_reg_n_0_[14]\ : STD_LOGIC;
  signal \counter1_reg_n_0_[15]\ : STD_LOGIC;
  signal \counter1_reg_n_0_[16]\ : STD_LOGIC;
  signal \counter1_reg_n_0_[17]\ : STD_LOGIC;
  signal \counter1_reg_n_0_[18]\ : STD_LOGIC;
  signal \counter1_reg_n_0_[19]\ : STD_LOGIC;
  signal \counter1_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter1_reg_n_0_[20]\ : STD_LOGIC;
  signal \counter1_reg_n_0_[21]\ : STD_LOGIC;
  signal \counter1_reg_n_0_[22]\ : STD_LOGIC;
  signal \counter1_reg_n_0_[23]\ : STD_LOGIC;
  signal \counter1_reg_n_0_[24]\ : STD_LOGIC;
  signal \counter1_reg_n_0_[25]\ : STD_LOGIC;
  signal \counter1_reg_n_0_[26]\ : STD_LOGIC;
  signal \counter1_reg_n_0_[27]\ : STD_LOGIC;
  signal \counter1_reg_n_0_[28]\ : STD_LOGIC;
  signal \counter1_reg_n_0_[29]\ : STD_LOGIC;
  signal \counter1_reg_n_0_[2]\ : STD_LOGIC;
  signal \counter1_reg_n_0_[30]\ : STD_LOGIC;
  signal \counter1_reg_n_0_[31]\ : STD_LOGIC;
  signal \counter1_reg_n_0_[3]\ : STD_LOGIC;
  signal \counter1_reg_n_0_[4]\ : STD_LOGIC;
  signal \counter1_reg_n_0_[5]\ : STD_LOGIC;
  signal \counter1_reg_n_0_[6]\ : STD_LOGIC;
  signal \counter1_reg_n_0_[7]\ : STD_LOGIC;
  signal \counter1_reg_n_0_[8]\ : STD_LOGIC;
  signal \counter1_reg_n_0_[9]\ : STD_LOGIC;
  signal counter2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \counter2[31]_i_10_n_0\ : STD_LOGIC;
  signal \counter2[31]_i_1_n_0\ : STD_LOGIC;
  signal \counter2[31]_i_3_n_0\ : STD_LOGIC;
  signal \counter2[31]_i_4_n_0\ : STD_LOGIC;
  signal \counter2[31]_i_5_n_0\ : STD_LOGIC;
  signal \counter2[31]_i_6_n_0\ : STD_LOGIC;
  signal \counter2[31]_i_7_n_0\ : STD_LOGIC;
  signal \counter2[31]_i_8_n_0\ : STD_LOGIC;
  signal \counter2[31]_i_9_n_0\ : STD_LOGIC;
  signal \counter2_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \counter2_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \counter2_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \counter2_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \counter2_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \counter2_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \counter2_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \counter2_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \counter2_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \counter2_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \counter2_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \counter2_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \counter2_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \counter2_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \counter2_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \counter2_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \counter2_reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \counter2_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \counter2_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \counter2_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \counter2_reg[31]_i_2_n_2\ : STD_LOGIC;
  signal \counter2_reg[31]_i_2_n_3\ : STD_LOGIC;
  signal \counter2_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter2_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \counter2_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \counter2_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \counter2_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \counter2_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \counter2_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \counter2_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal reset_IBUF : STD_LOGIC;
  signal \NLW_counter1_reg[31]_i_6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_counter1_reg[31]_i_6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_counter2_reg[31]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_counter2_reg[31]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \counter1_reg[12]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \counter1_reg[16]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \counter1_reg[20]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \counter1_reg[24]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \counter1_reg[28]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \counter1_reg[31]_i_6\ : label is 35;
  attribute ADDER_THRESHOLD of \counter1_reg[4]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \counter1_reg[8]_i_2\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter2[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \counter2[31]_i_10\ : label is "soft_lutpair0";
  attribute ADDER_THRESHOLD of \counter2_reg[12]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \counter2_reg[16]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \counter2_reg[20]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \counter2_reg[24]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \counter2_reg[28]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \counter2_reg[31]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \counter2_reg[4]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \counter2_reg[8]_i_1\ : label is 35;
begin
clk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clk_IBUF,
      O => clk_IBUF_BUFG
    );
clk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => clk,
      O => clk_IBUF
    );
clk_out1_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => clk_out1_OBUF,
      O => clk_out1
    );
clk_out2_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => clk_out2_OBUF,
      O => clk_out2
    );
clk_reg1_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0001"
    )
        port map (
      I0 => \counter1[31]_i_2_n_0\,
      I1 => \counter1[31]_i_3_n_0\,
      I2 => \counter1[31]_i_4_n_0\,
      I3 => \counter1[31]_i_5_n_0\,
      I4 => clk_out1_OBUF,
      O => clk_reg1_i_1_n_0
    );
clk_reg1_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => clk_reg1_i_1_n_0,
      Q => clk_out1_OBUF
    );
clk_reg2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000010AAAAAA9A"
    )
        port map (
      I0 => clk_out2_OBUF,
      I1 => \counter2[31]_i_3_n_0\,
      I2 => \counter2[31]_i_4_n_0\,
      I3 => \counter2[31]_i_5_n_0\,
      I4 => \counter2[31]_i_6_n_0\,
      I5 => reset_IBUF,
      O => clk_reg2_i_1_n_0
    );
clk_reg2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => clk_reg2_i_1_n_0,
      Q => clk_out2_OBUF,
      R => '0'
    );
\counter1[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter1_reg_n_0_[0]\,
      O => counter1(0)
    );
\counter1[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \counter1[31]_i_2_n_0\,
      I1 => \counter1[31]_i_3_n_0\,
      I2 => \counter1[31]_i_4_n_0\,
      I3 => \counter1[31]_i_5_n_0\,
      I4 => data0(10),
      O => counter1(10)
    );
\counter1[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \counter1[31]_i_2_n_0\,
      I1 => \counter1[31]_i_3_n_0\,
      I2 => \counter1[31]_i_4_n_0\,
      I3 => \counter1[31]_i_5_n_0\,
      I4 => data0(11),
      O => counter1(11)
    );
\counter1[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \counter1[31]_i_2_n_0\,
      I1 => \counter1[31]_i_3_n_0\,
      I2 => \counter1[31]_i_4_n_0\,
      I3 => \counter1[31]_i_5_n_0\,
      I4 => data0(12),
      O => counter1(12)
    );
\counter1[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \counter1[31]_i_2_n_0\,
      I1 => \counter1[31]_i_3_n_0\,
      I2 => \counter1[31]_i_4_n_0\,
      I3 => \counter1[31]_i_5_n_0\,
      I4 => data0(13),
      O => counter1(13)
    );
\counter1[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \counter1[31]_i_2_n_0\,
      I1 => \counter1[31]_i_3_n_0\,
      I2 => \counter1[31]_i_4_n_0\,
      I3 => \counter1[31]_i_5_n_0\,
      I4 => data0(14),
      O => counter1(14)
    );
\counter1[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \counter1[31]_i_2_n_0\,
      I1 => \counter1[31]_i_3_n_0\,
      I2 => \counter1[31]_i_4_n_0\,
      I3 => \counter1[31]_i_5_n_0\,
      I4 => data0(15),
      O => counter1(15)
    );
\counter1[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \counter1[31]_i_2_n_0\,
      I1 => \counter1[31]_i_3_n_0\,
      I2 => \counter1[31]_i_4_n_0\,
      I3 => \counter1[31]_i_5_n_0\,
      I4 => data0(16),
      O => counter1(16)
    );
\counter1[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \counter1[31]_i_2_n_0\,
      I1 => \counter1[31]_i_3_n_0\,
      I2 => \counter1[31]_i_4_n_0\,
      I3 => \counter1[31]_i_5_n_0\,
      I4 => data0(17),
      O => counter1(17)
    );
\counter1[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \counter1[31]_i_2_n_0\,
      I1 => \counter1[31]_i_3_n_0\,
      I2 => \counter1[31]_i_4_n_0\,
      I3 => \counter1[31]_i_5_n_0\,
      I4 => data0(18),
      O => counter1(18)
    );
\counter1[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \counter1[31]_i_2_n_0\,
      I1 => \counter1[31]_i_3_n_0\,
      I2 => \counter1[31]_i_4_n_0\,
      I3 => \counter1[31]_i_5_n_0\,
      I4 => data0(19),
      O => counter1(19)
    );
\counter1[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \counter1[31]_i_2_n_0\,
      I1 => \counter1[31]_i_3_n_0\,
      I2 => \counter1[31]_i_4_n_0\,
      I3 => \counter1[31]_i_5_n_0\,
      I4 => data0(1),
      O => counter1(1)
    );
\counter1[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \counter1[31]_i_2_n_0\,
      I1 => \counter1[31]_i_3_n_0\,
      I2 => \counter1[31]_i_4_n_0\,
      I3 => \counter1[31]_i_5_n_0\,
      I4 => data0(20),
      O => counter1(20)
    );
\counter1[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \counter1[31]_i_2_n_0\,
      I1 => \counter1[31]_i_3_n_0\,
      I2 => \counter1[31]_i_4_n_0\,
      I3 => \counter1[31]_i_5_n_0\,
      I4 => data0(21),
      O => counter1(21)
    );
\counter1[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \counter1[31]_i_2_n_0\,
      I1 => \counter1[31]_i_3_n_0\,
      I2 => \counter1[31]_i_4_n_0\,
      I3 => \counter1[31]_i_5_n_0\,
      I4 => data0(22),
      O => counter1(22)
    );
\counter1[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \counter1[31]_i_2_n_0\,
      I1 => \counter1[31]_i_3_n_0\,
      I2 => \counter1[31]_i_4_n_0\,
      I3 => \counter1[31]_i_5_n_0\,
      I4 => data0(23),
      O => counter1(23)
    );
\counter1[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \counter1[31]_i_2_n_0\,
      I1 => \counter1[31]_i_3_n_0\,
      I2 => \counter1[31]_i_4_n_0\,
      I3 => \counter1[31]_i_5_n_0\,
      I4 => data0(24),
      O => counter1(24)
    );
\counter1[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \counter1[31]_i_2_n_0\,
      I1 => \counter1[31]_i_3_n_0\,
      I2 => \counter1[31]_i_4_n_0\,
      I3 => \counter1[31]_i_5_n_0\,
      I4 => data0(25),
      O => counter1(25)
    );
\counter1[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \counter1[31]_i_2_n_0\,
      I1 => \counter1[31]_i_3_n_0\,
      I2 => \counter1[31]_i_4_n_0\,
      I3 => \counter1[31]_i_5_n_0\,
      I4 => data0(26),
      O => counter1(26)
    );
\counter1[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \counter1[31]_i_2_n_0\,
      I1 => \counter1[31]_i_3_n_0\,
      I2 => \counter1[31]_i_4_n_0\,
      I3 => \counter1[31]_i_5_n_0\,
      I4 => data0(27),
      O => counter1(27)
    );
\counter1[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \counter1[31]_i_2_n_0\,
      I1 => \counter1[31]_i_3_n_0\,
      I2 => \counter1[31]_i_4_n_0\,
      I3 => \counter1[31]_i_5_n_0\,
      I4 => data0(28),
      O => counter1(28)
    );
\counter1[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \counter1[31]_i_2_n_0\,
      I1 => \counter1[31]_i_3_n_0\,
      I2 => \counter1[31]_i_4_n_0\,
      I3 => \counter1[31]_i_5_n_0\,
      I4 => data0(29),
      O => counter1(29)
    );
\counter1[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \counter1[31]_i_2_n_0\,
      I1 => \counter1[31]_i_3_n_0\,
      I2 => \counter1[31]_i_4_n_0\,
      I3 => \counter1[31]_i_5_n_0\,
      I4 => data0(2),
      O => counter1(2)
    );
\counter1[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \counter1[31]_i_2_n_0\,
      I1 => \counter1[31]_i_3_n_0\,
      I2 => \counter1[31]_i_4_n_0\,
      I3 => \counter1[31]_i_5_n_0\,
      I4 => data0(30),
      O => counter1(30)
    );
\counter1[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \counter1[31]_i_2_n_0\,
      I1 => \counter1[31]_i_3_n_0\,
      I2 => \counter1[31]_i_4_n_0\,
      I3 => \counter1[31]_i_5_n_0\,
      I4 => data0(31),
      O => counter1(31)
    );
\counter1[31]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \counter1_reg_n_0_[13]\,
      I1 => \counter1_reg_n_0_[12]\,
      I2 => \counter1_reg_n_0_[15]\,
      I3 => \counter1_reg_n_0_[14]\,
      O => \counter1[31]_i_10_n_0\
    );
\counter1[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFBFF"
    )
        port map (
      I0 => \counter1_reg_n_0_[18]\,
      I1 => \counter1_reg_n_0_[19]\,
      I2 => \counter1_reg_n_0_[16]\,
      I3 => \counter1_reg_n_0_[17]\,
      I4 => \counter1[31]_i_7_n_0\,
      O => \counter1[31]_i_2_n_0\
    );
\counter1[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => \counter1_reg_n_0_[26]\,
      I1 => \counter1_reg_n_0_[27]\,
      I2 => \counter1_reg_n_0_[24]\,
      I3 => \counter1_reg_n_0_[25]\,
      I4 => \counter1[31]_i_8_n_0\,
      O => \counter1[31]_i_3_n_0\
    );
\counter1[31]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => \counter1_reg_n_0_[2]\,
      I1 => \counter1_reg_n_0_[3]\,
      I2 => \counter1_reg_n_0_[0]\,
      I3 => \counter1_reg_n_0_[1]\,
      I4 => \counter1[31]_i_9_n_0\,
      O => \counter1[31]_i_4_n_0\
    );
\counter1[31]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \counter1_reg_n_0_[10]\,
      I1 => \counter1_reg_n_0_[11]\,
      I2 => \counter1_reg_n_0_[8]\,
      I3 => \counter1_reg_n_0_[9]\,
      I4 => \counter1[31]_i_10_n_0\,
      O => \counter1[31]_i_5_n_0\
    );
\counter1[31]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \counter1_reg_n_0_[21]\,
      I1 => \counter1_reg_n_0_[20]\,
      I2 => \counter1_reg_n_0_[23]\,
      I3 => \counter1_reg_n_0_[22]\,
      O => \counter1[31]_i_7_n_0\
    );
\counter1[31]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \counter1_reg_n_0_[29]\,
      I1 => \counter1_reg_n_0_[28]\,
      I2 => \counter1_reg_n_0_[31]\,
      I3 => \counter1_reg_n_0_[30]\,
      O => \counter1[31]_i_8_n_0\
    );
\counter1[31]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => \counter1_reg_n_0_[5]\,
      I1 => \counter1_reg_n_0_[4]\,
      I2 => \counter1_reg_n_0_[6]\,
      I3 => \counter1_reg_n_0_[7]\,
      O => \counter1[31]_i_9_n_0\
    );
\counter1[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \counter1[31]_i_2_n_0\,
      I1 => \counter1[31]_i_3_n_0\,
      I2 => \counter1[31]_i_4_n_0\,
      I3 => \counter1[31]_i_5_n_0\,
      I4 => data0(3),
      O => counter1(3)
    );
\counter1[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \counter1[31]_i_2_n_0\,
      I1 => \counter1[31]_i_3_n_0\,
      I2 => \counter1[31]_i_4_n_0\,
      I3 => \counter1[31]_i_5_n_0\,
      I4 => data0(4),
      O => counter1(4)
    );
\counter1[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \counter1[31]_i_2_n_0\,
      I1 => \counter1[31]_i_3_n_0\,
      I2 => \counter1[31]_i_4_n_0\,
      I3 => \counter1[31]_i_5_n_0\,
      I4 => data0(5),
      O => counter1(5)
    );
\counter1[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \counter1[31]_i_2_n_0\,
      I1 => \counter1[31]_i_3_n_0\,
      I2 => \counter1[31]_i_4_n_0\,
      I3 => \counter1[31]_i_5_n_0\,
      I4 => data0(6),
      O => counter1(6)
    );
\counter1[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \counter1[31]_i_2_n_0\,
      I1 => \counter1[31]_i_3_n_0\,
      I2 => \counter1[31]_i_4_n_0\,
      I3 => \counter1[31]_i_5_n_0\,
      I4 => data0(7),
      O => counter1(7)
    );
\counter1[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \counter1[31]_i_2_n_0\,
      I1 => \counter1[31]_i_3_n_0\,
      I2 => \counter1[31]_i_4_n_0\,
      I3 => \counter1[31]_i_5_n_0\,
      I4 => data0(8),
      O => counter1(8)
    );
\counter1[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \counter1[31]_i_2_n_0\,
      I1 => \counter1[31]_i_3_n_0\,
      I2 => \counter1[31]_i_4_n_0\,
      I3 => \counter1[31]_i_5_n_0\,
      I4 => data0(9),
      O => counter1(9)
    );
\counter1_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => counter1(0),
      Q => \counter1_reg_n_0_[0]\
    );
\counter1_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => counter1(10),
      Q => \counter1_reg_n_0_[10]\
    );
\counter1_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => counter1(11),
      Q => \counter1_reg_n_0_[11]\
    );
\counter1_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => counter1(12),
      Q => \counter1_reg_n_0_[12]\
    );
\counter1_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter1_reg[8]_i_2_n_0\,
      CO(3) => \counter1_reg[12]_i_2_n_0\,
      CO(2) => \counter1_reg[12]_i_2_n_1\,
      CO(1) => \counter1_reg[12]_i_2_n_2\,
      CO(0) => \counter1_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3) => \counter1_reg_n_0_[12]\,
      S(2) => \counter1_reg_n_0_[11]\,
      S(1) => \counter1_reg_n_0_[10]\,
      S(0) => \counter1_reg_n_0_[9]\
    );
\counter1_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => counter1(13),
      Q => \counter1_reg_n_0_[13]\
    );
\counter1_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => counter1(14),
      Q => \counter1_reg_n_0_[14]\
    );
\counter1_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => counter1(15),
      Q => \counter1_reg_n_0_[15]\
    );
\counter1_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => counter1(16),
      Q => \counter1_reg_n_0_[16]\
    );
\counter1_reg[16]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter1_reg[12]_i_2_n_0\,
      CO(3) => \counter1_reg[16]_i_2_n_0\,
      CO(2) => \counter1_reg[16]_i_2_n_1\,
      CO(1) => \counter1_reg[16]_i_2_n_2\,
      CO(0) => \counter1_reg[16]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(16 downto 13),
      S(3) => \counter1_reg_n_0_[16]\,
      S(2) => \counter1_reg_n_0_[15]\,
      S(1) => \counter1_reg_n_0_[14]\,
      S(0) => \counter1_reg_n_0_[13]\
    );
\counter1_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => counter1(17),
      Q => \counter1_reg_n_0_[17]\
    );
\counter1_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => counter1(18),
      Q => \counter1_reg_n_0_[18]\
    );
\counter1_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => counter1(19),
      Q => \counter1_reg_n_0_[19]\
    );
\counter1_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => counter1(1),
      Q => \counter1_reg_n_0_[1]\
    );
\counter1_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => counter1(20),
      Q => \counter1_reg_n_0_[20]\
    );
\counter1_reg[20]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter1_reg[16]_i_2_n_0\,
      CO(3) => \counter1_reg[20]_i_2_n_0\,
      CO(2) => \counter1_reg[20]_i_2_n_1\,
      CO(1) => \counter1_reg[20]_i_2_n_2\,
      CO(0) => \counter1_reg[20]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(20 downto 17),
      S(3) => \counter1_reg_n_0_[20]\,
      S(2) => \counter1_reg_n_0_[19]\,
      S(1) => \counter1_reg_n_0_[18]\,
      S(0) => \counter1_reg_n_0_[17]\
    );
\counter1_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => counter1(21),
      Q => \counter1_reg_n_0_[21]\
    );
\counter1_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => counter1(22),
      Q => \counter1_reg_n_0_[22]\
    );
\counter1_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => counter1(23),
      Q => \counter1_reg_n_0_[23]\
    );
\counter1_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => counter1(24),
      Q => \counter1_reg_n_0_[24]\
    );
\counter1_reg[24]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter1_reg[20]_i_2_n_0\,
      CO(3) => \counter1_reg[24]_i_2_n_0\,
      CO(2) => \counter1_reg[24]_i_2_n_1\,
      CO(1) => \counter1_reg[24]_i_2_n_2\,
      CO(0) => \counter1_reg[24]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(24 downto 21),
      S(3) => \counter1_reg_n_0_[24]\,
      S(2) => \counter1_reg_n_0_[23]\,
      S(1) => \counter1_reg_n_0_[22]\,
      S(0) => \counter1_reg_n_0_[21]\
    );
\counter1_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => counter1(25),
      Q => \counter1_reg_n_0_[25]\
    );
\counter1_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => counter1(26),
      Q => \counter1_reg_n_0_[26]\
    );
\counter1_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => counter1(27),
      Q => \counter1_reg_n_0_[27]\
    );
\counter1_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => counter1(28),
      Q => \counter1_reg_n_0_[28]\
    );
\counter1_reg[28]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter1_reg[24]_i_2_n_0\,
      CO(3) => \counter1_reg[28]_i_2_n_0\,
      CO(2) => \counter1_reg[28]_i_2_n_1\,
      CO(1) => \counter1_reg[28]_i_2_n_2\,
      CO(0) => \counter1_reg[28]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(28 downto 25),
      S(3) => \counter1_reg_n_0_[28]\,
      S(2) => \counter1_reg_n_0_[27]\,
      S(1) => \counter1_reg_n_0_[26]\,
      S(0) => \counter1_reg_n_0_[25]\
    );
\counter1_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => counter1(29),
      Q => \counter1_reg_n_0_[29]\
    );
\counter1_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => counter1(2),
      Q => \counter1_reg_n_0_[2]\
    );
\counter1_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => counter1(30),
      Q => \counter1_reg_n_0_[30]\
    );
\counter1_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => counter1(31),
      Q => \counter1_reg_n_0_[31]\
    );
\counter1_reg[31]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter1_reg[28]_i_2_n_0\,
      CO(3 downto 2) => \NLW_counter1_reg[31]_i_6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \counter1_reg[31]_i_6_n_2\,
      CO(0) => \counter1_reg[31]_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_counter1_reg[31]_i_6_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(31 downto 29),
      S(3) => '0',
      S(2) => \counter1_reg_n_0_[31]\,
      S(1) => \counter1_reg_n_0_[30]\,
      S(0) => \counter1_reg_n_0_[29]\
    );
\counter1_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => counter1(3),
      Q => \counter1_reg_n_0_[3]\
    );
\counter1_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => counter1(4),
      Q => \counter1_reg_n_0_[4]\
    );
\counter1_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter1_reg[4]_i_2_n_0\,
      CO(2) => \counter1_reg[4]_i_2_n_1\,
      CO(1) => \counter1_reg[4]_i_2_n_2\,
      CO(0) => \counter1_reg[4]_i_2_n_3\,
      CYINIT => \counter1_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3) => \counter1_reg_n_0_[4]\,
      S(2) => \counter1_reg_n_0_[3]\,
      S(1) => \counter1_reg_n_0_[2]\,
      S(0) => \counter1_reg_n_0_[1]\
    );
\counter1_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => counter1(5),
      Q => \counter1_reg_n_0_[5]\
    );
\counter1_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => counter1(6),
      Q => \counter1_reg_n_0_[6]\
    );
\counter1_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => counter1(7),
      Q => \counter1_reg_n_0_[7]\
    );
\counter1_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => counter1(8),
      Q => \counter1_reg_n_0_[8]\
    );
\counter1_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter1_reg[4]_i_2_n_0\,
      CO(3) => \counter1_reg[8]_i_2_n_0\,
      CO(2) => \counter1_reg[8]_i_2_n_1\,
      CO(1) => \counter1_reg[8]_i_2_n_2\,
      CO(0) => \counter1_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3) => \counter1_reg_n_0_[8]\,
      S(2) => \counter1_reg_n_0_[7]\,
      S(1) => \counter1_reg_n_0_[6]\,
      S(0) => \counter1_reg_n_0_[5]\
    );
\counter1_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => counter1(9),
      Q => \counter1_reg_n_0_[9]\
    );
\counter2[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter2(0),
      O => p_1_in(0)
    );
\counter2[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \counter2[31]_i_3_n_0\,
      I1 => \counter2[31]_i_4_n_0\,
      I2 => \counter2[31]_i_5_n_0\,
      I3 => \counter2[31]_i_6_n_0\,
      O => \counter2[31]_i_1_n_0\
    );
\counter2[31]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => counter2(5),
      I1 => counter2(0),
      I2 => counter2(4),
      I3 => counter2(19),
      O => \counter2[31]_i_10_n_0\
    );
\counter2[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => counter2(18),
      I1 => counter2(17),
      I2 => counter2(12),
      I3 => counter2(29),
      I4 => \counter2[31]_i_7_n_0\,
      O => \counter2[31]_i_3_n_0\
    );
\counter2[31]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => counter2(22),
      I1 => counter2(24),
      I2 => counter2(7),
      I3 => counter2(9),
      I4 => \counter2[31]_i_8_n_0\,
      O => \counter2[31]_i_4_n_0\
    );
\counter2[31]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => counter2(14),
      I1 => counter2(27),
      I2 => counter2(28),
      I3 => counter2(13),
      I4 => \counter2[31]_i_9_n_0\,
      O => \counter2[31]_i_5_n_0\
    );
\counter2[31]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFBFF"
    )
        port map (
      I0 => counter2(15),
      I1 => counter2(11),
      I2 => counter2(25),
      I3 => counter2(20),
      I4 => \counter2[31]_i_10_n_0\,
      O => \counter2[31]_i_6_n_0\
    );
\counter2[31]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => counter2(21),
      I1 => counter2(8),
      I2 => counter2(31),
      I3 => counter2(23),
      O => \counter2[31]_i_7_n_0\
    );
\counter2[31]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => counter2(1),
      I1 => counter2(3),
      I2 => counter2(2),
      I3 => counter2(30),
      O => \counter2[31]_i_8_n_0\
    );
\counter2[31]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => counter2(6),
      I1 => counter2(26),
      I2 => counter2(10),
      I3 => counter2(16),
      O => \counter2[31]_i_9_n_0\
    );
\counter2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => p_1_in(0),
      Q => counter2(0),
      R => \counter2[31]_i_1_n_0\
    );
\counter2_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => p_1_in(10),
      Q => counter2(10),
      R => \counter2[31]_i_1_n_0\
    );
\counter2_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => p_1_in(11),
      Q => counter2(11),
      R => \counter2[31]_i_1_n_0\
    );
\counter2_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => p_1_in(12),
      Q => counter2(12),
      R => \counter2[31]_i_1_n_0\
    );
\counter2_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter2_reg[8]_i_1_n_0\,
      CO(3) => \counter2_reg[12]_i_1_n_0\,
      CO(2) => \counter2_reg[12]_i_1_n_1\,
      CO(1) => \counter2_reg[12]_i_1_n_2\,
      CO(0) => \counter2_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_1_in(12 downto 9),
      S(3 downto 0) => counter2(12 downto 9)
    );
\counter2_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => p_1_in(13),
      Q => counter2(13),
      R => \counter2[31]_i_1_n_0\
    );
\counter2_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => p_1_in(14),
      Q => counter2(14),
      R => \counter2[31]_i_1_n_0\
    );
\counter2_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => p_1_in(15),
      Q => counter2(15),
      R => \counter2[31]_i_1_n_0\
    );
\counter2_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => p_1_in(16),
      Q => counter2(16),
      R => \counter2[31]_i_1_n_0\
    );
\counter2_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter2_reg[12]_i_1_n_0\,
      CO(3) => \counter2_reg[16]_i_1_n_0\,
      CO(2) => \counter2_reg[16]_i_1_n_1\,
      CO(1) => \counter2_reg[16]_i_1_n_2\,
      CO(0) => \counter2_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_1_in(16 downto 13),
      S(3 downto 0) => counter2(16 downto 13)
    );
\counter2_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => p_1_in(17),
      Q => counter2(17),
      R => \counter2[31]_i_1_n_0\
    );
\counter2_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => p_1_in(18),
      Q => counter2(18),
      R => \counter2[31]_i_1_n_0\
    );
\counter2_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => p_1_in(19),
      Q => counter2(19),
      R => \counter2[31]_i_1_n_0\
    );
\counter2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => p_1_in(1),
      Q => counter2(1),
      R => \counter2[31]_i_1_n_0\
    );
\counter2_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => p_1_in(20),
      Q => counter2(20),
      R => \counter2[31]_i_1_n_0\
    );
\counter2_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter2_reg[16]_i_1_n_0\,
      CO(3) => \counter2_reg[20]_i_1_n_0\,
      CO(2) => \counter2_reg[20]_i_1_n_1\,
      CO(1) => \counter2_reg[20]_i_1_n_2\,
      CO(0) => \counter2_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_1_in(20 downto 17),
      S(3 downto 0) => counter2(20 downto 17)
    );
\counter2_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => p_1_in(21),
      Q => counter2(21),
      R => \counter2[31]_i_1_n_0\
    );
\counter2_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => p_1_in(22),
      Q => counter2(22),
      R => \counter2[31]_i_1_n_0\
    );
\counter2_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => p_1_in(23),
      Q => counter2(23),
      R => \counter2[31]_i_1_n_0\
    );
\counter2_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => p_1_in(24),
      Q => counter2(24),
      R => \counter2[31]_i_1_n_0\
    );
\counter2_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter2_reg[20]_i_1_n_0\,
      CO(3) => \counter2_reg[24]_i_1_n_0\,
      CO(2) => \counter2_reg[24]_i_1_n_1\,
      CO(1) => \counter2_reg[24]_i_1_n_2\,
      CO(0) => \counter2_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_1_in(24 downto 21),
      S(3 downto 0) => counter2(24 downto 21)
    );
\counter2_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => p_1_in(25),
      Q => counter2(25),
      R => \counter2[31]_i_1_n_0\
    );
\counter2_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => p_1_in(26),
      Q => counter2(26),
      R => \counter2[31]_i_1_n_0\
    );
\counter2_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => p_1_in(27),
      Q => counter2(27),
      R => \counter2[31]_i_1_n_0\
    );
\counter2_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => p_1_in(28),
      Q => counter2(28),
      R => \counter2[31]_i_1_n_0\
    );
\counter2_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter2_reg[24]_i_1_n_0\,
      CO(3) => \counter2_reg[28]_i_1_n_0\,
      CO(2) => \counter2_reg[28]_i_1_n_1\,
      CO(1) => \counter2_reg[28]_i_1_n_2\,
      CO(0) => \counter2_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_1_in(28 downto 25),
      S(3 downto 0) => counter2(28 downto 25)
    );
\counter2_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => p_1_in(29),
      Q => counter2(29),
      R => \counter2[31]_i_1_n_0\
    );
\counter2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => p_1_in(2),
      Q => counter2(2),
      R => \counter2[31]_i_1_n_0\
    );
\counter2_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => p_1_in(30),
      Q => counter2(30),
      R => \counter2[31]_i_1_n_0\
    );
\counter2_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => p_1_in(31),
      Q => counter2(31),
      R => \counter2[31]_i_1_n_0\
    );
\counter2_reg[31]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter2_reg[28]_i_1_n_0\,
      CO(3 downto 2) => \NLW_counter2_reg[31]_i_2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \counter2_reg[31]_i_2_n_2\,
      CO(0) => \counter2_reg[31]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_counter2_reg[31]_i_2_O_UNCONNECTED\(3),
      O(2 downto 0) => p_1_in(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => counter2(31 downto 29)
    );
\counter2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => p_1_in(3),
      Q => counter2(3),
      R => \counter2[31]_i_1_n_0\
    );
\counter2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => p_1_in(4),
      Q => counter2(4),
      R => \counter2[31]_i_1_n_0\
    );
\counter2_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter2_reg[4]_i_1_n_0\,
      CO(2) => \counter2_reg[4]_i_1_n_1\,
      CO(1) => \counter2_reg[4]_i_1_n_2\,
      CO(0) => \counter2_reg[4]_i_1_n_3\,
      CYINIT => counter2(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_1_in(4 downto 1),
      S(3 downto 0) => counter2(4 downto 1)
    );
\counter2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => p_1_in(5),
      Q => counter2(5),
      R => \counter2[31]_i_1_n_0\
    );
\counter2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => p_1_in(6),
      Q => counter2(6),
      R => \counter2[31]_i_1_n_0\
    );
\counter2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => p_1_in(7),
      Q => counter2(7),
      R => \counter2[31]_i_1_n_0\
    );
\counter2_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => p_1_in(8),
      Q => counter2(8),
      R => \counter2[31]_i_1_n_0\
    );
\counter2_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter2_reg[4]_i_1_n_0\,
      CO(3) => \counter2_reg[8]_i_1_n_0\,
      CO(2) => \counter2_reg[8]_i_1_n_1\,
      CO(1) => \counter2_reg[8]_i_1_n_2\,
      CO(0) => \counter2_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_1_in(8 downto 5),
      S(3 downto 0) => counter2(8 downto 5)
    );
\counter2_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => p_1_in(9),
      Q => counter2(9),
      R => \counter2[31]_i_1_n_0\
    );
reset_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => reset,
      O => reset_IBUF
    );
end STRUCTURE;
