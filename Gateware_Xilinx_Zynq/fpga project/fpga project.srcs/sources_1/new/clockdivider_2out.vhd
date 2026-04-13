----------------------------------------------------------------------------------
-- Engouteer: Ben De Lathouwer
-- Create Date: 03/04/2026 06:49:25 PM
-- Design Name: clock-divider
-- Module Name: Clockdivider - Behavioral
-- Project Name: fpga project
-- Target Devices: zynq 7000 Arty Z7 Arty Z7-20 XC7Z020-1CLG400C 
---------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity clock_divider is
    generic (
        DIVISOR1 : integer := 50000000;  -- pas aan voor gewenste frequentie
        DIVISOR2 : integer := 20000000  -- pas aan voor gewenste frequentie
    );
    port (
        clk     : in  std_logic;
        reset   : in  std_logic;
        clk_out1 : out std_logic;
        clk_out2 : out std_logic    );
end clock_divider;

architecture Behavioral of clock_divider is
    signal counter1 : integer := 0;
    signal counter2 : integer := 0;
    signal clk_reg1 : std_logic := '0';
    signal clk_reg2 : std_logic := '0';
begin

    process(clk, reset)
    begin
         if reset = '1' then
        counter1 <= 0;
        counter2 <= 0;
        clk_reg1 <= '0';
        clk_reg2 <= '0';

    elsif rising_edge(clk) then

        -- divider 1
        if counter1 = DIVISOR1 - 1 then
            counter1 <= 0;
            clk_reg1 <= not clk_reg1;
        else
            counter1 <= counter1 + 1;
        end if;

        -- divider 2
        if counter2 = DIVISOR2 - 1 then
            counter2 <= 0;
            clk_reg2 <= not clk_reg2;
        else
            counter2 <= counter2 + 1;
        end if;
    end if;
    end process;

    clk_out1 <= clk_reg1;
    clk_out2 <= clk_reg2;
end Behavioral;