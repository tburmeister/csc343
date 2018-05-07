-- TestBench Template 

  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;
  USE ieee.numeric_std.ALL;

  ENTITY ROM_test IS
  END ROM_test;

  ARCHITECTURE behavior OF ROM_test IS 

  -- Component Declaration
          COMPONENT ROM
          PORT(
                  I_ROM_EN : IN std_logic;
                  I_ROM_ADDR : IN std_logic_vector(31 downto 0);       
                  O_ROM_DATA : OUT std_logic_vector(31 downto 0)
                  );
          END COMPONENT;

          SIGNAL I_ROM_EN :  std_logic;
          SIGNAL I_ROM_ADDR :  std_logic_vector(31 downto 0);
			 SIGNAL O_ROM_DATA :  std_logic_vector(31 downto 0);
          

  BEGIN

  -- Component Instantiation
          uut: ROM PORT MAP(
                  I_ROM_EN => I_ROM_EN,
						I_ROM_ADDR => I_ROM_ADDR,
						O_ROM_DATA => O_ROM_DATA
          );


  --  Test Bench Statements
     tb : PROCESS
     BEGIN

        wait for 100 ns; -- wait until global set/reset completes
			
        -- Add user defined stimulus here
		-- I_ROM disabled
			I_ROM_EN <= '0';
			I_ROM_ADDR <= x"00000000";
			wait for 20 ns;
		-- I_ROM enabled
			I_ROM_EN <= '1';
			I_ROM_ADDR <= x"00000008";
			wait for 20 ns;
		-- next line
			I_ROM_EN <= '1';
			I_ROM_ADDR <= x"00000010";
			wait for 20 ns;
		-- next line
			I_ROM_EN <= '1';
			I_ROM_ADDR <= x"00000018";
			wait for 20 ns;
		-- next line
			I_ROM_EN <= '1';
			I_ROM_ADDR <= x"00000020";
        wait; -- will wait forever
     END PROCESS tb;
  --  End Test Bench 

  END;
