--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   07:51:44 05/26/2022
-- Design Name:   
-- Module Name:   /home/nahshal/Documents/13000120095_Nahshal_ISE_Design/JK_FF/JK_FF_test.vhd
-- Project Name:  JK_FF
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: JK_FF_rtl
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
 
ENTITY JK_FF_test IS
END JK_FF_test;
 
ARCHITECTURE behavior OF JK_FF_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT JK_FF_rtl
    PORT(
         J : IN  std_logic;
         K : IN  std_logic;
         Clk : IN  std_logic;
         Reset : IN  std_logic;
         Q : OUT  std_logic;
         Qb : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal J : std_logic := '0';
   signal K : std_logic := '0';
   signal Clk : std_logic := '0';
   signal Reset : std_logic := '0';

 	--Outputs
   signal Q : std_logic;
   signal Qb : std_logic;

   -- Clock period definitions
   constant Clk_period : time := 2 ps;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: JK_FF_rtl PORT MAP (
          J => J,
          K => K,
          Clk => Clk,
          Reset => Reset,
          Q => Q,
          Qb => Qb
        );

   -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      
		J<='0';
		K<='0';
		Reset<='0';
		wait for 2 ps;
		J<='0';
		K<='1';
		Reset<='0';
		wait for 2 ps;
		J<='1';
		K<='0';
		Reset<='0';
		wait for 2 ps;
		J<='1';
		K<='1';
		Reset<='0';
		wait for 2 ps;
		
		
   end process;

END;
