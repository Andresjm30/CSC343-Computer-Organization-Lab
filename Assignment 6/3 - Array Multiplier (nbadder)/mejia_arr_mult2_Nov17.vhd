library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mejia_arr_mult2_Nov17 is
	port ( clk, ld, clr: in std_logic;
			 Ain, Bin:     in std_logic_vector(31 downto 0);
			 RTout:        out std_logic_vector(63 downto 0));
end mejia_arr_mult2_Nov17;

architecture arch of mejia_arr_mult2_Nov17 is

	component mejia_register32_Nov16 
		port( d:            IN std_logic_vector(31 downto 0);
				ld, clr, clk: IN std_logic;
				q:            OUT std_logic_vector(31 downto 0));
	end component;
	
	component mejia_register64_Nov16 
		port( d:            IN std_logic_vector(63 downto 0);
				ld, clr, clk: IN std_logic;
				q:            OUT std_logic_vector(63 downto 0));
	end component;
	
	COMPONENT mejia_nbadder_Nov17
		PORT( cin		: IN STD_LOGIC ;
				dataa		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
				datab		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
				cout		: OUT STD_LOGIC ;
				result		: OUT STD_LOGIC_VECTOR (31 DOWNTO 0));
	END COMPONENT;
	
	component mejia_and32_Nov16
		Port( Ain : in std_logic_vector(31 downto 0);
				Bin : in std_logic;
				Zout: out std_logic_vector(31 downto 0));
	end component;

	
	signal A32 : std_logic_vector(31 downto 0);
	signal B32 : std_logic_vector(31 downto 0);
	signal RT64, s3 : std_logic_vector(63 downto 0);
	signal s1, s2, co : std_logic_vector(31 downto 0);
	signal c : std_logic:= '0';
	signal u1, u2, u3, u4, u5, u6, u7, u8 : std_logic_vector(31 downto 0);
	signal u9, u10, u11, u12, u13, u14, u15, u16 : std_logic_vector(31 downto 0);
	signal u17, u18, u19, u20, u21, u22, u23, u24 : std_logic_vector(31 downto 0);
	signal u25, u26, u27, u28, u29, u30, u31, u32 : std_logic_vector(31 downto 0);
	signal t1, t2, t3, t4, t5, t6, t7, t8 : std_logic_vector(31 downto 0);
	signal t9, t10, t11, t12, t13, t14, t15, t16 : std_logic_vector(31 downto 0);
	signal t17, t18, t19, t20, t21, t22, t23, t24 : std_logic_vector(31 downto 0);
	signal t25, t26, t27, t28, t29, t30, t31 : std_logic_vector(31 downto 0);
	signal d1, d2, d3, d4, d5, d6, d7, d8 : std_logic_vector(31 downto 0);
	signal d9, d10, d11, d12, d13, d14, d15, d16 : std_logic_vector(31 downto 0);
	signal d17, d18, d19, d20, d21, d22, d23, d24 : std_logic_vector(31 downto 0);
	signal d25, d26, d27, d28, d29, d30, d31 : std_logic_vector(31 downto 0);
	
	
	begin 
	
	REG_A: mejia_register32_Nov16  
		port map( ld => ld,
					 clr => clr,
					 clk => clk,
					 d => A32,
					 q => s1);
	
	REG_B: mejia_register32_Nov16 
		port map( ld => ld,
					 clr => clr,
					 clk => clk,
					 d => B32,
					 q => s2);
					 
	AND_1 : mejia_and32_Nov16 port map( Ain => s1, Bin => s2(0), Zout => u1);
	s3(0) <= u1(0); 
	t1(30 downto 0) <= u1(31 downto 1); t1(31) <= '0';
	AND_2 : mejia_and32_Nov16 port map( Ain => s1, Bin => s2(1), Zout => u2);
	ADD_1 : mejia_nbadder_Nov17 port map( cin => c, dataa => t1, datab => u2, cout => co(0), result => d1);
	s3(1) <= d1(0);
	
	t2(30 downto 0) <= d1(31 downto 1); t2(31) <= co(0);
	AND_3 : mejia_and32_Nov16 port map( Ain => s1, Bin => s2(2), Zout => u3);
	ADD_2 : mejia_nbadder_Nov17 port map( cin => c, dataa => t2, datab => u3, cout => co(1), result => d2);
	s3(2) <= d2(0);
	
	t3(30 downto 0) <= d2(31 downto 1); t3(31) <= co(1);
	AND_4 : mejia_and32_Nov16 port map( Ain => s1, Bin => s2(3), Zout => u4);
	ADD_3 : mejia_nbadder_Nov17 port map( cin => c, dataa => t3, datab => u4, cout => co(2), result => d3);
	s3(3) <= d3(0);
	
	t4(30 downto 0) <= d3(31 downto 1); t4(31) <= co(2);
	AND_5 : mejia_and32_Nov16 port map( Ain => s1, Bin => s2(4), Zout => u5);
	ADD_4 : mejia_nbadder_Nov17 port map( cin => c, dataa => t4, datab => u5, cout => co(3), result => d4);
	s3(4) <= d4(0);
	
	t5(30 downto 0) <= d4(31 downto 1); t5(31) <= co(3);
	AND_6 : mejia_and32_Nov16 port map( Ain => s1, Bin => s2(5), Zout => u6);
	ADD_5 : mejia_nbadder_Nov17 port map( cin => c, dataa => t5, datab => u6, cout => co(4), result => d5);
	s3(5) <= d5(0);
	
	t6(30 downto 0) <= d5(31 downto 1); t6(31) <= co(4);
	AND_7 : mejia_and32_Nov16 port map( Ain => s1, Bin => s2(6), Zout => u7);
	ADD_6 : mejia_nbadder_Nov17 port map( cin => c, dataa => t6, datab => u7, cout => co(5), result => d6);
	s3(6) <= d6(0);
	
	t7(30 downto 0) <= d6(31 downto 1); t7(31) <= co(5);
	AND_8 : mejia_and32_Nov16 port map( Ain => s1, Bin => s2(7), Zout => u8);
	ADD_7 : mejia_nbadder_Nov17 port map( cin => c, dataa => t7, datab => u8, cout => co(6), result => d7);
	s3(7) <= d7(0);
	
	t8(30 downto 0) <= d7(31 downto 1); t8(31) <= co(6);
	AND_9 : mejia_and32_Nov16 port map( Ain => s1, Bin => s2(8), Zout => u9);
	ADD_8 : mejia_nbadder_Nov17 port map( cin => c, dataa => t8, datab => u9, cout => co(7), result => d8);
	s3(8) <= d8(0);
	
	t9(30 downto 0) <= d8(31 downto 1); t9(31) <= co(7);
	AND_10: mejia_and32_Nov16 port map( Ain => s1, Bin => s2(9), Zout => u10);
	ADD_9 : mejia_nbadder_Nov17 port map( cin => c, dataa => t9, datab => u10, cout => co(8), result => d9);
	s3(9) <= d9(0);
	
	t10(30 downto 0) <= d9(31 downto 1); t10(31) <= co(8);
	AND_11: mejia_and32_Nov16 port map( Ain => s1, Bin => s2(10), Zout => u11);
	ADD_10: mejia_nbadder_Nov17 port map( cin => c, dataa => t10, datab => u11, cout => co(9), result => d10);
	s3(10) <= d10(0);
	
	t11(30 downto 0) <= d10(31 downto 1); t11(31) <= co(9);
	AND_12: mejia_and32_Nov16 port map( Ain => s1, Bin => s2(11), Zout => u12);
	ADD_11: mejia_nbadder_Nov17 port map( cin => c, dataa => t11, datab => u12, cout => co(10), result => d11);
	s3(11) <= d11(0);
	
	t12(30 downto 0) <= d11(31 downto 1); t12(31) <= co(10);
	AND_13: mejia_and32_Nov16 port map( Ain => s1, Bin => s2(12), Zout => u13);
	ADD_12: mejia_nbadder_Nov17 port map( cin => c, dataa => t12, datab => u13, cout => co(11), result => d12);
	s3(12) <= d12(0);
	
	t13(30 downto 0) <= d12(31 downto 1); t13(31) <= co(11);
	AND_14: mejia_and32_Nov16 port map( Ain => s1, Bin => s2(13), Zout => u14);
	ADD_13: mejia_nbadder_Nov17 port map( cin => c, dataa => t13, datab => u14, cout => co(12), result => d13);
	s3(13) <= d13(0);
	
	t14(30 downto 0) <= d13(31 downto 1); t14(31) <= co(12);
	AND_15: mejia_and32_Nov16 port map( Ain => s1, Bin => s2(14), Zout => u15);
	ADD_14: mejia_nbadder_Nov17 port map( cin => c, dataa => t14, datab => u15, cout => co(13), result => d14);
	s3(14) <= d14(0);
	
	t15(30 downto 0) <= d14(31 downto 1); t15(31) <= co(13);
	AND_16: mejia_and32_Nov16 port map( Ain => s1, Bin => s2(15), Zout => u16);
	ADD_15: mejia_nbadder_Nov17 port map( cin => c, dataa => t15, datab => u16, cout => co(14), result => d15);
	s3(15) <= d15(0);
	
	t16(30 downto 0) <= d15(31 downto 1); t16(31) <= co(14);
	AND_17: mejia_and32_Nov16 port map( Ain => s1, Bin => s2(16), Zout => u17);
	ADD_16: mejia_nbadder_Nov17 port map( cin => c, dataa => t16, datab => u17, cout => co(15), result => d16);
	s3(16) <= d16(0);
	
	t17(30 downto 0) <= d16(31 downto 1); t17(31) <= co(15);
	AND_18: mejia_and32_Nov16 port map( Ain => s1, Bin => s2(17), Zout => u18);
	ADD_17: mejia_nbadder_Nov17 port map( cin => c, dataa => t17, datab => u18, cout => co(16), result => d17);
	s3(17) <= d17(0);
	
	t18(30 downto 0) <= d17(31 downto 1); t18(31) <= co(16);
	AND_19: mejia_and32_Nov16 port map( Ain => s1, Bin => s2(18), Zout => u19);
	ADD_18: mejia_nbadder_Nov17 port map( cin => c, dataa => t18, datab => u19, cout => co(17), result => d18);
	s3(18) <= d18(0);
	
	t19(30 downto 0) <= d18(31 downto 1); t19(31) <= co(17);
	AND_20: mejia_and32_Nov16 port map( Ain => s1, Bin => s2(19), Zout => u20);
	ADD_19: mejia_nbadder_Nov17 port map( cin => c, dataa => t19, datab => u20, cout => co(18), result => d19);
	s3(19) <= d19(0);
	
	t20(30 downto 0) <= d19(31 downto 1); t20(31) <= co(18);
	AND_21: mejia_and32_Nov16 port map( Ain => s1, Bin => s2(20), Zout => u21);
	ADD_20: mejia_nbadder_Nov17 port map( cin => c, dataa => t20, datab => u21, cout => co(19), result => d20);
	s3(20) <= d20(0);
	
	t21(30 downto 0) <= d20(31 downto 1); t21(31) <= co(19);
	AND_22: mejia_and32_Nov16 port map( Ain => s1, Bin => s2(21), Zout => u22);
	ADD_21: mejia_nbadder_Nov17 port map( cin => c, dataa => t21, datab => u22, cout => co(20), result => d21);
	s3(21) <= d21(0);
	
	t22(30 downto 0) <= d21(31 downto 1); t22(31) <= co(20);
	AND_23: mejia_and32_Nov16 port map( Ain => s1, Bin => s2(22), Zout => u23);
	ADD_22: mejia_nbadder_Nov17 port map( cin => c, dataa => t22, datab => u23, cout => co(21), result => d22);
	s3(22) <= d22(0);
	
	t23(30 downto 0) <= d22(31 downto 1); t23(31) <= co(21);
	AND_24: mejia_and32_Nov16 port map( Ain => s1, Bin => s2(23), Zout => u24);
	ADD_23: mejia_nbadder_Nov17 port map( cin => c, dataa => t23, datab => u24, cout => co(22), result => d23);
	s3(23) <= d23(0);
	
	t24(30 downto 0) <= d23(31 downto 1); t24(31) <= co(22);
	AND_25: mejia_and32_Nov16 port map( Ain => s1, Bin => s2(24), Zout => u25);
	ADD_24: mejia_nbadder_Nov17 port map( cin => c, dataa => t24, datab => u25, cout => co(23), result => d24);
	s3(24) <= d24(0);
	
	t25(30 downto 0) <= d24(31 downto 1); t25(31) <= co(23);
	AND_26: mejia_and32_Nov16 port map( Ain => s1, Bin => s2(25), Zout => u26);
	ADD_25: mejia_nbadder_Nov17 port map( cin => c, dataa => t25, datab => u26, cout => co(24), result => d25);
	s3(25) <= d25(0);
	
	t26(30 downto 0) <= d25(31 downto 1); t26(31) <= co(24);
	AND_27: mejia_and32_Nov16 port map( Ain => s1, Bin => s2(26), Zout => u27);
	ADD_26: mejia_nbadder_Nov17 port map( cin => c, dataa => t26, datab => u27, cout => co(25), result => d26);
	s3(26) <= d26(0);
	
	t27(30 downto 0) <= d26(31 downto 1); t27(31) <= co(25);
	AND_28: mejia_and32_Nov16 port map( Ain => s1, Bin => s2(27), Zout => u28);
	ADD_27: mejia_nbadder_Nov17 port map( cin => c, dataa => t27, datab => u28, cout => co(26), result => d27);
	s3(27) <= d27(0);
	
	t28(30 downto 0) <= d27(31 downto 1); t28(31) <= co(26);
	AND_29: mejia_and32_Nov16 port map( Ain => s1, Bin => s2(28), Zout => u29);
	ADD_28: mejia_nbadder_Nov17 port map( cin => c, dataa => t28, datab => u29, cout => co(27), result => d28);
	s3(28) <= d28(0);
	
	t29(30 downto 0) <= d28(31 downto 1); t29(31) <= co(27);
	AND_30: mejia_and32_Nov16 port map( Ain => s1, Bin => s2(29), Zout => u30);
	ADD_29: mejia_nbadder_Nov17 port map( cin => c, dataa => t29, datab => u30, cout => co(28), result => d29);
	s3(29) <= d29(0);
	
	t30(30 downto 0) <= d29(31 downto 1); t30(31) <= co(28);
	AND_31: mejia_and32_Nov16 port map( Ain => s1, Bin => s2(30), Zout => u31);
	ADD_30: mejia_nbadder_Nov17 port map( cin => c, dataa => t30, datab => u31, cout => co(29), result => d30);
	s3(30) <= d30(0);
	
	t31(30 downto 0) <= d30(31 downto 1); t31(31) <= co(29);
	AND_32: mejia_and32_Nov16 port map( Ain => s1, Bin => s2(31), Zout => u32);
	ADD_31: mejia_nbadder_Nov17 port map( cin => c, dataa => t31, datab => u32, cout => co(30), result => d31);
	s3(62 downto 31) <= d31;
	s3(63) <= co(30);
	
	REG_Z: mejia_register64_Nov16 
		port map( ld => ld,
					 clr => clr,
					 clk => clk,
					 d => s3,
					 q => RT64);
	
	A32 <= Ain;
	B32 <= Bin;
	RTout <= RT64;

	
end arch;
	
	
	