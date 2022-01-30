LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity mejia_add32 is
    port (
        A, B : in  std_logic_vector(31 downto 0);
        Cin  : in  std_logic;
        F    : out std_logic_vector(31 downto 0);
        Cout : out std_logic
    );
end entity mejia_add32;

architecture arch of mejia_add32 is

    signal result : std_logic_vector(32 downto 0);
	 
begin
    
	 result <= ('0' & A) + ('0' & B) + Cin;
    F      <= result(31 downto 0);
  	 Cout   <= result(32);
	 
end architecture arch;