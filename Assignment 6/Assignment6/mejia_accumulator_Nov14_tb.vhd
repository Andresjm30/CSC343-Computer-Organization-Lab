LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mejia_accumulator_Nov14_tb is
end mejia_accumulator_Nov14_tb;

architecture arch_tb of mejia_accumulator_Nov14_tb is 
	
	component mejia_accumulator_Nov14 
		port( clk, ld, clr, add_sub: in std_logic;
				A: in std_logic_vector(7 downto 0);
				Z: out std_logic_vector(7 downto 0);
				overflow: out std_logic);
	end component;
	
	signal clk, ld, clr: std_logic;
	signal A, Z: std_logic_vector(7 downto 0);
	signal add_sub, overflow: std_logic;
	signal i: integer := 0;
	
	begin

		process 
			begin 
				clk <= '0';
				wait for 10 ns;
				clk <= '1';
				wait for 10 ns;
			
				if (i = 7) then
					wait;
				else
					i <= i + 1;
				end if;
		end process;
		
	RESULT: mejia_accumulator_Nov14 port map(clk, ld, clr, add_sub, A, Z, overflow);
	
	process
		begin
			
			clr <= '1'; 	
			ld <= '0';
			wait for 20 ns;
			
			clr <= '0';
			ld <= '1';
			add_sub <= '1';
			A <= x"0F";
			wait for 20 ns;
			
			add_sub <= '0';
			A <= x"0F";
			wait for 20 ns;
			
			add_sub <= '0';
			A <= x"00";
			wait for 20 ns;
			
			add_sub <= '1';
			A <= x"BF";
			wait for 20 ns;
			
			add_sub <= '1';
			A <= x"80";
			wait for 20 ns;
			
			wait;
	end process;

end arch_tb;