-------------------------------------------------------------------------------------------------------------------
--	VIDEO DELAY - ADDRESS Counter
--
-- Part of the Synkie Project: www.synkie.net
--
-- © 2013 Michael Egger, Licensed under GNU GPLv3
--
------------------------------------------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Address_Counter is
	port(
		ResetN 			: in std_logic;		
		FSM_State		: in std_logic_vector(3 downto 0);
		Counter_Max		: in std_logic_vector (23 downto 0);
		Load_Enable		: in std_logic;
		
		Carry			: out std_logic;
		Count			: out std_logic_vector (23 downto 0)
	);
end entity;
		

--------------------------------------------------------------------------------------------
--																			ARCHITECTURE
--------------------------------------------------------------------------------------------
architecture Address_Counter_arch of Address_Counter is

signal counter_count				: unsigned (23 downto 0);   -- 12 bits ROW / 10 bits COL / 2 bits BANK - Total 24 Bits
signal counter_count_max			: unsigned (23 downto 0);   -- 12 bits ROW / 10 bits COL / 2 bits BANK - Total 24 Bits		
signal counter_clock 				: std_logic;
signal counter_carry				: std_logic;

begin
------------------------------------------------------------------------------byte counter for addressing ram
	counter: process (counter_clock,ResetN) 
	begin
		if (ResetN = '0' ) then
			counter_count			<= (others => '0');
			counter_carry 			<= '0';

		elsif (rising_edge(counter_clock)) then
			if (counter_count >= counter_count_max) then
				counter_count <= (others => '0');
				counter_carry <= not counter_carry;
			else
				counter_count <= counter_count + 1;
			end if;
		end if;
	end process;
	
	Count	<= std_logic_vector(counter_count);
	Carry	<= counter_carry;
------------------------------------------------------------------------------Asynchronous Set
--	counter_set: process (ResetN) 
--	begin
--		if (ResetN = '0' ) then
--				counter_count_max		<= x"92B808";			-- ca 1s with 125Mhz Clock
--		elsif (rising_edge(Load_Enable)) then
--		else
				counter_count_max		<= unsigned(Counter_Max);
--		end if;
--	end process;
	
		
	--------------------------------------------------------Generate Clock from ram controller state
	with FSM_State select
			counter_clock <= 	'1' when "0011", -- precharge
						 		'0' when others;

end Address_Counter_Arch;