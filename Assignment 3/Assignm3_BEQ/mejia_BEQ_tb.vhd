LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mejia_BEQ_tb is
end mejia_BEQ_tb;

architecture arch_tb of mejia_BEQ_tb is

	component mejia_BEQ 
		port( clk, ld, clr: in std_logic;
				IMin: 		  in std_logic_vector(15 downto 0);
				RSin, RTin:   in std_logic_vector(31 downto 0);
				PCout:        out std_logic_vector(31 downto 0)
		);
	end component;
	
	signal clk, ld, clr: std_logic;
	signal IMin     : std_logic_vector(15 downto 0);
	signal RSin, RTin: std_logic_vector(31 downto 0);
	signal PCout     : std_logic_vector(31 downto 0);
	signal o: integer := 0;
	
begin

	process 
		begin 
			clk <= '0';
			wait for 10 ns;
			clk <= '1';
			wait for 10 ns;
			
			if (o = 10) then
				wait;
			else
				o <= o + 1;
			end if;
	end process;
	
	RESULT: mejia_BEQ port map(clk, ld, clr, IMin, RSin, RTin, PCout);
	
	process
		begin
			
			clr <= '1'; 	
			ld <= '0';
			wait for 20 ns;
			
			ld <= '1';
			clr <= '0';
			RSin <= x"0000FFFF";
			RTin <= x"0000FFF2";
			IMin <= x"0011";
			wait for 20 ns;
			
			ld <= '0';
			clr <= '0';
			RSin <= x"0000FF0F";
			RTin <= x"000085AE";
			IMin <= x"0011";
			wait for 20 ns;
			
			ld <= '1';
			RSin <= x"00ABFF00";
			RTin <= x"00ABFF00";
			IMin <= x"0010";
			wait for 20 ns;
			
			ld <= '1';
			RSin <= x"00111111";
			RTin <= x"00111111";
			IMin <= x"0001";
			wait for 20 ns;
			
			ld <= '0';
			RSin <= x"0005FCA0";
			RTin <= x"0001FFFF";
			IMin <= x"0010";
			wait for 20 ns;
			
			ld <= '1';
			wait for 20 ns;
			
			ld <= '0';
			wait for 20 ns;
			
			ld <= '1';
			wait for 20 ns;
			
			wait;
	end process;

end arch_tb;			
			