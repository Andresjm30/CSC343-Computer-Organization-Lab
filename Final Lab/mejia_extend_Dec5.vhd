library ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mejia_extend_Dec5 is 
	port( sel       : in std_logic;
			extend_in : in std_logic_vector(15 downto 0);
			extend_out: out std_logic_vector(31 downto 0));
end mejia_extend_Dec5;

architecture arch of mejia_extend_Dec5 is
begin 

	extend_out <= std_logic_vector(resize(signed(extend_in), extend_out'length))
					  when (sel = '1') else std_logic_vector(resize(unsigned(extend_in), extend_out'length));
	
end arch; 

