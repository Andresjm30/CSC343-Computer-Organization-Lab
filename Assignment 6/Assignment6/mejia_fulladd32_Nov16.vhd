library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
entity mejia_fulladd32_Nov16 is
	Port( Ain : in std_logic_vector(30 downto 0);
			Bin : in std_logic_vector(31 downto 0);
			Ci : in std_logic;
			Ci2: in std_logic:= '0';
			Sout: out std_logic_vector(31 downto 0);
			Cou: out std_logic);
end mejia_fulladd32_Nov16;

architecture arch of mejia_fulladd32_Nov16 is

	component mejia_fulladd_Nov16
		Port ( A : in STD_LOGIC;
				 B : in STD_LOGIC;
				 Cin : in STD_LOGIC:= '0';
				 S : out STD_LOGIC;
				 Cout : out STD_LOGIC);
	end component;
	
	signal t : std_logic_vector(30 downto 0);
	
	begin

	ADD1 : mejia_fulladd_Nov16 port map( A => Ain(0), B => Bin(0), Cin => Ci, S => Sout(0), Cout => t(0));
	ADD2 : mejia_fulladd_Nov16 port map( A => Ain(1), B => Bin(1), Cin => t(0), S => Sout(1), Cout => t(1));
	ADD3 : mejia_fulladd_Nov16 port map( A => Ain(2), B => Bin(2), Cin => t(1), S => Sout(2), Cout => t(2));
	ADD4 : mejia_fulladd_Nov16 port map( A => Ain(3), B => Bin(3), Cin => t(2), S => Sout(3), Cout => t(3));
	ADD5 : mejia_fulladd_Nov16 port map( A => Ain(4), B => Bin(4), Cin => t(3), S => Sout(4), Cout => t(4));
	ADD6 : mejia_fulladd_Nov16 port map( A => Ain(5), B => Bin(5), Cin => t(4), S => Sout(5), Cout => t(5));
	ADD7 : mejia_fulladd_Nov16 port map( A => Ain(6), B => Bin(6), Cin => t(5), S => Sout(6), Cout => t(6));
	ADD8 : mejia_fulladd_Nov16 port map( A => Ain(7), B => Bin(7), Cin => t(6), S => Sout(7), Cout => t(7));
	ADD9 : mejia_fulladd_Nov16 port map( A => Ain(8), B => Bin(8), Cin => t(7), S => Sout(8), Cout => t(8));
	ADD10: mejia_fulladd_Nov16 port map( A => Ain(9), B => Bin(9), Cin => t(8), S => Sout(9), Cout => t(9));
	ADD11: mejia_fulladd_Nov16 port map( A => Ain(10), B => Bin(10), Cin => t(9), S => Sout(10), Cout => t(10));
	ADD12: mejia_fulladd_Nov16 port map( A => Ain(11), B => Bin(11), Cin => t(10), S => Sout(11), Cout => t(11));
	ADD13: mejia_fulladd_Nov16 port map( A => Ain(12), B => Bin(12), Cin => t(11), S => Sout(12), Cout => t(12));
	ADD14: mejia_fulladd_Nov16 port map( A => Ain(13), B => Bin(13), Cin => t(12), S => Sout(13), Cout => t(13));
	ADD15: mejia_fulladd_Nov16 port map( A => Ain(14), B => Bin(14), Cin => t(13), S => Sout(14), Cout => t(14));
	ADD16: mejia_fulladd_Nov16 port map( A => Ain(15), B => Bin(15), Cin => t(14), S => Sout(15), Cout => t(15));
	ADD17: mejia_fulladd_Nov16 port map( A => Ain(16), B => Bin(16), Cin => t(15), S => Sout(16), Cout => t(16));
	ADD18: mejia_fulladd_Nov16 port map( A => Ain(17), B => Bin(17), Cin => t(16), S => Sout(17), Cout => t(17));
	ADD19: mejia_fulladd_Nov16 port map( A => Ain(18), B => Bin(18), Cin => t(17), S => Sout(18), Cout => t(18));
	ADD20: mejia_fulladd_Nov16 port map( A => Ain(19), B => Bin(19), Cin => t(18), S => Sout(19), Cout => t(19));
	ADD21: mejia_fulladd_Nov16 port map( A => Ain(20), B => Bin(20), Cin => t(19), S => Sout(20), Cout => t(20));
	ADD22: mejia_fulladd_Nov16 port map( A => Ain(21), B => Bin(21), Cin => t(20), S => Sout(21), Cout => t(21));
	ADD23: mejia_fulladd_Nov16 port map( A => Ain(22), B => Bin(22), Cin => t(21), S => Sout(22), Cout => t(22));
	ADD24: mejia_fulladd_Nov16 port map( A => Ain(23), B => Bin(23), Cin => t(22), S => Sout(23), Cout => t(23));
	ADD25: mejia_fulladd_Nov16 port map( A => Ain(24), B => Bin(24), Cin => t(23), S => Sout(24), Cout => t(24));
	ADD26: mejia_fulladd_Nov16 port map( A => Ain(25), B => Bin(25), Cin => t(24), S => Sout(25), Cout => t(25));
	ADD27: mejia_fulladd_Nov16 port map( A => Ain(26), B => Bin(26), Cin => t(25), S => Sout(26), Cout => t(26));
	ADD28: mejia_fulladd_Nov16 port map( A => Ain(27), B => Bin(17), Cin => t(26), S => Sout(27), Cout => t(27));
	ADD29: mejia_fulladd_Nov16 port map( A => Ain(28), B => Bin(28), Cin => t(27), S => Sout(28), Cout => t(28));
	ADD30: mejia_fulladd_Nov16 port map( A => Ain(29), B => Bin(29), Cin => t(28), S => Sout(29), Cout => t(29));
	ADD31: mejia_fulladd_Nov16 port map( A => Ain(30), B => Bin(30), Cin => t(29), S => Sout(30), Cout => t(30));
	ADD32: mejia_fulladd_Nov16 port map( A => Ci2    , B => Bin(31), Cin => t(30), S => Sout(31), Cout => Cou);
	
end arch;