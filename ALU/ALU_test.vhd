--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:15:52 05/12/2022
-- Design Name:   
-- Module Name:   /home/nahshal/Documents/13000120095_Nahshal_ISE_Design/ALU/ALU_test.vhd
-- Project Name:  ALU
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU_4bit_rtl
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
 
ENTITY ALU_test IS
END ALU_test;
 
ARCHITECTURE behavior OF ALU_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU_4bit_rtl
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         Sel : IN  std_logic_vector(3 downto 0);
         Y : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal B : std_logic_vector(3 downto 0) := (others => '0');
   signal Sel : std_logic_vector(3 downto 0) := (others => '0');

	--BiDirs
   signal A : std_logic_vector(3 downto 0);

 	--Outputs
   signal Y : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU_4bit_rtl PORT MAP (
          A => A,
          B => B,
          Sel => Sel,
          Y => Y
        );

   -- Stimulus process
   stim_proc: process
   begin		
      
		A<="1001";
		B<="1011";
		Sel <= "0000";
		wait for 2 ps;
		Sel <= "0001";
		wait for 2 ps;
		Sel <= "0010";
		wait for 2 ps;
		Sel <= "0011";
		wait for 2 ps;
		Sel <= "0100";
		wait for 2 ps;
		Sel <= "0101";
		wait for 2 ps;
		Sel <= "0110";
		wait for 2 ps;
		Sel <= "0111";
		wait for 2 ps;
		Sel <= "1000";
		wait for 2 ps;
		Sel <= "1010";
		wait for 2 ps;
		
   end process;

END;
