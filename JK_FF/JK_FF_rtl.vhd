----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:46:49 05/26/2022 
-- Design Name: 
-- Module Name:    JK_FF_rtl - Behavioral 
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

entity JK_FF_rtl is
    Port ( J : in  STD_LOGIC;
           K : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Qb : out  STD_LOGIC);
end JK_FF_rtl;

architecture Behavioral of JK_FF_rtl is

signal q_temp,qb_temp:STD_LOGIC:='0';

begin

	process(Clk, Reset)
	begin

		if(Reset = '1') then
			q_temp <= '0';
			qb_temp <='1';
		elsif(RISING_EDGE(Clk)) then
			if(J = '0' and K = '0') then
				NULL;
			elsif(J = '0' and K = '1') then
				q_temp <= '0';
				qb_temp <= '1';
			elsif(J = '1' and K = '0') then
				q_temp <= '1';
				qb_temp <= '0';
			else
				q_temp <= not q_temp;
				qb_temp <= not qb_temp;
			end if;
		end if;
		
		Q <= q_temp;
		Qb <= qb_temp;
	end process;
			
end Behavioral;

