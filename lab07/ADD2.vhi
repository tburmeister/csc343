
-- VHDL Instantiation Created from source file ADD2.vhd -- 17:15:37 05/14/2018
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT ADD2
	PORT(
		I_ADD2_A : IN std_logic_vector(31 downto 0);
		I_ADD2_B : IN std_logic_vector(31 downto 0);          
		O_ADD2_Out : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_ADD2: ADD2 PORT MAP(
		I_ADD2_A => ,
		I_ADD2_B => ,
		O_ADD2_Out => 
	);


