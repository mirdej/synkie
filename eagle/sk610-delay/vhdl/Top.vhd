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
		Led1			: out std_logic;
		Led2			: out std_logic;
		Led3			: out std_logic;
		AD_Clk			: out std_logic;
		AD_Data 		: in  std_logic_vector (7 downto 0);
		DA_Clk 			: out std_logic;
		DA_Data 		: out std_logic_vector (7 downto 0);
		Rec_Switch			: in std_logic;
		Rec_Button			: in std_logic;
		V_Sync			: in std_logic;
		Ram_Address 	: out std_logic_vector(13 downto 0);  -- 12 bits Address / 2 bits BANK
		Ram_RAS			: out std_logic;
		Ram_CAS 		: out std_logic;
		Ram_WE			: out std_logic;
		Ram_Data		: inout std_logic_vector(7 downto 0);
		Ram_Clk			: out std_logic;
		Ram_DQM			: out std_logic;
		MISO			: out std_logic;
		MOSI			: in std_logic;
		SCK				: in std_logic;
		CSn				: in std_logic
	);
end entity;

--------------------------------------------------------------------------------------------
--																			ARCHITECTURE
--------------------------------------------------------------------------------------------
architecture Top_Arch of Top is
-------------------------------------------------------------------------------  Serial Interface

component RX_TX is
	port(
		Clk    			: in  std_logic;
		ResetN 			: in  std_logic;
		
		MISO			: out std_logic;
		MOSI			: in std_logic;
		SCK				: in std_logic;
		CSn				: in std_logic;
		Strobe			: out std_logic;
--		Send_Data		: in std_logic_vector(23 downto 0);
		Receive_Data	: out std_logic_vector(23 downto 0)
	);
end component;
 
-------------------------------------------------------------------------------  Byte Counter
component Address_Counter is
	port(
		ResetN 			: in std_logic;		
		FSM_State		: in std_logic_vector(3 downto 0);
		Counter_Max		: in std_logic_vector (23 downto 0);
		Load_Enable		: in std_logic;
		
		Carry			: out std_logic;
		Count			: out std_logic_vector (23 downto 0)
	);
end component;
-------------------------------------------------------------------------------  Analog Converters
component AD_DA is
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
end component;
-------------------------------------------------------------------------------  SDRAM
component Ram_Control is
	port (
		Clk    			: in  std_logic;
		ResetN 			: in  std_logic;

		Write_Enable	: in std_logic;
		Write_Data		: in std_logic_vector (7 downto 0);
		Read_Data		: out std_logic_vector (7 downto 0);
		Address			: in std_logic_vector (23 downto 0);
		
		FSM_State		: out std_logic_vector(3 downto 0);

		Ram_Address 	: out std_logic_vector(13 downto 0);  -- 12 bits Address / 2 bits BANK
		Ram_RAS			: out std_logic;
		Ram_CAS 		: out std_logic;
		Ram_WE			: out std_logic;
		Ram_Data		: inout std_logic_vector(7 downto 0);
		Ram_Clk			: out std_logic;
		Ram_DQM			: out std_logic
	);
end component;

--------------------------------------------------------------------------------------------
--																			Implementation
--------------------------------------------------------------------------------------------
signal fsm_state 			: std_logic_vector (3 downto 0);
signal addr			 		: std_logic_vector (23 downto 0);
signal addr_max			 	: std_logic_vector (23 downto 0);
signal we					: std_logic;
signal load_max				: std_logic;
signal bypass				: std_logic;
signal ad_buf, da_buf		: std_logic_vector (7 downto 0);

begin

-------------------------------------------------------------------------------  Byte Counter
 Address_Counter_Inst : Address_Counter
	port map(
		ResetN 				=> ResetN,
		FSM_State			=> fsm_state,
		Counter_Max			=> addr_max,
		Load_Enable			=> load_max,
		
		Carry				=> Led2,
		Count				=> addr
	);

-------------------------------------------------------------------------------  Analog Converters
 AD_DA_Inst : AD_DA
port map (
		FSM_State			=> fsm_state,

		ResetN 				=> ResetN,
 		Loop_Through		=> bypass,
		
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
		FSM_State			=> fsm_state,
		Address				=> addr,

		Write_Enable		=> we,
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


 RX_TX_Inst :  RX_TX
	port map(
		Clk    				=> Clk,
		ResetN 				=> ResetN,
		
		MISO			=> MISO,
		MOSI			=> MOSI,
		SCK				=> SCK,
		CSn				=> CSn,
		Strobe			=> load_max,
--		Send_Data		=> addr_max,
		Receive_Data	=> addr_max
	);

	process (V_Sync, ResetN)
	begin
		if (ResetN = '0' ) then
			bypass <=  '0';
			we <= '1';
		elsif (rising_Edge(V_Sync)) then
			bypass <= not Rec_Button;
			we <= not (Rec_Button and Rec_Switch);
		end if;
	end process;
	
	LED3 <= Rec_Button;
	LED1 <= Rec_Switch;
	
end Top_Arch;
