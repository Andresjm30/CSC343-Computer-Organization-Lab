LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mejia_ori_Oct28 is port(
	clk, ld, clr: in std_logic;
	RSin:         in std_logic_vector(31 downto 0);
	IMMin:        in std_logic_vector(15 downto 0);
	RTout:        out std_logic_vector(31 downto 0));
end mejia_ori_Oct28;


architecture arch of mejia_ori_Oct28 is

	component mejia_register32_Oct28 port(
		d:            IN std_logic_vector(31 downto 0);
		ld, clr, clk: IN std_logic;
		q:            OUT std_logic_vector(31 downto 0)
		);
	end component;
	
	component mejia_register16_Oct28 port(
		d:            IN std_logic_vector(15 downto 0);
		ld, clr, clk: IN std_logic;
		q:            OUT std_logic_vector(15 downto 0)
	);
	end component;
	
	component mejia_extend_Oct28 port(
		extend_in : in std_logic_vector(15 downto 0);
		extend_out: out std_logic_vector(31 downto 0)
		);
	end component;
	
	component mejia_or_op_Oct28 is port(
		a, b: IN std_logic_vector(31 downto 0);
		q:    OUT std_logic_vector(31 downto 0)
		);
	end component;
	
	signal rs32 : std_logic_vector(31 downto 0);
	signal rt32 : std_logic_vector(31 downto 0);
	signal imm16: std_logic_vector(15 downto 0);
	signal s1, s3, s4: std_logic_vector(31 downto 0);
	signal s2: std_logic_vector(15 downto 0);
	
	begin
	
	REG_RS: mejia_register32_Oct28 
		port map( ld => ld,
					 clr => clr,
					 clk => clk,
					 d => rs32,
					 q => s1);
	
	REG_IMM: mejia_register16_Oct28
		port map( ld => ld,
					 clr => clr,
					 clk => clk,
					 d => imm16,
					 q => s2);
					 
	Extend_32: mejia_extend_Oct28 
		port map( extend_in => s2,
					 extend_out => s3);
					 
	AND_OP: mejia_or_op_Oct28
		port map( a => s1,
					 b => s3,
					 q => s4);
	
	REG_RT: mejia_register32_Oct28
		port map( ld => ld,
					 clr => clr,
					 clk => clk,
					 d => s4,
					 q => rt32);
	
	rs32 <= RSin;
	imm16 <= IMMin;
	RTout <= rt32;
 
end architecture arch;