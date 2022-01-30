library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mejia_arr_mult_Nov16 is
	port ( clk, ld, clr: in std_logic;
			 Ain, Bin:     in std_logic_vector(31 downto 0);
			 RTout:        out std_logic_vector(63 downto 0));
end mejia_arr_mult_Nov16;

architecture arch of mejia_arr_mult_Nov16 is

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
	
	component mejia_fulladd32_Nov16
		Port( Ain : in std_logic_vector(30 downto 0);
			Bin : in std_logic_vector(31 downto 0);
			Ci : in std_logic;
			Ci2: in std_logic:= '0';
			Sout: out std_logic_vector(31 downto 0);
			Cou: out std_logic);
	end component;
	
	component mejia_and32_Nov16
		Port( Ain : in std_logic_vector(31 downto 0);
				Bin : in std_logic;
				Zout: out std_logic_vector(31 downto 0));
	end component;
	
	signal A32 : std_logic_vector(31 downto 0);
	signal B32 : std_logic_vector(31 downto 0);
	signal RT64, s3 : std_logic_vector(63 downto 0);
	signal s1, s2 : std_logic_vector(31 downto 0);
	signal u1, u2, u3, u4, u5, u6, u7, u8 : std_logic_vector(31 downto 0);
	signal u9, u10, u11, u12, u13, u14, u15, u16 : std_logic_vector(31 downto 0);
	signal u17, u18, u19, u20, u21, u22, u23, u24 : std_logic_vector(31 downto 0);
	signal u25, u26, u27, u28, u29, u30, u31, u32 : std_logic_vector(31 downto 0);
	signal d1, d2, d3, d4, d5, d6, d7, d8 : std_logic_vector(31 downto 0);
	signal d9, d10, d11, d12, d13, d14, d15, d16 : std_logic_vector(31 downto 0);
	signal d17, d18, d19, d20, d21, d22, d23, d24 : std_logic_vector(31 downto 0);
	signal d25, d26, d27, d28, d29, d30, d31 : std_logic_vector(31 downto 0);
	signal c : std_logic_vector(31 downto 0):= x"00000000";
	signal co1, co2, co3, co4, co5, co6, co7, co8 : std_logic;
	signal co9, co10, co11, co12, co13, co14, co15, co16 : std_logic;
	signal co17, co18, co19, co20, co21, co22, co23, co24 : std_logic;
	signal co25, co26, co27, co28, co29, co30, co31 : std_logic;
	
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
	AND_2 : mejia_and32_Nov16 port map( Ain => s1, Bin => s2(1), Zout => u2);
	ADD_1 : mejia_fulladd32_Nov16 port map( Ain => u1(31 downto 1), Bin => u2, Ci => c(0), Ci2 => '0', Sout => d1, Cou => co1);
	s3(1) <= d1(0);
	AND_3 : mejia_and32_Nov16 port map( Ain => s1, Bin => s2(2), Zout => u3);
	ADD_2 : mejia_fulladd32_Nov16 port map( Ain => d1(31 downto 1), Bin => u3, Ci => c(1), Ci2 => co1, Sout => d2, Cou => co2);
	s3(2) <= d2(0);
	AND_4 : mejia_and32_Nov16 port map( Ain => s1, Bin => s2(3), Zout => u4);
	ADD_3 : mejia_fulladd32_Nov16 port map( Ain => d2(31 downto 1), Bin => u4, Ci => c(2), Ci2 => co2, Sout => d3, Cou => co3);
	s3(3) <= d3(0);
	AND_5 : mejia_and32_Nov16 port map( Ain => s1, Bin => s2(4), Zout => u5);
	ADD_4 : mejia_fulladd32_Nov16 port map( Ain => d3(31 downto 1), Bin => u5, Ci => c(3), Ci2 => co3, Sout => d4, Cou => co4);
	s3(4) <= d4(0);
	AND_6 : mejia_and32_Nov16 port map( Ain => s1, Bin => s2(5), Zout => u6);
	ADD_5 : mejia_fulladd32_Nov16 port map( Ain => d4(31 downto 1), Bin => u6, Ci => c(4), Ci2 => co4, Sout => d5, Cou => co5);
	s3(5) <= d5(0);
	AND_7 : mejia_and32_Nov16 port map( Ain => s1, Bin => s2(6), Zout => u7);
	ADD_6 : mejia_fulladd32_Nov16 port map( Ain => d5(31 downto 1), Bin => u7, Ci => c(5), Ci2 => co5, Sout => d6, Cou => co6);
	s3(6) <= d6(0);
	AND_8 : mejia_and32_Nov16 port map( Ain => s1, Bin => s2(7), Zout => u8);
	ADD_7 : mejia_fulladd32_Nov16 port map( Ain => d6(31 downto 1), Bin => u8, Ci => c(6), Ci2 => co6, Sout => d7, Cou => co7);
	s3(7) <= d7(0);
	AND_9 : mejia_and32_Nov16 port map( Ain => s1, Bin => s2(8), Zout => u9);
	ADD_8 : mejia_fulladd32_Nov16 port map( Ain => d7(31 downto 1), Bin => u9, Ci => c(7), Ci2 => co7, Sout => d8, Cou => co8);
	s3(8) <= d8(0);
	AND_10: mejia_and32_Nov16 port map( Ain => s1, Bin => s2(9), Zout => u10);
	ADD_9 : mejia_fulladd32_Nov16 port map( Ain => d8(31 downto 1), Bin => u10, Ci => c(8), Ci2 => co8, Sout => d9, Cou => co9);
	s3(9) <= d9(0);
	AND_11: mejia_and32_Nov16 port map( Ain => s1, Bin => s2(10), Zout => u11);
	ADD_10: mejia_fulladd32_Nov16 port map( Ain => d9(31 downto 1), Bin => u11, Ci => c(9), Ci2 => co9, Sout => d10, Cou => co10);
	s3(10) <= d10(0);
	AND_12: mejia_and32_Nov16 port map( Ain => s1, Bin => s2(11), Zout => u12);
	ADD_11: mejia_fulladd32_Nov16 port map( Ain => d10(31 downto 1), Bin => u12, Ci => c(10), Ci2 => co10, Sout => d11, Cou => co11);
	s3(11) <= d11(0);
	AND_13: mejia_and32_Nov16 port map( Ain => s1, Bin => s2(12), Zout => u13);
	ADD_12: mejia_fulladd32_Nov16 port map( Ain => d11(31 downto 1), Bin => u13, Ci => c(11), Ci2 => co11, Sout => d12, Cou => co12);
	s3(12) <= d12(0);
	AND_14: mejia_and32_Nov16 port map( Ain => s1, Bin => s2(13), Zout => u14);
	ADD_13: mejia_fulladd32_Nov16 port map( Ain => d12(31 downto 1), Bin => u14, Ci => c(12), Ci2 => co12, Sout => d13, Cou => co13);
	s3(13) <= d13(0);
	AND_15: mejia_and32_Nov16 port map( Ain => s1, Bin => s2(14), Zout => u15);
	ADD_14: mejia_fulladd32_Nov16 port map( Ain => d13(31 downto 1), Bin => u15, Ci => c(13), Ci2 => co13, Sout => d14, Cou => co14);
	s3(14) <= d14(0);
	AND_16: mejia_and32_Nov16 port map( Ain => s1, Bin => s2(15), Zout => u16);
	ADD_15: mejia_fulladd32_Nov16 port map( Ain => d14(31 downto 1), Bin => u16, Ci => c(14), Ci2 => co14, Sout => d15, Cou => co15);
	s3(15) <= d15(0);
	AND_17: mejia_and32_Nov16 port map( Ain => s1, Bin => s2(16), Zout => u17);
	ADD_16: mejia_fulladd32_Nov16 port map( Ain => d15(31 downto 1), Bin => u17, Ci => c(15), Ci2 => co15, Sout => d16, Cou => co16);
	s3(16) <= d16(0);
	AND_18: mejia_and32_Nov16 port map( Ain => s1, Bin => s2(17), Zout => u18);
	ADD_17: mejia_fulladd32_Nov16 port map( Ain => d16(31 downto 1), Bin => u18, Ci => c(16), Ci2 => co16, Sout => d17, Cou => co17);
	s3(17) <= d17(0);
	AND_19: mejia_and32_Nov16 port map( Ain => s1, Bin => s2(18), Zout => u19);
	ADD_18: mejia_fulladd32_Nov16 port map( Ain => d17(31 downto 1), Bin => u19, Ci => c(17), Ci2 => co17, Sout => d18, Cou => co18);
	s3(18) <= d18(0);
	AND_20: mejia_and32_Nov16 port map( Ain => s1, Bin => s2(19), Zout => u20);
	ADD_19: mejia_fulladd32_Nov16 port map( Ain => d18(31 downto 1), Bin => u20, Ci => c(18), Ci2 => co18, Sout => d19, Cou => co19);
	s3(19) <= d19(0);
	AND_21: mejia_and32_Nov16 port map( Ain => s1, Bin => s2(20), Zout => u21);
	ADD_20: mejia_fulladd32_Nov16 port map( Ain => d19(31 downto 1), Bin => u21, Ci => c(19), Ci2 => co19, Sout => d20, Cou => co20);
	s3(20) <= d20(0);
	AND_22: mejia_and32_Nov16 port map( Ain => s1, Bin => s2(21), Zout => u22);
	ADD_21: mejia_fulladd32_Nov16 port map( Ain => d20(31 downto 1), Bin => u22, Ci => c(20), Ci2 => co20, Sout => d21, Cou => co21);
	s3(21) <= d21(0);
	AND_23: mejia_and32_Nov16 port map( Ain => s1, Bin => s2(22), Zout => u23);
	ADD_22: mejia_fulladd32_Nov16 port map( Ain => d21(31 downto 1), Bin => u23, Ci => c(21), Ci2 => co21, Sout => d22, Cou => co22);
	s3(22) <= d22(0);
	AND_24: mejia_and32_Nov16 port map( Ain => s1, Bin => s2(23), Zout => u24);
	ADD_23: mejia_fulladd32_Nov16 port map( Ain => d22(31 downto 1), Bin => u24, Ci => c(22), Ci2 => co22, Sout => d23, Cou => co23);
	s3(23) <= d23(0);
	AND_25: mejia_and32_Nov16 port map( Ain => s1, Bin => s2(24), Zout => u25);
	ADD_24: mejia_fulladd32_Nov16 port map( Ain => d23(31 downto 1), Bin => u25, Ci => c(23), Ci2 => co23, Sout => d24, Cou => co24);
	s3(24) <= d24(0);
	AND_26: mejia_and32_Nov16 port map( Ain => s1, Bin => s2(25), Zout => u26);
	ADD_25: mejia_fulladd32_Nov16 port map( Ain => d24(31 downto 1), Bin => u26, Ci => c(24), Ci2 => co24, Sout => d25, Cou => co25);
	s3(25) <= d25(0);
	AND_27: mejia_and32_Nov16 port map( Ain => s1, Bin => s2(26), Zout => u27);
	ADD_26: mejia_fulladd32_Nov16 port map( Ain => d25(31 downto 1), Bin => u27, Ci => c(25), Ci2 => co25, Sout => d26, Cou => co26);
	s3(26) <= d26(0);
	AND_28: mejia_and32_Nov16 port map( Ain => s1, Bin => s2(27), Zout => u28);
	ADD_27: mejia_fulladd32_Nov16 port map( Ain => d26(31 downto 1), Bin => u28, Ci => c(26), Ci2 => co26, Sout => d27, Cou => co27);
	s3(27) <= d27(0);
	AND_29: mejia_and32_Nov16 port map( Ain => s1, Bin => s2(28), Zout => u29);
	ADD_28: mejia_fulladd32_Nov16 port map( Ain => d27(31 downto 1), Bin => u29, Ci => c(27), Ci2 => co27, Sout => d28, Cou => co28);
	s3(28) <= d28(0);
	AND_30: mejia_and32_Nov16 port map( Ain => s1, Bin => s2(29), Zout => u30);
	ADD_29: mejia_fulladd32_Nov16 port map( Ain => d28(31 downto 1), Bin => u30, Ci => c(28), Ci2 => co28, Sout => d29, Cou => co29);
	s3(29) <= d29(0);
	AND_31: mejia_and32_Nov16 port map( Ain => s1, Bin => s2(30), Zout => u31);
	ADD_30: mejia_fulladd32_Nov16 port map( Ain => d29(31 downto 1), Bin => u31, Ci => c(29), Ci2 => co29, Sout => d30, Cou => co30);
	s3(30) <= d30(0);
	AND_32: mejia_and32_Nov16 port map( Ain => s1, Bin => s2(31), Zout => u32);
	ADD_31: mejia_fulladd32_Nov16 port map( Ain => d30(31 downto 1), Bin => u32, Ci => c(30), Ci2 => co30, Sout => d31, Cou => co31);
	s3(62 downto 31) <= d31;
	s3(63) <= co31;
	
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
	
	
	