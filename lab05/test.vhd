--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:14:22 04/18/2018
-- Design Name:   
-- Module Name:   /home/student/lab05/lab05/test.vhd
-- Project Name:  lab05
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Test_Module
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
 
ENTITY test IS
END test;
 
ARCHITECTURE behavior OF test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Test_Module
    PORT(
         I_EN : IN  std_logic;
         I_Instr : IN  std_logic_vector(31 downto 0);
         O_DEC_RegDst : OUT  std_logic;
         O_DEC_Jump : OUT  std_logic;
         O_DEC_Beq : OUT  std_logic;
         O_DEC_Bne : OUT  std_logic;
         O_DEC_MemRead : OUT  std_logic;
         O_DEC_MemtoReg : OUT  std_logic;
         O_DEC_ALUOp : OUT  std_logic_vector(1 downto 0);
         O_DEC_MemWrite : OUT  std_logic;
         O_DEC_ALUSrc : OUT  std_logic;
         O_DEC_RegWrite : OUT  std_logic;
         O_ALUCtl : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal I_EN : std_logic := '0';
   signal I_Instr : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal O_DEC_RegDst : std_logic;
   signal O_DEC_Jump : std_logic;
   signal O_DEC_Beq : std_logic;
   signal O_DEC_Bne : std_logic;
   signal O_DEC_MemRead : std_logic;
   signal O_DEC_MemtoReg : std_logic;
   signal O_DEC_ALUOp : std_logic_vector(1 downto 0);
   signal O_DEC_MemWrite : std_logic;
   signal O_DEC_ALUSrc : std_logic;
   signal O_DEC_RegWrite : std_logic;
   signal O_ALUCtl : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Test_Module PORT MAP (
          I_EN => I_EN,
          I_Instr => I_Instr,
          O_DEC_RegDst => O_DEC_RegDst,
          O_DEC_Jump => O_DEC_Jump,
          O_DEC_Beq => O_DEC_Beq,
          O_DEC_Bne => O_DEC_Bne,
          O_DEC_MemRead => O_DEC_MemRead,
          O_DEC_MemtoReg => O_DEC_MemtoReg,
          O_DEC_ALUOp => O_DEC_ALUOp,
          O_DEC_MemWrite => O_DEC_MemWrite,
          O_DEC_ALUSrc => O_DEC_ALUSrc,
          O_DEC_RegWrite => O_DEC_RegWrite,
          O_ALUCtl => O_ALUCtl
        );

   -- Clock process definitions
   <clock>_process :process
   begin
		<clock> <= '0';
		wait for <clock>_period/2;
		<clock> <= '1';
		wait for <clock>_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
