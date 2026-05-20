----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.04.2026 12:01:10
-- Design Name: 
-- Module Name: matrixlogic - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: wqe
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;



entity hub75E_Driver is
 Port (     
            --ditherd pixeldata 
            R_in : in std_logic_vector(2 downto 0);
            G_in : in std_logic_vector(2 downto 0);
            B_in : in std_logic_vector(1 downto 0);
			 matrix_clockIN : in std_logic;--clock into the system
            --control logic  to the pannel
            R1, G1, B1, R2, G2, B2 : out std_logic;
            A, B, C, D, E : out std_logic;
            LAT, OE, matrix_latch_clock_IN: out std_logic--matrix_clockIN is actualy the shift registers latch 
			);
end hub75E_Driver;

architecture Behavioral of hub75E_Driver is
--if this is empty the tool will elaborate this out ==> you wil get an ERROR - logical block 'hub75_inst' with type 'hub75E_driver' is unexpanded. " error
begin
  R1 <= '0';
    G1 <= '0';
    B1 <= '0';

    R2 <= '0';
    G2 <= '0';
    B2 <= '0';

    A <= '0';
    B <= '0';
    C <= '0';
    D <= '0';
    E <= '0';

    LAT <= '0';
    OE  <= '0';
    matrix_latch_clock_IN <= matrix_clockIN;

end Behavioral;
