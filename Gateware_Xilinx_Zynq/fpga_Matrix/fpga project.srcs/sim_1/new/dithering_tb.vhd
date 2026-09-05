----------------------------------------------------------------------------------
-- Testbench: dithering_tb.vhd
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity dithering_tb is
end dithering_tb;

architecture Behavioral of dithering_tb is

    --------------------------------------------------------------------------
    -- DUT component
    --------------------------------------------------------------------------
    component dithering
        Port (
            clk_dithering : in std_logic;
            x             : in STD_LOGIC_VECTOR (1 downto 0);
            y             : in STD_LOGIC_VECTOR (1 downto 0);
            R_in          : in STD_LOGIC_VECTOR (7 downto 0);
            G_in          : in STD_LOGIC_VECTOR (7 downto 0);
            B_in          : in STD_LOGIC_VECTOR (7 downto 0);
            R_Out         : out STD_LOGIC_VECTOR (2 downto 0);
            G_Out         : out STD_LOGIC_VECTOR (2 downto 0);
            B_Out         : out STD_LOGIC_VECTOR (1 downto 0)
        );
    end component;

    --------------------------------------------------------------------------
    -- Signals
    --------------------------------------------------------------------------
    signal clk_dithering : std_logic := '0';

    signal x, y : STD_LOGIC_VECTOR(1 downto 0) := (others => '0');

    signal R_in, G_in, B_in : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');

    signal R_Out : STD_LOGIC_VECTOR(2 downto 0);
    signal G_Out : STD_LOGIC_VECTOR(2 downto 0);
    signal B_Out : STD_LOGIC_VECTOR(1 downto 0);

    constant clk_period : time := 10 ns;

begin

    --------------------------------------------------------------------------
    -- DUT
    --------------------------------------------------------------------------
    uut: dithering
        port map (
            clk_dithering => clk_dithering,
            x             => x,
            y             => y,
            R_in          => R_in,
            G_in          => G_in,
            B_in          => B_in,
            R_Out         => R_Out,
            G_Out         => G_Out,
            B_Out         => B_Out
        );

    --------------------------------------------------------------------------
    -- Clock generator
    --------------------------------------------------------------------------
    clk_process : process
    begin
        while true loop
            clk_dithering <= '0';
            wait for clk_period/2;
            clk_dithering <= '1';
            wait for clk_period/2;
        end loop;
    end process;

    --------------------------------------------------------------------------
    -- Stimulus + tests
    --------------------------------------------------------------------------
    stim_proc : process
    begin

        ----------------------------------------------------------------------
        -- TEST 1: Black pixel
        ----------------------------------------------------------------------
        x <= "00"; y <= "00";
        R_in <= x"00"; G_in <= x"00"; B_in <= x"00";
        wait for clk_period;

        assert (R_Out = "000" and G_Out = "000" and B_Out = "00")
        report "TEST 1 FAILED (black pixel)"
        severity warning;

        ----------------------------------------------------------------------
        -- TEST 2: Mid gray
        ----------------------------------------------------------------------
        x <= "01"; y <= "01";
        R_in <= x"80"; G_in <= x"80"; B_in <= x"80";
        wait for clk_period;

        ----------------------------------------------------------------------
        -- TEST 3: Bright mix
        ----------------------------------------------------------------------
        x <= "10"; y <= "10";
        R_in <= x"F0"; G_in <= x"A0"; B_in <= x"40";
        wait for clk_period;

        ----------------------------------------------------------------------
        -- TEST 4: Max values (saturation test)
        ----------------------------------------------------------------------
        x <= "11"; y <= "11";
        R_in <= x"FF"; G_in <= x"FF"; B_in <= x"FF";
        wait for clk_period;

        ----------------------------------------------------------------------
        -- TEST 5: Full Bayer sweep
        ----------------------------------------------------------------------
        for yi in 0 to 3 loop
            for xi in 0 to 3 loop

                x <= std_logic_vector(to_unsigned(xi, 2));
                y <= std_logic_vector(to_unsigned(yi, 2));

                R_in <= x"60";
                G_in <= x"90";
                B_in <= x"C0";

                wait for clk_period;

            end loop;
        end loop;

        ----------------------------------------------------------------------
        -- STOP SIMULATION
        ----------------------------------------------------------------------
        assert false
        report "Simulation finished successfully"
        severity failure;

    end process;

end Behavioral;