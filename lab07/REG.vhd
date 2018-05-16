----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:56:51 04/28/2018 
-- Design Name: 
-- Module Name:    REG - Behavioral 
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
use work.Common.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity REG is
    Port ( I_REG_EN : in  STD_LOGIC;
           I_REG_WE : in  STD_LOGIC;
           I_REG_SEL_RS : in  STD_LOGIC_VECTOR (4 downto 0);
           I_REG_SEL_RT : in  STD_LOGIC_VECTOR (4 downto 0);
           I_REG_SEL_RD : in  STD_LOGIC_VECTOR (4 downto 0);
           I_REG_DATA_RD : in  STD_LOGIC_VECTOR (31 downto 0);
           O_REG_DATA_A : out  STD_LOGIC_VECTOR (31 downto 0);
           O_REG_DATA_B : out  STD_LOGIC_VECTOR (31 downto 0));
end REG;

architecture Behavioral of REG is	
	signal REG_ARRAY : REG_ARRAY := (others => x"00000000");
begin
	process(I_REG_EN,I_REG_WE,I_REG_SEL_RS,I_REG_SEL_RT,I_REG_SEL_RD,I_REG_DATA_RD)
	begin
		if I_REG_EN = '1' then
			-- Set outputs
			O_REG_DATA_A <= REG_ARRAY(to_integer(unsigned(I_REG_SEL_RS)));
			O_REG_DATA_B <= REG_ARRAY(to_integer(unsigned(I_REG_SEL_RT)));
		
			if I_REG_WE = '1' then
				-- Write input to register
				if I_REG_SEL_RD /= "00000" then
					-- Only allow update if not register $zero
					REG_ARRAY(to_integer(unsigned(I_REG_SEL_RD))) <= I_REG_DATA_RD;
				end if;
			end if;
		end if;
	end process;
end Behavioral;

