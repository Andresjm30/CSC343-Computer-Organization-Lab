library ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mejia_jump is port(
	clk, ld, clr: in std_logic;
	RIin: 		  in std_logic_vector(15 downto 0);
	PCout:        out std_logic_vector(31 downto 0));
end mejia_jump;

architecture arch of mejia_jump is

	component mejia_reg16 
		port(
			d:            IN std_logic_vector(15 downto 0);
			ld, clr, clk: IN std_logic;
			q:            OUT std_logic_vector(15 downto 0)
		);
	end component;
	
	component mejia_reg_32 
		port(
		d:            IN std_logic_vector(31 downto 0);
		ld, clr, clk: IN std_logic;
		q:            OUT std_logic_vector(31 downto 0)
		);
	end component;
	
	component mejia_extend port(
		extend_in : in std_logic_vector(15 downto 0);
		extend_out: out std_logic_vector(31 downto 0)
	);
	end component;
	 
	 component mejia_shift port( 
		Ain: in std_logic_vector(31 downto 0);
		Bout: out std_logic_vector(31 downto 0)
	 );
	 end component;
	
	signal ri16 : std_logic_vector(15 downto 0);
	signal pc32 : std_logic_vector(31 downto 0);
	signal s1: std_logic_vector(15 downto 0);
	signal s2, s3: std_logic_vector(31 downto 0);
	signal cin : std_logic := '0';
	signal cout : std_logic;
	
	begin
	
	REG_16: mejia_reg16
		port map( ld => ld,
					 clr => clr,
					 clk => clk,
					 d => ri16,
					 q => s1);
					 
	SIGN_EXT: mejia_extend
		port map( extend_in => s1,
					 extend_out => s2);
	
	SHIFT_TWO: mejia_shift
		port map( Ain => s2,
					 Bout => s3);
					 
	REG_PC: mejia_reg_32
		port map( ld => ld,
					 clr => clr,
					 clk => clk,
					 d => s3,
					 q => pc32);
					 
	ri16 <= RIin;
	PCout <= pc32;

end arch;