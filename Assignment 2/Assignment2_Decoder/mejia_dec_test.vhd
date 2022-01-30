library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mejia_dec_test is
end mejia_dec_test;

architecture arch_dec_test of mejia_dec_test is
component mejia_dec is
Port ( I : in  STD_LOGIC_VECTOR (1 downto 0);
       Y : out STD_LOGIC_VECTOR (3 downto 0));
end component;

signal I: STD_LOGIC_VECTOR(1 downto 0);
signal Y: STD_LOGIC_VECTOR(3 downto 0);

begin
	uut: mejia_dec port map(I => I, Y => Y);
	stim: process
	begin
		I <= "00";
		wait for 20 ns;
		I <= "01";
		wait for 20 ns;
		I <= "10";
		wait for 20 ns;
		I <= "11";
		wait for 20 ns;
		wait;

	end process;

end arch_dec_test;
