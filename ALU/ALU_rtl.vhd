----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:05:12 05/12/2022 
-- Design Name: 
-- Module Name:    ALU_rtl - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU_4bit_rtl is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           Sel : in  STD_LOGIC_VECTOR (3 downto 0);
           Y : out  STD_LOGIC_VECTOR (3 downto 0));
end ALU_4bit_rtl;

architecture Behavioral of ALU_4bit_rtl is
begin
	process(A,B,Sel)
	begin
		case sel is
		when "0000"=> Y<= A + B;
		when "0001"=> Y<= A - B;
		when "0010"=> Y<= A + 1;
		when "0011"=> Y<= A - 1;
		when "0100"=> Y<= A and B;
		when "0101"=> Y<= A or B;
		when "0110"=> Y<= A xor B;
		when "0111"=> Y<= not A;
		when "1000"=>
				Y(0)<=A(1);
				Y(1)<=A(2);
				Y(2)<=A(3);
				Y(3)<='0';
		when "1010"=>
				Y(3)<=A(2);
				Y(2)<=A(1);
				Y(1)<=A(0);
				Y(0)<='0';
		when others => NULL;
		end case;
	end process;
	
end Behavioral;