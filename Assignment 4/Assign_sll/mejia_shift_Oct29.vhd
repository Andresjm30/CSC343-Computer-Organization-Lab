library ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mejia_shift_Oct29 is port(
	Ain: in std_logic_vector(31 downto 0);
	shamt: in std_logic_vector(31 downto 0);
	Bout: out std_logic_vector(31 downto 0)
	);
end mejia_shift_Oct29;

architecture arch of mejia_shift_Oct29 is

signal temp: unsigned(31 downto 0);	
signal shift: integer;

begin
		shift <= to_integer(unsigned(shamt));
		temp <= shift_left(unsigned(Ain), shift);
		Bout <= std_logic_vector(temp);

end arch; 