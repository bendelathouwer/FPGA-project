----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/04/2026 06:50:25 PM
-- Design Name: 
-- Module Name: CLK_Div_TB - Behavioral
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

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_clock_divider is
end tb_clock_divider;

architecture Behavioral of tb_clock_divider is

    constant CLK_PERIOD : time := 10 ns;

    signal clk     : std_logic := '0';
    signal reset   : std_logic := '1';
    signal clk_out : std_logic;

begin

    -- Instantiate DUT
    uut: entity work.clock_divider
        generic map (
            DIVISOR => 5
        )
        port map (
            clk     => clk,
            reset   => reset,
            clk_out => clk_out
        );

    -- Clock generatie
    clk_process : process
    begin
        while true loop
            clk <= '0';
            wait for CLK_PERIOD/2;
            clk <= '1';
            wait for CLK_PERIOD/2;
        end loop;
    end process;

    -- Stimulus
    stim_proc: process
    begin
        -- Reset fase
        wait for 50 ns;
        reset <= '0';

        -- Simulatietijd
        wait for 500 ns;

        -- Stop simulatie
        wait;
    end process;

end Behavioral;