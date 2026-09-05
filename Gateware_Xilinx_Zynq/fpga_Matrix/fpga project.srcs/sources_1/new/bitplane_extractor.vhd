library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bitplane_extractor is
    generic (
        COLOR_DEPTH : integer := 8
    );
    port (
        pixel_top    : in  std_logic_vector(23 downto 0);
        pixel_bottom : in  std_logic_vector(23 downto 0);

        plane_sel    : in  unsigned (2 downto 0);-- unsigned because we have control about the bith with, now the synthesis tool will make it 3 bits wide 

        r1           : out std_logic;
        g1           : out std_logic;
        b1           : out std_logic;

        r2           : out std_logic;
        g2           : out std_logic;
        b2           : out std_logic
    );
end entity;

architecture Behavioral of bitplane_extractor is
begin

    process(pixel_top, pixel_bottom, plane_sel)
        variable bit_idx : integer;
    begin

          bit_idx := to_integer(plane_sel);

        -- TOP HALF
        r1 <= pixel_top(16 + bit_idx);
        g1 <= pixel_top(8  + bit_idx);
        b1 <= pixel_top(0  + bit_idx);

        -- BOTTOM HALF
        r2 <= pixel_bottom(16 + bit_idx);
        g2 <= pixel_bottom(8  + bit_idx);
        b2 <= pixel_bottom(0  + bit_idx);

    end process;

end architecture;