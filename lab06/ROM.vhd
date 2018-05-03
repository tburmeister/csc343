----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:42:25 04/30/2018 
-- Design Name: 
-- Module Name:    ROM - Behavioral 
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
use STD.textio.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;


entity ROM is
    Port ( I_ROM_EN : in  STD_LOGIC;
           I_ROM_ADDR : in  STD_LOGIC_VECTOR (31 downto 0);
           O_ROM_DATA : out  STD_LOGIC_VECTOR (31 downto 0));
end ROM;

architecture Behavioral of ROM is
	signal MEM_ARRAY : MEM_ARRAY;	
begin
	process(I_ROM_EN, I_ROM_ADDR)
	begin 
		if I_ROM_EN = '1' then
			O_ROM_DATA(31 downto 24) <= MEM_ARRAY(to_integer(unsigned(I_ROM_ADDR)));
			O_ROM_DATA(23 downto 16) <= MEM_ARRAY(to_integer(unsigned(I_ROM_ADDR + 1)));
			O_ROM_DATA(15 downto 8) <= MEM_ARRAY(to_integer(unsigned(I_ROM_ADDR + 2)));
			O_ROM_DATA(7 downto 0) <= MEM_ARRAY(to_integer(unsigned(I_ROM_ADDR + 3)));
		end if;
	end process;
end Behavioral;

entity file_io is 
	Port ( I_EN : in STD_LOGIC);
end file_io;

architecture Behavioral of file_io is 
	type buf8x8 is array (0 to 8) of STD_LOGIC_VECTOR(7 downto 0);
	signal mem : buf8x8;
	
	impure function init_buf(Filename : in string) return buf8x8 is
		constant LINE_NUM : integer := 10;
		file fp: text;
		variable temp_mem : buf8x8 := (others => x"00");
		variable line_cache : line;
		variable byte_cache : bit_vector (7 downto 0) := x"00";
	begin
		file_open(fp, FileName, read_mode);
		for i in 0 to LINE_NUM loop
			if endfile(fp) then
				exit;
			else 
				readline(fp, line_cache);
				read(line_cache, byte_cache);
				temp_mem(i) := to_stdlogicvector(byte_cache);
			end if;
		end loop;
		file_close(fp);
		return temp_menu;
	end function;

begin 
	process(I_EN)
	begin 
		if I_EN = '1' then
			mem <= init_buf("input.txt");
		end if;
	end process;
end Behavioral;
		
		


