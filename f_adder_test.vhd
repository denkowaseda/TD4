library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
 
entity f_adder_test is
end f_adder_test;
 
architecture behavior of f_adder_tb is
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    component f_adder
    port(
         IN_Y : IN STD_LOGIC_VECTOR(1 downto 0);
         IN_DATA : IN STD_LOGIC_VECTOR(1 downto 0);
         CIN : IN STD_LOGIC_VECTOR(1 downto 0);
         CRR : OUT STD_LOGIC_VECTOR(1 downto 0);
         DATA : OUT STD_LOGIC
        );
    end component;

   --Inputs
   signal IN_Y : std_logic_vector(1 downto 0);
   signal IN_DATA : std_logic_vector(1 downto 0);
   signal CIN : std_logic_vector(1 downto 0);

 	--Outputs
   signal CRR : std_logic_vector(1 downto 0);
   signal DATA : std_logic;
 
begin
 
	-- Instantiate the Unit Under Test (UUT)
   uut: f_adder port map (
          IN_Y => IN_Y,
          IN_DATA => IN_DATA,
          CIN => CIN,
          CRR => CRR,
          DATA => DATA
        );

   process
   begin		
		IN_Y <= "00";
		IN_DATA <= "00";
		CIN <= "00";
    		wait for 100 ns;	
		IN_Y <= "01";
		wait for 100 ns;	
		IN_DATA <= "01";
		wait for 100 ns;	
		CIN <= "01";
		wait for 100 ns;	
		IN_DATA <= "00";
		wait for 100 ns;	
		IN_Y <= "00";
      wait;
   end process;

end;
