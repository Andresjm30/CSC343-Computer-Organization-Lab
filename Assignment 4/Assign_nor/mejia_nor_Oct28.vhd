LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mejia_nor_Oct28 is port(
	clk, ld, clr: in std_logic;
	RSin, RTin:   in std_logic_vector(31 downto 0);
	RDout:        out std_logic_vector(31 downto 0));
end mejia_nor_Oct28;


architecture arch of mejia_nor_Oct28 is

	component mejia_register32_Oct28 port(
		d:            IN std_logic_vector(31 downto 0);
		ld, clr, clk: IN std_logic;
		q:            OUT std_logic_vector(31 downto 0)
		);
	end component;
	
	component mejia_nor_op_Oct28 is port(
		a, b: IN std_logic_vector(31 downto 0);
		q:    OUT std_logic_vector(31 downto 0)
		);
	end component;
	
	signal rs32 : std_logic_vector(31 downto 0);
	signal rt32 : std_logic_vector(31 downto 0);
	signal rd32 : std_logic_vector(31 downto 0);
	signal s1, s2, s3: std_logic_vector(31 downto 0);
	
	begin
	
	REG_RS: mejia_register32_Oct28 
		port map( ld => ld,
					 clr => clr,
					 clk => clk,
					 d => rs32,
					 q => s1);
	
	REG_RT: mejia_register32_Oct28
		port map( ld => ld,
					 clr => clr,
					 clk => clk,
					 d => rt32,
					 q => s2);
					 
	AND_OP: mejia_nor_op_Oct28
		port map( a => s1,
					 b => s2,
					 q => s3);
	
	REG_RD: mejia_register32_Oct28
		port map( ld => ld,
					 clr => clr,
					 clk => clk,
					 d => s3,
					 q => rd32);
	
	rs32 <= RSin;
	rt32 <= RTin;
	RDout <= rd32;
 
end architecture arch;