----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:17:38 03/11/2022 
-- Design Name: 
-- Module Name:    Comp_Add_Sub_rtl - Behavioral 
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

entity Comp_Add_Sub_rtl is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           M_cin : in  STD_LOGIC;
           Sum : out  STD_LOGIC_VECTOR (3 downto 0);
           Cout : out  STD_LOGIC);
end Comp_Add_Sub_rtl;

architecture Behavioral of Comp_Add_Sub_rtl is

component XOR_rtl is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : out  STD_LOGIC);
end component;

component Full_Adder_rtl is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           cout : out  STD_LOGIC);
end component;

signal B_0,B_1,B_2,B_3,c0,c1,c2:STD_LOGIC:='0';

begin

XOR0: XOR_rtl port map (a=>M_cin, b=>B(0), c=>B_0);
FA0: Full_Adder_rtl port map (a=>A(0), b=>B_0, cin=>M_cin, sum=>Sum(0), cout=>c0);

XOR1: XOR_rtl port map (a=>M_cin, b=>B(1), c=>B_1);
FA1: Full_Adder_rtl port map (a=>A(1), b=>B_1, cin=>c0, sum=>Sum(1), cout=>c1);

XOR2: XOR_rtl port map (a=>M_cin, b=>B(2), c=>B_2);
FA2: Full_Adder_rtl port map (a=>A(2), b=>B_2, cin=>c1, sum=>Sum(2), cout=>c2);

XOR3: XOR_rtl port map (a=>M_cin, b=>B(3), c=>B_3);
FA3: Full_Adder_rtl port map (a=>A(3), b=>B_3, cin=>c2, sum=>Sum(3), cout=>Cout);


end Behavioral;

