----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:55:51 05/13/2018 
-- Design Name: 
-- Module Name:    PC - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PC is
    Port ( I_PC_UPDATE : in  STD_LOGIC;
           I_PC : in  STD_LOGIC_VECTOR (31 downto 0);
           O_PC : out  STD_LOGIC_VECTOR (31 downto 0));
end PC;

architecture Behavioral of PC is
	signal PC: unsigned(31 downto 0) := x"00000000";
begin
	process(I_PC_UPDATE, I_PC)
	begin
		if I_PC_UPDATE = '1' then
			PC <= unsigned(I_PC);
		end if;
		O_PC <= STD_LOGIC_VECTOR(PC);
	end process;
end Behavioral;

