LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mejia_2scomplement is port(
	Xin: in std_logic_vector(31 downto 0);
	Yout: out std_logic_vector(31 downto 0)
	);
end mejia_2scomplement;

architecture arch of mejia_2scomplement is

	signal temp : std_logic_vector(31 downto 0);
	begin
		temp <= not Xin;
		Yout <= std_logic_vector(signed(temp) + 1);
  
end arch;