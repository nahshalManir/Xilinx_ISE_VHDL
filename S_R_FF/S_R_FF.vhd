----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:58:47 04/13/2022 
-- Design Name: 
-- Module Name:    S_R_FF - Behavioral 
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

entity S_R_FF is
    Port ( S : in  STD_LOGIC;
           R : in  STD_LOGIC;
           C : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Qb : out  STD_LOGIC);
end S_R_FF;

architecture Behavioral of S_R_FF is

signal qtemp,qb_temp:STD_LOGIC:='0';

begin
	process(C,reset)
	begin
		if(reset='1') then
			qtemp<='0';
			qb_temp<='1';
		elsif(RISING_EDGE(C)) then
			if(S='0' and R='0') then
				NULL;
			elsif(S='0' and R='1') then
				qtemp<='0';
				qb_temp<='1';
			elsif(S='1' and R='0') then
				qtemp<='1';
				qb_temp<='0';
			else
				qtemp<='Z';
				qb_temp<='Z';
			end if;
		end if;
	end process;
	
	Q<=qtemp;
	Qb<=qb_temp;

end Behavioral;

