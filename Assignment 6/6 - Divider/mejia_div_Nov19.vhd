library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity mejia_div_Nov19 is
	port( Si, M, Bi, OKi : in STD_LOGIC;
			Bo, OKo, D, So : out STD_LOGIC);
end mejia_div_Nov19;

architecture arch of mejia_div_Nov19 is

	component mejia_FS_Nov19
		port( S : in STD_LOGIC; --Subtrahend
				M : in STD_LOGIC; --Minuend
				Bi : in STD_LOGIC; --Borrow In
				D : out STD_LOGIC; --Difference
				Bo : out STD_LOGIC ); --Borrow Out
	end component;
	
	COMPONENT mejia_mux2to1_Nov19 IS
		PORT( data0		: IN STD_LOGIC ;
				data1		: IN STD_LOGIC ;
				sel		: IN STD_LOGIC ;
				result		: OUT STD_LOGIC);
	END COMPONENT;
	
	signal s1 : std_logic;
	
begin

	FS : mejia_FS_Nov19 
		port map( S => Si, M => M, Bi => Bi, 
					 D => s1, Bo => Bo);
					 
	MUX : mejia_mux2to1_Nov19
		port map( data0 => s1, data1 => M,
					 sel => OKi, result => D);
	
	OKo <= OKi;
	So <= Si;
	
end arch;
