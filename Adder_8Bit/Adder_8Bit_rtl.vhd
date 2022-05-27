----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:34:26 03/30/2022 
-- Design Name: 
-- Module Name:    Adder_8Bit_rtl - Behavioral 
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

entity Adder_8Bit_rtl is
    Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
           B : in  STD_LOGIC_VECTOR (7 downto 0);
           Cin : in  STD_LOGIC;
           Sum : out  STD_LOGIC_VECTOR (7 downto 0);
           Cout : out  STD_LOGIC);
end Adder_8Bit_rtl;

architecture Behavioral of Adder_8Bit_rtl is

component Full_Adder_rtl is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           cout : out  STD_LOGIC);
end component;

signal c0,c1,c2,c3,c4,c5,c6:STD_LOGIC:='0';

begin

FA0: Full_Adder_rtl port map (a=>A(0), b=>B(0), cin=>Cin, sum=>Sum(0), cout=>c0);
FA1: Full_Adder_rtl port map (a=>A(1), b=>B(1), cin=>c0, sum=>Sum(1), cout=>c1);
FA2: Full_Adder_rtl port map (a=>A(2), b=>B(2), cin=>c1, sum=>Sum(2), cout=>c2);
FA3: Full_Adder_rtl port map (a=>A(3), b=>B(3), cin=>c2, sum=>Sum(3), cout=>c3);
FA4: Full_Adder_rtl port map (a=>A(4), b=>B(4), cin=>c3, sum=>Sum(4), cout=>c4);
FA5: Full_Adder_rtl port map (a=>A(5), b=>B(5), cin=>c4, sum=>Sum(5), cout=>c5);
FA6: Full_Adder_rtl port map (a=>A(6), b=>B(6), cin=>c5, sum=>Sum(6), cout=>c6);
FA7: Full_Adder_rtl port map (a=>A(7), b=>B(7), cin=>c6, sum=>Sum(7), cout=>Cout);
    

end Behavioral;

