library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_hub75_bram is
end tb_hub75_bram;

architecture Behavioral of tb_hub75_bram is

    component hub75_bram
        port (
            clk   : in  std_logic;

            we    : in  std_logic;
            w_row : in  integer range 0 to 15;
            w_col : in  integer range 0 to 63;
            w_val : in  std_logic;

            r_row : in  integer range 0 to 15;
            r_col : in  integer range 0 to 63;
            r_val : out std_logic
        );
    end component;

    signal clk   : std_logic := '0';

    signal we    : std_logic := '0';
    signal w_row : integer := 0;
    signal w_col : integer := 0;
    signal w_val : std_logic := '0';

    signal r_row : integer := 0;
    signal r_col : integer := 0;
    signal r_val : std_logic;

    constant clk_period : time := 10 ns;

begin

    DUT: hub75_bram
        port map (
            clk   => clk,
            we    => we,
            w_row => w_row,
            w_col => w_col,
            w_val => w_val,
            r_row => r_row,
            r_col => r_col,
            r_val => r_val
        );

    -- clock
    clk_process : process
    begin
        while true loop
            clk <= '0';
            wait for clk_period / 2;
            clk <= '1';
            wait for clk_period / 2;
        end loop;
    end process;

    -- stimulus
    stim_proc : process
    begin

        -- read address setup
        r_row <= 3;
        r_col <= 10;

        wait for clk_period;

        -- ========================================================
        -- FIXED WRITE SEQUENCE (correct FPGA timing)
        -- ========================================================

        w_row <= 3;
        w_col <= 10;
        w_val <= '1';

        we <= '1';

        -- IMPORTANT FIX:
        -- no delay tricks, just align with clock edge
        wait until rising_edge(clk);

        we <= '0';

        -- wait for BRAM latency (2 cycles safe)
        wait until rising_edge(clk);
        wait until rising_edge(clk);

        -- check result
        assert r_val = '1'
            report "ERROR: BRAM readback failed (expected 1)"
            severity failure;

        -- ========================================================
        -- CLEAR OPERATION
        -- ========================================================

        w_val <= '0';
        we <= '1';

        wait until rising_edge(clk);

        we <= '0';

        wait until rising_edge(clk);
        wait until rising_edge(clk);

        assert r_val = '0'
            report "ERROR: BRAM clear failed (expected 0)"
            severity failure;

        report "TEST PASSED: BRAM works correctly" severity note;

        wait;

    end process;

end Behavioral;