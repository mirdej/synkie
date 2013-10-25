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
--byte_counter																								
--Bit		23	22	21	20	19	18	17	16	15	14	13	12	11	10	9	8	7	6	5	4	3	2	1	0
--			A11	A10	A9	A8	A7	A6	A5	A4	A3	A2	A1	A0	C9	C8	C7	C6	C5	C4	C3	C2	C1	C0	BA1	BA0
------------------------------------------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Ram_Controller is
	port(
		Clk    		: in  std_logic;
		ResetN 		: in  std_logic;
		
		Overflow		: out std_logic;
		Oszi_Trig		: out std_logic;
--		Loopthru	: in  std_logic;
				
		Reset_Counter	: in std_logic;
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
end entity;

--------------------------------------------------------------------------------------------
--																			ARCHITECTURE
--------------------------------------------------------------------------------------------
architecture Ram_Controller_arch of Ram_Controller is


-- burst size	   
	-- "000" burst size of 1
	-- "001" b.s. of 2
	-- "010" b.s. of 4
	-- "011" b.s. of 8
	constant burst_size : std_logic_vector(2 downto 0) := "010";
	
	constant CLOCK_PERIOD : positive := 13; -- in ns
	-- timing constants in ns:
	constant tRC  : positive := 75;
	constant tRCD : positive := 20;
	constant tRP  : positive := 20;
	constant tREF : positive := 15000; -- for 1 row (for 4096 you need to divide number by 4096)        
	constant tRFC : positive := 65; 
	constant tWR  : positive := CLOCK_PERIOD + 7; 
	-- sdram initialization time
	-- fo eg.: if 100 us sdram initialization is needed, tSTARTUP_NOP should be 100000 [ns]
	constant tSTARTUP_NOP : positive := 100000;
	
	-- timing constants in cycles
	-- actual cycles will be one cycle longer (every) because of state transition time (1 cycle time)
	constant tRC_CYCLES  : natural := tRC  / CLOCK_PERIOD;	 -- tRC_time = tRC_CYCLES + 1
	constant tRCD_CYCLES : natural := tRCD / CLOCK_PERIOD;	 --	tRCD_time = tRCD_CYCLES + 1
	constant tRP_CYCLES  : natural := tRP  / CLOCK_PERIOD - 1;	 -- tRP_time = tRP_CYCLES + 1
	constant tMRD_CYCLES : natural := 2; 					 -- tMRD_time = 2 tCK
	constant tREF_CYCLES : natural := tREF / CLOCK_PERIOD;	 --	tREF_time = tREF_CYCLES + 1
	constant tRFC_CYCLES : NATURAL := tRFC / CLOCK_PERIOD;	 -- tRFC_time = tRFC_CYCLES + 1
	constant tWR_CYCLES  : natural := tWR / CLOCK_PERIOD; 	 --	tWR_time = tWR_CYCLES + 1
	--constant tSTARTUP_NOP_CYCLES : positive := 10;
	constant tSTARTUP_NOP_CYCLES : positive := 8000;

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
	
signal another_refresh 		: std_logic;	
signal ram_state 			: ram_state_type;
signal ram_next_state		: ram_state_type;
signal ram_nops				: integer range 0 to tSTARTUP_NOP_CYCLES + 1;

signal address_temp			: std_logic_vector(13 downto 0);	-- 12 bits Address / 2 bits BANK--	
signal byte_counter			: std_logic_vector(23 downto 0);   -- 12 bits ROW / 10 bits COL / 2 bits BANK - Total 24 Bits

signal slow_clk				: std_logic;
signal blink 				: std_logic;

signal write_buf			: std_logic_vector (7 downto 0);
signal OEn					: std_logic;
signal load_enable			: std_logic;

signal read_buf				: std_logic_vector (7 downto 0);
signal reset_buf 			: std_logic_vector(1 downto 0);

begin
	-- ----------------------------------------------------------------- MASTER CLOCK 
	--																	@ half speed : 156.250 Mhz / 2 => 78.125 Mhz
	--																						12.8 ns period
	process(Clk, ResetN)
	begin
		  if (ResetN	= '0') then
			  slow_clk <= '0';
		  elsif ((Clk'event) and (Clk = '1')) then 
			  slow_clk <= not slow_clk;
		  end if;
	end process;
		
		
	-- ----------------------------------------------------------------- FINITE STATE MACHINE
	process(slow_clk, ResetN,Reset_Counter)
	begin
		if (ResetN	= '0') then			
			ram_state <= init;
			address_temp <= (others => '0');
			byte_counter <= (others => '0');

			ram_state <= init; 
			ram_nops <= 0;
			OEn <= '1';
			load_enable <= '0';
			blink <= '0';
			
			Ram_CAS <= '0';
			Ram_RAS <= '0';
			Ram_WE <= '0';

		elsif ((slow_clk'event) and (slow_clk = '1')) then 
	
			case ram_state is
				---------------------------------
				-- Nop
				---------------------------------
				when nop =>
					Ram_RAS <= '1'; 	Ram_CAS <= '1';		Ram_WE <= '1';	
					Ram_DQM <= '1';
					Oszi_Trig <= '0';
					
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
					blink <= '1';

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
					
						-- count up
						if (byte_counter = x"FFFFFF") then
								byte_counter <= (others => '0');
						elsif (reset_buf = "10") then
								byte_counter <= (others => '0');
						else
								byte_counter <= std_logic_vector( unsigned(byte_counter) + 1);		
						end if;
						
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
				--	address_temp (7 downto 6) <= "11";				-- set bits 5 and 4 of Mode register high for CAS latency of 3 
					ram_nops <= tMRD_CYCLES;
					ram_state <= nop;
					ram_next_state <= precharge;


				---------------------------------
				-- Activate
				---------------------------------			
				when activate =>
					Ram_RAS <= '0';		Ram_CAS <= '1';		Ram_WE <= '1';


					-- prepare Row for next read
					address_temp (13 downto 0) 		<= byte_counter(23 downto 12) & byte_counter(1 downto 0);		-- Row Address
					--address_temp (1 downto 0) 		<= byte_counter(1 downto 0);			-- Bank
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
					address_temp (13 downto 0) <= "00" & byte_counter (11 downto 0) ;						-- 9 Column bits + 2 Bank bits
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
					--ram_nops <= 2;
					--ram_state <= nop;
					--ram_next_state <= toggle_OE;
					Oszi_Trig <= '1';
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
					if (Reset_Counter = '0') then
						Ram_RAS <= '1';		Ram_CAS <= '0';		Ram_WE <= '0';
					else
						Ram_RAS <= '1';		Ram_CAS <= '1';		Ram_WE <= '1';			-- nop
					end if;
					Ram_DQM <= '0';
					ram_nops <= 1;
					ram_state <= nop;
					ram_next_state <= precharge;
					--Ram_Data <= ad_buf;
	
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
	
	process(slow_clk, load_enable)
	begin
		if ((slow_clk'event) and (slow_clk = '0')) then
			if (load_enable = '1') then
				if (Reset_Counter = '0') then
					Read_Data <= Write_Data;			-- show live out when recording
				else
					Read_Data <= read_buf;
				end if;
			end if;
		end if;
	end process;
	
	process(OEn, ResetN)
	begin
	if (ResetN = '0') then
		reset_buf <= "00";
	elsif ((OEn'event) and (OEn = '1')) then
--			reset_buf(1) <= reset_buf(0);
--			reset_buf(0) <= Reset_Counter;
		end if;
	end process;
	
	Ram_clk <= not slow_clk;
	Ram_Address <= address_temp;
	write_buf <= Write_Data;

	Overflow <= blink;
	
	--top_count <= "0000" & top & "000000000000";
	
end architecture Ram_Controller_arch;
