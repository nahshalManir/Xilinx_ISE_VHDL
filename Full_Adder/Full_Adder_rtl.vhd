----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:01:03 03/11/2022 
-- Design Name: 
-- Module Name:    Full_Adder_rtl - Behavioral 
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

entity Full_Adder_rtl is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           cout : out  STD_LOGIC);
end Full_Adder_rtl;

architecture Behavioral of Full_Adder_rtl is

signal temp1:STD_LOGIC:='0';
signal temp2:STD_LOGIC:='0';

begin

temp1 <= ((not a) and b) or (a and (not b));
sum <= ((not temp1) and cin) or (temp1 and (not cin));
temp2 <= a and b;
cout <= (temp1 and cin) or temp2;

end Behavioral;

