library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity mejia_div32_Nov19 is
	port( Bi, M1: in STD_LOGIC;
			M  : in std_logic_vector(30 downto 0);
			Si : in std_logic_vector(31 downto 0);
			OKo : out STD_LOGIC;
			D, So : out std_logic_vector(31 downto 0));
end mejia_div32_Nov19;

architecture arch of mejia_div32_Nov19 is

	component mejia_div_Nov19
		port( Si, M, Bi, OKi : in STD_LOGIC;
				Bo, OKo, D, So : out STD_LOGIC);
	end component;
	
	component mejia_not_Nov19
		port( Ain : in STD_LOGIC;
				Bout : out STD_LOGIC);
	end component;
	
	signal t1, t2 : std_logic_vector(31 downto 0);
	signal s1, s2 : std_logic:= '0' ;
	
	begin
	
	div1 : mejia_div_Nov19 port map( Si => Si(0), M => M1,  Bi => Bi,    OKi => t2(0), Bo => t1(0), OKo => OKo,    D => D(0), So => So(0));
	div2 : mejia_div_Nov19 port map( Si => Si(1), M => M(0), Bi => t1(0), OKi => t2(1), Bo => t1(1), OKo => t2(0), D => D(1), So => So(1));
	div3 : mejia_div_Nov19 port map( Si => Si(2), M => M(1), Bi => t1(1), OKi => t2(2), Bo => t1(2), OKo => t2(1), D => D(2), So => So(2));
	div4 : mejia_div_Nov19 port map( Si => Si(3), M => M(2), Bi => t1(2), OKi => t2(3), Bo => t1(3), OKo => t2(2), D => D(3), So => So(3));
	div5 : mejia_div_Nov19 port map( Si => Si(4), M => M(3), Bi => t1(3), OKi => t2(4), Bo => t1(4), OKo => t2(3), D => D(4), So => So(4));
	div6 : mejia_div_Nov19 port map( Si => Si(5), M => M(4), Bi => t1(4), OKi => t2(5), Bo => t1(5), OKo => t2(4), D => D(5), So => So(5));
	div7 : mejia_div_Nov19 port map( Si => Si(6), M => M(5), Bi => t1(5), OKi => t2(6), Bo => t1(6), OKo => t2(5), D => D(6), So => So(6));
	div8 : mejia_div_Nov19 port map( Si => Si(7), M => M(6), Bi => t1(6), OKi => t2(7), Bo => t1(7), OKo => t2(6), D => D(7), So => So(7));
	div9 : mejia_div_Nov19 port map( Si => Si(8), M => M(7), Bi => t1(7), OKi => t2(8), Bo => t1(8), OKo => t2(7), D => D(8), So => So(8));
	div10: mejia_div_Nov19 port map( Si => Si(9), M => M(8), Bi => t1(8), OKi => t2(9), Bo => t1(9), OKo => t2(8), D => D(9), So => So(9));
	div11: mejia_div_Nov19 port map( Si => Si(10), M => M(9), Bi => t1(9), OKi => t2(10), Bo => t1(10), OKo => t2(9), D => D(10), So => So(10));
	div12: mejia_div_Nov19 port map( Si => Si(11), M => M(10), Bi => t1(10), OKi => t2(11), Bo => t1(11), OKo => t2(10), D => D(11), So => So(11));
	div13: mejia_div_Nov19 port map( Si => Si(12), M => M(11), Bi => t1(11), OKi => t2(12), Bo => t1(12), OKo => t2(11), D => D(12), So => So(12));
	div14: mejia_div_Nov19 port map( Si => Si(13), M => M(12), Bi => t1(12), OKi => t2(13), Bo => t1(13), OKo => t2(12), D => D(13), So => So(13));
	div15: mejia_div_Nov19 port map( Si => Si(14), M => M(13), Bi => t1(13), OKi => t2(14), Bo => t1(14), OKo => t2(13), D => D(14), So => So(14));
	div16: mejia_div_Nov19 port map( Si => Si(15), M => M(14), Bi => t1(14), OKi => t2(15), Bo => t1(15), OKo => t2(14), D => D(15), So => So(15));
	div17: mejia_div_Nov19 port map( Si => Si(16), M => M(15), Bi => t1(15), OKi => t2(16), Bo => t1(16), OKo => t2(15), D => D(16), So => So(16));
	div18: mejia_div_Nov19 port map( Si => Si(17), M => M(16), Bi => t1(16), OKi => t2(17), Bo => t1(17), OKo => t2(16), D => D(17), So => So(17));
	div19: mejia_div_Nov19 port map( Si => Si(18), M => M(17), Bi => t1(17), OKi => t2(18), Bo => t1(18), OKo => t2(17), D => D(18), So => So(18));
	div20: mejia_div_Nov19 port map( Si => Si(19), M => M(18), Bi => t1(18), OKi => t2(19), Bo => t1(19), OKo => t2(18), D => D(19), So => So(19));
	div21: mejia_div_Nov19 port map( Si => Si(20), M => M(19), Bi => t1(19), OKi => t2(20), Bo => t1(20), OKo => t2(19), D => D(20), So => So(20));
	div22: mejia_div_Nov19 port map( Si => Si(21), M => M(20), Bi => t1(20), OKi => t2(21), Bo => t1(21), OKo => t2(20), D => D(21), So => So(21));
	div23: mejia_div_Nov19 port map( Si => Si(22), M => M(21), Bi => t1(21), OKi => t2(22), Bo => t1(22), OKo => t2(21), D => D(22), So => So(22));
	div24: mejia_div_Nov19 port map( Si => Si(23), M => M(22), Bi => t1(22), OKi => t2(23), Bo => t1(23), OKo => t2(22), D => D(23), So => So(23));
	div25: mejia_div_Nov19 port map( Si => Si(24), M => M(23), Bi => t1(23), OKi => t2(24), Bo => t1(24), OKo => t2(23), D => D(24), So => So(24));
	div26: mejia_div_Nov19 port map( Si => Si(25), M => M(24), Bi => t1(24), OKi => t2(25), Bo => t1(25), OKo => t2(24), D => D(25), So => So(25));
	div27: mejia_div_Nov19 port map( Si => Si(26), M => M(25), Bi => t1(25), OKi => t2(26), Bo => t1(26), OKo => t2(25), D => D(26), So => So(26));
	div28: mejia_div_Nov19 port map( Si => Si(27), M => M(26), Bi => t1(26), OKi => t2(27), Bo => t1(27), OKo => t2(26), D => D(27), So => So(27));
	div29: mejia_div_Nov19 port map( Si => Si(28), M => M(27), Bi => t1(27), OKi => t2(28), Bo => t1(28), OKo => t2(27), D => D(28), So => So(28));
	div30: mejia_div_Nov19 port map( Si => Si(29), M => M(28), Bi => t1(28), OKi => t2(29), Bo => t1(29), OKo => t2(28), D => D(29), So => So(29));
	div31: mejia_div_Nov19 port map( Si => Si(30), M => M(29), Bi => t1(29), OKi => t2(30), Bo => t1(30), OKo => t2(29), D => D(30), So => So(30));
	div32: mejia_div_Nov19 port map( Si => Si(31), M => M(30), Bi => t1(30), OKi => s2,     Bo => t1(31), OKo => t2(30), D => D(31), So => So(31));
	
	not1 : mejia_not_Nov19 port map( Ain => t1(31), Bout => s2);
	
end arch;
												
												