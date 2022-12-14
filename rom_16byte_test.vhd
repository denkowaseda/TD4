library ieee;
use ieee.std_ligic_1164.all;
use ieee.std_ligic_unsigned.all;
 
entity rom_16byte_test is
end rom_16byte_test;
 
architecture behavior of rom_16byte_test is 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    component rom_16byte
    port ( ADDRESS : in  std_logic_vector(3 downto 0);
           ROM_DATA : out  std_logic_vector(3 downto 0);
	   OP_CODE : out  std_logic_vector(3 downto 0)
        );
    end component;
    
   --Inputs
   signal ADDRESS : std_logic_vector(3 downto 0);

 	--Outputs
   signal ROM_DATA : std_logic_vector(3 downto 0);
	signal OP_CODE : std_logic_vector(3 downto 0);
 
begin
 
	-- Instantiate the Unit Under Test (UUT)
   uut: rom_16byte port map (
          ADDRESS => ADDRESS,
          ROM_DATA => ROM_DATA,
			 OP_CODE => OP_CODE
        );

   -- Clock process definitions
   process begin
		Address <= "0000";
		wait for 100 ns;
		Address <= "0001";
		wait for 100 ns;
		Address <= "0010";
		wait for 100 ns;
		Address <= "0011";
		wait for 100 ns;
		Address <= "0100";
		wait for 100 ns;
		Address <= "0101";
		wait for 100 ns;
		Address <= "0110";
		wait for 100 ns;
		Address <= "0111";
		wait for 100 ns;
		Address <= "1000";
		wait for 100 ns;
		Address <= "1001";
		wait for 100 ns;
		Address <= "1010";
		wait for 100 ns;
		Address <= "1011";
		wait for 100 ns;
		Address <= "1100";
		wait for 100 ns;
		Address <= "1101";
		wait for 100 ns;
		Address <= "1110";
		wait for 100 ns;
		Address <= "1111";
		wait for 100 ns;
		
		wait;
		
   end process;

end;
