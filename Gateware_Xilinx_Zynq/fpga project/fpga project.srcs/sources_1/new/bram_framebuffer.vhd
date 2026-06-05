library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity hub75_bram is
    generic (
        COLS : integer := 64;
        ROWS : integer := 64
    );
    port (
        clk : in std_logic;

        ----------------------------------------------------------------
        -- PORT A : WRITE
        ----------------------------------------------------------------
        we_a    : in  std_logic;
        row_a   : in  integer range 0 to ROWS-1;
        col_a   : in  integer range 0 to COLS-1;
        data_a  : in  std_logic;

        ----------------------------------------------------------------
        -- PORT B : READ
        ----------------------------------------------------------------
        row_b   : in  integer range 0 to ROWS-1;
        col_b   : in  integer range 0 to COLS-1;
        data_b  : out std_logic
    );
end hub75_bram;

architecture Behavioral of hub75_bram is

    type ram_type is array (0 to ROWS*COLS-1) of std_logic;
    signal ram : ram_type := (others => '0');

    signal q_b : std_logic := '0';

begin

    process(clk)
        variable addr_a : integer;
        variable addr_b : integer;
    begin
        if rising_edge(clk) then

            ----------------------------------------------------------------
            -- PORT A WRITE
            ----------------------------------------------------------------
            addr_a := row_a * COLS + col_a;

            if we_a = '1' then
                ram(addr_a) <= data_a;
            end if;

            ----------------------------------------------------------------
            -- PORT B READ
            ----------------------------------------------------------------
            addr_b := row_b * COLS + col_b;
            q_b <= ram(addr_b);

        end if;
    end process;

    data_b <= q_b;

end Behavioral;