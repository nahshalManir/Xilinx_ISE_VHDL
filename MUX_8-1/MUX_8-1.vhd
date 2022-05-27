----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:35:53 05/25/2022 
-- Design Name: 
-- Module Name:    MUX_8-1 - Behavioral 
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

entity MUX_8 is
    Port ( D0 : in  STD_LOGIC_VECTOR (2 downto 0);
           D1 : in  STD_LOGIC_VECTOR (2 downto 0);
           D2 : in  STD_LOGIC_VECTOR (2 downto 0);
           D3 : in  STD_LOGIC_VECTOR (2 downto 0);
           D4 : in  STD_LOGIC_VECTOR (2 downto 0);
           D5 : in  STD_LOGIC_VECTOR (2 downto 0);
           D6 : in  STD_LOGIC_VECTOR (2 downto 0);
           D7 : in  STD_LOGIC_VECTOR (2 downto 0);
           S : in  STD_LOGIC_VECTOR (2 downto 0);
           Y : out  STD_LOGIC_VECTOR (2 downto 0));
end MUX_8;

architecture Behavioral of MUX_8 is

begin

process(D0,D1,D2,D3,D4,D5,D6,D7,S) is
begin
	case S is
		when "000" => Y<=D0;
		when "001" => Y<=D1;
		when "010" => Y<=D2;
		when "011" => Y<=D3;
		when "100" => Y<=D4;
		when "101" => Y<=D5;
		when "110" => Y<=D6;
		when "111" => Y<=D7;
		when others => Y<="000";
	end case;
end process;

end Behavioral;

