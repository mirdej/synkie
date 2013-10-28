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
		FSM_State		: in std_logic_vector(3 downto 0);

		ResetN 			: in  std_logic;
 		Loop_Through	: in  std_logic;
		
		Data_from_AD 	: out  std_logic_vector (7 downto 0);
		Data_to_DA 		: in  std_logic_vector (7 downto 0);

 		AD_Clk			: out std_logic;
		AD_Input 		: in  std_logic_vector (7 downto 0);
		
		DA_Clk	 		: out std_logic;
		DA_Out		 	: out std_logic_vector (7 downto 0) 
);
end entity;

--------------------------------------------------------------------------------------------
--																			ARCHITECTURE
--------------------------------------------------------------------------------------------
architecture AD_DA_Arch of AD_DA is

signal ad_data, da_data 	: std_logic_vector (7 downto 0);
signal adda_clk				: std_logic;

begin
	--------------------------------------------------------sample/latch AD Converter on falling AD Clock
	process (adda_clk)
	begin
		if (adda_clk'EVENT and adda_clk = '0') then
			ad_data <= AD_Input;
		end if;
	end process;

	--------------------------------------------------------prepare Data for DA_Converter on falling DA Clock
	process (adda_clk)
	begin
		if (adda_clk'EVENT and adda_clk = '1') then
			DA_Out <= da_data;
		end if;
	end process;

	AD_Clk <= adda_clk;
	DA_Clk <= adda_clk;
	
	Data_from_AD <= ad_data;
	
	--------------------------------------------------------Loop through
	with Loop_Through select
			da_data <= 	ad_data when '1',						
						Data_to_DA when '0',
						"11111111" when others;

	--------------------------------------------------------Generate Clock from ram controller state
	with FSM_State select
			adda_clk <= 	'1' when "0110", -- ram_read
						 	'0' when others;
			
end AD_DA_Arch;