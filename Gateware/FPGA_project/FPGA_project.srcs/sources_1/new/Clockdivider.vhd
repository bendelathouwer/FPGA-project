----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/04/2026 06:49:25 PM
-- Design Name: 
-- Module Name: Clockdivider - Behavioral
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

entity clock_divider is
    generic (
        DIVISOR1 : integer := 50000000;  -- pas aan voor gewenste frequentie
        DIVISOR2 : integer := 50000000  -- pas aan voor gewenste frequentie
    );
    port (
        clk     : in  std_logic;
        reset   : in  std_logic;
        clk_out1 : out std_logic;
        clk_out2 : out std_logic    );
end clock_divider;

architecture Behavioral of clock_divider is
    signal counter : integer := 0;
    signal clk_reg : std_logic := '0';
begin

    process(clk, reset)
    begin
        if reset = '1' then
            counter <= 0;
            clk_reg <= '0';

        elsif rising_edge(clk) then
            if counter = DIVISOR1 - 1 then
                counter <= 0;
                clk_reg <= not clk_reg;
            else
                counter <= counter + 1;
            end if;
        end if;
    end process;

    clk_out1 <= clk_reg;

end Behavioral;