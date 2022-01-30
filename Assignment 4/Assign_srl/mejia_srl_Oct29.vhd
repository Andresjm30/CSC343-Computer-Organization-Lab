library ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mejia_srl_Oct29 is port(
	clk, ld, clr: in std_logic;
	RTin:  in std_logic_vector(31 downto 0);
	shamtin: in std_logic_vector(31 downto 0);
	RDout: out std_logic_vector(31 downto 0));
end mejia_srl_Oct29;

architecture arch of mejia_srl_Oct29 is
	
	component mejia_register32_Oct29 port(
		d:            IN std_logic_vector(31 downto 0);
		ld, clr, clk: IN std_logic;
		q:            OUT std_logic_vector(31 downto 0)
		);
	end component;
	
	 
	 component mejia_shift_Oct29 port( 
		Ain: in std_logic_vector(31 downto 0);
		shamt: in std_logic_vector(31 downto 0);
		Bout: out std_logic_vector(31 downto 0)
	 );
	 end component;
	
	signal rt32: std_logic_vector(31 downto 0);
	signal shamt32: std_logic_vector(31 downto 0);
	signal rd32 : std_logic_vector(31 downto 0);
	signal s1, s2, s3: std_logic_vector(31 downto 0);
	
	begin
	
	REG_RT: mejia_register32_Oct29
		port map( ld => ld,
					 clr => clr,
					 clk => clk,
					 d => rt32,
					 q => s1);
	
	SLL_OP: mejia_shift_Oct29
		port map( Ain => s1,
					 shamt => shamt32,
					 Bout => s2);
					 
	REG_RD: mejia_register32_Oct29
		port map( ld => ld,
					 clr => clr,
					 clk => clk,
					 d => s2,
					 q => rd32);
	
	shamt32 <= shamtin;
	rt32 <= RTin;
	RDout <= rd32;

end arch;