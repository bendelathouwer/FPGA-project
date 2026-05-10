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
            R_in : in std_logic_vector(2 downto 0);
            G_in : in std_logic_vector(2 downto 0);
            B_in : in std_logic_vector(1 downto 0);
            --control logic 
            R1, G1, B1, R2, G2, B2 : out std_logic;
            A, B, C, D, E : out std_logic;
            LAT, OE, matrix_clockIN: out std_logic
 );
end hub75E_driver;

architecture Behavioral of hub75E_driver is

begin


end Behavioral;
