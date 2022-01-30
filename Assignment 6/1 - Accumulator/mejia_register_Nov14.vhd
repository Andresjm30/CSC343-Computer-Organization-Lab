LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity mejia_register_Nov14 is port(
	d:            IN std_logic_vector(7 downto 0);
	ld, clr, clk, o: IN std_logic;
	f:            out std_logic;
	q:            OUT std_logic_vector(7 downto 0)
);
end mejia_register_Nov14;

architecture arch of mejia_register_Nov14 is
begin 
	process(clk, clr)
	begin
		if clr = '1' then
			q <= "00000000";
			f <= '0';
		elsif rising_edge(clk) then
			if ld = '1' then
				q <= d;
				f <= o;
			end if;
		end if;
	end process;
end arch;