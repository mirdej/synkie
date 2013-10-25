---------------------------------------------------------------------------------------------
--	VIDEO DELAY - TOP FILE
--
-- Part of the Synkie Project: www.synkie.net
--
-- © 2013 Michael Egger, Licensed under GNU GPLv3
--
--------------------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity Top is
	port 
	(
		Clk				: in std_logic;
		ResetN			: in std_logic;
		V_Sync			: in std_logic;
		Rec				: in std_logic;
		Overdub			: in std_logic;
		Freeze			: in std_logic;
		Looper			: in std_logic;
		Encoder_A		: in std_logic;
		Encoder_B		: in std_logic;
		Encoder_C		: in std_logic;
		Led1			: out std_logic;
		Led2			: out std_logic;
		Led3			: out std_logic;
		AD_Clk			: out std_logic;
		AD_Data 		: in  std_logic_vector (7 downto 0);
		DA_Clk 			: out std_logic;
		DA_Data 		: out std_logic_vector (7 downto 0);
		Switch1			: in std_logic;
		Ram_Address 	: out std_logic_vector(13 downto 0);  -- 12 bits Address / 2 bits BANK
		Ram_RAS			: out std_logic;
		Ram_CAS 		: out std_logic;
		Ram_WE			: out std_logic;
		Ram_Data		: inout std_logic_vector(7 downto 0);
		Ram_Clk			: out std_logic;
		Ram_DQM			: out std_logic
	);
end entity;

--------------------------------------------------------------------------------------------
--																			ARCHITECTURE
--------------------------------------------------------------------------------------------
architecture Top_Arch of Top is

-------------------------------------------------------------------------------  Analog Converters
component AD_DA is
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
end component;
-------------------------------------------------------------------------------  SDRAM
component Ram_Control is
	port(
		Clk    		: in  std_logic;
		ResetN 		: in  std_logic;
		Overflow		: out std_logic;
		V_Sync			: in std_logic;
		Rec				: in std_logic;
		Overdub			: in std_logic;
		Freeze			: in std_logic;
		Looper			: in std_logic;
		Write_Data		: in std_logic_vector (7 downto 0);
		Read_Data		: out std_logic_vector (7 downto 0);		
		Ram_Address : out std_logic_vector(13 downto 0);  -- 12 bits Address / 2 bits BANK
		Ram_RAS		: out std_logic;
		Ram_CAS 	: out std_logic;
		Ram_WE		: out std_logic;
		Ram_Data	: inout std_logic_vector(7 downto 0);
		Ram_Clk		: out std_logic;
		Ram_DQM		: out std_logic
	);
end component;

--------------------------------------------------------------------------------------------
--																			Implementation
--------------------------------------------------------------------------------------------

signal ad_buf,da_buf				: std_logic_vector(7 downto 0);
signal counter_int: std_logic_vector(7 downto 0);
signal enc_step,enc_dir 			: std_logic;

begin
-------------------------------------------------------------------------------  AD-DA
	AD_DA_Inst : AD_DA
	port map
	(
		Clk					=> Clk,			--156.25 MHz
		ResetN				=> ResetN,
		Loopthru			=> Switch1,
		Data_from_AD		=> ad_buf,
		Data_to_DA			=> da_buf, 
		AD_Clk				=> AD_Clk,
		AD_Input			=> AD_Data,
		DA_Clk 				=> DA_Clk,
		DA_Out				=> DA_Data
	);
-------------------------------------------------------------------------------  SDRAM
	Ram_Control_Inst : Ram_Control
	port map(
		Clk    				=> Clk,
		ResetN 				=> ResetN,
		Overflow			=> LED2,
		V_Sync			 => 		V_Sync			,
		Rec				 => 		Encoder_C				,
		Overdub			 => 		Overdub			,
		Freeze			 => 		Freeze			,
		Looper			 => 		Looper			,
		Write_Data			=> ad_buf,
		Read_Data			=> da_buf,
		Ram_Address 		=> Ram_Address,
		Ram_RAS				=> Ram_RAS,
		Ram_CAS				=> Ram_CAS,
		Ram_WE				=> Ram_WE,
		Ram_Data			=> Ram_Data,
		Ram_Clk				=> Ram_Clk,
		Ram_DQM				=> Ram_DQM
	);
-------------------------------------------------------------------------------  LEDs
	
	LED3 <= Encoder_C;
	
end Top_Arch;
