----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:36:44 05/25/2022 
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
           Clk : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end D_FF_rtl;

architecture Behavioral of D_FF_rtl is

signal q_temp:STD_LOGIC:='0';

begin
	process(Clk, Reset)
	begin
		if(Reset = '1') then
			q_temp<='0';
		elsif(RISING_EDGE(Clk)) then
			q_temp<=D;
		end if;
		
		Q <= q_temp;
	end process;
		
end Behavioral;

