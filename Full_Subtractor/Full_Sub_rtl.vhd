----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:34:52 03/30/2022 
-- Design Name: 
-- Module Name:    Full_Sub_rtl - Behavioral 
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

entity Full_Sub_rtl is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           bin : in  STD_LOGIC;
           diff : out  STD_LOGIC;
           carry : out  STD_LOGIC);
end Full_Sub_rtl;

architecture Behavioral of Full_Sub_rtl is

signal temp1,temp2:STD_LOGIC:='0';

begin

temp1 <= ((not a) and b) or (a and (not b));
diff <= ((not temp1) and bin) or (temp1 and (not bin));
temp2 <= (not a) and b;
carry <= ((not temp1) and bin) or temp2;

end Behavioral;

