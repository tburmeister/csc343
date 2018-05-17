----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:03:00 05/16/2018 
-- Design Name: 
-- Module Name:    JUMP - Behavioral 
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

entity JUMP is
    Port ( I_JUMP_26 : in  STD_LOGIC_VECTOR (25 downto 0);
           I_JUMP_PC : in  STD_LOGIC_VECTOR (32 downto 0);
           O_JUMP_32 : out  STD_LOGIC_VECTOR (32 downto 0));
end JUMP;

architecture Behavioral of JUMP is

begin
	process(I_JUMP_26)
	begin
		O_JUMP_32(31 downto 28) <= I_JUMP_PC(31 downto 28);
		O_JUMP_32(27 downto 2) <= I_JUMP_26;
		O_JUMP_32(1 downto 0) <= "00";
	end process;
end Behavioral;

