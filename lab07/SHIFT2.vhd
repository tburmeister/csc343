----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:01:49 05/14/2018 
-- Design Name: 
-- Module Name:    SHIFT2 - Behavioral 
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

entity SHIFT2 is
    Port ( I_SHIFT_26 : in  STD_LOGIC_VECTOR (25 downto 0);
           O_SHIFT_32 : out  STD_LOGIC_VECTOR (31 downto 0));
end SHIFT2;

architecture Behavioral of SHIFT2 is
begin
	process(I_SHIFT_26)
	begin
		O_SHIFT_32(31 downto 28) <= "0000";
		O_SHIFT_32(27 downto 2) <= I_SHIFT_26(25 downto 0);
		O_SHIFT_32(1 downto 0) <= "00";
	end process;
end Behavioral;

