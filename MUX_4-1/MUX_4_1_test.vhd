--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:45:26 04/06/2022
-- Design Name:   
-- Module Name:   /home/nahshal/Documents/Nahshal_ISE_Design/MUX_4-1/MUX_4_1_test.vhd
-- Project Name:  MUX_4-1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MUX_4_1_rtl
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
 
ENTITY MUX_4_1_test IS
END MUX_4_1_test;
 
ARCHITECTURE behavior OF MUX_4_1_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MUX_4_1_rtl
    PORT(
         D0 : IN  std_logic_vector(1 downto 0);
         D1 : IN  std_logic_vector(1 downto 0);
         D2 : IN  std_logic_vector(1 downto 0);
         D3 : IN  std_logic_vector(1 downto 0);
         S : IN  std_logic_vector(1 downto 0);
         Y : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal D0 : std_logic_vector(1 downto 0) := (others => '0');
   signal D1 : std_logic_vector(1 downto 0) := (others => '0');
   signal D2 : std_logic_vector(1 downto 0) := (others => '0');
   signal D3 : std_logic_vector(1 downto 0) := (others => '0');
   signal S : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal Y : std_logic_vector(1 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MUX_4_1_rtl PORT MAP (
          D0 => D0,
          D1 => D1,
          D2 => D2,
          D3 => D3,
          S => S,
          Y => Y
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      
		D0<="11";
		D1<="10";
		D2<="01";
		D3<="00";
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
