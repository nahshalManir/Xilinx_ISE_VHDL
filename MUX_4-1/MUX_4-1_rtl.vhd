----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:33:12 04/06/2022 
-- Design Name: 
-- Module Name:    MUX_4_1_rtl - Behavioral 
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

entity MUX_4_1_rtl is
    Port ( D0 : in  STD_LOGIC_VECTOR (1 downto 0);
           D1 : in  STD_LOGIC_VECTOR (1 downto 0);
           D2 : in  STD_LOGIC_VECTOR (1 downto 0);
           D3 : in  STD_LOGIC_VECTOR (1 downto 0);
           S : in  STD_LOGIC_VECTOR (1 downto 0);
           Y : out  STD_LOGIC_VECTOR (1 downto 0));
end MUX_4_1_rtl;

architecture Behavioral of MUX_4_1_rtl is

begin

	process(D0,D1,D2,D3,S)
	begin
		case S is
			when "00" => Y<=D0;
			when "01" => Y<=D1;
			when "10" => Y<=D2;
			when others => Y<=D3;
		end case;
	end process;

end Behavioral;

