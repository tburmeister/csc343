----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:03:20 04/16/2018 
-- Design Name: 
-- Module Name:    DEC - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DEC is
	Port (
		I_DEC_EN 		: in 	STD_LOGIC;
		I_DEC_Opcode 	: in 	STD_LOGIC_VECTOR (5 downto 0);
      O_DEC_RegDst 	: out STD_LOGIC;
		O_DEC_Jump 		: out STD_LOGIC;
		O_DEC_Beq		: out STD_LOGIC;
		O_DEC_Bne		: out STD_LOGIC;
		O_DEC_MemRead	: out STD_LOGIC;
		O_DEC_MemtoReg	: out STD_LOGIC;
		O_DEC_ALUOp		: out STD_LOGIC_VECTOR (1 downto 0);
		O_DEC_MemWrite	: out	STD_LOGIC;
		O_DEC_ALUSrc	: out STD_LOGIC;
		O_DEC_RegWrite	: out STD_LOGIC
	);
end DEC;

architecture Behavioral of DEC is

begin
	process(I_DEC_EN, I_DEC_Opcode)
	begin
		if I_DEC_EN = '1' then
			if I_DEC_Opcode = x"00" then
				-- This is an R-format instruction
				O_DEC_RegDst 	<= '1';
				O_DEC_Jump 		<= '0';
				O_DEC_Beq		<= '0';
				O_DEC_Bne		<= '0';
				O_DEC_MemRead	<= '0';
				O_DEC_MemtoReg	<= '0';
				O_DEC_ALUOp		<= "10";
				O_DEC_MemWrite	<= '0';
				O_DEC_ALUSrc	<= '0';
				O_DEC_RegWrite	<= '1';
			elsif I_DEC_Opcode = x"08" or I_DEC_Opcode = x"09" then
				-- addi/addiu
				O_DEC_RegDst	<= '0';
				O_DEC_Jump		<= '0';
				O_DEC_Beq		<= '0';
				O_DEC_Bne		<= '0';
				O_DEC_MemRead	<= '0';
				O_DEC_MemtoReg	<= '0';
				O_DEC_ALUOp		<= "10";
				O_DEC_MemWrite	<= '0';
				O_DEC_ALUSrc	<= '1';
				O_DEC_RegWrite	<= '1';
			elsif I_DEC_Opcode = x"04" or I_DEC_Opcode = x"05" then
				-- beq/bne
				O_DEC_RegDst	<= '0';
				O_DEC_Jump		<= '0';
				if I_DEC_Opcode = x"04" then
					O_DEC_Beq 	<= '1';
					O_DEC_Bne	<= '0';
				else
					O_DEC_Beq	<= '0';
					O_DEC_Bne	<= '1';
				end if;
				O_DEC_MemRead	<= '0';
				O_DEC_MemtoReg	<= '0';
				O_DEC_ALUOp		<= "01";
				O_DEC_MemWrite	<= '0';
				O_DEC_ALUSrc	<= '0';
				O_DEC_RegWrite	<= '0';
			elsif I_DEC_Opcode = x"23" then
				-- lw
				O_DEC_RegDst 	<= '0';
				O_DEC_Jump		<= '0';
				O_DEC_Beq		<= '0';
				O_DEC_Bne		<= '0';
				O_DEC_MemRead	<= '1';
				O_DEC_MemtoReg	<= '1';
				O_DEC_ALUOp		<= "00";
				O_DEC_MemWrite	<= '0';
				O_DEC_ALUSrc	<= '1';
				O_DEC_RegWrite	<= '1';
			elsif I_DEC_Opcode = x"2b" then
				-- sw
				O_DEC_RegDst 	<= '0';
				O_DEC_Jump		<= '0';
				O_DEC_Beq		<= '0';
				O_DEC_Bne		<= '0';
				O_DEC_MemRead	<= '0';
				O_DEC_MemtoReg	<= '1';
				O_DEC_ALUOp		<= "00";
				O_DEC_MemWrite	<= '1';
				O_DEC_ALUSrc	<= '1';
				O_DEC_RegWrite	<= '0';
			elsif I_DEC_Opcode = x"02" then
				-- j
				O_DEC_RegDst	<= '0';
				O_DEC_Jump		<= '1';
				O_DEC_Beq		<= '0';
				O_DEC_Bne		<= '0';
				O_DEC_MemRead	<= '0';
				O_DEC_MemtoReg	<= '0';
				O_DEC_ALUOp		<= "00";
				O_DEC_MemWrite	<= '0';
				O_DEC_ALUSrc	<= '0';
				O_DEC_RegWrite	<= '0';
			end if;
		end if;
	end process;
end Behavioral;

