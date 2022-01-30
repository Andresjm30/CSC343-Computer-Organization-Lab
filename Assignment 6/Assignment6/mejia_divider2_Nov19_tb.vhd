LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mejia_divider2_Nov19_tb is
end mejia_divider2_Nov19_tb;

architecture arch_tb of mejia_divider2_Nov19_tb is 
	
	component mejia_divider2_Nov19
		port ( clk, ld, clr: in std_logic;
				 Ain, Bin:     in std_logic_vector(31 downto 0);
				 Qout, Rout:   out std_logic_vector(31 downto 0));
	end component;
	
	signal clk, ld, clr: std_logic;
	signal Ain, Bin : std_logic_vector(31 downto 0);
	signal Qout, Rout: std_logic_vector(31 downto 0);
	signal i: integer := 0;
	
	begin

		process 
			begin 
				clk <= '0';
				wait for 10 ns;
				clk <= '1';
				wait for 10 ns;
			
				if (i = 5) then
					wait;
				else
					i <= i + 1;
				end if;
		end process;
		
	RESULT: mejia_divider2_Nov19 port map(clk, ld, clr, Ain, Bin, Qout, Rout);
	
	process
		begin
			
			clr <= '0';
			ld <= '1';
			Ain <= x"0000000F";
			Bin <= x"00000005";
			wait for 20 ns;
			
			Ain <= x"00000027";
			Bin <= x"00000008";
			wait for 20 ns;
			
			Ain <= x"00000064";
			Bin <= x"0000000A";
			wait for 20 ns;
			
			wait;
	end process;

end arch_tb;