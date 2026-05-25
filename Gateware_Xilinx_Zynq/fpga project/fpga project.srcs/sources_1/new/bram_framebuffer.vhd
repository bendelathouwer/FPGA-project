library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- ============================================================
-- SIMPLE SYNTHESIZABLE BRAM FRAMEBUFFER (HUB75 BASE)
-- ============================================================

entity hub75_bram is
    generic (
        COLS : integer := 64;
        ROWS : integer := 16
    );
    port (
        clk   : in  std_logic;

        -- write (pixel)
        we    : in  std_logic;
        w_row : in  integer range 0 to ROWS-1;
        w_col : in  integer range 0 to COLS-1;
        w_val : in  std_logic;

        -- read (display scan)
        r_row : in  integer range 0 to ROWS-1;
        r_col : in  integer range 0 to COLS-1;
        r_val : out std_logic
    );
end hub75_bram;

architecture Behavioral of hub75_bram is

    -- ============================================================
    -- FLAT BRAM (synthesizable, FPGA-friendly)
    -- ============================================================
    type ram_type is array (0 to ROWS*COLS-1) of std_logic;

    signal ram : ram_type := (others => '0');

    signal r_data : std_logic;

begin

    process(clk)
        variable w_index : integer;
        variable r_index : integer;
    begin
        if rising_edge(clk) then

            -- WRITE
            if we = '1' then
                w_index := (w_row * COLS) + w_col;
                ram(w_index) <= w_val;
            end if;

            -- READ (synchronous)
            r_index := (r_row * COLS) + r_col;
            r_data <= ram(r_index);

        end if;
    end process;

    r_val <= r_data;

end Behavioral;