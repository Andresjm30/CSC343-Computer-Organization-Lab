LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_signed.all;

entity mejia_adderk_Nov8 is
	generic ( k : integer := 8);
	port (carryin : IN std_logic;
			X, Y  : IN std_logic_vector(k-1 downto 0);
			S     : OUT std_logic_vector(k-1 downto 0);
			carryout : OUT std_logic);
end mejia_adderk_Nov8;

architecture Behavior of mejia_adderk_Nov8 is

	signal Sum : std_logic_vector(k downto 0);
	
begin
	Sum <= ('0' & X) + ('0' & Y) + carryin;
	S <= Sum(k-1 downto 0);
	carryout <= Sum(k);
end Behavior;
