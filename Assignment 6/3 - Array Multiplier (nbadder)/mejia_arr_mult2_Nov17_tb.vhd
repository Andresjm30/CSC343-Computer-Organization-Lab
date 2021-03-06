LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mejia_arr_mult2_Nov17_tb is
end mejia_arr_mult2_Nov17_tb;

architecture arch_tb of mejia_arr_mult2_Nov17_tb is 
	
	component mejia_arr_mult2_Nov17 is
		port ( clk, ld, clr: in std_logic;
		    	 Ain, Bin:     in std_logic_vector(31 downto 0);
				 RTout:        out std_logic_vector(63 downto 0));
	end component;
	
	signal clk, ld, clr: std_logic;
	signal Ain, Bin : std_logic_vector(31 downto 0);
	signal RTout: std_logic_vector(63 downto 0);
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
		
	RESULT: mejia_arr_mult2_Nov17 port map(clk, ld, clr, Ain, Bin, RTout);
	
	process
		begin
			
			clr <= '1'; 	
			ld <= '0';
			wait for 20 ns;
			
			clr <= '0';
			ld <= '1';
			Ain <= x"0000000F";
			Bin <= x"00000002";
			wait for 20 ns;
			
			Ain <= x"00000064";
			Bin <= x"00000032";
			wait for 20 ns;
			
			Ain <= x"00002710";
			Bin <= x"00002710";
			wait for 20 ns;
			
			wait;
	end process;

end arch_tb;