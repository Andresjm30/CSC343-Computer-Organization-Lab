LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity mejia_and_op_Dec5 is port(
	a, b: IN std_logic_vector(31 downto 0);
	q:    OUT std_logic_vector(31 downto 0)
);
end mejia_and_op_Dec5;

architecture arch of mejia_and_op_Dec5 is

begin
	q <= a and b;
end arch;