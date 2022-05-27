--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:15:42 03/30/2022
-- Design Name:   
-- Module Name:   /home/nahshal/Documents/Nahshal_ISE_Design/Subtractor_8Bit/Sub_8Bit_test.vhd
-- Project Name:  Subtractor_8Bit
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Sub_8Bit
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
 
ENTITY Sub_8Bit_test IS
END Sub_8Bit_test;
 
ARCHITECTURE behavior OF Sub_8Bit_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Sub_8Bit
    PORT(
         A : IN  std_logic_vector(7 downto 0);
         B : IN  std_logic_vector(7 downto 0);
         Bin : IN  std_logic;
         Diff : OUT  std_logic_vector(7 downto 0);
         Cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(7 downto 0) := (others => '0');
   signal B : std_logic_vector(7 downto 0) := (others => '0');
   signal Bin : std_logic := '0';

 	--Outputs
   signal Diff : std_logic_vector(7 downto 0);
   signal Cout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Sub_8Bit PORT MAP (
          A => A,
          B => B,
          Bin => Bin,
          Diff => Diff,
          Cout => Cout
        );

   -- Stimulus process
   stim_proc: process
   begin		
      
		A<="10110010";
		B<="01100110";
		Bin<='0';
		wait for 1 ps;
		A<="10110010";
		B<="01100110";
		Bin<='1';
		wait for 1 ps;
		
   end process;

END;
