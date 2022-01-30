LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY mejia_lw_Nov29 IS
	port( clock, reset : in std_logic;
			ExtOP, ALUctr, ALUsrc, MemW, W_src, RegW : in std_logic;
			RSin, RTin, Instin : in std_logic_vector(4 downto 0);
			IMin   : in std_logic_vector(15 downto 0);
			BusA, BusB, Inst : out std_logic_vector(31 downto 0);	 
			address : buffer std_logic_vector(31 downto 0);	
			mux_out : out std_logic_vector(31 downto 0);
			Stored, data_mem : out std_logic_vector(31 downto 0);
			OVF, NF, ZF : out std_logic);
end mejia_lw_Nov29;

architecture arch of mejia_lw_Nov29 is

	COMPONENT mejia_reg_file_Nov28
		PORT ( address_a		: IN STD_LOGIC_VECTOR (4 DOWNTO 0);
				 address_b		: IN STD_LOGIC_VECTOR (4 DOWNTO 0);
				 clock		: IN STD_LOGIC  := '1';
				 data_a		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
				 data_b		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
				 wren_a		: IN STD_LOGIC  := '0';
				 wren_b		: IN STD_LOGIC  := '0';
				 q_a		: OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
				 q_b		: OUT STD_LOGIC_VECTOR (31 DOWNTO 0));
	END COMPONENT;
	
	component mejia_mux_Nov28
    Port ( SEL : in  STD_LOGIC;
           A   : in  STD_LOGIC_VECTOR (31 downto 0);
           B   : in  STD_LOGIC_VECTOR (31 downto 0);
           X   : out STD_LOGIC_VECTOR (31 downto 0));
	end component;
	
	component mejia_extend_Nov28
		port( sel       : in std_logic;
				extend_in : in std_logic_vector(15 downto 0);
				extend_out: out std_logic_vector(31 downto 0));
	end component;
	
	COMPONENT mejia_megaddsub_Nov28
		PORT( add_sub		: IN STD_LOGIC ;
				dataa		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
				datab		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
				overflow		: OUT STD_LOGIC ;
				result		: OUT STD_LOGIC_VECTOR (31 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT mejia_data_mem_Nov28
	PORT( address		: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
			clock		: IN STD_LOGIC  := '1';
			data		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			wren		: IN STD_LOGIC ;
			q		: OUT STD_LOGIC_VECTOR (31 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT mejia_inst_mem_Nov28
	PORT( address		: IN STD_LOGIC_VECTOR (4 DOWNTO 0);
			clock		: IN STD_LOGIC  := '1';
			data		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			wren		: IN STD_LOGIC ;
			q		: OUT STD_LOGIC_VECTOR (31 DOWNTO 0));
	END COMPONENT;
	
	component mejia_register16_Nov28 
		port(d:            IN std_logic_vector(15 downto 0);
			  ld, clr, clk: IN std_logic;
		     q:            OUT std_logic_vector(15 downto 0));
	end component;
	
	signal ExtOPi, ALUctri, ALUsrci, MemWi, W_srci, RegWi : std_logic;
	signal RSreg, RTreg, IN5 : std_logic_vector(4 downto 0);
	signal IM16, r1 : std_logic_vector(15 downto 0);
	signal s1, s2, s3, s4, s5, s6, r2 : std_logic_vector(31 downto 0):= x"00000000";
	signal s7 : std_logic_vector(31 downto 0):= x"00000000";
	signal address_out, address_write, G, Zreg : std_logic_vector(31 downto 0);
	signal over_f, neg_f, zero_f : std_logic;
	signal w1, w3 : std_logic := '0';
	signal ld1, w2: std_logic := '1';
	signal data1, data2 : std_logic_vector(31 downto 0):= x"00000000";
	
	begin
	
	PROCESS ( reset, clock )
	BEGIN
		IF Reset = '1' then
			RSreg <= (OTHERS => '0'); RTreg <= (OTHERS => '0');
			IM16 <= (OTHERS => '0');
		ELSIF clock'EVENT AND clock = '1' THEN
			RSreg <= RSin; RTreg <= RTin; IM16 <= IMin;
			Zreg <= s5; address_out <= s6; address_write <= s7; IN5 <= Instin;
			ExtOPi <= ExtOP; ALUctri <= ALUctr; ALUsrci <= ALUsrc; MemWi <= MemW;
			W_srci <= W_src; RegWi <= RegW; W_srci <= W_src; RegWi <= RegW;
			OVF <= over_f; ZF <= zero_f; NF <= neg_f;
		END IF;
	END PROCESS;
	
	Instr : mejia_inst_mem_Nov28
					port map(address => IN5, clock => clock,
								data => data1, wren => w1, q => r2);
	
	Reg_file : mejia_reg_file_Nov28
					port map(address_a => RTreg, address_b => RSreg,
								clock => clock,
								data_a => data1, data_b => s7,
								wren_a => w1 , wren_b => RegWi,
								q_a => s1, q_b => s2);
								
	IM_16 : mejia_register16_Nov28
					port map(d => IM16, ld => ld1, clr => Reset, 
								clk => clock, q => r1);
								
	IMMex_16 : mejia_extend_Nov28
					port map(sel => ExtOPi,
								extend_in => r1, extend_out => s3);
								
	mux_1 : mejia_mux_Nov28
					port map(SEL => ALUsrci, A => s2,
								B => s3, X => s4);
								
	nbit_addsub: mejia_megaddsub_Nov28
		PORT MAP ( add_sub => ALUctri, dataa => G, datab => s1, 
						overflow => over_f, result => s5 );

	mux_2: mejia_mux_Nov28
				PORT MAP ( SEL => w3, A => s5, B => s4, X => G );
							
	data_memory : mejia_data_mem_Nov28
					port map(address => s5(15 downto 0), clock => clock,
								data => data2, wren => MemWi, q => s6);
								
	mux_3 : mejia_mux_Nov28
				PORT MAP ( SEL => W_srci, A => s5, B => s6, X => s7 );
				

	zero_f <= '1' when s5(31 downto 0) = x"00000000" else '0';
	neg_f <= s5(31);
	Inst <= r2;
	address <= Zreg ;
	BusA <= s1; BusB <= s2; 
	mux_out <= s4;
	data_mem <= address_out;
	Stored <= address_write;
		
end arch;