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

entity SHIFT is
    Port ( I_SHIFT_32 : in  STD_LOGIC_VECTOR (31 downto 0);
           O_SHIFT_32 : out  STD_LOGIC_VECTOR (31 downto 0));
end SHIFT;

architecture Behavioral of SHIFT is

begin
process(I_SHIFT_32)
	begin
		O_SHIFT_32(31 downto 2) <= I_SHIFT_32(29 downto 0);
		O_SHIFT_32(1 downto 0) <= "00";
	end process;
end Behavioral;

