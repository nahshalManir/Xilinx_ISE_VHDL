--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:43:18 03/30/2022
-- Design Name:   
-- Module Name:   /home/nahshal/Documents/Nahshal_ISE_Design/Comparator_4Bit/Comparator_4Bit_test.vhd
-- Project Name:  Comparator_4Bit
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Comparator_4Bit
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
 
ENTITY Comparator_4Bit_test IS
END Comparator_4Bit_test;
 
ARCHITECTURE behavior OF Comparator_4Bit_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Comparator_4Bit
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         Gt : OUT  std_logic;
         Lt : OUT  std_logic;
         Eq : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal Gt : std_logic;
   signal Lt : std_logic;
   signal Eq : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Comparator_4Bit PORT MAP (
          A => A,
          B => B,
          Gt => Gt,
          Lt => Lt,
          Eq => Eq
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      
		A<="0110";
		B<="1010";
		wait for 1 ps;
		A<="1110";
		B<="1010";
		wait for 1 ps;
		A<="1001";
		B<="1001";
		wait for 1 ps;
		
   end process;

END;
