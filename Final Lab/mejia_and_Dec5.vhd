library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
entity mejia_and_Dec5 is
	Port ( A : in STD_LOGIC;
			 B : in STD_LOGIC;
			 Z : out STD_LOGIC);
end mejia_and_Dec5;

architecture arch of mejia_and_Dec5 is
begin 
	Z <= A and B;
end arch;