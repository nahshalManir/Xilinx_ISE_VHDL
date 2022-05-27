----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:32:49 03/30/2022 
-- Design Name: 
-- Module Name:    Comparator_4Bit - Behavioral 
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

entity Comparator_4Bit is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           Gt : out  STD_LOGIC;
           Lt : out  STD_LOGIC;
           Eq : out  STD_LOGIC);
end Comparator_4Bit;

architecture Behavioral of Comparator_4Bit is

begin

Gt <= (A(3) and (not B(3))) or ((((not A(3)) and (not B(3))) or (A(3) and B(3))) and (A(2) and (not B(2)))) or
      ((((not A(3)) and (not B(3))) or (A(3) and B(3))) and ((((not A(2)) and (not B(2))) or (A(2) and B(2)))) and
		(A(1) and (not B(1)))) or ((((not A(3)) and (not B(3))) or (A(3) and B(3))) and ((((not A(2)) and (not B(2))) or (A(2) and B(2))))
		and (((not A(1)) and (not B(1))) or (A(1) and B(1))) and (A(0) and (not B(0))));
		
Lt <= (B(3) and (not A(3))) or ((((not A(3)) and (not B(3))) or (A(3) and B(3))) and (B(2) and (not A(2)))) or
      ((((not A(3)) and (not B(3))) or (A(3) and B(3))) and ((((not A(2)) and (not B(2))) or (A(2) and B(2)))) and
		(B(1) and (not A(1)))) or ((((not A(3)) and (not B(3))) or (A(3) and B(3))) and ((((not A(2)) and (not B(2))) or (A(2) and B(2))))
		and (((not A(1)) and (not B(1))) or (A(1) and B(1))) and (B(0) and (not A(0))));
		
Eq <= ((((not A(3)) and (not B(3))) or (A(3) and B(3))) and ((((not A(2)) and (not B(2))) or (A(2) and B(2))))
		and (((not A(1)) and (not B(1))) or (A(1) and B(1))) and (((not A(0)) and (not B(0))) or (A(0) and B(0))));
                               

end Behavioral;

