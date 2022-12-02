library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
 
entity data_selector_test is
end data_selector_test;
 
architecture behavior of data_selector_test is 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    component data_selector
    port ( IN_A : in  std_logic_vector(3 downto 0);
           IN_B : in  std_logic_vector(3 downto 0);
           IN_SW : in  std_logic_vector(3 downto 0);
           SEL_A : in  std_logic;
           SEL_B : in  std_logic_vector;
           OUT_Y : out  std_logic_vector(3 downto 0));
	end component;
    
   --Inputs
   signal IN_A : std_logic_vector(3 downto 0) := "1111";
   signal IN_B : std_logic_vector(3 downto 0) := "0011";
   signal IN_SW : std_logic_vector(3 downto 0) := "1100";
   signal SEL_A : std_logic := '0';
   signal SEL_B : std_logic := '0';

--Outputs
   signal OUT_Y : std_logic_vector(3 downto 0);
 
begin
 
-- Instantiate the Unit Under Test (UUT)
   uut: data_selector port map (
          IN_A => IN_A,
          IN_B => IN_B,
          IN_SW => IN_SW,
          SEL_A => SEL_A,
          SEL_B => SEL_B,
          OUT_Y => OUT_Y
        ); 

   -- Stimulus process
   stim_proc: process
   begin		
      wait for 100 ns;
		SEL_A <= '1';
		wait for 100 ns;
		SEL_A <= '0';
		SEL_B <= '1';
		wait for 100 ns;
		SEL_A <= '1';
      wait;
   end process;

end;
