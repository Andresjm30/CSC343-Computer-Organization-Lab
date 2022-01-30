library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mejia_control_Dec5 is
	port(opcode : in std_logic_vector(5 downto 0);
		  RegWr, ExtOP, ALUsrc, MemWr : out std_logic;
		  MemToReg, PCsrc, RegWr2 : out std_logic;
		  ALUctr : out std_logic_vector(3 downto 0));
end mejia_control_Dec5;

architecture arch of mejia_control_Dec5 is

begin 

	process(opcode) is
	begin 
	
		case opcode is
			when "000001" =>  -- Add
				RegWr <= '0';
				ExtOP <= '0';
				ALUsrc <= '0';
				MemWr <= '0';
				MemToReg <= '0';
				PCsrc <= '1';
				RegWr2 <= '1';
				ALUctr <= "0001";
			when "000010" =>  -- Sub
				RegWr <= '0';
				ExtOP <= '0';
				ALUsrc <= '0';
				MemWr <= '0';
				MemToReg <= '0';
				PCsrc <= '1';
				RegWr2 <= '1';
				ALUctr <= "0010";
			when "000011" =>  --or
				RegWr <= '0';
				ExtOP <= '0';
				ALUsrc <= '0';
				MemWr <= '0';
				MemToReg <= '0';
				PCsrc <= '1';
				RegWr2 <= '1';
				ALUctr <= "0011";
			when "000100" => -- ori
				RegWr <= '1';
				ExtOP <= '1';
				ALUsrc <= '1';
				MemWr <= '0';
				MemToReg <= '0';
				PCsrc <= '1';
				RegWr2 <= '0';
				ALUctr <= "0011";
			when "000101" => -- and
				RegWr <= '0';
				ExtOP <= '0';
				ALUsrc <= '0';
				MemWr <= '0';
				MemToReg <= '0';
				PCsrc <= '1';
				RegWr2 <= '1';
				ALUctr <= "0100";
			when "000110" => -- andi
				RegWr <= '1';
				ExtOP <= '1';
				ALUsrc <= '1';
				MemWr <= '0';
				MemToReg <= '0';
				PCsrc <= '1';
				RegWr2 <= '0';
				ALUctr <= "0100";
			when "000111" => -- load word
				RegWr <= '1';
				ExtOP <= '1';
				ALUsrc <= '1';
				MemWr <= '0';
				MemToReg <= '1';
				PCsrc <= '1';
				RegWr2 <= '0';
				ALUctr <= "0001";
			when "001000" => -- store word
				RegWr <= '0';
				ExtOP <= '1';
				ALUsrc <= '1';
				MemWr <= '1';
				MemToReg <= '1';
				PCsrc <= '1';
				RegWr2 <= '0';
				ALUctr <= "0001";
			when "001001" => -- branch equal
				RegWr <= '0';
				ExtOP <= '1';
				ALUsrc <= '0';
				MemWr <= '0';
				MemToReg <= '0';
				PCsrc <= '1';
				RegWr2 <= '0';
				ALUctr <= "0101";
			when "001010" => -- multiplication
				RegWr <= '0';
				ExtOP <= '0';
				ALUsrc <= '0';
				MemWr <= '0';
				MemToReg <= '0';
				PCsrc <= '1';
				RegWr2 <= '1';
				ALUctr <= "0110";
			when "001011" => -- division
				RegWr <= '0';
				ExtOP <= '0';
				ALUsrc <= '0';
				MemWr <= '0';
				MemToReg <= '0';
				PCsrc <= '1';
				RegWr2 <= '1';
				ALUctr <= "0111";
			when others => 
				RegWr <= '0';
				ExtOP <= '0';
				ALUsrc <= '0';
				MemWr <= '0';
				MemToReg <= '0';
				PCsrc <= '0';
				RegWr2 <= '0';
				ALUctr <= "0000";
		end case;
	end process;
	
end arch;