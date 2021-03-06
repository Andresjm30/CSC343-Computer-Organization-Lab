library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
entity mejia_fulladd_Nov16 is
	Port ( A : in STD_LOGIC;
			 B : in STD_LOGIC;
			 Cin : in STD_LOGIC:= '0';
			 S : out STD_LOGIC;
			 Cout : out STD_LOGIC);
end mejia_fulladd_Nov16;
 
architecture arch of mejia_fulladd_Nov16 is
 
begin
 
 S <= A XOR B XOR Cin ;
 Cout <= (A AND B) OR (Cin AND A) OR (Cin AND B) ;
 
end arch;
