---------------------------------------------------------------------------------------------
--	VIDEO DELAY - AD, DA Converter
--
-- Part of the Synkie Project: www.synkie.net
--
-- © 2013 Michael Egger, Licensed under GNU GPLv3
--
--------------------------------------------------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity AD_DA is
port (
		Clk    		: in  std_logic;
		ResetN 		: in  std_logic;
 		Loopthru	: in  std_logic;
		
		Data_from_AD 	: out  std_logic_vector (7 downto 0);
		Data_to_DA 		: in  std_logic_vector (7 downto 0);

 		AD_Clk		: out std_logic;
		AD_Input 	: in  std_logic_vector (7 downto 0);
		
		DA_Clk 		: out std_logic;
		DA_Out	 	: out std_logic_vector (7 downto 0) 
);
end entity;

--------------------------------------------------------------------------------------------
--																			ARCHITECTURE
--------------------------------------------------------------------------------------------
architecture AD_DA_Arch of AD_DA is

signal clk_int 				: std_logic;
signal ad_data, da_data 	: std_logic_vector (7 downto 0);

begin

--------------------------------------------------------generate slow ad and da clock
--																156.250 Mhz / 14 =  ca. 11.16 Mhz
	process (Clk,ResetN) 
		variable clk_div : integer range 0 to 6 := 0;
	begin
		if (ResetN = '0') then
			clk_int <= '0';
		elsif (clk'EVENT and clk = '1') then
			if (clk_div = 6) then 
				clk_div := 0;
				clk_int <= not clk_int;
			else
				clk_div := clk_div + 1;
			end if;
		end if;
	end process;

	--------------------------------------------------------sample/latch AD Converter on falling AD Clock
	process (clk_int)
	begin
		if (clk_int'EVENT and clk_int = '0') then
			ad_data <= AD_Input;
		end if;
	end process;

	--------------------------------------------------------prepare Data for DA_Converter on falling DA Clock
	process (clk_int)
	begin
		if (clk_int'EVENT and clk_int = '1') then
			DA_Out <= da_data;
		end if;
	end process;


	AD_Clk <= clk_int;
	DA_Clk <= not clk_int;
	
	Data_from_AD <= ad_data;
--	da_data <= Data_to_DA;
	
	with Loopthru select
			da_data <= 	ad_data when '1',						-- loop through
						Data_to_DA when '0',
						"11111111" when others;

end AD_DA_Arch;