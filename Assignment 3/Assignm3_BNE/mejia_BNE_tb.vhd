LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mejia_BNE_tb is
end mejia_BNE_tb;

architecture arch_tb of mejia_BNE_tb is

	component mejia_BNE 
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
	
	RESULT: mejia_BNE port map(clk, ld, clr, IMin, RSin, RTin, PCout);
	
	process
		begin
			
			clr <= '1'; 	
			ld <= '0';
			wait for 20 ns;
			
			ld <= '1';
			clr <= '0';
			RSin <= x"0000FFF2";
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
			RSin <= x"00ABFF11";
			RTin <= x"00ABFF00";
			IMin <= x"0010";
			wait for 20 ns;
			
			ld <= '1';
			RSin <= x"00111111";
			RTin <= x"00111111";
			IMin <= x"0001";
			wait for 20 ns;
			
			ld <= '1';
			RSin <= x"0005FCA0";
			RTin <= x"0001FFFF";
			IMin <= x"0010";
			wait for 20 ns;
			
			wait;
	end process;

end arch_tb;	