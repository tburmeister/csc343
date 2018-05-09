----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:41:44 05/08/2018 
-- Design Name: 
-- Module Name:    ShiftLeft - Behavioral 
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

entity ShiftLeft is
    Port ( I_ShiftLeft_EN : in  STD_LOGIC;
           I_ShiftLeft_Val : in  STD_LOGIC_VECTOR (31 downto 0);
           O_ShiftLeft_Val : out  STD_LOGIC_VECTOR (31 downto 0));
end ShiftLeft;

architecture Behavioral of ShiftLeft is

begin
process(I_ShiftLeft_EN, I_ShiftLeft_Val)
	begin
		if I_ShiftLeft_EN = '1' then
			O_ShiftLeft_Val(31 downto 2) <= I_ShiftLeft_Val(29 downto 0);
			O_ShiftLeft_Val(1 downto 0) <= "00";
		end if;
	end process;
end Behavioral;

