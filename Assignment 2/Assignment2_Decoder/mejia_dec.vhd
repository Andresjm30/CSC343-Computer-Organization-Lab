library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mejia_dec is
    Port ( I : in  STD_LOGIC_VECTOR (1 downto 0);
           Y : out STD_LOGIC_VECTOR (3 downto 0));
end mejia_dec;

architecture arch_mejia_dec of mejia_dec is
begin
	process (I)
	begin
		case I is
			when "00" => Y <= "0001" ;
			when "01" => Y <= "0010" ;
			when "10" => Y <= "0100" ;
			when others => Y <= "1000" ;
		end case;

	end process;

end arch_mejia_dec;
