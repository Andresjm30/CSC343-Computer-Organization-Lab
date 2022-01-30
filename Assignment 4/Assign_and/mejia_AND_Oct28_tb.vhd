LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mejia_AND_Oct28_tb is
end mejia_AND_Oct28_tb;

architecture arch_tb of mejia_AND_Oct28_tb is 
	
	component mejia_and_Oct28 port(
		clk, ld, clr: in std_logic;
		RSin, RTin:   in std_logic_vector(31 downto 0);
		RDout:        out std_logic_vector(31 downto 0));
	end component;
	
	signal clk, ld, clr: std_logic;
	signal RSin, RTin: std_logic_vector(31 downto 0);
	signal RDout     : std_logic_vector(31 downto 0);
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
		
	RESULT: mejia_and_Oct28 port map(clk, ld, clr, RSin, RTin, RDout);
	
	process
		begin
			
			clr <= '1'; 	
			ld <= '0';
			wait for 20 ns;
			
			ld <= '1';
			clr <= '0';
			RSin <= x"0000FFFF";
			RTin <= x"0000FFFF";
			wait for 20 ns;
			
			ld <= '1';
			clr <= '0';
			RSin <= x"00010100";
			RTin <= x"00000111";
			wait for 20 ns;
			
			ld <= '1';
			RSin <= x"00ABFF00";
			RTin <= x"00ABFF00";
			wait for 20 ns;
			
			ld <= '0';
			RSin <= x"000FAAF1";
			RTin <= x"000C22F7";
			wait for 20 ns;
			
			ld <= '1';
			RSin <= x"0005FCA0";
			RTin <= x"0001FFFF";
			wait for 20 ns;
			
			wait;
	end process;

end arch_tb;