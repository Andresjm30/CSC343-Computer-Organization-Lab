LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mejia_sll_Oct29_tb is
end mejia_sll_Oct29_tb;

architecture arch_tb of mejia_sll_Oct29_tb is 
	
	component mejia_sll_Oct29 port(
		clk, ld, clr: in std_logic;
		RTin: in std_logic_vector(31 downto 0);
		shamtin:in std_logic_vector(31 downto 0);
		RDout:out std_logic_vector(31 downto 0));
	end component;
	
	signal clk, ld, clr: std_logic;
	signal RTin : std_logic_vector(31 downto 0);
	signal shamtin: std_logic_vector(31 downto 0);
	signal RDout: std_logic_vector(31 downto 0);
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
		
	RESULT: mejia_sll_Oct29 port map(clk, ld, clr, RTin, shamtin, RDout);
	
	process
		begin
			
			clr <= '1'; 	
			ld <= '0';
			wait for 20 ns;
			
			ld <= '1';
			clr <= '0';
			RTin <= x"0000FFFF";
			shamtin <= x"00000004";
			wait for 20 ns;
			
			ld <= '1';
			clr <= '0';
			RTin <= x"00001100";
			shamtin <= x"00000002";
			wait for 20 ns;
			
			ld <= '1';
			RTin <= x"00ABFF00";
			shamtin <= x"00000004";
			wait for 20 ns;
			
			ld <= '1';
			RTin <= x"000CAAF1";
			shamtin <= x"00000008";
			wait for 20 ns;
			
			ld <= '1';
			RTin <= x"0005FCA0";
			shamtin <= x"00000004";
			wait for 20 ns;
			
			wait;
	end process;

end arch_tb;