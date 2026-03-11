----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/10/2026 04:37:22 PM
-- Design Name: 
-- Module Name: global_package_Led_driver - Behavioral
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
package global_package_Led_driver is 
    constant buttonstate : boolean := false ; --status van de knop als we de test patern willen activeren 
    constant  matrix_with : integer := 64 ;
    constant matrix_hight : integer := 64 ;
    constant  matrix_half_with : integer := 32 ;
    constant matrix_half_hight  : integer := 32 ;
    
end package global_package_Led_driver;

