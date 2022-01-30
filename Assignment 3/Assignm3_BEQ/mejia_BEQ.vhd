 LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mejia_BEQ is port(
	clk, ld, clr: in std_logic;
	IMin: 		  in std_logic_vector(15 downto 0);
	RSin, RTin:   in std_logic_vector(31 downto 0);
	PCout:        out std_logic_vector(31 downto 0));
end mejia_BEQ;

architecture arch of mejia_BEQ is
	
	component mejia_offset 
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
	
	component Comparator1 PORT(
			dataa		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			datab		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			aeb		: OUT STD_LOGIC
		);
	end component;
	
	component mejia_extend port(
		extend_in : in std_logic_vector(15 downto 0);
		extend_out: out std_logic_vector(31 downto 0)
	);
	end component;
	
	component mejia_add port (
        A, B : in  std_logic_vector(31 downto 0);
        Cin  : in  std_logic;
        F    : out std_logic_vector(31 downto 0);
        Cout : out std_logic
    );
	end component;
	
	--component mejia_adder2 PORT(
		--cin		: IN STD_LOGIC ;
		--dataa		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		--datab		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		--cout		: OUT STD_LOGIC ;
		--result	: OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
	--);
	--END component;
		
	component mejia_mux port (
		data_Select: in std_logic;
		data_1 : in  std_logic_vector(31 downto 0);
		data_2 : in  std_logic_vector(31 downto 0);
		data_out  : out std_logic_vector(31 downto 0)
    );
   end component;
	
	signal rs32 : std_logic_vector(31 downto 0);
	signal rt32 : std_logic_vector(31 downto 0);
	signal pc32 : std_logic_vector(31 downto 0);
	signal of16 : std_logic_vector(15 downto 0);
	signal s0 : std_logic_vector(31 downto 0) := x"00000004";
	signal s1 : std_logic_vector(31 downto 0);
	signal s2 : std_logic_vector(31 downto 0);
	signal s4 : std_logic_vector(15 downto 0);
	signal s5 : std_logic_vector(31 downto 0);
	signal s6 : std_logic_vector(31 downto 0);
	signal s7 : std_logic_vector(31 downto 0);
	signal s9 : std_logic_vector(31 downto 0);
	signal comp_result: std_logic;
	signal x1 : std_logic;
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
	
	COMP_EQAUL: Comparator1
		port map( dataa => s1,
					 datab => s2,
					 aeb => comp_result);
					 
	REG_16: mejia_offset
		port map( ld => ld,
					 clr => clr,
					 clk => clk,
					 d => of16,
					 q => s4);
					 
	SIGN_EXT: mejia_extend
		port map( extend_in => s4,
					 extend_out => s5);
	
	ADDER1: mejia_add
		port map( A => s0,
					 B => pc32,
					 Cin => cin,
					 F => s6,
					 cout => cout);
					 
	ADDER2: mejia_add
		port map( A => s6,
					 B => s5,
					 cin => cin,
					 F => s7,
					 cout => cout);
					 
	MUX: mejia_mux
		port map( data_Select => comp_result,
					 data_1 => s6,
					 data_2 => s7,
					 data_out => s9);
					 
		REG_PC: mejia_reg_32
		port map( ld => ld,
					 clr => clr,
					 clk => clk,
					 d => s9,
					 q => pc32);			 
	rs32 <= RSin;
	rt32 <= RTin;
	of16 <= IMin;
	PCout <= pc32;
end arch;