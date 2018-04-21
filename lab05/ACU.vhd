----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:05:11 04/16/2018 
-- Design Name: 
-- Module Name:    ACU - Behavioral 
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

entity ACU is
    Port ( I_ACU_ALUOp : in  STD_LOGIC_VECTOR (1 downto 0);
           I_ACU_Funct : in  STD_LOGIC_VECTOR (5 downto 0);
           O_ACU_CTL : out  STD_LOGIC_VECTOR (3 downto 0));
end ACU;

architecture Behavioral of ACU is

begin
	process(I_ACU_ALUOp,I_ACU_Funct)
		begin 
		if I_ACU_ALUOp = "00" then
		-- LW or SW
			O_ACU_CTL <= "0010";
		elsif I_ACU_ALUOp = "01" then
		--beq
			O_ACU_CTL <= "0110";
		elsif I_ACU_ALUOp = "10" then
			--R-type
			if I_ACU_Funct = "100000" then
				--add
				O_ACU_CTL <= "0010";
			elsif I_ACU_Funct = "100010" then
				--subtract 
				O_ACU_CTL <= "0110";
			elsif I_ACU_Funct = "100100" then
				--AND
				O_ACU_CTL <= "0000";
			elsif I_ACU_Funct = "100101" then
				--OR
				O_ACU_CTL <= "0001";
			elsif I_ACU_Funct = "100010" then
				--set on less than	
				O_ACU_CTL <= "0111";
			end if;
		end if;
	end process;
end Behavioral;

