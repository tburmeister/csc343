----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:35:51 05/08/2018 
-- Design Name: 
-- Module Name:    SignExt - Behavioral 
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

entity SignExt is
    Port ( I_SignExt_EN : in  STD_LOGIC;
           I_SignExt_Val : in  STD_LOGIC_VECTOR (15 downto 0);
           O_SignExt_Val : out  STD_LOGIC_VECTOR (31 downto 0));
end SignExt;

architecture Behavioral of SignExt is

begin
	process(I_SignExt_EN, I_SignExt_Val)
	begin
		if I_SignExt_EN = '1' then
			if I_SignExt_Val(15) = '0' then
				O_SignExt_Val(31 downto 16) <= x"0000";
			else
				O_SignExt_Val(31 downto 16) <= x"ffff";
			end if;
			O_SignExt_Val(15 downto 0) <= I_SignExt_Val;
		end if;
	end process;
end Behavioral;

