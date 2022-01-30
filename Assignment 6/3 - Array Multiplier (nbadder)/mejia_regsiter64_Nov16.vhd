LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity mejia_register64_Nov16 is port(
	d:            IN std_logic_vector(63 downto 0);
	ld, clr, clk: IN std_logic;
	q:            OUT std_logic_vector(63 downto 0)
);
end mejia_register64_Nov16;

architecture arch of mejia_register64_Nov16 is
begin 
	process(clk, clr)
	begin
		if clr = '1' then
			q <= x"0000000000000000";
		elsif rising_edge(clk) then
			if ld = '1' then
				q <= d;
			end if;
		end if;
	end process;
end arch;