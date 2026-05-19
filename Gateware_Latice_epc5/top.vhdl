library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity top_level is
    Port (
        clk   : in  std_logic;
        reset : in  std_logic;

        -- HUB75 outputs
        R1, G1, B1 : out std_logic;
        R2, G2, B2 : out std_logic;

        A, B, C, D, E : out std_logic;

        LAT : out std_logic;
        OE  : out std_logic
    );
end top_level;

architecture Behavioral of top_level is

    -- =====================================================
    -- Clock signals
    -- =====================================================
    signal clk_out1_sig   : std_logic;
    signal clk_out2_sig   : std_logic;
    signal matrix_clk_sig : std_logic;

    -- =====================================================
    -- Example pixel position signals
    -- =====================================================
    --signal x : std_logic_vector(1 downto 0) := "00";
    --signal y : std_logic_vector(1 downto 0) := "00";
    signal x : std_logic_vector(1 downto 0) ;
    signal y : std_logic_vector(1 downto 0);
    -- =====================================================
    -- Example 8-bit RGB input signals
    -- =====================================================
    --signal R_in : std_logic_vector(7 downto 0) := x"FF";
    --signal G_in : std_logic_vector(7 downto 0) := x"00";
    --signal B_in : std_logic_vector(7 downto 0) := x"00";
    signal R_in : std_logic_vector(7 downto 0);
    signal G_in : std_logic_vector(7 downto 0);
    signal B_in : std_logic_vector(7 downto 0);
    -- =====================================================
    -- Dithered RGB outputs
    -- =====================================================
    signal dither_R : std_logic_vector(2 downto 0);
    signal dither_G : std_logic_vector(2 downto 0);
    signal dither_B : std_logic_vector(1 downto 0);

    -- =====================================================
    -- Clock divider component
    -- =====================================================
    component clock_divider is
        port (
            clk             : in  std_logic;
            reset           : in  std_logic;
            clk_out1        : out std_logic;
            clk_out2        : out std_logic;
            matrix_clockOUT : out std_logic
        );
    end component;

    -- =====================================================
    -- Dithering component
    -- =====================================================
    component dithering is
        port(
            clk_dithering : in std_logic;

            x : in std_logic_vector(1 downto 0);
            y : in std_logic_vector(1 downto 0);

            R_in : in std_logic_vector(7 downto 0);
            G_in : in std_logic_vector(7 downto 0);
            B_in : in std_logic_vector(7 downto 0);

            R_Out : out std_logic_vector(2 downto 0);
            G_Out : out std_logic_vector(2 downto 0);
            B_Out : out std_logic_vector(1 downto 0)
        );
    end component;

    -- =====================================================
    -- HUB75 driver component
    -- =====================================================
    component hub75E_driver is
        port (

            matrix_clockIN : in std_logic;

            -- dithered RGB inputs
            R_in : in std_logic_vector(2 downto 0);
            G_in : in std_logic_vector(2 downto 0);
            B_in : in std_logic_vector(1 downto 0);

            -- HUB75 outputs
            R1, G1, B1 : out std_logic;
            R2, G2, B2 : out std_logic;

            A, B, C, D, E : out std_logic;
			matrix_latch_clock_IN: out std_logic;
            LAT : out std_logic;
            OE  : out std_logic
        );
    end component;

begin

    -- =====================================================
    -- Clock divider instance
    -- =====================================================
    clk_div_inst : clock_divider
        port map (
            clk             => clk,
            reset           => reset,
            clk_out1        => clk_out1_sig,
            clk_out2        => clk_out2_sig,
            matrix_clockOUT => matrix_clk_sig
        );

    -- =====================================================
    -- Dithering instance
    -- =====================================================
    dithering_inst : dithering
        port map (
            clk_dithering => clk_out1_sig,

            x => x,
            y => y,

            R_in => R_in,
            G_in => G_in,
            B_in => B_in,

            R_Out => dither_R,
            G_Out => dither_G,
            B_Out => dither_B
        );

    -- =====================================================
    -- HUB75 driver instance
    -- =====================================================
    hub75_inst : hub75E_driver
        port map (

            matrix_clockIN => matrix_clk_sig,

            R_in => dither_R,
            G_in => dither_G,
            B_in => dither_B,

            R1 => R1,
            G1 => G1,
            B1 => B1,

            R2 => R2,
            G2 => G2,
            B2 => B2,

            A => A,
            B => B,
            C => C,
            D => D,
            E => E,

            LAT => LAT,
            OE  => OE,
			matrix_latch_clock_IN=>	matrix_latch_clock_IN
        );

end Behavioral;