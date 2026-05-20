library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity clockdivider_TB is
end clockdivider_TB;

architecture Behavioral of clockdivider_TB is

    constant CLK_PERIOD : time := 10 ns;-- this is the pl clock 

    signal clk        : std_logic := '0';
    signal reset      : std_logic := '1';
    signal clk_out1   : std_logic;
    signal clk_out2   : std_logic;
    signal matrix_clock   : std_logic;

    constant DIV1 : integer := 5000;
    constant DIV2 : integer := 200;
    constant DIV3 : integer := 26042;

   
begin

    --------------------------------------------------------------------
    -- DUT
    --------------------------------------------------------------------
    uut: entity work.clk_div
        generic map (
            DIVISOR1 => DIV1,
            DIVISOR2 => DIV2,
            DIVISOR3 => DIV3
        )
        port map (
            clk      => clk,
            reset    => reset,
            clk_out1 => clk_out1,
            clk_out2 => clk_out2,
            matrix_clockOUT => matrix_clock
        );

    --------------------------------------------------------------------
    -- Clock generator (100 MHz)
    --------------------------------------------------------------------
    clk_process : process
    begin
        while true loop
            clk <= '0';
            wait for CLK_PERIOD/2;
            clk <= '1';
            wait for CLK_PERIOD/2;
        end loop;
    end process;

    --------------------------------------------------------------------
    -- Reset
    --------------------------------------------------------------------
    stim_proc : process
    begin
        reset <= '1';
        wait for 50 ns;
        wait until rising_edge(clk);
        reset <= '0';

        wait;
    end process;


end Behavioral;