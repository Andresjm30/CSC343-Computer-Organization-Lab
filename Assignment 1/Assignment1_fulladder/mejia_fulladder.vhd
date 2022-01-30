LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
 
ENTITY mejia_fulladder IS
	PORT ( A, B, Cin : IN  STD_LOGIC;
		    S, Cout   : OUT STD_LOGIC);
END mejia_fulladder;
 
ARCHITECTURE full_adder_arch OF mejia_fulladder IS
BEGIN
 
	S <= A XOR B XOR Cin ;
	Cout <= (A AND B) OR (Cin AND A) OR (Cin AND B) ;
 
END full_adder_arch;
