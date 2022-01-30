library ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mejia_jump_tb is
end mejia_jump_tb;

architecture arch_tb of mejia_jump_tb is

	component mejia_jump 
		port(
			clk, ld, clr: in std_logic;
			RIin: 		  in std_logic_vector(15 downto 0);
			PCout:        out std_logic_vector(31 downto 0));
	end component;
	
	signal clk, ld, clr: std_logic;
	signal RIin        : std_logic_vector(15 downto 0);
	signal PCout       : std_logic_vector(31 downto 0);
	signal i: integer := 0;
	
begin

	process 
		begin 
			clk <= '0';
			wait for 10 ns;
			clk <= '1';
			wait for 10 ns;
			
			if (i = 10) then
				wait;
			else
				i <= i + 1;
			end if;
	end process;
	
	RESULT: mejia_jump port map(clk, ld, clr, RIin, PCout);
	
	process
		begin
			
			clr <= '1'; 	
			ld <= '0';
			wait for 20 ns;
			
			ld <= '1';
			clr <= '0';
			RIin <= x"0011";
			wait for 20 ns;
			
			ld <= '1';
			clr <= '0';
			RIin <= x"0FFF";
			wait for 20 ns;
			
			ld <= '0';
			clr <= '0';
			RIin <= x"0101";
			wait for 20 ns;
			
			ld <= '1';
			clr <= '0';
			RIin <= x"0F0F";
			wait for 20 ns;
			
			wait;
	end process;

end arch_tb;
			
			