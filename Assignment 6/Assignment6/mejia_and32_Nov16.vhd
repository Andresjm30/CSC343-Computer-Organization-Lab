library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mejia_and32_Nov16 is
	Port( Ain : in std_logic_vector(31 downto 0);
			Bin : in std_logic;
			Zout: out std_logic_vector(31 downto 0));
end mejia_and32_Nov16;

architecture arch of mejia_and32_Nov16 is

	component mejia_and_Nov16
	Port ( A : in STD_LOGIC;
			 B : in STD_LOGIC;
			 Z : out STD_LOGIC);
	end component;
	
	begin 
	
	AND1 : mejia_and_Nov16 port map( A => Ain(0), B => Bin, Z => Zout(0));
	AND2 : mejia_and_Nov16 port map( A => Ain(1), B => Bin, Z => Zout(1));
	AND3 : mejia_and_Nov16 port map( A => Ain(2), B => Bin, Z => Zout(2));
	AND4 : mejia_and_Nov16 port map( A => Ain(3), B => Bin, Z => Zout(3));
	AND5 : mejia_and_Nov16 port map( A => Ain(4), B => Bin, Z => Zout(4));
	AND6 : mejia_and_Nov16 port map( A => Ain(5), B => Bin, Z => Zout(5));
	AND7 : mejia_and_Nov16 port map( A => Ain(6), B => Bin, Z => Zout(6));
	AND8 : mejia_and_Nov16 port map( A => Ain(7), B => Bin, Z => Zout(7));
	AND9 : mejia_and_Nov16 port map( A => Ain(8), B => Bin, Z => Zout(8));
	AND10 : mejia_and_Nov16 port map( A => Ain(9), B => Bin, Z => Zout(9));
	AND11 : mejia_and_Nov16 port map( A => Ain(10), B => Bin, Z => Zout(10));
	AND12 : mejia_and_Nov16 port map( A => Ain(11), B => Bin, Z => Zout(11));
	AND13 : mejia_and_Nov16 port map( A => Ain(12), B => Bin, Z => Zout(12));
	AND14 : mejia_and_Nov16 port map( A => Ain(13), B => Bin, Z => Zout(13));
	AND15 : mejia_and_Nov16 port map( A => Ain(14), B => Bin, Z => Zout(14));
	AND16 : mejia_and_Nov16 port map( A => Ain(15), B => Bin, Z => Zout(15));
	AND17 : mejia_and_Nov16 port map( A => Ain(16), B => Bin, Z => Zout(16));
	AND18 : mejia_and_Nov16 port map( A => Ain(17), B => Bin, Z => Zout(17));
	AND19 : mejia_and_Nov16 port map( A => Ain(18), B => Bin, Z => Zout(18));
	AND20 : mejia_and_Nov16 port map( A => Ain(19), B => Bin, Z => Zout(19));
	AND21 : mejia_and_Nov16 port map( A => Ain(20), B => Bin, Z => Zout(20));
	AND22 : mejia_and_Nov16 port map( A => Ain(21), B => Bin, Z => Zout(21));
	AND23 : mejia_and_Nov16 port map( A => Ain(22), B => Bin, Z => Zout(22));
	AND24 : mejia_and_Nov16 port map( A => Ain(23), B => Bin, Z => Zout(23));
	AND25 : mejia_and_Nov16 port map( A => Ain(24), B => Bin, Z => Zout(24));
	AND26 : mejia_and_Nov16 port map( A => Ain(25), B => Bin, Z => Zout(25));
	AND27 : mejia_and_Nov16 port map( A => Ain(26), B => Bin, Z => Zout(26));
	AND28 : mejia_and_Nov16 port map( A => Ain(27), B => Bin, Z => Zout(27));
	AND29 : mejia_and_Nov16 port map( A => Ain(28), B => Bin, Z => Zout(28));
	AND30 : mejia_and_Nov16 port map( A => Ain(29), B => Bin, Z => Zout(29));
	AND31 : mejia_and_Nov16 port map( A => Ain(30), B => Bin, Z => Zout(30));
	AND32 : mejia_and_Nov16 port map( A => Ain(31), B => Bin, Z => Zout(31));
	
end arch;