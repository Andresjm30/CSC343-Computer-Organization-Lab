LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY mejia_2to1_mux is
	PORT (x1, x2, s : IN  STD_LOGIC;
			f         : OUT STD_LOGIC) ;
END mejia_2to1_mux;

ARCHITECTURE behaviour OF mejia_2to1_mux IS
BEGIN
	PROCESS (x1, x2, s) 
	BEGIN
		IF s = '0' THEN
			f <= x1;
		ELSE
			f <= x2;
		END IF;
	END PROCESS;
END behaviour;