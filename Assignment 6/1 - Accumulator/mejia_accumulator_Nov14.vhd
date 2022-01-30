LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mejia_accumulator_Nov14 is 
	port(clk, ld, clr, add_sub: in std_logic;
		  A: in std_logic_vector(7 downto 0);
		  Z: buffer std_logic_vector(7 downto 0);
		  overflow: out std_logic);
end mejia_accumulator_Nov14;

architecture arch of mejia_accumulator_Nov14 is

	component mejia_register_Nov14 
		port(d:            IN std_logic_vector(7 downto 0);
			  ld, clr, clk, o: IN std_logic;
			  f:            out std_logic;
			  q:            OUT std_logic_vector(7 downto 0)
		);
	end component;
	
	component mejia_addsub_Nov14
	PORT (add_sub		: IN STD_LOGIC ;
			dataa		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
			datab		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
			overflow		: OUT STD_LOGIC ;
			result		: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
	);
	END COMPONENT;
	
	signal Ain, Zout: std_logic_vector(7 downto 0);
	signal s1, s2, s3, M: std_logic_vector(7 downto 0);
	signal over_flow, f1, f2: std_logic;
	
	begin
	
	
	REGin_8bit: mejia_register_Nov14  
		port map( ld => ld,
					 clr => clr,
					 clk => clk,
					 o => '0',
					 d => Ain,
					 f => f1,
					 q => s1);

		
	ADDSUB_8bit: mejia_addsub_Nov14
		port map( add_sub => add_sub,
					 dataa => s1,
					 datab => Zout,
					 overflow => over_flow,
					 result => s2);
					 
	REGout_8bit: mejia_register_Nov14  
		port map( ld => ld,
					 clr => clr,
					 clk => clk,
					 o => over_flow,
					 d => s2,
					 f => f2,
					 q => Zout);
					 
	Ain <= A;
	overflow <= f2;
	Z <= Zout;
					 
end architecture arch;
	