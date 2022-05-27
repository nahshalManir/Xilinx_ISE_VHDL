----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:43:13 03/30/2022 
-- Design Name: 
-- Module Name:    FS_using_HS_rtl - Behavioral 
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

entity FS_using_HS_rtl is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Bin : in  STD_LOGIC;
           Diff : out  STD_LOGIC;
           Cout : out  STD_LOGIC);
end FS_using_HS_rtl;

architecture Behavioral of FS_using_HS_rtl is

component Half_Sub_rtl is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           diff : out  STD_LOGIC;
           carry : out  STD_LOGIC);
end component;

signal d1,c1,c2:STD_LOGIC:='0';

begin

HS0: Half_Sub_rtl port map (a=>A, b=>B, diff=>d1, carry=>c1);
HS1: Half_Sub_rtl port map (a=>d1, b=>Bin, diff=>Diff, carry=>c2);
Cout <= c1 or c2;

end Behavioral;

