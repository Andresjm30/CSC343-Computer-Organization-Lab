library ieee;
use ieee.std_logic_1164.all;
 
entity mejia_mux is
  port (
    data_Select : in  std_logic;
    data_1  : in  std_logic_vector(31 downto 0);
    data_2  : in  std_logic_vector(31 downto 0);
    data_out   : out std_logic_vector(31 downto 0)
    );
end entity mejia_mux;
 
architecture arch of mejia_mux is
begin
  
  data_out <= data_1 when data_Select = '1' else data_2;

end architecture arch;