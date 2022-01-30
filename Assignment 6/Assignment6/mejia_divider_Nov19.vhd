library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mejia_divider_Nov19 is
	port ( clk, ld, clr: in std_logic;
			 Ain, Bin:     in std_logic_vector(31 downto 0);
			 Qout, Rout:   out std_logic_vector(31 downto 0));
end mejia_divider_Nov19;

architecture arch of mejia_divider_Nov19 is

	component mejia_register32_Nov16 
		port( d:            IN std_logic_vector(31 downto 0);
				ld, clr, clk: IN std_logic;
				q:            OUT std_logic_vector(31 downto 0));
	end component;
	
	component mejia_div32_Nov19 is
		port( Bi, M1: in STD_LOGIC;
				M  : in std_logic_vector(30 downto 0);
				Si : in std_logic_vector(31 downto 0);
				OKo : out STD_LOGIC;
				D, So : out std_logic_vector(31 downto 0));
	end component;
	
	signal A32, B32, Q32, R32 : std_logic_vector(31 downto 0);
	signal s1, s2, s3, s4, co : std_logic_vector(31 downto 0);
	signal o1 : std_logic:= '0';
	Signal o2 : std_logic_vector(31 downto 0):= x"00000000";
	signal u1, u2, u3, u4, u5, u6, u7, u8 : std_logic_vector(31 downto 0);
	signal u9, u10, u11, u12, u13, u14, u15, u16 : std_logic_vector(31 downto 0);
	signal u17, u18, u19, u20, u21, u22, u23, u24 : std_logic_vector(31 downto 0);
	signal u25, u26, u27, u28, u29, u30, u31 : std_logic_vector(31 downto 0);
	signal t1, t2, t3, t4, t5, t6, t7, t8 : std_logic_vector(31 downto 0);
	signal t9, t10, t11, t12, t13, t14, t15, t16 : std_logic_vector(31 downto 0);
	signal t17, t18, t19, t20, t21, t22, t23, t24 : std_logic_vector(31 downto 0);
	signal t25, t26, t27, t28, t29, t30, t31, t32 : std_logic_vector(31 downto 0);
	
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
					 
	row1 : mejia_div32_Nov19 port map( Bi => o1, M1 => s1(31), M => o2(30 downto 0), Si => s2, OKo => s3(31), D => u1, So => t1);
	row2 : mejia_div32_Nov19 port map( Bi => o1, M1 => s1(30), M => u1(30 downto 0), Si => t1, OKo => s3(30), D => u2, So => t2);
	row3 : mejia_div32_Nov19 port map( Bi => o1, M1 => s1(29), M => u2(30 downto 0), Si => t2, OKo => s3(29), D => u3, So => t3);
	row4 : mejia_div32_Nov19 port map( Bi => o1, M1 => s1(28), M => u3(30 downto 0), Si => t3, OKo => s3(28), D => u4, So => t4);
	row5 : mejia_div32_Nov19 port map( Bi => o1, M1 => s1(27), M => u4(30 downto 0), Si => t4, OKo => s3(27), D => u5, So => t5);
	row6 : mejia_div32_Nov19 port map( Bi => o1, M1 => s1(26), M => u5(30 downto 0), Si => t5, OKo => s3(26), D => u6, So => t6);
	row7 : mejia_div32_Nov19 port map( Bi => o1, M1 => s1(25), M => u6(30 downto 0), Si => t6, OKo => s3(25), D => u7, So => t7);
	row8 : mejia_div32_Nov19 port map( Bi => o1, M1 => s1(24), M => u7(30 downto 0), Si => t7, OKo => s3(24), D => u8, So => t8);
	row9 : mejia_div32_Nov19 port map( Bi => o1, M1 => s1(23), M => u8(30 downto 0), Si => t8, OKo => s3(23), D => u9, So => t9);
	row10: mejia_div32_Nov19 port map( Bi => o1, M1 => s1(22), M => u9(30 downto 0), Si => t9, OKo => s3(22), D => u10, So => t10);
	row11: mejia_div32_Nov19 port map( Bi => o1, M1 => s1(21), M => u10(30 downto 0), Si => t10, OKo => s3(21), D => u11, So => t11);
	row12: mejia_div32_Nov19 port map( Bi => o1, M1 => s1(20), M => u11(30 downto 0), Si => t11, OKo => s3(20), D => u12, So => t12);
	row13: mejia_div32_Nov19 port map( Bi => o1, M1 => s1(19), M => u12(30 downto 0), Si => t12, OKo => s3(19), D => u13, So => t13);
	row14: mejia_div32_Nov19 port map( Bi => o1, M1 => s1(18), M => u13(30 downto 0), Si => t13, OKo => s3(18), D => u14, So => t14);
	row15: mejia_div32_Nov19 port map( Bi => o1, M1 => s1(17), M => u14(30 downto 0), Si => t14, OKo => s3(17), D => u15, So => t15);
	row16: mejia_div32_Nov19 port map( Bi => o1, M1 => s1(16), M => u15(30 downto 0), Si => t15, OKo => s3(16), D => u16, So => t16);
	row17: mejia_div32_Nov19 port map( Bi => o1, M1 => s1(15), M => u16(30 downto 0), Si => t16, OKo => s3(15), D => u17, So => t17);
	row18: mejia_div32_Nov19 port map( Bi => o1, M1 => s1(14), M => u17(30 downto 0), Si => t17, OKo => s3(14), D => u18, So => t18);
	row19: mejia_div32_Nov19 port map( Bi => o1, M1 => s1(13), M => u18(30 downto 0), Si => t18, OKo => s3(13), D => u19, So => t19);
	row20: mejia_div32_Nov19 port map( Bi => o1, M1 => s1(12), M => u19(30 downto 0), Si => t19, OKo => s3(12), D => u20, So => t20);
	row21: mejia_div32_Nov19 port map( Bi => o1, M1 => s1(11), M => u20(30 downto 0), Si => t20, OKo => s3(11), D => u21, So => t21);
	row22: mejia_div32_Nov19 port map( Bi => o1, M1 => s1(10), M => u21(30 downto 0), Si => t21, OKo => s3(10), D => u22, So => t22);
	row23: mejia_div32_Nov19 port map( Bi => o1, M1 => s1(9), M => u22(30 downto 0), Si => t22, OKo => s3(9), D => u23, So => t23);
	row24: mejia_div32_Nov19 port map( Bi => o1, M1 => s1(8), M => u23(30 downto 0), Si => t23, OKo => s3(8), D => u24, So => t24);
	row25: mejia_div32_Nov19 port map( Bi => o1, M1 => s1(7), M => u24(30 downto 0), Si => t24, OKo => s3(7), D => u25, So => t25);
	row26: mejia_div32_Nov19 port map( Bi => o1, M1 => s1(6), M => u25(30 downto 0), Si => t25, OKo => s3(6), D => u26, So => t26);
	row27: mejia_div32_Nov19 port map( Bi => o1, M1 => s1(5), M => u26(30 downto 0), Si => t26, OKo => s3(5), D => u27, So => t27);
	row28: mejia_div32_Nov19 port map( Bi => o1, M1 => s1(4), M => u27(30 downto 0), Si => t27, OKo => s3(4), D => u28, So => t28);
	row29: mejia_div32_Nov19 port map( Bi => o1, M1 => s1(3), M => u28(30 downto 0), Si => t28, OKo => s3(3), D => u29, So => t29);
	row30: mejia_div32_Nov19 port map( Bi => o1, M1 => s1(2), M => u29(30 downto 0), Si => t29, OKo => s3(2), D => u30, So => t30);
	row31: mejia_div32_Nov19 port map( Bi => o1, M1 => s1(1), M => u30(30 downto 0), Si => t30, OKo => s3(1), D => u31, So => t31);
	row32: mejia_div32_Nov19 port map( Bi => o1, M1 => s1(0), M => u31(30 downto 0), Si => t31, OKo => s3(0), D => s4, So => t32);
	
					 
					 
	REG_Z: mejia_register32_Nov16 
		port map( ld => ld,
					 clr => clr,
					 clk => clk,
					 d => s3,
					 q => Q32);
					 
	REG_X: mejia_register32_Nov16 
		port map( ld => ld,
					 clr => clr,
					 clk => clk,
					 d => s4,
					 q => R32);
	
	A32 <= Ain;
	B32 <= Bin;
	Qout <= Q32;
	Rout <= R32;

	
end arch;