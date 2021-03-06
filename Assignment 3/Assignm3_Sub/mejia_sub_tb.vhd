LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mejia_sub_tb is
end mejia_sub_tb;

architecture arch_tb of mejia_sub_tb is

	component mejia_sub 
		port( clk, ld, clr: in std_logic;
				RSin, RTin:   in std_logic_vector(31 downto 0);
				DCout:        out std_logic_vector(31 downto 0));
	end component;
	
	signal clk, ld, clr: std_logic;
	signal RSin, RTin: std_logic_vector(31 downto 0);
	signal DSout     : std_logic_vector(31 downto 0);
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
		
	RESULT: mejia_sub port map(clk, ld, clr, RSin, RTin, DSout);
	
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
			RSin <= x"0000FF0F";
			RTin <= x"000085AE";
			wait for 20 ns;
			
			ld <= '1';
			RSin <= x"00ABFF69";
			RTin <= x"00ABFF00";
			wait for 20 ns;
			
			ld <= '0';
			RSin <= x"00111111";
			RTin <= x"00111111";
			wait for 20 ns;
			
			ld <= '1';
			RSin <= x"0005FCA0";
			RTin <= x"0001FFFF";
			wait for 20 ns;
			
			wait;
	end process;

end arch_tb;	