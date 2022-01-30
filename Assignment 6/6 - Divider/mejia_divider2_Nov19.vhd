library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mejia_divider2_Nov19 is
	port ( clk, ld, clr: in std_logic;
			 Ain, Bin:     in std_logic_vector(31 downto 0);
			 Qout, Rout:   out std_logic_vector(31 downto 0));
end mejia_divider2_Nov19;

architecture arch of mejia_divider2_Nov19 is

	component mejia_register32_Nov16 
		port( d:            IN std_logic_vector(31 downto 0);
				ld, clr, clk: IN std_logic;
				q:            OUT std_logic_vector(31 downto 0));
	end component;
	
	COMPONENT mejia_divide32_Nov19
		PORT( denom		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
				numer		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
				quotient		: OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
				remain		: OUT STD_LOGIC_VECTOR (31 DOWNTO 0));
	END COMPONENT;
	
	signal A32, B32, Q32, R32 : std_logic_vector(31 downto 0);
	signal s1, s2, s3, s4 : std_logic_vector(31 downto 0);
	
	begin
	
	REG_A: mejia_register32_Nov16  
		port map( ld => ld,
					 clr => clr,
					 clk => clk,
					 d => A32,
					 q => s1);
	
	REG_B: mejia_register32_Nov16 
		port map( ld => ld,
					 clr => clr,
					 clk => clk,
					 d => B32,
					 q => s2);
					 
	DIVIDE : mejia_divide32_Nov19
		port map( denom => s2,
					 numer => s1,
					 quotient => s3,
					 remain => s4);
					 
	REG_Q : mejia_register32_Nov16 
		port map( ld => ld,
					 clr => clr,
					 clk => clk,
					 d => s3,
					 q => Q32);
					 
					 
	REG_R: mejia_register32_Nov16 
		port map( ld => ld,
					 clr => clr,
					 clk => clk,
					 d => s4,
					 q => R32);	
		
	A32 <= Ain;
	B32 <= Bin;
	Qout <= Q32;
	Rout <= R32;

	
end arch;
	