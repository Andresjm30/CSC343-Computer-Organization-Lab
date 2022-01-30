library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mejia_enc is
    Port ( I : in  STD_LOGIC_VECTOR (3 downto 0);
           Y : out STD_LOGIC_VECTOR (1 downto 0));
end mejia_enc;

architecture arch_enc of mejia_enc is
begin
	process (I)
	begin
		if I = "0001" then Y <= "00";
		elsif I = "0010" then Y <= "01";
		elsif I = "0100" then Y <= "10";
		else Y <= "11";
		end if;
	end process;

end arch_enc;
