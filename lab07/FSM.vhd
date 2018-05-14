----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:16:29 05/08/2018 
-- Design Name: 
-- Module Name:    FSM - Behavioral 
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
use work.Common.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FSM is
    Port ( I_FSM_EN : in  STD_LOGIC;
           I_FSM_CLK : in  STD_LOGIC;
			  I_FSM_INST : in  STD_LOGIC_VECTOR(31 downto 0);
           O_FSM_IF : out  STD_LOGIC;
           O_FSM_ID : out  STD_LOGIC;
           O_FSM_EX : out  STD_LOGIC;
           O_FSM_ME : out  STD_LOGIC;
           O_FSM_WB : out  STD_LOGIC);
end FSM;
	

architecture Behavioral of FSM is
	signal state : FSM_STATE := INIT;
begin
	process(I_FSM_CLK)
	begin
		if rising_edge(I_FSM_CLK) then
			if I_FSM_INST = x"0000000c" then
				-- Syscall => stop
				state <= STOP;
			elsif I_FSM_EN = '1' then
				if state = INIT then
					-- Start execution
					O_FSM_IF <= '0';
					O_FSM_ID <= '0';
					O_FSM_EX <= '0';
					O_FSM_ME <= '0';
					O_FSM_WB <= '0';
					state <= FSM_IF;
				elsif state = FSM_IF then
					-- Instruction fetch
					O_FSM_WB <= '0';
					O_FSM_IF <= '1';
					state <= FSM_ID;
				elsif state = FSM_ID then
					-- Instruction decode
					O_FSM_IF <= '0';
					O_FSM_ID <= '1';
					state <= FSM_EX;
				elsif state = FSM_EX then
					-- Execution
					O_FSM_ID <= '0';
					O_FSM_EX <= '1';
					state <= FSM_ME;
				elsif state = FSM_ME then
					-- Memory access
					O_FSM_EX <= '0';
					O_FSM_ME <= '1';
					state <= FSM_WB;
				elsif state = FSM_WB then
					-- Write back
					O_FSM_ME <= '0';
					O_FSM_WB <= '1';
					state <= FSM_IF;
				end if;
			else
				-- Reset
				state <= INIT;
			end if;
		end if;
	end process;
end Behavioral;

