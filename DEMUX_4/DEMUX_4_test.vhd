--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:21:02 05/25/2022
-- Design Name:   
-- Module Name:   /home/nahshal/Documents/13000120095_Nahshal_ISE_Design/DEMUX_4/DEMUX_4_test.vhd
-- Project Name:  DEMUX_4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: DEMUX_4_rtl
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
 
ENTITY DEMUX_4_test IS
END DEMUX_4_test;
 
ARCHITECTURE behavior OF DEMUX_4_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT DEMUX_4_rtl
    PORT(
         I : IN  std_logic_vector(1 downto 0);
         S : IN  std_logic_vector(1 downto 0);
         Y0 : OUT  std_logic_vector(1 downto 0);
         Y1 : OUT  std_logic_vector(1 downto 0);
         Y2 : OUT  std_logic_vector(1 downto 0);
         Y3 : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal I : std_logic_vector(1 downto 0) := (others => '0');
   signal S : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal Y0 : std_logic_vector(1 downto 0);
   signal Y1 : std_logic_vector(1 downto 0);
   signal Y2 : std_logic_vector(1 downto 0);
   signal Y3 : std_logic_vector(1 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: DEMUX_4_rtl PORT MAP (
          I => I,
          S => S,
          Y0 => Y0,
          Y1 => Y1,
          Y2 => Y2,
          Y3 => Y3
        );

   

   -- Stimulus process
   stim_proc: process
   begin		
      
		I<="10";
		S<="00";
		wait for 1 ps;
		S<="01";
		wait for 1 ps;
		S<="10";
		wait for 1 ps;
		S<="11";
		wait for 1 ps;
		
   end process;

END;
