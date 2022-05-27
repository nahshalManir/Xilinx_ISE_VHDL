----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:24:11 04/21/2022 
-- Design Name: 
-- Module Name:    PISO_rtl - Behavioral 
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

entity PISO_rtl is
    Port ( D : in  STD_LOGIC_VECTOR (3 downto 0);
           Clk : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           Sout : out  STD_LOGIC;
           Sin : in  STD_LOGIC);
end PISO_rtl;

architecture Behavioral of PISO_rtl is

component D_FF_rtl is
    Port ( d : in  STD_LOGIC;
           reset : in  STD_LOGIC;
			  clk: in STD_LOGIC;
           q : out  STD_LOGIC);
end component;

signal t1,t2,t3,t4,c1,c2,c3:std_logic:='0';
begin

	t1<=(not Sin) and D(0);
	D0: D_FF_rtl port map(d=>t1,clk=>Clk,reset=>Reset,q=>c1);

	t2<=(not Sin and D(1)) or (c1 and Sin);
	D1: D_FF_rtl port map(d=>t2,clk=>Clk,reset=>Reset,q=>c2);

	t3<=(not Sin and D(2)) or (c2 and Sin);
	D2: D_FF_rtl port map(d=>t3,clk=>Clk,reset=>Reset,q=>c3);

	t4<=(not Sin and D(3)) or (c3 and Sin);
	D3: D_FF_rtl port map(d=>t4,clk=>Clk,reset=>Reset,q=>Sout);

end Behavioral;

