LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity mejia_addsubtractor_Nov8 is
	generic ( n : INTEGER := 32);
	port (A, B  : in std_logic_vector(31 downto 0);
		Clock, Reset, Sel, AddSub : in std_logic;
		Z                         : buffer std_logic_vector(31 downto 0);
		Overflow, zero, neg		  : out std_logic);
end mejia_addsubtractor_Nov8;

architecture Behavior of mejia_addsubtractor_Nov8 is

	signal G, H, M, Areg, Breg, Zreg, AddSubR_n : std_logic_vector(n-1 downto 0);
	signal SelR, AddSubR, carryout, over_flow, zero_f, neg_f : std_logic;
	
	component mejia_mux2to1_Nov8
		GENERIC ( k : INTEGER := 8);
		PORT ( V, W : IN STD_LOGIC_VECTOR(k-1 DOWNTO 0);
				Selm  : IN STD_LOGIC;
				F     : OUT STD_LOGIC_VECTOR(k-1 DOWNTO 0));
	END component;
	
	component mejia_adderk_Nov8
		generic ( k : integer := 8);
		port (carryin : IN std_logic;
				X, Y  : IN std_logic_vector(k-1 downto 0);
				S     : OUT std_logic_vector(k-1 downto 0);
				carryout : OUT std_logic);
	end component;
	
begin
	process (Reset, Clock )
	begin
		if Reset = '1' then
			Areg <= (others => '0'); Breg <= (others => '0');
			Zreg <= (others => '0'); SelR <= '0'; AddSubR <= '0'; Overflow <= '0';
		elsif Clock'event and Clock = '1' then
			Areg <= A; Breg <= B; Zreg <= M;
			SelR <= Sel; AddSubR <= AddSub; Overflow <= over_flow; 
			zero <= zero_f; neg <= neg_f;
		end if;
	end process;
	
	nbit_adder: mejia_adderk_Nov8
		generic map ( k => n )
		port map ( AddSubR, G, H, M, carryout );
	
	multiplexer: mejia_mux2to1_Nov8
		generic map ( k => n )
		port map ( Areg, Z, SelR, G );
		
	AddSubR_n <= (others => AddSubR);
	H <= Breg xor AddSubR_n;
	over_flow <= carryout xor G(n-1) xor H(n-1) xor M(n-1);
	zero_f <= '1' when M(31 downto 0) = x"00000000" else '0';
	neg_f <= M(31);
	Z <= Zreg;
end Behavior;