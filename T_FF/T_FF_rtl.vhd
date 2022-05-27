----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:25:02 05/25/2022 
-- Design Name: 
-- Module Name:    T_FF_rtl - Behavioral 
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

entity T_FF_rtl is
    Port ( T : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Qb : out  STD_LOGIC);
end T_FF_rtl;

architecture Behavioral of T_FF_rtl is

signal Q_temp,Qb_temp:STD_LOGIC:='0';

begin

	Q<=Q_temp;
	Qb<=Qb_temp;

	process(Clk, Reset)
	begin
		if(reset = '1') then
			Q_temp<='0';
			Qb_temp<='1';
		elsif(RISING_EDGE(Clk)) then
			if(T = '0') then
				Q_temp<='0';
				Qb_temp<='1';
			else
				Q_temp<='1';
				Qb_temp<='0';
			end if;
		end if;
	end process;


end Behavioral;

