-------------------------------------------------------------------------------------------------------------------
--	VIDEO DELAY - Serial Interface
--
-- Part of the Synkie Project: www.synkie.net
--
-- © 2013 Michael Egger, Licensed under GNU GPLv3
--
------------------------------------------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity RX_TX is
	port(
		Clk    			: in  std_logic;
		ResetN 			: in  std_logic;
		
		MISO			: out std_logic;
		MOSI			: in std_logic;
		SCK				: in std_logic;
		CSn				: in std_logic;
		
		Strobe			: out std_logic;
		
		Receive_Data	: out std_logic_vector(7 downto 0)
	);
end entity;

--------------------------------------------------------------------------------------------
--																			ARCHITECTURE
--------------------------------------------------------------------------------------------
architecture RX_TX_arch of RX_TX is
	
signal SCKIntOld		: std_logic;
signal CSIntOld		: std_logic;
signal Rx_Buf		  	: std_logic_vector(7 downto 0);

signal SCK_f			: std_logic;
signal SCK_ff			: std_logic;
signal CSn_f			: std_logic;
signal CSn_ff			: std_logic;
signal MOSI_f			: std_logic;
signal MOSI_ff			: std_logic;
signal did_send		: std_logic;

begin

	process(Clk, ResetN)
	begin
		if(ResetN = '0') then
			SCKIntOld <= '0';
			Rx_Buf 	<=  (others => '0');
			SCK_f <= '0';
			SCK_ff <= '0';
			CSn_f <= '0';
			CSn_ff <= '0';
			MOSI_f <= '0';
			MOSI_ff <= '0';
			
		elsif((Clk'event) and (Clk = '1')) then
			SCK_f <= SCK;
			SCK_ff <= SCK_f;
		
			CSn_f <= CSn;
			CSn_ff <= CSn_f;
		
			MOSI_f <= MOSI;
			MOSI_ff <= MOSI_f;
		
			SCKIntOld <= SCK_ff;
			CSIntOld <= CSn_ff;
			
			if((SCK_ff = '1') and (SCKIntOld = '0')) then
				if(CSn_ff = '0') then
					Rx_Buf <= Rx_Buf(6 downto 0) & MOSI_ff;			-- MSB first
				end if;
			end if;
			
			Strobe <= not CSn_ff; --'0';

			if((CSn_ff = '1') and (CSIntOld = '0')) then
				Receive_Data 		<= Rx_Buf;
--				Strobe <='1';
			end if;
		end if;
	end process;
	
end architecture RX_TX_arch;
