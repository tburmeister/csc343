-- Vhdl test bench created from schematic /home/student/lab05/lab05/Test_Module.sch - Sun Apr 22 10:16:41 2018
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY Test_Module_Test_Module_sch_tb IS
END Test_Module_Test_Module_sch_tb;
ARCHITECTURE behavioral OF Test_Module_Test_Module_sch_tb IS 

   COMPONENT Test_Module
   PORT( I_EN	:	IN	STD_LOGIC; 
          I_Instr	:	IN	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          O_RegDst	:	OUT	STD_LOGIC; 
          O_Jump	:	OUT	STD_LOGIC; 
          O_Beq	:	OUT	STD_LOGIC; 
          O_Bne	:	OUT	STD_LOGIC; 
          O_MemRead	:	OUT	STD_LOGIC; 
          O_MemtoReg	:	OUT	STD_LOGIC; 
          O_MemWrite	:	OUT	STD_LOGIC; 
          O_ALUSrc	:	OUT	STD_LOGIC; 
          O_RegWrite	:	OUT	STD_LOGIC; 
          O_ALUCtl	:	OUT	STD_LOGIC_VECTOR (3 DOWNTO 0));
   END COMPONENT;

   SIGNAL I_EN	:	STD_LOGIC;
   SIGNAL I_Instr	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL O_RegDst	:	STD_LOGIC;
   SIGNAL O_Jump	:	STD_LOGIC;
   SIGNAL O_Beq	:	STD_LOGIC;
   SIGNAL O_Bne	:	STD_LOGIC;
   SIGNAL O_MemRead	:	STD_LOGIC;
   SIGNAL O_MemtoReg	:	STD_LOGIC;
   SIGNAL O_MemWrite	:	STD_LOGIC;
   SIGNAL O_ALUSrc	:	STD_LOGIC;
   SIGNAL O_RegWrite	:	STD_LOGIC;
   SIGNAL O_ALUCtl	:	STD_LOGIC_VECTOR (3 DOWNTO 0);

BEGIN

   UUT: Test_Module PORT MAP(
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

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
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
      wait;
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
