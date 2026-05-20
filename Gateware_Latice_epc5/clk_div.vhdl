----------------------------------------------------------------------------------
-- Engouteer: Ben De Lathouwer
-- Create Date: 03/04/2026 06:49:25 PM
-- Design Name: clock-divider
-- Module Name: Clockdivider - Behavioral
-- Project Name: fpga project
-- Target Devices: ulx3s 
--fout=fin/(2*devisor)

---------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity clk_div is
    generic (
        DIVISOR1 : integer := 5000;  -- pas aan voor gewenste frequentie
        DIVISOR2 : integer := 200;  -- pas aan voor gewenste frequentie
        DIVISOR3 : integer := 26042
    );
    port (
            clk      : in  std_logic;--pl clock is at 100MHz,period 10nS
            reset    : in  std_logic;
            clk_out1 : out std_logic;
            clk_out2 : out std_logic;
            matrix_clockOUT : out std_logic    
        );
end clk_div;

architecture Behavioral of clk_div is
    signal counter1 : integer := 0;
    signal counter2 : integer := 0;
    signal counter3 : integer := 0;
    signal clk_reg1 : std_logic := '0';
    signal clk_reg2 : std_logic := '0';
    signal matrix_clk_reg :std_logic := '0';
begin

    process(clk, reset)
    begin
         if reset = '1' then
        counter1 <= 0;
        counter2 <= 0;
        counter3 <= 0;
        clk_reg1 <= '0';
        clk_reg2 <= '0';
        matrix_clk_reg <= '0';


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
        --devider 3
        if counter3 = DIVISOR3 - 1 then
            counter3 <= 0;
            matrix_clk_reg <= not matrix_clk_reg;
        else
            counter3 <= counter3 + 1;
        end if;
    end if;
    end process;

    clk_out1 <= clk_reg1;
    clk_out2 <= clk_reg2;
    matrix_clockOUT <= matrix_clk_reg;
end Behavioral;