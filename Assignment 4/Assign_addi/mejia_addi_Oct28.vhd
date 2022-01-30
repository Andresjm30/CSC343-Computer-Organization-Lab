LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mejia_addi_Oct28 is port(
	clk, ld, clr: in std_logic;
	IMMin:        in std_logic_vector(15 downto 0);
	RSin:         in std_logic_vector(31 downto 0);
	RTout:        out std_logic_vector(31 downto 0));
end mejia_addi_Oct28;


architecture arch of mejia_addi_Oct28 is

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
	
	component mejia_add_op_Oct28 port (
        A, B : in  std_logic_vector(31 downto 0);
        Cin  : in  std_logic;
        F    : out std_logic_vector(31 downto 0);
        Cout : out std_logic
    );
	 end component;
	 
	signal rs32 : std_logic_vector(31 downto 0);
	signal rt32 : std_logic_vector(31 downto 0);
	signal imm16, s2: std_logic_vector(15 downto 0);
	signal s1, s3, s4: std_logic_vector(31 downto 0);
	signal cin : std_logic := '0';
	signal cout : std_logic;
	
	begin
	
	REG_RS: mejia_register32_Oct28  
		port map( ld => ld,
					 clr => clr,
					 clk => clk,
					 d => rs32,
					 q => s1);
	
	IMM: mejia_register16_Oct28
		port map( ld => ld,
					 clr => clr,
					 clk => clk,
					 d => imm16,
					 q => s2);
					 
	EXTEND: mejia_extend_Oct28
		port map( extend_in => s2,
					 extend_out => s3);
					
	ADDER: mejia_add_op_Oct28
		port map( A => s1,
					 B => s3,
					 Cin => cin,
					 F => s4,
					 Cout => cout);
					 
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