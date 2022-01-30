LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mejia_adder is port(
	clk, ld, clr: in std_logic;
	RSin, RTin:   in std_logic_vector(31 downto 0);
	DCout:        out std_logic_vector(31 downto 0));
end mejia_adder;


architecture arch of mejia_adder is

	component mejia_reg_32 
		port(
		d:            IN std_logic_vector(31 downto 0);
		ld, clr, clk: IN std_logic;
		q:            OUT std_logic_vector(31 downto 0)
		);
	end component;
	
	component mejia_add32
    port (
        A, B : in  std_logic_vector(31 downto 0);
        Cin  : in  std_logic;
        F    : out std_logic_vector(31 downto 0);
        Cout : out std_logic
    );
	 end component;
	 
	signal rs32 : std_logic_vector(31 downto 0);
	signal rt32 : std_logic_vector(31 downto 0);
	signal ds32 : std_logic_vector(31 downto 0);
	signal s1, s2, s3: std_logic_vector(31 downto 0);
	signal cin : std_logic := '0';
	signal cout : std_logic;
	
	begin
	
	REG_RS: mejia_reg_32 
		port map( ld => ld,
					 clr => clr,
					 clk => clk,
					 d => rs32,
					 q => s1);
	
	REG_RT: mejia_reg_32
		port map( ld => ld,
					 clr => clr,
					 clk => clk,
					 d => rt32,
					 q => s2);
					
	ADDER: mejia_add32
		port map( A => s1,
					 B => s2,
					 Cin => cin,
					 F => s3,
					 Cout => cout);
					 
	REG_DS: mejia_reg_32
		port map( ld => ld,
					 clr => clr,
					 clk => clk,
					 d => s3,
					 q => ds32);
	
	rs32 <= RSin;
	rt32 <= RTin;
	DCout <= ds32;
 
end architecture arch;