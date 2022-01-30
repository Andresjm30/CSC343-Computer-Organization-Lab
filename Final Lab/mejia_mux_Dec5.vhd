library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mejia_mux_Dec5 is
    Port ( SEL : in  STD_LOGIC;
           A   : in  STD_LOGIC_VECTOR (31 downto 0);
           B   : in  STD_LOGIC_VECTOR (31 downto 0);
           X   : out STD_LOGIC_VECTOR (31 downto 0));
end mejia_mux_Dec5;

architecture Behavioral of mejia_mux_Dec5 is

begin

    X <= A when (SEL = '0') else B;
	 
end Behavioral;