library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity mejia_FS_Nov19 is
	port( S : in STD_LOGIC; --Subtrahend
			M  : in STD_LOGIC; --Minuend
			Bi : in STD_LOGIC; --Borrow In
			D : out STD_LOGIC; --Difference
			Bo : out STD_LOGIC ); --Borrow Out
end mejia_FS_Nov19;

architecture arch of mejia_FS_Nov19 is

begin

	D <= M xor S xor Bi;
	Bo <= ((not M) and Bi ) or ((not M) and S) or (S and Bi);

end arch;