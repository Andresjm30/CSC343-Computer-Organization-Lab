library ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mejia_shift is port(
	Ain: in std_logic_vector(31 downto 0);
	Bout: out std_logic_vector(31 downto 0)
	);
end mejia_shift;

architecture arch of mejia_shift is

signal temp: unsigned(31 downto 0);	

begin
			temp <= shift_left(unsigned(Ain), 2);
			Bout <= std_logic_vector(temp);

end arch; 