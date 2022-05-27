----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:26:16 04/21/2022 
-- Design Name: 
-- Module Name:    SIPO_rtl - Behavioral 
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

entity SIPO_rtl is
    Port ( data : in  STD_LOGIC;
           clear : in  STD_LOGIC;
           clock : in  STD_LOGIC;
           QA : inout  STD_LOGIC;
           QB : inout  STD_LOGIC;
           QC : inout  STD_LOGIC;
           QD : inout  STD_LOGIC);
end SIPO_rtl;

architecture Behavioral of SIPO_rtl is

component D_FF_rtl is
    Port ( D : in  STD_LOGIC;
           Q : out  STD_LOGIC;
			  Clk : in STD_LOGIC;
			  reset : in STD_LOGIC);
end component;

begin

D1: D_FF_rtl port map(D=>data,Clk=>clock,reset=>clear,Q=>QA);
D2: D_FF_rtl port map(D=>QA,Clk=>clock,reset=>clear,Q=>QB);
D3: D_FF_rtl port map(D=>QB,Clk=>clock,reset=>clear,Q=>QC);
D4: D_FF_rtl port map(D=>QC,Clk=>clock,reset=>clear,Q=>QD);

end Behavioral;

