LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity mejia_or_op_Dec5 is port(
	a, b: IN std_logic_vector(31 downto 0);
	q:    OUT std_logic_vector(31 downto 0));
end mejia_or_op_Dec5;

architecture arch of mejia_or_op_Dec5 is

begin
	q <= a or b;
end arch;