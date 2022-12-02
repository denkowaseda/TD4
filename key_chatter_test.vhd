library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
 
entity key_chatter_tb is
end key_chatter_tb;
 
architecture behavior of key_chatter_test is
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    component key_chatter
    port(
         CLK : in  std_logic;
         RST : in  std_logic;
         SW_I : in  std_logic;
         SW_O : out  std_logic
        );
    end component;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal RST : std_logic := '0';
   signal SW_I : std_logic := '0';

 	--Outputs
   signal SW_O : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
begin
 
	-- Instantiate the Unit Under Test (UUT)
   uut: key_chatter port map (
          CLK => CLK,
          RST => RST,
          SW_I => SW_I,
          SW_O => SW_O
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
	
	process
	begin
		wait for 2ns;
		SW_I <= '1';
		wait for 15ns;
		SW_I <= '0';
		wait for 10ns;
		SW_I <= '1';
		wait for 30ns;
		SW_I <= '0';
		wait;
	end process;
end;
