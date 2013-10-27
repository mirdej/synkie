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
		ADDA_Clk    		: in  std_logic;
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

signal ad_data, da_data 	: std_logic_vector (7 downto 0);

begin



	--------------------------------------------------------sample/latch AD Converter on falling AD Clock
	process (ADDA_Clk)
	begin
		if (ADDA_Clk'EVENT and ADDA_Clk = '0') then
			ad_data <= AD_Input;
		end if;
	end process;

	--------------------------------------------------------prepare Data for DA_Converter on falling DA Clock
	process (ADDA_Clk)
	begin
		if (ADDA_Clk'EVENT and ADDA_Clk = '1') then
			DA_Out <= da_data;
		end if;
	end process;


	AD_Clk <= ADDA_Clk;
	DA_Clk <= ADDA_Clk;
	
	Data_from_AD <= ad_data;
--	da_data <= Data_to_DA;
	
	with Loopthru select
			da_data <= 	ad_data when '1',						-- loop through
						Data_to_DA when '0',
						"11111111" when others;

end AD_DA_Arch;