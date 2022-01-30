LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY mejia_addsub_mem_Nov8 IS
	GENERIC ( n : INTEGER := 32 );
	PORT( A, B : IN STD_LOGIC_VECTOR(3 downto 0);
		Clk, Reset, Sel, AddSub   : IN STD_LOGIC;
		Z 								  : buffer std_logic_vector(n-1 downto 0);
		Overflow, zero, neg       : OUT STD_LOGIC);
END mejia_addsub_mem_Nov8;

ARCHITECTURE Behavior OF mejia_addsub_mem_Nov8 IS

	SIGNAL address_a, address_b : std_logic_vector(3 downto 0);
	SIGNAL G, M, Areg, Breg, Zreg : STD_LOGIC_VECTOR(n-1 DOWNTO 0);
	SIGNAL wren_in : std_logic := '0';
	SIGNAL data_in : std_logic_vector(31 downto 0) := x"00000000";
	SIGNAL SelR, AddSubR, over_flow, zero_f, neg_f : STD_LOGIC;
	
	COMPONENT mejia_mux_Nov8
		PORT(data0x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		     data1x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		      sel		: IN STD_LOGIC ;
		     result		: OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
		);
	END COMPONENT;

	COMPONENT mejia_megaddsub_Nov8
		PORT (add_sub : IN STD_LOGIC;
		 dataa, datab : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
				 result : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
			  overflow : OUT STD_LOGIC );
	END COMPONENT;
	
	COMPONENT mejia_data_mem_Nov8
		PORT(address: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
			  clock	: IN STD_LOGIC  := '1';
			  data	: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			  wren	: IN STD_LOGIC ;
			  q		: OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
		);
	END COMPONENT;

BEGIN
	PROCESS ( Reset, Clk )
	BEGIN
		IF Reset = '1' then
			address_a <= (OTHERS => '0'); address_b <= (OTHERS => '0');
			Zreg <= (OTHERS => '0'); SelR <= '0'; AddSubR <= '0'; Overflow <= '0';
		ELSIF Clk'EVENT AND Clk = '1' THEN
			address_a <= A; address_b <= B; Zreg <= M;
			SelR <= Sel; AddSubR <= NOT AddSub; Overflow <= over_flow; 
			zero <= zero_f; neg <= neg_f;
		END IF;
	END PROCESS;

	-- Define combinational circuit
	input_A : mejia_data_mem_Nov8
		PORT MAP ( address_a, Clk, data_in, wren_in, Areg );
		
	input_B : mejia_data_mem_Nov8
		PORT MAP ( address_b, Clk, data_in, wren_in, Breg );
	
	nbit_addsub: mejia_megaddsub_Nov8
		PORT MAP ( AddSubR, G, Breg, M, over_flow );

	multiplexer: mejia_mux_Nov8
		PORT MAP ( Areg, Z, SelR, G );
	
	zero_f <= '1' when M(31 downto 0) = x"00000000" else '0';
	neg_f <= M(31);
	Z <= Zreg ;
	
END Behavior;