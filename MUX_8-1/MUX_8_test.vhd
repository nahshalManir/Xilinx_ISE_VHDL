--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:40:48 05/25/2022
-- Design Name:   
-- Module Name:   /home/nahshal/Documents/13000120095_Nahshal_ISE_Design/MUX_8-1/MUX_8_test.vhd
-- Project Name:  MUX_8-1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MUX_8
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
 
ENTITY MUX_8_test IS
END MUX_8_test;
 
ARCHITECTURE behavior OF MUX_8_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MUX_8
    PORT(
         D0 : IN  std_logic_vector(2 downto 0);
         D1 : IN  std_logic_vector(2 downto 0);
         D2 : IN  std_logic_vector(2 downto 0);
         D3 : IN  std_logic_vector(2 downto 0);
         D4 : IN  std_logic_vector(2 downto 0);
         D5 : IN  std_logic_vector(2 downto 0);
         D6 : IN  std_logic_vector(2 downto 0);
         D7 : IN  std_logic_vector(2 downto 0);
         S : IN  std_logic_vector(2 downto 0);
         Y : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal D0 : std_logic_vector(2 downto 0) := (others => '0');
   signal D1 : std_logic_vector(2 downto 0) := (others => '0');
   signal D2 : std_logic_vector(2 downto 0) := (others => '0');
   signal D3 : std_logic_vector(2 downto 0) := (others => '0');
   signal D4 : std_logic_vector(2 downto 0) := (others => '0');
   signal D5 : std_logic_vector(2 downto 0) := (others => '0');
   signal D6 : std_logic_vector(2 downto 0) := (others => '0');
   signal D7 : std_logic_vector(2 downto 0) := (others => '0');
   signal S : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal Y : std_logic_vector(2 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MUX_8 PORT MAP (
          D0 => D0,
          D1 => D1,
          D2 => D2,
          D3 => D3,
          D4 => D4,
          D5 => D5,
          D6 => D6,
          D7 => D7,
          S => S,
          Y => Y
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      
		D0<="000";
		D1<="001";
		D2<="010";
		D3<="011";
		D4<="100";
		D5<="101";
		D6<="110";
		D7<="111";
		S<="000";
		wait for 2 ps;
		S<="001";
		wait for 2 ps;
		S<="010";
		wait for 2 ps;
		S<="011";
		wait for 2 ps;
		S<="100";
		wait for 2 ps;
		S<="101";
		wait for 2 ps;
		S<="110";
		wait for 2 ps;
		S<="111";
		wait for 2 ps;
		
   end process;

END;
