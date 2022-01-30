library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity mejia_not_Nov19 is
	port( Ain : in STD_LOGIC;
			Bout : out STD_LOGIC);
end mejia_not_Nov19;

architecture arch of mejia_not_Nov19 is

begin
	
	Bout <= not Ain;
	
end arch;