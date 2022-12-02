--データセレクタ
--入力：A,Bレジスタ、スライドスイッチ、0000 (4bit)
--出力：ALU(4bit)

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
 
entity data_selector is
    port ( IN_A : in  std_logic_vector(3 downto 0);
           IN_B : in  std_logic_vector(3 downto 0);
           IN_SW : in std_logic_vector(3 downto 0);
           SEL_A : in std_logic;
           SEL_B : in std_logic;
           OUT_Y : out std_logic_vector(3 downto 0));
end data_selector;

architecture rtl of data_selector is

begin

	process (IN_A, IN_B, IN_SW, SEL_A, SEL_B) begin
		if(SEL_A = '0' and SEL_B = '0') then
			OUT_Y <= IN_A;
		elsif(SEL_A = '1'  and SEL_B = '0') then
			OUT_Y <= IN_B;
		elsif(SEL_A = '0' and SEL_B = '1') then
			OUT_Y <= IN_SW;
		else
			OUT_Y <= "0000";
		end if;	
	end process;

end rtl;

