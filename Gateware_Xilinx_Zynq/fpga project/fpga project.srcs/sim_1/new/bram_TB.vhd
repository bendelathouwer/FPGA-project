library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- ============================================================
-- TESTBENCH: hub75_bram
-- Purpose:
--   - verify correct write/read behavior of BRAM
--   - avoid timing mistakes with clock edge alignment
-- ============================================================

entity tb_hub75_bram is
end tb_hub75_bram;

architecture Behavioral of tb_hub75_bram is

    -- ============================================================
    -- DUT component declaration
    -- ============================================================
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

    -- ============================================================
    -- Testbench signals
    -- ============================================================
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

    -- ============================================================
    -- Instantiate DUT
    -- ============================================================
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

    -- ============================================================
    -- Clock generator (stable 50% duty cycle)
    -- ============================================================
    clk_process : process
    begin
        while true loop
            clk <= '0';
            wait for clk_period/2;
            clk <= '1';
            wait for clk_period/2;
        end loop;
    end process;

    -- ============================================================
    -- Stimulus process
    -- IMPORTANT RULE:
    --   All signals that affect BRAM must be stable BEFORE rising edge
    -- ============================================================
    stim_proc : process
    begin

        -- ========================================================
        -- STEP 1: set read address (before write)
        -- ========================================================
        r_row <= 3;
        r_col <= 10;

        wait for clk_period;

        -- ========================================================
        -- STEP 2: WRITE pixel at (3,10)
        -- we MUST assert WE before rising edge
        -- ========================================================
        w_row <= 3;
        w_col <= 10;
        w_val <= '1';

        we <= '1';

        -- wait exactly one rising edge (write happens here)
        wait until rising_edge(clk);

        -- deassert WE immediately after clock edge
        we <= '0';

        -- ========================================================
        -- STEP 3: wait 1 cycle for synchronous BRAM read latency
        -- ========================================================
        wait until rising_edge(clk);

        -- ========================================================
        -- STEP 4: check result
        -- ========================================================
        assert r_val = '1'
        report "ERROR: BRAM readback failed (expected '1')"
        severity failure;

        -- ========================================================
        -- STEP 5: clear pixel
        -- ========================================================
        w_val <= '0';
        we <= '1';

        wait until rising_edge(clk);
        we <= '0';

        -- wait for RAM update
        wait until rising_edge(clk);

        -- check cleared value
        assert r_val = '0'
        report "ERROR: BRAM clear failed (expected '0')"
        severity failure;

        -- ========================================================
        -- TEST SUCCESS
        -- ========================================================
         end process;

end Behavioral;