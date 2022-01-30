Library ieee;
use ieee.std_logic_1164.all;

entity mejia_equal is
	port (I0, I1 : in std_logic;
	      Eq     : out std_logic);
end mejia_equal;

architecture mejia_arch of mejia_equal is
	signal p0, p1 : std_logic;
	begin 
	EQ <= p0 or p1;
	p0 <= (not I0) and (not I1);
	p1 <= I0 and I1;
end mejia_arch;
