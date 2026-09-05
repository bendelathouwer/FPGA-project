library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- =========================================================
-- Testbench: tb_bitplane_extractor
-- Purpose:
--   Verify bitplane extraction (0–7) for RGB pixels
--   using two parallel input pixels (top & bottom)
-- =========================================================

entity tb_bitplane_extractor is
end entity;

architecture sim of tb_bitplane_extractor is

    -- =====================================================
    -- INPUT SIGNALS (to DUT)
    -- =====================================================

    -- 24-bit RGB pixel format: R[23:16], G[15:8], B[7:0]
    signal pixel_top    : std_logic_vector(23 downto 0) := (others => '0');
    signal pixel_bottom : std_logic_vector(23 downto 0) := (others => '0');

    -- Selects which bitplane is being extracted (0 = LSB, 7 = MSB)
    signal plane_sel    : unsigned(2 downto 0) := (others => '0');

    -- =====================================================
    -- OUTPUT SIGNALS (from DUT)
    -- =====================================================

    signal r1, g1, b1 : std_logic;
    signal r2, g2, b2 : std_logic;

begin

    -- =====================================================
    -- DUT INSTANTIATION
    -- =====================================================
    dut: entity work.bitplane_extractor
        port map (
            pixel_top    => pixel_top,
            pixel_bottom => pixel_bottom,
            plane_sel    => plane_sel,

            r1 => r1,
            g1 => g1,
            b1 => b1,

            r2 => r2,
            g2 => g2,
            b2 => b2
        );

    -- =====================================================
    -- STIMULUS PROCESS
    -- =====================================================
    stim: process
    begin

        -- =====================================================
        -- 1. PRIMARY COLORS TEST
        -- =====================================================

        -- RED
        pixel_top    <= x"FF0000";
        pixel_bottom <= x"FF0000";

        for i in 0 to 7 loop
        --because i is an integer we have to cast it to unsigned because vhdl is extreemly strongly typed
            plane_sel <= to_unsigned(i, 3);
            wait for 10 ns;
        end loop;

        -- GREEN
        pixel_top    <= x"00FF00";
        pixel_bottom <= x"00FF00";

        for i in 0 to 7 loop
            plane_sel <= to_unsigned(i, 3);
            wait for 10 ns;
        end loop;

        -- BLUE
        pixel_top    <= x"0000FF";
        pixel_bottom <= x"0000FF";

        for i in 0 to 7 loop
            plane_sel <= to_unsigned(i, 3);
            wait for 10 ns;
        end loop;

        -- =====================================================
        -- 2. SECONDARY COLORS TEST
        -- =====================================================

        -- YELLOW (R + G)
        pixel_top    <= x"FFFF00";
        pixel_bottom <= x"FFFF00";

        for i in 0 to 7 loop
            plane_sel <= to_unsigned(i, 3);
            wait for 10 ns;
        end loop;

        -- CYAN (G + B)
        pixel_top    <= x"00FFFF";
        pixel_bottom <= x"00FFFF";

        for i in 0 to 7 loop
            plane_sel <= to_unsigned(i, 3);
            wait for 10 ns;
        end loop;

        -- MAGENTA (R + B)
        pixel_top    <= x"FF00FF";
        pixel_bottom <= x"FF00FF";

        for i in 0 to 7 loop
            plane_sel <= to_unsigned(i, 3);
            wait for 10 ns;
        end loop;

        -- =====================================================
        -- 3. GRAYSCALE TEST (FIXED + SYNTHESIZABLE)
        -- =====================================================

        for gray in 0 to 7 loop

            -- Create grayscale value (0..224 step 32)
            -- Same value for R, G, and B channels
            pixel_top <= std_logic_vector(
                to_unsigned(gray * 32, 8) &
                to_unsigned(gray * 32, 8) &
                to_unsigned(gray * 32, 8)
            );

            pixel_bottom <= pixel_top;

            -- Sweep all bitplanes
            for i in 0 to 7 loop
                plane_sel <= to_unsigned(i, 3);
                wait for 10 ns;
            end loop;

        end loop;

        -- =====================================================
        -- 4. MIXED / EDGE CASE PATTERN
        -- =====================================================

        pixel_top    <= x"123456";
        pixel_bottom <= x"ABCDEF";

        for i in 0 to 7 loop
            plane_sel <= to_unsigned(i, 3);
            wait for 10 ns;
        end loop;

        -- End simulation
        wait;

    end process;

end architecture;