library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mejia_alu_Dec5 is
	port( funct : in std_logic_vector(3 downto 0);
			Ain, Bin : in std_logic_vector(31 downto 0);
			result : out std_logic_vector(31 downto 0):= x"00000000";
			result2 : out std_logic:= '0');
end mejia_alu_Dec5;

architecture arch of mejia_alu_Dec5 is

	component mejia_megaddsub_Dec5 IS
		PORT(add_sub		: IN STD_LOGIC ;
			 dataa		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			 datab		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		    overflow		: OUT STD_LOGIC ;
		    result		: OUT STD_LOGIC_VECTOR (31 DOWNTO 0));
	END component;
	
	component mejia_or_op_Dec5 
		port(a, b: IN std_logic_vector(31 downto 0);
			  q:    OUT std_logic_vector(31 downto 0));
	end component;
	
	component mejia_and_op_Dec5
		port(a, b: IN std_logic_vector(31 downto 0);
			  q:    OUT std_logic_vector(31 downto 0));
	end component;
	
	component mejia_compare_Dec5 IS
		PORT( dataa		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
				datab		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
				aeb		: OUT STD_LOGIC );
	END component;
	
	component mejia_arr_mult2_Dec5
		port ( Ain, Bin:     in std_logic_vector(31 downto 0);
				 RTout:        out std_logic_vector(63 downto 0));
	end component;
	
	COMPONENT mejia_div_Dec5
		PORT(denom		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			  numer		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			  quotient	: OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
			  remain		: OUT STD_LOGIC_VECTOR (31 DOWNTO 0));
	END COMPONENT;
	
	signal r1, r2, r3 : std_logic_vector(31 downto 0);
	signal A32, B32 : std_logic_vector(31 downto 0);
	signal z0, z1, z2, z3, z4, z8, z9 : std_logic_vector(31 downto 0):= x"00000000";
	signal z7 : std_logic_vector(63 downto 0):= x"0000000000000000";
	signal z5, z6, x : std_logic:= '0';
	
	begin 
	
	ADD_OP : mejia_megaddsub_Dec5
		port map(add_sub => '1',
					dataa => A32,
					datab => B32,
					overflow => x,
					result => z1);
					
	SUB_OP : mejia_megaddsub_Dec5
		port map(add_sub => '0',
					dataa => A32,
					datab => B32,
					overflow => x,
					result => z2);
					
	OR_OP : mejia_or_op_Dec5
		port map(a => A32, b => B32,
					q => z3);
					
	AND_OP : mejia_and_op_Dec5
		port map(a => A32, b => B32,
					q => z4);
					
	COMP_OP : mejia_compare_Dec5
		port map(dataa => A32, datab => B32,
					aeb => z5);
					
	MULT_OP : mejia_arr_mult2_Dec5
		port map(Ain => A32, Bin => B32,
					RTout => z7);
					
	DIV_OP : mejia_div_Dec5
		port map(denom => A32, numer => B32,
					quotient => z8, remain => z9);
					
	A32 <= Ain; B32 <= Bin;
	
	process(funct, z1, z2, z3, z4, z5, z6, z7) is
	begin
		
		case funct is 
			when "0001" => 
				result <= z1;
				result2 <= z6;
			when "0010" => 
				result <= z2;
				result2 <= z6;
			when "0011" => 
				result <= z3;
				result2 <= z6;
			when "0100" => 
				result <= z4;
				result2 <= z6;
			when "0101" =>
				result <= z0;
				result2 <= z5;
			when "0110" =>
				result <= z7(31 downto 0);
				result2 <= z6;
			when "0111" =>
				result <= z8;
				result2 <= z6;
			when others => 
				result <= z0;
				result2 <= z6;
		end case;
	end process;

end arch;