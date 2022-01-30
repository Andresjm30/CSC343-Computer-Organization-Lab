LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity mejia_nor_op_Oct28 is port(
	a, b: IN std_logic_vector(31 downto 0);
	q:    OUT std_logic_vector(31 downto 0)
);
end mejia_nor_op_Oct28;

architecture arch of mejia_nor_op_Oct28 is

begin
	q <= not (a or b);
end arch;