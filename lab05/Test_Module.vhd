----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:11:51 04/16/2018 
-- Design Name: 
-- Module Name:    Test_Module - Behavioral 
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

entity Test_Module is
	Port (
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
end Test_Module;

architecture Behavioral of Test_Module is
	signal ALUOp	: STD_LOGIC_VECTOR (1 downto 0);
	signal Opcode	: STD_LOGIC_VECTOR (5 downto 0);
	signal Funct	: STD_LOGIC_VECTOR (5 downto 0);
	
	COMPONENT DEC
   PORT(
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
   END COMPONENT;
	 
	COMPONENT ACU
	PORT(
		I_ACU_ALUOp : in  STD_LOGIC_VECTOR (1 downto 0);
      I_ACU_Funct : in  STD_LOGIC_VECTOR (5 downto 0);
      O_ACU_CTL 	: out STD_LOGIC_VECTOR (3 downto 0)
	);
	END COMPONENT;

begin
	D : DEC PORT MAP(
		I_DEC_EN => I_EN,
		I_DEC_Opcode => Opcode,
		O_DEC_RegDst => O_RegDst,
		O_DEC_Jump => O_Jump,
		O_DEC_Beq => O_Beq,
		O_DEC_Bne => O_Bne,
		O_DEC_MemRead => O_MemRead,
		O_DEC_MemtoReg => O_MemtoReg,
		O_DEC_MemWrite => O_MemWrite,
		O_DEC_ALUSrc => O_ALUSrc,
		O_DEC_RegWrite => O_RegWrite,
		O_DEC_ALUOp => ALUOp
	);
	
	A : ACU PORT MAP(
		I_ACU_ALUOp => ALUOp,
		I_ACU_Funct => Funct,
		O_ACU_CTL => O_ALUCtl
	);
	
	Opcode <= I_Instr(31 downto 26);
	Funct <= I_Instr(5 downto 0);
	
end Behavioral;

