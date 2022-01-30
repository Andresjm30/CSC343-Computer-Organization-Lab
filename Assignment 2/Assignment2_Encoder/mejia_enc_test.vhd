library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mejia_enc_test is
end mejia_enc_test;

architecture arch_enc_test of mejia_enc_test is
component mejia_enc is
Port ( I : in  STD_LOGIC_VECTOR (3 downto 0);
       Y : out STD_LOGIC_VECTOR (1 downto 0));
end component;

signal I: STD_LOGIC_VECTOR(3 downto 0);
signal Y: STD_LOGIC_VECTOR(1 downto 0);

begin
	uut: mejia_enc port map(I => I, Y => Y);
	stim: process
	begin
		I <= "0001";
		wait for 20 ns;
		I <= "0010";
		wait for 20 ns;	
		I <= "0100";
		wait for 20 ns;
		I <= "1000";
		wait for 20 ns;
		wait;
	end process;
end arch_enc_test;