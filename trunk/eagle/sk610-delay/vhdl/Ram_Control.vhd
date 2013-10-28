-------------------------------------------------------------------------------------------------------------------
--	VIDEO DELAY - SDRAM Controller
--
-- Part of the Synkie Project: www.synkie.net
--
-- © 2013 Michael Egger, Licensed under GNU GPLv3
--
------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------
--OUTPUTS
--Bit 											13	12	11	10	9	8	7	6	5	4	3	2	1	0
--Pin											A11	A10	A9	A8	A7	A6	A5	A4	A3	A2	A1	A0	BA1	BA0
																								
--ROW											A11	A10	A9	A8	A7	A6	A5	A4	A3	A2	A1	A0	BA1	BA0
--COL											X	0	C9	C8	C7	C6	C5	C4	C3	C2	C1	C0	BA1	BA0

------------------------------------------------------------------------------------------------------------------
--address_buf																								
--Bit		23	22	21	20	19	18	17	16	15	14	13	12	11	10	9	8	7	6	5	4	3	2	1	0
--			A11	A10	A9	A8	A7	A6	A5	A4	A3	A2	A1	A0	C9	C8	C7	C6	C5	C4	C3	C2	C1	C0	BA1	BA0
------------------------------------------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Ram_Control is
	port(
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
end entity;

--------------------------------------------------------------------------------------------
--																			ARCHITECTURE
--------------------------------------------------------------------------------------------
architecture Ram_Control_arch of Ram_Control is
	
	constant CLOCK_PERIOD : positive := 8; -- in ns
	-- timing constants in ns:
	constant tRC  : positive := 75;
	constant tRCD : positive := 20;
	constant tRP  : positive := 20;
	constant tMRD : positive := 15;
	constant tREF : positive := 15000; -- for 1 row (for 4096 you need to divide number by 4096)        
	constant tRFC : positive := 65; 
	constant tWR  : positive := CLOCK_PERIOD + 7; 
	
	-- timing constants in cycles
	-- actual cycles will be one cycle longer (every) because of state transition time (1 cycle time)
	constant tRC_CYCLES  : natural := (tRC + CLOCK_PERIOD-1)  / CLOCK_PERIOD - 2;	 -- tRC_time = tRC_CYCLES + 1
	constant tRCD_CYCLES : natural := (tRCD + CLOCK_PERIOD-1) / CLOCK_PERIOD - 2;	 --	tRCD_time = tRCD_CYCLES + 1
	constant tRP_CYCLES  : natural := (tRP + CLOCK_PERIOD-1)  / CLOCK_PERIOD - 2;	 -- tRP_time = tRP_CYCLES + 1
	constant tMRD_CYCLES : natural := (tMRD + CLOCK_PERIOD-1) / CLOCK_PERIOD - 2; 	 -- tMRD_time = 15 ns
	constant tREF_CYCLES : natural := (tREF + CLOCK_PERIOD-1) / CLOCK_PERIOD - 2;	 --	tREF_time = tREF_CYCLES + 1
	constant tRFC_CYCLES : NATURAL := (tRFC + CLOCK_PERIOD-1) / CLOCK_PERIOD - 2;	 -- tRFC_time = tRFC_CYCLES + 1
	constant tWR_CYCLES  : natural := (tWR + CLOCK_PERIOD-1) / CLOCK_PERIOD - 2; 	 --	tWR_time = tWR_CYCLES + 1
	constant tSTARTUP_NOP_CYCLES : positive := 12500;

	constant CAS_LATENCY : positive := 3; 


type ram_state_type is (
		init,
		set_mode_register,
		precharge,
		auto_refresh,
		activate,
		ram_read,
		ram_get_data,
		toggle_OE,
		nop_dqm_down,
		ram_write,
		nop
	);
	
signal another_refresh 					: std_logic;	
signal ram_state 						: ram_state_type;
signal ram_next_state					: ram_state_type;
signal ram_nops							: integer range 0 to tSTARTUP_NOP_CYCLES + 1;

signal address_temp						: std_logic_vector(13 downto 0);	-- 12 bits Address / 2 bits BANK--	
signal address_buf						: std_logic_vector(23 downto 0);   -- 12 bits ROW / 10 bits COL / 2 bits BANK - Total 24 Bits

signal write_buf						: std_logic_vector (7 downto 0);
signal OEn								: std_logic;
signal load_enable						: std_logic;

signal read_buf							: std_logic_vector (7 downto 0);

begin
	-- ----------------------------------------------------------------- FINITE STATE MACHINE
	process(Clk, ResetN)
	begin
		if (ResetN	= '0') then			
			ram_state <= init;
			address_temp <= (others => '0');

			ram_state <= init; 
			ram_nops <= 0;
			OEn <= '1';
			load_enable <= '0';
			
			Ram_CAS <= '0';
			Ram_RAS <= '0';
			Ram_WE <= '0';

		elsif ((Clk'event) and (Clk = '1')) then 
	
			case ram_state is
				---------------------------------
				-- Nop
				---------------------------------
				when nop =>
					Ram_RAS <= '1'; 	Ram_CAS <= '1';		Ram_WE <= '1';	
					Ram_DQM <= '1';
					
					if (ram_nops = 0) then
						ram_state <= ram_next_state;
					else
						ram_state <= nop;
						ram_nops <= ram_nops - 1;
					end if;
				---------------------------------
				-- Start Ram Initialization 
				---------------------------------
				when init =>
					Ram_DQM <= '1';
					ram_next_state <= precharge;
					ram_state <= nop;
					ram_nops <= tSTARTUP_NOP_CYCLES;
					another_refresh <= '1';

				---------------------------------
				-- Precharge
				---------------------------------			
				when precharge =>
					Ram_RAS <= '0';		Ram_CAS <= '1';		Ram_WE <= '0';	 
					ram_nops <= tRP_CYCLES;					
					ram_state <= nop;
					if (another_refresh = '1') then 		-- we're in startup sequence
						address_temp(12) <= '1'; 			-- precharge all banks  (A10 = 1)
						ram_next_state <= auto_refresh;
					else
						address_temp(12) <= '0'; 		
						address_buf <= Address;
						ram_next_state <= activate;
					end if;
					
					
				---------------------------------
				-- Auto Refresh
				---------------------------------			
				when auto_refresh =>
					Ram_RAS <= '0';		Ram_CAS <= '0';		Ram_WE <= '1';	 
					ram_nops <= tRFC_CYCLES;
					ram_state <= nop;
					if (another_refresh = '1') then 
						ram_next_state <= auto_refresh;
						another_refresh <= '0';
					else 
						ram_next_state <= set_mode_register;
					end if;


				---------------------------------
				-- Set Mode
				---------------------------------			
				when set_mode_register =>
					Ram_RAS <= '0';		Ram_CAS <= '0';		Ram_WE  <= '0'; 
					address_temp <= "00000011000000";
					ram_nops <= tMRD_CYCLES;
					ram_state <= nop;
					ram_next_state <= precharge;


				---------------------------------
				-- Activate
				---------------------------------			
				when activate =>
					Ram_RAS <= '0';		Ram_CAS <= '1';		Ram_WE <= '1';


					-- prepare Row for next read
					address_temp (13 downto 0) 		<= address_buf(23 downto 12) & address_buf(1 downto 0);		-- Row Address
					ram_nops <= tRCD_CYCLES;
					ram_state <= nop;
					ram_next_state <= ram_read;
					
				---------------------------------
				-- Read
				---------------------------------			
				when ram_read =>
					Ram_RAS <= '1';		Ram_CAS <= '0';		Ram_WE <= '1';
					Ram_DQM <= '0';
					OEn <= '1';		-- disable output on data bus
					address_temp (13 downto 0) <= "00" & address_buf (11 downto 0) ;						-- 9 Column bits + 2 Bank bits
					ram_state <= nop_dqm_down;
					
				---------------------------------
				-- Keep DQM down once
				---------------------------------			
				when nop_dqm_down =>
					Ram_RAS <= '1';		Ram_CAS <= '1';		Ram_WE <= '1';			-- nop
					ram_nops <= 0;
					ram_state <= nop;
					ram_next_state <= ram_get_data;
		
			---------------------------------
				-- Buffer read data
				---------------------------------			
				when ram_get_data =>
					Ram_RAS <= '1';		Ram_CAS <= '1';		Ram_WE <= '1';			-- nop
					load_enable <= '1';
					ram_state <= toggle_OE;
				
				when toggle_OE =>
					Ram_RAS <= '1';		Ram_CAS <= '1';		Ram_WE <= '1';			-- nop
					OEn <= '0';
					load_enable <= '0';
					ram_state <= ram_write;

				---------------------------------
				-- Write
				---------------------------------			
				when ram_write =>
					if (Write_Enable = '1') then
						Ram_RAS <= '1';		Ram_CAS <= '0';		Ram_WE <= '0';
					else
						Ram_RAS <= '1';		Ram_CAS <= '1';		Ram_WE <= '1';			-- nop
					end if;
					Ram_DQM <= '0';
					ram_nops <= 0;
					ram_state <= nop;
					ram_next_state <= precharge;
	
				when others => null;
			end case;
		end if;		
	end process ;
	
------------------------------------------------------------------------------Tristate Buffer on Ram_Data
	process(Ram_Data, OEn)
	begin
	   if (OEn = '1') then
		   Ram_Data <= "ZZZZZZZZ";
		   read_buf <= Ram_Data;
	   else
		   Ram_Data <= write_buf;
		   read_buf <= Ram_Data;
	   end if;
	end process;
------------------------------------------------------------------------------Feed back Read data	
	process(Clk, load_enable)
	begin
		if ((Clk'event) and (Clk = '0')) then
			if (load_enable = '1') then
					Read_Data <= read_buf;
			end if;
		end if;
	end process;
	

	Ram_clk <= not Clk;
	Ram_Address <= address_temp;
	write_buf <= Write_Data;
	
	with ram_state select
	FSM_State <= 	"0000"	when nop,
					"0001"	when init,
					"0010"	when set_mode_register,
					"0011"	when precharge,
					"0100"	when auto_refresh,
					"0101"	when activate,
					"0110"	when ram_read,
					"0111"	when ram_get_data,
					"1000"	when toggle_OE,
					"1001"	when nop_dqm_down,
					"1010"	when ram_write,
					"1111"  when others;
										
end architecture Ram_Control_arch;
