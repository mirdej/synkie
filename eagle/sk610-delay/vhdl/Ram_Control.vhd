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

entity Ram_Control is
	port(
		Clk    			: in  std_logic;
		ResetN 			: in  std_logic;
		
		Overflow		: out std_logic;
				
		V_Sync			: in std_logic;
		Rec				: in std_logic;
		Overdub			: in std_logic;
		Freeze			: in std_logic;
		Looper			: in std_logic;

		Write_Data		: in std_logic_vector (7 downto 0);
		Read_Data		: out std_logic_vector (7 downto 0);
		
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

signal byte_counter, byte_counter_top	: std_logic_vector(23 downto 0);   -- 12 bits ROW / 10 bits COL / 2 bits BANK - Total 24 Bits
signal reset_counter_sync 				: std_logic;
signal counter_clock 					: std_logic;
signal do_record 						: std_logic;
signal v_sync_sync 						: std_logic;
signal do_record_b						: std_logic;


signal blink 							: std_logic;

signal write_buf						: std_logic_vector (7 downto 0);
signal OEn								: std_logic;
signal load_enable						: std_logic;

signal read_buf							: std_logic_vector (7 downto 0);
signal reset_buf 						: std_logic_vector(1 downto 0);

signal write_enable 					: std_logic; 
signal read_enable 						: std_logic; 

begin
	-- ----------------------------------------------------------------- FINITE STATE MACHINE
	process(Clk, ResetN,write_enable)
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
					counter_clock <= '0';
					
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
						-- count up
						counter_clock <= '1';
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
					address_temp (13 downto 0) 		<= byte_counter(23 downto 12) & byte_counter(1 downto 0);		-- Row Address
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
					if (write_enable = '1') then
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
				if (read_enable = '0') then
					Read_Data <= Write_Data;			-- show live out when recording
				else
					Read_Data <= read_buf;
				end if;
			end if;
		end if;
	end process;
	
------------------------------------------------------------------------------byte counter for addressing ram
	counter: process (counter_clock,reset_counter_sync) 
	begin
		if (reset_counter_sync = '1' ) then
			byte_counter <= (others => '0');
			blink <= '0';

		elsif (rising_edge(counter_clock)) then
			if (byte_counter = byte_counter_top) then 
				if (do_record = '0') then
					byte_counter <= (others => '0');
					blink <= not blink;
				end if;
			else
				byte_counter <= std_logic_vector(unsigned(byte_counter) + 1);
			end if;
		end if;
	end process;
	
------------------------------------------------------------------------------set byte_counter top when record button is released
	counter_top : process (do_record,ResetN) 
	begin
		if (ResetN = '0') then
			byte_counter_top <= (others => '1');
		elsif (falling_edge(do_record)) then
		--	byte_counter_top <= std_logic_vector(unsigned(byte_counter) - 1);	
		byte_counter_top <= byte_counter;
		end if;
	end process;
------------------------------------------------------------------------------reset counter on falling Rec
  process(Clk)
    begin
         if (rising_edge(Clk)) then
               do_record_b<=do_record;
         end if;
    end process;
    reset_counter_sync<= ((not do_record_b) and do_record ) or (not ResetN); 

------------------------------------------------------------------------------synchronize Vsync to clock
	sync_sync : process (Clk,ResetN) 
	begin
		if (rising_edge(Clk)) then
			v_sync_sync <= V_Sync;
		end if;
	end process;
	
------------------------------------------------------------------------------synchronize record button signal to v_sync_sync
	sync_record_button : process (v_sync_sync,ResetN) 
	begin
	if (ResetN = '0') then
		do_record <= '0';
	elsif (rising_edge(v_sync_sync)) then
			do_record <= not Rec;
		end if;
	end process;

	Ram_clk <= not Clk;
	Ram_Address <= address_temp;
	write_buf <= Write_Data;
	write_enable <= do_record;
	read_enable <= not do_record;
	 
	Overflow <= blink;
		
end architecture Ram_Control_arch;
