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
use work.types.all;

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
	function INIT_REG return REG_ARRAY is
		variable REG_ARRAY : REG_ARRAY := (others => x"00000000");
	begin
		REG_ARRAY(2)  := x"02020202";
		REG_ARRAY(4)  := x"04040404";
		REG_ARRAY(8)  := x"08080808";
		REG_ARRAY(9)  := x"09090909";
		REG_ARRAY(10) := x"0A0A0A0A";
		REG_ARRAY(11) := x"0B0B0B0B";
		REG_ARRAY(12) := x"0C0C0C0C";
		REG_ARRAY(13) := x"0D0D0D0D";
		REG_ARRAY(14) := x"0E0E0E0E";
		REG_ARRAY(15) := x"0F0F0F0F";
		REG_ARRAY(16) := x"10101010";
		REG_ARRAY(17) := x"11111111";
		REG_ARRAY(18) := x"12121212";
		REG_ARRAY(19) := x"13131313";
		REG_ARRAY(20) := x"14141414";
		REG_ARRAY(21) := x"15151515";
		REG_ARRAY(22) := x"16161616";
		REG_ARRAY(23) := x"17171717";
		REG_ARRAY(24) := x"18181818";
		REG_ARRAY(25) := x"19191919";
		return REG_ARRAY;
	end function INIT_REG;
	
	signal REG_ARRAY : REG_ARRAY := INIT_REG;
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

