--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:11:11 05/04/2018
-- Design Name:   
-- Module Name:   /home/student/csc343/lab06/RAM_test.vhd
-- Project Name:  lab06
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: RAM
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
use IEEE.NUMERIC_STD.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY RAM_test IS
END RAM_test;
 
ARCHITECTURE behavior OF RAM_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RAM
    PORT(
         I_RAM_EN : IN  std_logic;
         I_RAM_RE : IN  std_logic;
         I_RAM_WE : IN  std_logic;
         I_RAM_ADDR : IN  std_logic_vector(31 downto 0);
         I_RAM_DATA : IN  std_logic_vector(31 downto 0);
         O_RAM_DATA : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal I_RAM_EN : std_logic := '0';
   signal I_RAM_RE : std_logic := '0';
   signal I_RAM_WE : std_logic := '0';
   signal I_RAM_ADDR : std_logic_vector(31 downto 0) := (others => '0');
   signal I_RAM_DATA : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal O_RAM_DATA : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RAM PORT MAP (
          I_RAM_EN => I_RAM_EN,
          I_RAM_RE => I_RAM_RE,
          I_RAM_WE => I_RAM_WE,
          I_RAM_ADDR => I_RAM_ADDR,
          I_RAM_DATA => I_RAM_DATA,
          O_RAM_DATA => O_RAM_DATA
        );

   -- Stimulus process
   stim_proc: process
   begin		
      wait for 20 ns;
		I_RAM_EN <= '1';
		I_RAM_RE <= '1';
		-- Read all 32 words we initialized in memory
      for i in 0 to 31 loop
			I_RAM_ADDR <= std_logic_vector(to_unsigned(i * 4, 32));
			wait for 20 ns;
		end loop;
		-- Write new values to some of the registers
		I_RAM_WE <= '1';
		for i in 0 to 7 loop
			-- Write new values
			I_RAM_RE <= '0';
			I_RAM_WE <= '1';
			I_RAM_ADDR <= std_logic_vector(to_unsigned(i * 4, 32));
			I_RAM_DATA <= std_logic_vector(to_unsigned(268435456 + 2**i, 32));
			wait for 20 ns;
			-- Read new value;
			I_RAM_RE <= '1';
			I_RAM_WE <= '0';
			wait for 20 ns;
		end loop;
      wait;
   end process;

END;
