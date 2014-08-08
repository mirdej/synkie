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
		Frames_Max		: in std_logic_vector (7 downto 0);
		V_Sync			: in std_logic;
		
		Carry			: out std_logic;
		Count			: out std_logic_vector (23 downto 0)
	);
end entity;
		

--------------------------------------------------------------------------------------------
--																			ARCHITECTURE
--------------------------------------------------------------------------------------------
architecture Address_Counter_arch of Address_Counter is

signal counter_count				: unsigned (23 downto 0);   -- 12 bits ROW / 10 bits COL / 2 bits BANK - Total 24 Bits
signal counter_frames_max			: unsigned (7 downto 0);   
signal frame_count					: unsigned (7 downto 0);
signal counter_clock 				: std_logic;
signal counter_did_reset				: std_logic;

begin
------------------------------------------------------------------------------byte counter for addressing ram
	counter: process (counter_clock,ResetN) 
	begin
		if (ResetN = '0' ) then
			counter_count			<= (others => '0');
			counter_did_reset 			<= '0';

		elsif (rising_edge(counter_clock)) then
			if (frame_count >= counter_frames_max) then
				counter_count <= (others => '0');
				counter_did_reset <= '1';
			else
				counter_count <= counter_count + 1;
				counter_did_reset <= '0';
			end if;
		end if;
	end process;
	
	Count	<= std_logic_vector(counter_count);
	Carry	<= counter_did_reset;

	counter_frames_max <= unsigned(Frames_Max);
	
	
	framecounter : process (V_Sync ,ResetN,counter_did_reset) 
	begin
		if (ResetN = '0' ) then
			frame_count			<= (others => '0');
		elsif (rising_edge(V_Sync))	then
			frame_count <= frame_count + 1;
		end if;
		if (counter_did_reset = '1') then
			frame_count			<= (others => '0');
		end if;
	end process;
		
	--------------------------------------------------------Generate Clock from ram controller state
	with FSM_State select
			counter_clock <= 	'1' when "0011", -- precharge
						 		'0' when others;

end Address_Counter_Arch;