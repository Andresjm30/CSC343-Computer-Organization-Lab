LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mejia_addi_Oct28_tb is
end mejia_addi_Oct28_tb;

architecture arch_tb of mejia_addi_Oct28_tb is 
	
	component mejia_addi_Oct28 port(
		clk, ld, clr: in std_logic;
		IMMin:        in std_logic_vector(15 downto 0);
		RSin:         in std_logic_vector(31 downto 0);
		RTout:        out std_logic_vector(31 downto 0));
	end component;
	
	signal clk, ld, clr: std_logic;
	signal RSin, RTout: std_logic_vector(31 downto 0);
	signal IMMin: std_logic_vector(15 downto 0);
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
		
	RESULT: mejia_addi_Oct28 port map(clk, ld, clr, IMMin, RSin, RTout);
	
	process
		begin
			
			clr <= '1'; 	
			ld <= '0';
			wait for 20 ns;
			
			ld <= '1';
			clr <= '0';
			IMMin <= x"FFFF";
			RSin <= x"0000FFFF";
			wait for 20 ns;
			
			ld <= '1';
			clr <= '0';
			RSin <= x"00010100";
			IMMin <= x"5701";
			wait for 20 ns;
			
			ld <= '1';
			RSin <= x"00000550";
			IMMin <= x"0703";
			wait for 20 ns;
			
			ld <= '0';
			RSin <= x"0000AAF1";
			IMMin <= x"FFFF";
			wait for 20 ns;
			
			ld <= '1';
			RSin <= x"0005FCA0";
			IMMin <= x"1111";
			wait for 20 ns;
			
			wait;
	end process;

end arch_tb;