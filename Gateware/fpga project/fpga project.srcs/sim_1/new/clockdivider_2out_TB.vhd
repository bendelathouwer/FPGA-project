library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity clockdivider_2out_TB is
end  clockdivider_2out_TB;

architecture Behavioral of  clockdivider_2out_TB is

    constant CLK_PERIOD : time := 8ns;

    signal clk     : std_logic := '0';
    signal reset   : std_logic := '1';
    signal clk_out1 : std_logic;
    signal clk_out2 : std_logic;
    

begin

    -- outstantiate DUT
    uut: entity work.clock_divider
        generic map (
            DIVISOR1 => 5,
            DIVISOR2 => 2 
        )
        port map (
            clk     => clk,
            reset   => reset,
            clk_out1 => clk_out1,
            clk_out2 => clk_out2
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
        --reset in sync with clock => realistc with irl hardware and less glitches 
        -- Reset fase
        wait for 50 ns;
        wait until rising_edge(clk);
        reset <= '0';
        -- Simulatietijd
        wait for 500 ns;

        -- Stop simulatie
        wait;
    end process;

end Behavioral;
