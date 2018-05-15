-- Vhdl test bench created from schematic /home/student/csc343/lab07/CCSiMP32.sch - Mon May 14 22:16:04 2018
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY CCSiMP32_CCSiMP32_sch_tb IS
END CCSiMP32_CCSiMP32_sch_tb;
ARCHITECTURE behavioral OF CCSiMP32_CCSiMP32_sch_tb IS 

   COMPONENT CCSiMP32
   PORT( I_EN	:	IN	STD_LOGIC; 
          I_CLK	:	IN	STD_LOGIC);
   END COMPONENT;

   SIGNAL I_EN	:	STD_LOGIC;
   SIGNAL I_CLK	:	STD_LOGIC;

	constant I_CLK_period : time := 10 ns;
BEGIN

   UUT: CCSiMP32 PORT MAP(
		I_EN => I_EN, 
		I_CLK => I_CLK
   );

   -- Clock process definitions
   I_CLK_process :process
   begin
		I_CLK <= '0';
		wait for I_CLK_period/2;
		I_CLK <= '1';
		wait for I_CLK_period/2;
   end process;

   tb : PROCESS
   BEGIN
		wait for I_CLK_period*10;
		I_EN <= '1';
      WAIT; -- will wait forever
   END PROCESS;

END;
