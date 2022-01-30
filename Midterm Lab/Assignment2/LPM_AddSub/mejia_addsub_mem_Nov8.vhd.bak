LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY mejia_addersubtractor2_Nov8 IS
	GENERIC ( n : INTEGER := 32 );
	PORT( A, B : IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);
		Clock, Reset, Sel, AddSub : IN STD_LOGIC;
		Z 								  : buffer std_logic_vector(n-1 downto 0);
		Overflow, zero, neg       : OUT STD_LOGIC);
END mejia_addersubtractor2_Nov8;

ARCHITECTURE Behavior OF mejia_addersubtractor2_Nov8 IS

	SIGNAL G, M, Areg, Breg, Zreg : STD_LOGIC_VECTOR(n-1 DOWNTO 0);
	SIGNAL SelR, AddSubR, over_flow, zero_f, neg_f : STD_LOGIC;
	
	COMPONENT mejia_mux2to1_Nov8
		GENERIC ( k : INTEGER := 8 );
		PORT ( V, W : IN STD_LOGIC_VECTOR(k-1 DOWNTO 0);
				 Selm : IN STD_LOGIC;
					 F : OUT STD_LOGIC_VECTOR(k-1 DOWNTO 0));
	END COMPONENT;

	COMPONENT mejia_megaddsub_Nov8
		PORT (add_sub : IN STD_LOGIC;
		 dataa, datab : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
				 result : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
			  overflow : OUT STD_LOGIC );
	END COMPONENT;

BEGIN
	PROCESS ( Reset, Clock )
	BEGIN
		IF Reset = '1' then
			Areg <= (OTHERS => '0'); Breg <= (OTHERS => '0');
			Zreg <= (OTHERS => '0'); SelR <= '0'; AddSubR <= '0'; Overflow <= '0';
		ELSIF Clock'EVENT AND Clock = '1' THEN
			Areg <= A; Breg <= B; Zreg <= M;
			SelR <= Sel; AddSubR <= NOT AddSub; Overflow <= over_flow; 
			zero <= zero_f; neg <= neg_f;
		END IF;
	END PROCESS;

	-- Define combinational circuit
	nbit_addsub: mejia_megaddsub_Nov8
		PORT MAP ( AddSubR, G, Breg, M, over_flow );

	multiplexer: mejia_mux2to1_Nov8
		GENERIC MAP ( k => n )
		PORT MAP ( Areg, Z, SelR, G );
	zero_f <= '1' when M(31 downto 0) = x"00000000" else '0';
	neg_f <= M(31);
	Z <= Zreg ;
	
END Behavior;