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
use IEEE.NUMERIC_STD.ALL;
use STD.textio.all;
use work.Common.all;

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
	impure function init_rom(Filename : in string) return MEM_ARRAY is
		constant LINE_NUM : integer := 256;
		file fp: text;
		variable mem_array : MEM_ARRAY := (others => x"00");
		variable line_cache : line;
		variable word_cache : bit_vector (31 downto 0) := x"00000000";
	begin
		file_open(fp, FileName, read_mode);
		for i in 0 to LINE_NUM loop
			if endfile(fp) then
				exit;
			else 
				readline(fp, line_cache);
				read(line_cache, word_cache);
				mem_array(4 * i) := to_stdlogicvector(word_cache(31 downto 24));
				mem_array(4 * i + 1) := to_stdlogicvector(word_cache(23 downto 16));
				mem_array(4 * i + 2) := to_stdlogicvector(word_cache(15 downto 8));
				mem_array(4 * i + 3) := to_stdlogicvector(word_cache(7 downto 0));
			end if;
		end loop;
		file_close(fp);
		return mem_array;
	end function;
	
	signal MEM_ARRAY : MEM_ARRAY := init_rom("ROM_init.txt");	
begin
	process(I_ROM_EN, I_ROM_ADDR)
	begin 
		if I_ROM_EN = '1' then
			O_ROM_DATA(31 downto 24) <= MEM_ARRAY(to_integer(unsigned(I_ROM_ADDR)));
			O_ROM_DATA(23 downto 16) <= MEM_ARRAY(to_integer(unsigned(I_ROM_ADDR)) + 1);
			O_ROM_DATA(15 downto 8) <= MEM_ARRAY(to_integer(unsigned(I_ROM_ADDR)) + 2);
			O_ROM_DATA(7 downto 0) <= MEM_ARRAY(to_integer(unsigned(I_ROM_ADDR)) + 3);
		end if;
	end process;
end Behavioral;

