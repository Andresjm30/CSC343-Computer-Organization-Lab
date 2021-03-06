Library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity mejia_comparator_Oct28 is
  port (
      A, B   : in std_logic_vector(31 downto 0);
      result : out std_logic_vector(31 downto 0)
   );
end mejia_comparator_Oct28;
 
architecture arch of mejia_comparator_Oct28 is

begin
	
	result <= x"00000001" when (A < B)
						else  x"00000000";

end arch;
