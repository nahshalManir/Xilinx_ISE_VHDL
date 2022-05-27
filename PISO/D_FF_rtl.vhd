----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:15:55 04/07/2022 
-- Design Name: 
-- Module Name:    D_FF_rtl - Behavioral 
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

entity D_FF_rtl is
    Port ( D : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           C : in  STD_LOGIC;
           reset : in  STD_LOGIC);
end D_FF_rtl;

architecture Behavioral of D_FF_rtl is

begin

process(C,reset)
begin
	if(reset='1') then
		Q<='0';
	elsif(RISING_EDGE(C)) then
		Q<=D;
	end if;
end process;

end Behavioral;

