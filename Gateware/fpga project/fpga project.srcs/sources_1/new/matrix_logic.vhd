----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/10/2026 04:40:44 PM
-- Design Name: 
-- Module Name: matrix_logic - Behavioral
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
use IEEE.NUMERIC_STD.ALL;
library work;
use work.global_package_Led_driver.all;


-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity matrix_logic is
  Port ( 
      Latch_matrix: out std_logic;
      OE_matrix : out std_logic;
      Clk_matrix : out std_logic;
      R0_matrix : out std_logic;
      R1_matrix : out std_logic;
      G0_matrix : out std_logic;
      G1_matrix : out std_logic;
      B0_matrix : out std_logic;
      B1_matrix : out std_logic;
      A_matrix : out std_logic;
      B_matrix : out std_logic;
      C_matrix : out std_logic;
      D_matrix : out std_logic;
      test_patern_switch : out std_logic
    );
end matrix_logic;

architecture Behavioral of matrix_logic is

begin


end Behavioral;
