library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mejia_sc_cpu_Dec5 is
	port( clock : in std_logic;
			instr : in std_logic_vector(8 downto 0);
			OPCODE : out std_logic_vector(5 downto 0);
			RS, RT, RD : out std_logic_vector(4 downto 0);
			Imme : out std_logic_vector(15 downto 0);
			result, stored : out std_logic_vector(31 downto 0);
			prog_count : out std_logic_vector(31 downto 0));
end mejia_sc_cpu_Dec5;

architecture arch of mejia_sc_cpu_Dec5 is

	component mejia_mux_Dec5
		Port (SEL : in  STD_LOGIC;
				A   : in  STD_LOGIC_VECTOR (31 downto 0);
				B   : in  STD_LOGIC_VECTOR (31 downto 0);
				X   : out STD_LOGIC_VECTOR (31 downto 0));
	end component;
	
	component mejia_extend_Dec5 
		port( sel       : in std_logic;
				extend_in : in std_logic_vector(15 downto 0);
				extend_out: out std_logic_vector(31 downto 0));
	end component;
	
	component mejia_data_mem_Dec5 
		PORT( address		: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
				clock		: IN STD_LOGIC  := '1';
				data		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
				wren		: IN STD_LOGIC ;
				q		: OUT STD_LOGIC_VECTOR (31 DOWNTO 0));
	END component;
	
	component mejia_reg_file_Dec5
		PORT( address_a		: IN STD_LOGIC_VECTOR (4 DOWNTO 0);
				address_b		: IN STD_LOGIC_VECTOR (4 DOWNTO 0);
				clock		: IN STD_LOGIC  := '1';
				data_a		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
				data_b		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
				wren_a		: IN STD_LOGIC  := '0';
				wren_b		: IN STD_LOGIC  := '0';
				q_a		: OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
				q_b		: OUT STD_LOGIC_VECTOR (31 DOWNTO 0));
	END component;

	component mejia_inst_mem_Dec5
		PORT( address		: IN STD_LOGIC_VECTOR (8 DOWNTO 0);
				clock		: IN STD_LOGIC  := '1';
				data		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
				wren		: IN STD_LOGIC ;
				q		: OUT STD_LOGIC_VECTOR (31 DOWNTO 0));
	END component;
	
	component mejia_control_Dec5
		port( opcode : in std_logic_vector(5 downto 0);
				RegWr, ExtOP, ALUsrc, MemWr : out std_logic;
				MemToReg, PCsrc, RegWr2 : out std_logic;
				ALUctr : out std_logic_vector(3 downto 0));
	end component;
	
	component mejia_alu_Dec5
		port( funct : in std_logic_vector(3 downto 0);
				Ain, Bin : in std_logic_vector(31 downto 0);
				result : out std_logic_vector(31 downto 0);
				result2 : out std_logic:= '0');
	end component;
	
	component mejia_and_Dec5
		Port (A : in STD_LOGIC;
				B : in STD_LOGIC;
				Z : out STD_LOGIC);
	end component;
	
	component mejia_register32_Dec5 
		port(d:            IN std_logic_vector(31 downto 0);
			  ld, clr, clk: IN std_logic;
	        q:            OUT std_logic_vector(31 downto 0));
	end component;
	
	COMPONENT mejia_pcadder_Dec5
		PORT( cin		: IN STD_LOGIC ;
				dataa		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
				datab		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
				cout		: OUT STD_LOGIC ;
				result		: OUT STD_LOGIC_VECTOR (31 DOWNTO 0));
	END COMPONENT;
	
	signal instrIN : std_logic_vector(8 downto 0);
	signal ExtOPi, ALUsrci, MemWri, MemToRegi : std_logic;
	signal RegWri, RegWri2, PCsrci : std_logic;
	signal ALUctri : std_logic_vector(3 downto 0);
	signal s1, s2, s3, s4, s5, s6, s7 : std_logic_vector(31 downto 0):= x"00000000";
	signal s8, s9, s10, r1, r2, r3, r4, r5 : std_logic_vector(31 downto 0):= x"00000000";
	signal r6, r7, r8, r9, r10 : std_logic_vector(31 downto 0):= x"00000000";
	signal data1, data2, sum1, sum2 : std_logic_vector(31 downto 0):= x"00000000";
	signal w1, z1, z2, z3 : std_logic := '0';
	signal ld1, w2: std_logic := '1';
	signal ci, co1, co2 : std_logic;
	signal add4 : std_logic_vector(31 downto 0):= x"00000004";
	signal RSi, RTi, RDi : std_logic_vector(4 downto 0);
	signal opcodei : std_logic_vector(5 downto 0);
	
	begin  
	
	PROCESS ( clock )
	BEGIN
		IF rising_edge(clock) THEN
			r4 <= r3; r5 <= r4; r6 <= r5; r7 <= r6; 
			r8 <= r7; r9 <= r8; r10 <= r9;
		END IF;
	END PROCESS;
	
	INST_MEM : mejia_inst_mem_Dec5
		port map( address => instrIN, clock => clock,
					 data => data1, wren => w1, q => r1);
					 
	RSi <= r1(25 downto 21); RTi <= r1(20 downto 16); RDi <= r1(15 downto 11);
	opcodei <= r1(31 downto 26);
	
	CONTR_SIG : mejia_control_Dec5
		port map(opcode => opcodei,  --opcode => op, --
					RegWr => RegWri, ExtOP => ExtOPi, ALUsrc => ALUsrci, MemWr => MemWri, 
					MemToReg => MemToRegi, PCsrc => Pcsrci, RegWr2 => RegWri2,
					ALUctr => ALUctri);
					 
	REG_FILE1 : mejia_reg_file_Dec5
		port map(address_a => RTi, address_b => RDi, --address_a => RT, address_b => RD,
					clock => clock,
					data_a => data1, data_b => s7,
					wren_a => w1 , wren_b => RegWri2,
					q_a => s1, q_b => s8);
					
	REG_FILE2 : mejia_reg_file_Dec5
		port map(address_a => RSi, address_b => RSi, --address_a => RS, address_b => RD,
					clock => clock,
					data_a => s7, data_b => s7,
					wren_a => RegWri, wren_b => RegWri,
					q_a => s2, q_b => s9); 
	
	IMMex_16 : mejia_extend_Dec5
		port map(sel => ExtOPi,
					extend_in => r1(15 downto 0), extend_out => s3);
					
	mux_1 : mejia_mux_Dec5
		port map(SEL => ALUsrci, A => s2,
					B => s3, X => s4);
					
	ALU : mejia_alu_Dec5
		port map(funct => ALUctri, Ain => s1,
					Bin => s4, result => s5, result2 => z1);
					
	data_mem : mejia_data_mem_Dec5
		port map(address => s5(15 downto 0), clock => clock,
					data => s2, wren => MemWri, q => s6);
					
	mux_3 : mejia_mux_Dec5
		port map(SEL => MemToRegi, A => s5, B => s6, X => s7);
		
	mux_4 : mejia_mux_Dec5
		port map(SEL => RegWri, A => s8, B => s9, X => s10);
		
	AND_PC : mejia_and_Dec5
		port map(A => PCsrci, B => z1, Z => z2);
		
	first_add : mejia_pcadder_Dec5
		port map(cin => ci, dataa => r10, datab => add4,
					cout => co1, result => sum1);
					
	sec_add : mejia_pcadder_Dec5
		port map(cin => ci, dataa => sum1, datab => s3,
					cout => co2, result => sum2);
		
	mux_5 : mejia_mux_Dec5
		port map(SEL => z2, A => sum1, B => sum2, X => r2);
		
	PC_reg : mejia_register32_Dec5
		port map(d => r2, ld => ld1, clr => w1,
					clk => clock, q => r3);
	
	instrIN <= instr;
	RS <= r1(25 downto 21); RT <= r1(20 downto 16); RD <= r1(15 downto 11);
	OPCODE <= r1(31 downto 26); Imme <= r1(15 downto 0);
	result <= s7; stored <= s10;
	prog_count <= r3;


end arch;