--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:33:29 03/11/2022
-- Design Name:   
-- Module Name:   /home/nahshal/Documents/Nahshal_ISE_Design/Comp_Add_Sub/Comp_Add_Sub.vhd
-- Project Name:  Comp_Add_Sub
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Comp_Add_Sub_rtl
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Comp_Add_Sub IS
END Comp_Add_Sub;
 
ARCHITECTURE behavior OF Comp_Add_Sub IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Comp_Add_Sub_rtl
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         M_cin : IN  std_logic;
         Sum : OUT  std_logic_vector(3 downto 0);
         Cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');
   signal M_cin : std_logic := '0';

 	--Outputs
   signal Sum : std_logic_vector(3 downto 0);
   signal Cout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Comp_Add_Sub_rtl PORT MAP (
          A => A,
          B => B,
          M_cin => M_cin,
          Sum => Sum,
          Cout => Cout
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      
	  A<="0111";
	  B<="1000";
	  M_cin<='0';
	  wait for 1 ps;
	  A<="0111";
	  B<="1000";
	  M_cin<='1';
	  wait for 1 ps;
	  A<="1011";
	  B<="1010";
	  M_cin<='0';
	  wait for 1 ps;
	  A<="1011";
	  B<="1010";
	  M_cin<='1';
	  wait for 1 ps;
		
   end process;

END;
