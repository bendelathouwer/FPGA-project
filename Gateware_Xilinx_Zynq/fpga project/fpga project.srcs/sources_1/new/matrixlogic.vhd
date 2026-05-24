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
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity hub75E_driver is
 Port (     
            --ditherd pixeldata 
            R_in_matrix : in std_logic_vector(2 downto 0);
            G_in_matrix  : in std_logic_vector(2 downto 0);
            B_in_matrix  : in std_logic_vector(1 downto 0);
			 clockIN_matrix  : in std_logic;--clock into the system
            --control logic  to the pannel
            R1, G1, B1, R2, G2, B2 : out std_logic;
            A, B, C, D, E : out std_logic;
            LAT, OE, matrix_latch_clock_IN: out std_logic--matrix_clockIN is actualy the shift registers latch 
			);
end hub75E_driver;

architecture Behavioral of hub75E_driver is

begin
    --here we start the process with our matrixclock we derive from the top file (top file->clk div -> matrix logic0
    process(clockIN_matrix)
    begin
        --we now trigger the code on the rising edge of the matrix clock 
        if rising_edge (clockIN_matrix) then
        
        end if ;     
    end process;

end Behavioral;
