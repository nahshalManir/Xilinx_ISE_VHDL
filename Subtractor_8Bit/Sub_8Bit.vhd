----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:03:28 03/30/2022 
-- Design Name: 
-- Module Name:    Sub_8Bit - Behavioral 
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

entity Sub_8Bit is
    Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
           B : in  STD_LOGIC_VECTOR (7 downto 0);
           Bin : in  STD_LOGIC;
           Diff : out  STD_LOGIC_VECTOR (7 downto 0);
           Cout : out  STD_LOGIC);
end Sub_8Bit;

architecture Behavioral of Sub_8Bit is

component Full_Sub_rtl is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           bin : in  STD_LOGIC;
           diff : out  STD_LOGIC;
           carry : out  STD_LOGIC);
end component;

signal c0,c1,c2,c3,c4,c5,c6:STD_LOGIC:='0';

begin

FS0: Full_Sub_rtl port map (a=>A(0), b=>B(0), bin=>Bin, diff=>Diff(0), carry=>c0);
FS1: Full_Sub_rtl port map (a=>A(1), b=>B(1), bin=>c0, diff=>Diff(1), carry=>c1);
FS2: Full_Sub_rtl port map (a=>A(2), b=>B(2), bin=>c1, diff=>Diff(2), carry=>c2);
FS3: Full_Sub_rtl port map (a=>A(3), b=>B(3), bin=>c2, diff=>Diff(3), carry=>c3);
FS4: Full_Sub_rtl port map (a=>A(4), b=>B(4), bin=>c3, diff=>Diff(4), carry=>c4);
FS5: Full_Sub_rtl port map (a=>A(5), b=>B(5), bin=>c4, diff=>Diff(5), carry=>c5);
FS6: Full_Sub_rtl port map (a=>A(6), b=>B(6), bin=>c5, diff=>Diff(6), carry=>c6);
FS7: Full_Sub_rtl port map (a=>A(7), b=>B(7), bin=>c6, diff=>Diff(7), carry=>Cout);

end Behavioral;

