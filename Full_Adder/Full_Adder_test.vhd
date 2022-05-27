--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:10:15 03/11/2022
-- Design Name:   
-- Module Name:   /home/nahshal/Documents/Nahshal_ISE_Design/Full_Adder/Full_Adder_test.vhd
-- Project Name:  Full_Adder
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Full_Adder_rtl
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
 
ENTITY Full_Adder_test IS
END Full_Adder_test;
 
ARCHITECTURE behavior OF Full_Adder_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Full_Adder_rtl
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         cin : IN  std_logic;
         sum : OUT  std_logic;
         cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';
   signal cin : std_logic := '0';

 	--Outputs
   signal sum : std_logic;
   signal cout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Full_Adder_rtl PORT MAP (
          a => a,
          b => b,
          cin => cin,
          sum => sum,
          cout => cout
        );

   -- Stimulus process
   stim_proc: process
   begin		
      
		a<='0';
		b<='0';
		cin<='0';
		wait for 1 ps;
		a<='0';
		b<='0';
		cin<='1';
		wait for 1 ps;
		a<='0';
		b<='1';
		cin<='0';
		wait for 1 ps;
		a<='0';
		b<='1';
		cin<='1';
		wait for 1 ps;
		a<='1';
		b<='0';
		cin<='0';
		wait for 1 ps;
		a<='1';
		b<='0';
		cin<='1';
		wait for 1 ps;
		a<='1';
		b<='1';
		cin<='0';
		wait for 1 ps;
		a<='1';
		b<='1';
		cin<='1';
		wait for 1 ps;
		
		
   end process;

END;
