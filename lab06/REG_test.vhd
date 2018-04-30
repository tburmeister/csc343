--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:09:31 04/28/2018
-- Design Name:   
-- Module Name:   /home/student/csc343/lab06/REG_test.vhd
-- Project Name:  lab06
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: REG
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
 
ENTITY REG_test IS
END REG_test;
 
ARCHITECTURE behavior OF REG_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT REG
    PORT(
         I_REG_EN : IN  std_logic;
         I_REG_WE : IN  std_logic;
         I_REG_SEL_RS : IN  std_logic_vector(4 downto 0);
         I_REG_SEL_RT : IN  std_logic_vector(4 downto 0);
         I_REG_SEL_RD : IN  std_logic_vector(4 downto 0);
         I_REG_DATA_RD : IN  std_logic_vector(31 downto 0);
         O_REG_DATA_A : OUT  std_logic_vector(31 downto 0);
         O_REG_DATA_B : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal I_REG_EN : std_logic := '0';
   signal I_REG_WE : std_logic := '0';
   signal I_REG_SEL_RS : std_logic_vector(4 downto 0) := (others => '0');
   signal I_REG_SEL_RT : std_logic_vector(4 downto 0) := (others => '0');
   signal I_REG_SEL_RD : std_logic_vector(4 downto 0) := (others => '0');
   signal I_REG_DATA_RD : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal O_REG_DATA_A : std_logic_vector(31 downto 0);
   signal O_REG_DATA_B : std_logic_vector(31 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: REG PORT MAP (
          I_REG_EN => I_REG_EN,
          I_REG_WE => I_REG_WE,
          I_REG_SEL_RS => I_REG_SEL_RS,
          I_REG_SEL_RT => I_REG_SEL_RT,
          I_REG_SEL_RD => I_REG_SEL_RD,
          I_REG_DATA_RD => I_REG_DATA_RD,
          O_REG_DATA_A => O_REG_DATA_A,
          O_REG_DATA_B => O_REG_DATA_B
        );

   -- Stimulus process
   stim_proc: process
   begin
		wait for 20 ns;
		-- Read registers 0 and 2
		I_REG_EN <= '1';
		I_REG_WE <= '0';
		I_REG_SEL_RS <= "00000";
		I_REG_SEL_RT <= "00010";
		wait for 20 ns;
		-- Read registers 4 and 8
		I_REG_SEL_RS <= "00100";
		I_REG_SEL_RT <= "01000";
		wait for 20 ns;
		-- Read registers 9 and 10
		I_REG_SEL_RS <= "01001";
		I_REG_SEL_RT <= "01010";
		wait for 20 ns;
		-- Read registers 11 and 12
		I_REG_SEL_RS <= "01011";
		I_REG_SEL_RT <= "01100";
		wait for 20 ns;
		-- Read registers 13 and 14
		I_REG_SEL_RS <= "01101";
		I_REG_SEL_RT <= "01110";
		wait for 20 ns;
		-- Read registers 15 and 16
		I_REG_SEL_RS <= "01111";
		I_REG_SEL_RT <= "10000";
		wait for 20 ns;
		-- Read registers 17 and 18
		I_REG_SEL_RS <= "10001";
		I_REG_SEL_RT <= "10010";
		wait for 20 ns;
		-- Read regisrers 19 and 20
		I_REG_SEL_RS <= "10011";
		I_REG_SEL_RT <= "10100";
		wait for 20 ns;
		-- Read registers 21 and 22
		I_REG_SEL_RS <= "10101";
		I_REG_SEL_RT <= "10110";
		wait for 20 ns;
		-- Read registers 23 and 24
		I_REG_SEL_RS <= "10111";
		I_REG_SEL_RT <= "11000";
		wait for 20 ns;
		-- Read registers 25 and 31
		I_REG_SEL_RS <= "11001";
		I_REG_SEL_RT <= "11111";
		wait for 20 ns;
		-- Write register 25
		I_REG_WE <= '1';
		I_REG_DATA_RD <= x"ffffffff";
		I_REG_SEL_RD <= "11001";
		wait for 20 ns;
		I_REG_SEL_RD <= "11111";
      wait;
   end process;

END;
