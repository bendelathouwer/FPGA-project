----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.05.2026 12:06:42
-- Design Name: 
-- Module Name: dithering - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity dithering is
    Port ( 
           clk_dithering : in std_logic;
           x : in STD_LOGIC_VECTOR (1 downto 0);
           y : in STD_LOGIC_VECTOR (1 downto 0);
           R_in : in STD_LOGIC_VECTOR (7 downto 0);
           G_in : in STD_LOGIC_VECTOR (7 downto 0);
           B_in : in STD_LOGIC_VECTOR (7 downto 0);
           R_Out : out STD_LOGIC_VECTOR (2 downto 0);
           G_Out : out STD_LOGIC_VECTOR (2 downto 0);
           B_Out : out STD_LOGIC_VECTOR (1 downto 0)
           );
end dithering;

architecture Behavioral of dithering is
    type matrix4x4 is array (0 to 3, 0 to 3) of integer;
    constant bayer : matrix4x4 := (
        ( 0,  8,  2, 10),
        (12,  4, 14,  6),
        ( 3, 11,  1,  9),
        (15,  7, 13,  5)
    );
begin
 process(clk_dithering)

        variable threshold : integer;

        variable r_temp : integer;
        variable g_temp : integer;
        variable b_temp : integer;

    begin

        if rising_edge(clk_dithering) then

            threshold := bayer(
                to_integer(unsigned(y)),
                to_integer(unsigned(x))
            );

            -- schaal threshold
            -- 0..15 -> 0..31
            threshold := threshold * 2;

            -------------------------------------------------
            -- R channel : 8-bit -> 3-bit
            -------------------------------------------------

            r_temp := to_integer(unsigned(r_in)) + threshold;

            if r_temp > 255 then
                r_temp := 255;
            end if;

            r_out <=std_logic_vector(to_unsigned(r_temp / 32, 3));

            -------------------------------------------------
            -- G channel : 8-bit -> 3-bit
            -------------------------------------------------

            g_temp := to_integer(unsigned(g_in)) + threshold;

            if g_temp > 255 then
                g_temp := 255;
            end if;

            g_out <= std_logic_vector(to_unsigned(g_temp / 32, 3));

            -------------------------------------------------
            -- B channel : 8-bit -> 2-bit
            -------------------------------------------------

            b_temp := to_integer(unsigned(b_in)) + threshold;

            if b_temp > 255 then
                b_temp := 255;
            end if;

            b_out <=  std_logic_vector( to_unsigned(b_temp / 64, 2));

        end if;

    end process;


end Behavioral;
