--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:45:56 03/30/2022
-- Design Name:   
-- Module Name:   /home/nahshal/Documents/Nahshal_ISE_Design/Adder_8Bit/Adder_8Bit_test.vhd
-- Project Name:  Adder_8Bit
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Adder_8Bit_rtl
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
 
ENTITY Adder_8Bit_test IS
END Adder_8Bit_test;
 
ARCHITECTURE behavior OF Adder_8Bit_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Adder_8Bit_rtl
    PORT(
         A : IN  std_logic_vector(7 downto 0);
         B : IN  std_logic_vector(7 downto 0);
         Cin : IN  std_logic;
         Sum : OUT  std_logic_vector(7 downto 0);
         Cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(7 downto 0) := (others => '0');
   signal B : std_logic_vector(7 downto 0) := (others => '0');
   signal Cin : std_logic := '0';

 	--Outputs
   signal Sum : std_logic_vector(7 downto 0);
   signal Cout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Adder_8Bit_rtl PORT MAP (
          A => A,
          B => B,
          Cin => Cin,
          Sum => Sum,
          Cout => Cout
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      
		A<="10010110";
		B<="10110010";
		Cin<='0';
		wait for 1 ps;
		A<="10010110";
		B<="10110010";
		Cin<='1';
		wait for 1 ps;
		
   end process;

END;
