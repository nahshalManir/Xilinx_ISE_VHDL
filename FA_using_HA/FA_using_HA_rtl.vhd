----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:36:14 03/11/2022 
-- Design Name: 
-- Module Name:    FA_using_HA_rtl - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FA_using_HA_rtl is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           Sum : out  STD_LOGIC;
           Cout : out  STD_LOGIC);
end FA_using_HA_rtl;

architecture Behavioral of FA_using_HA_rtl is

component Half_Adder_rtl is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           carry : out  STD_LOGIC);
end component;

signal t_sum: STD_LOGIC:='0';
signal t_carry1: STD_LOGIC:='0';
signal t_carry2: STD_LOGIC:='0';

begin

HA0: Half_Adder_rtl port map (a=>A, b=>B, sum=>t_sum, carry=>t_carry1);
HA1: Half_Adder_rtl port map (a=>t_sum, b=>Cin, sum=>Sum, carry=>t_carry2);
Cout <= t_carry1 or t_carry2;

end Behavioral;

