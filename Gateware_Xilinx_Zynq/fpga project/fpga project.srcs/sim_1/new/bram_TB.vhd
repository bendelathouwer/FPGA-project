library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_hub75_bram is
end tb_hub75_bram;

architecture sim of tb_hub75_bram is

    constant COLS : integer := 64;
    constant ROWS : integer := 16;

    signal clk : std_logic := '0';

    -- Port A (write)
    signal we_a   : std_logic := '0';
    signal row_a  : integer range 0 to ROWS-1 := 0;
    signal col_a  : integer range 0 to COLS-1 := 0;
    signal data_a : std_logic := '0';

    -- Port B (read)
    signal row_b  : integer range 0 to ROWS-1 := 0;
    signal col_b  : integer range 0 to COLS-1 := 0;
    signal data_b : std_logic;

begin

    --------------------------------------------------------------------
    -- DUT
    --------------------------------------------------------------------
    DUT : entity work.hub75_bram
        generic map (
            COLS => COLS,
            ROWS => ROWS
        )
        port map (
            clk    => clk,

            we_a   => we_a,
            row_a  => row_a,
            col_a  => col_a,
            data_a => data_a,

            row_b  => row_b,
            col_b  => col_b,
            data_b => data_b
        );

    --------------------------------------------------------------------
    -- Clock 100 MHz
    --------------------------------------------------------------------
    clk <= not clk after 5 ns;

    --------------------------------------------------------------------
    -- Stimulus
    --------------------------------------------------------------------
    process
    begin

        ----------------------------------------------------------------
        -- Wait startup
        ----------------------------------------------------------------
        wait for 20 ns;

        ----------------------------------------------------------------
        -- Write pixel (2,10) = '1'
        ----------------------------------------------------------------
        row_a  <= 2;
        col_a  <= 10;
        data_a <= '1';
        we_a   <= '1';

        wait until rising_edge(clk);

        we_a <= '0';

        ----------------------------------------------------------------
        -- Read pixel (2,10)
        ----------------------------------------------------------------
        row_b <= 2;
        col_b <= 10;

        wait until rising_edge(clk);
        wait until rising_edge(clk);

        assert data_b = '1'
            report "ERROR: pixel (2,10) should be 1"
            severity error;

        ----------------------------------------------------------------
        -- Read unwritten pixel (5,5)
        ----------------------------------------------------------------
        row_b <= 5;
        col_b <= 5;

        wait until rising_edge(clk);
        wait until rising_edge(clk);

        assert data_b = '0'
            report "ERROR: pixel (5,5) should be 0"
            severity error;

        ----------------------------------------------------------------
        -- Write another pixel
        ----------------------------------------------------------------
        row_a  <= 7;
        col_a  <= 63;
        data_a <= '1';
        we_a   <= '1';

        wait until rising_edge(clk);

        we_a <= '0';

        ----------------------------------------------------------------
        -- Read it back
        ----------------------------------------------------------------
        row_b <= 7;
        col_b <= 63;

        wait until rising_edge(clk);
        wait until rising_edge(clk);

        assert data_b = '1'
            report "ERROR: pixel (7,63) should be 1"
            severity error;

        ----------------------------------------------------------------
        -- Done
        ----------------------------------------------------------------
        report "TEST PASSED" severity note;

        wait;

    end process;

end sim;