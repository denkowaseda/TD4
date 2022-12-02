library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity decorder_test is
end decorder_test;
 
architecture behavior of decorder_test is 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    component decorder
    port ( OP_CODE : in  std_logic_vector(3 downto 0);
           C_FLAG : in  std_logic;
           LOAD : out  std_logic_vector(3 downto 0);
           SEL_AB : out  std_logic_vector(1 downto 0));
    end component;
    

   --Inputs
   signal OP_CODE : std_logic_vector(3 downto 0) := (others => '0');
   signal C_FLAG : std_logic := '0';

 	--Outputs
   signal LOAD : std_logic_vector(3 downto 0);
   signal SEL_AB : std_logic_vector(1 downto 0);
 
begin
 
	-- Instantiate the Unit Under Test (UUT)
   uut: decorder port map (
          OP_CODE => OP_CODE,
          C_FLAG => C_FLAG,
          LOAD => LOAD,
          SEL_AB => SEL_AB
        );

   stim_proc: process
   begin		
      OP_CODE <= "1110";
		C_FLAG <= '0';
      wait for 100 ns;
		C_FLAG <= '1';
		wait for 100 ns;
		
		OP_CODE <= "0000";
		wait for 100 ns;
		
		for i in 0 to 15 loop
			OP_CODE <= OP_CODE + 1;
			wait for 100 ns;
		end loop;

      wait;
   end process;

end;
