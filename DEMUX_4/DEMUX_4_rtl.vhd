----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:17:14 05/25/2022 
-- Design Name: 
-- Module Name:    DEMUX_4_rtl - Behavioral 
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

entity DEMUX_4_rtl is
    Port ( I : in  STD_LOGIC_VECTOR (1 downto 0);
           S : in  STD_LOGIC_VECTOR (1 downto 0);
           Y0 : out  STD_LOGIC_VECTOR (1 downto 0);
           Y1 : out  STD_LOGIC_VECTOR (1 downto 0);
           Y2 : out  STD_LOGIC_VECTOR (1 downto 0);
           Y3 : out  STD_LOGIC_VECTOR (1 downto 0));
end DEMUX_4_rtl;

architecture Behavioral of DEMUX_4_rtl is

begin

	process(I, S)
	begin
		case S is
			when "00" => Y0<=I;
							 Y1<="00";
							 Y2<="00";
							 Y3<="00";
			when "01" => Y0<="00";
							 Y1<=I;
							 Y2<="00";
							 Y3<="00";
			when "10" => Y0<="00";
							 Y1<="00";
							 Y2<=I;
							 Y3<="00";
			when others => Y0<="00";
							 Y1<="00";
							 Y2<="00";
							 Y3<=I;
		end case;
	end process;

end Behavioral;

