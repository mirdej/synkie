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

begin
	process (FSM_State)
	begin
		case FSM_State is
			when  "0110" =>
				ad_data <= AD_Input;
				DA_Out <= da_data;
			when "0111" =>
				DA_Clk <= '1';
				AD_Clk <= '1';
			when "0101" =>
				DA_Clk <= '0';
				AD_Clk <= '0';
			when others => null;
		end case;
	end process;


	
	Data_from_AD <= ad_data;
	
	--------------------------------------------------------Loop through
	with Loop_Through select
			da_data <= 	ad_data when '1',						
						Data_to_DA when '0',
						"11111111" when others;

			
end AD_DA_Arch;