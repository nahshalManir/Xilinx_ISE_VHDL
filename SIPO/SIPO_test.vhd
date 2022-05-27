--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:43:27 05/08/2022
-- Design Name:   
-- Module Name:   /home/nahshal/Documents/Nahshal_ISE_Design/SIPO/SIPO_test.vhd
-- Project Name:  SIPO
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SIPO_rtl
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
 
ENTITY SIPO_test IS
END SIPO_test;
 
ARCHITECTURE behavior OF SIPO_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SIPO_rtl
    PORT(
         data : IN  std_logic;
         clear : IN  std_logic;
         clock : IN  std_logic;
         QA : INOUT  std_logic;
         QB : INOUT  std_logic;
         QC : INOUT  std_logic;
         QD : INOUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal data : std_logic := '0';
   signal clear : std_logic := '0';
   signal clock : std_logic := '0';

	--BiDirs
   signal QA : std_logic;
   signal QB : std_logic;
   signal QC : std_logic;
   signal QD : std_logic;

   -- Clock period definitions
   constant clock_period : time := 2 ps;
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SIPO_rtl PORT MAP (
          data => data,
          clear => clear,
          clock => clock,
          QA => QA,
          QB => QB,
          QC => QC,
          QD => QD
        );

   -- Clock process definitions
   clock_process :process
   begin
		clock <= '0';
		wait for clock_period/2;
		clock <= '1';
		wait for clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
		clear<='1';
		wait for  clock_period;
		
		data<='1';
		clear<='0';
		wait for clock_period;
		
		data<='0';
		clear<='0';
		wait for clock_period;
		
		data<='0';
		clear<='0';
		wait for clock_period;
		
		data<='0';
		clear<='0';
		wait for clock_period;
	
   end process;

END;
