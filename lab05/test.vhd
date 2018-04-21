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
		I_EN			: in	STD_LOGIC;
		I_Instr		: in	STD_LOGIC_VECTOR (31 downto 0);
		O_RegDst 	: out STD_LOGIC;
		O_Jump 		: out STD_LOGIC;
		O_Beq			: out STD_LOGIC;
		O_Bne			: out STD_LOGIC;
		O_MemRead	: out STD_LOGIC;
		O_MemtoReg	: out STD_LOGIC;
		O_MemWrite	: out	STD_LOGIC;
		O_ALUSrc		: out STD_LOGIC;
		O_RegWrite	: out STD_LOGIC;
		O_ALUCtl		: out STD_LOGIC_VECTOR (3 downto 0)
    );
    END COMPONENT;
    

   --Inputs
   signal I_EN : std_logic := '0';
   signal I_Instr : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal O_RegDst 	: STD_LOGIC;
	signal O_Jump 		: STD_LOGIC;
	signal O_Beq		: STD_LOGIC;
	signal O_Bne		: STD_LOGIC;
	signal O_MemRead	: STD_LOGIC;
	signal O_MemtoReg	: STD_LOGIC;
	signal O_MemWrite	: STD_LOGIC;
	signal O_ALUSrc	: STD_LOGIC;
	signal O_RegWrite	: STD_LOGIC;
	signal O_ALUCtl	: STD_LOGIC_VECTOR (3 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Test_Module PORT MAP (
          I_EN => I_EN,
          I_Instr => I_Instr,
          O_RegDst => O_RegDst,
          O_Jump => O_Jump,
          O_Beq => O_Beq,
          O_Bne => O_Bne,
          O_MemRead => O_MemRead,
          O_MemtoReg => O_MemtoReg,
          O_MemWrite => O_MemWrite,
          O_ALUSrc => O_ALUSrc,
          O_RegWrite => O_RegWrite,
          O_ALUCtl => O_ALUCtl
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      I_EN <= '0';
		wait for 20 ns;
		I_EN <= '1';
		I_Instr <= x"012a5821"; -- addu $11, $9, $10
		wait for 20 ns;
		I_Instr <= x"24090001"; -- addiu $9, $9, 0x0001
		wait for 20 ns;
		I_Instr <= x"12120004"; -- beq $16, $18, 0x0004
		wait for 20 ns;
		I_Instr <= x"8e080000"; -- lw $8, 0x0000($16)
		wait for 20 ns;
		I_Instr <= x"15acfff9"; -- bne $13, $12, 0xfff9
		wait for 20 ns;
		I_Instr <= x"ae08fffc"; -- sw $8, 0xfffc($16)
		wait for 20 ns;
		I_Instr <= x"08100005"; -- j 0x00400014
		wait for 20 ns;
      wait;
   end process;

END;
