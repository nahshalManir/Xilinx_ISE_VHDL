--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:14:47 04/13/2022
-- Design Name:   
-- Module Name:   /home/nahshal/Documents/Nahshal_ISE_Design/S_R_FF/S_R_FF_test.vhd
-- Project Name:  S_R_FF
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: S_R_FF
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
 
ENTITY S_R_FF_test IS
END S_R_FF_test;
 
ARCHITECTURE behavior OF S_R_FF_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT S_R_FF
    PORT(
         S : IN  std_logic;
         R : IN  std_logic;
         C : IN  std_logic;
         reset : IN  std_logic;
         Q : OUT  std_logic;
         Qb : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal S : std_logic := '0';
   signal R : std_logic := '0';
   signal C : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal Q : std_logic;
   signal Qb : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant C_period : time := 2 ps;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: S_R_FF PORT MAP (
          S => S,
          R => R,
          C => C,
          reset => reset,
          Q => Q,
          Qb => Qb
        );

   -- Clock process definitions
   C_process :process
   begin
		C <= '0';
		wait for C_period/2;
		C <= '1';
		wait for C_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      
		S<='0';
		R<='0';
		reset<='0';
		wait for 2 ps;
		S<='0';
		R<='1';
		reset<='0';
		wait for 2 ps;
		S<='1';
		R<='0';
		reset<='0';
		wait for 2 ps;
		S<='1';
		R<='1';
		reset<='0';
		wait for 2 ps;
		
   end process;

END;
