--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:06:47 05/08/2022
-- Design Name:   
-- Module Name:   /home/nahshal/Documents/13000120095_Nahshal_ISE_Design/Up_Down_Counter_4Bit/upDown_counter_test.vhd
-- Project Name:  Up_Down_Counter_4Bit
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: upDown_counter_rtl
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
 
ENTITY upDown_counter_testcases IS
END upDown_counter_testcases;
 
ARCHITECTURE behavior OF upDown_counter_testcases IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT upDown_counter_rtl
    PORT(
         
         clk : IN  std_logic;
         load : IN  std_logic;
         reset : IN  std_logic;
         d : IN  std_logic;
         output : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   
   signal clk : std_logic := '0';
   signal load : std_logic := '0';
   signal reset : std_logic := '0';
   signal d : std_logic := '0';

 	--Outputs
   signal output : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 2 ps;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: upDown_counter_rtl PORT MAP (
          
          clk => clk,
          load => load,
          reset => reset,
          d => d,
          output => output
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
	
    reset <= '1';
    wait for 1 ps;
	 d <= '0';
    reset <= '0';
	 wait for 30 ps;
	 d <= '1';
	 reset <= '0';
	 wait for 30 ps;
	 
   end process;

END;