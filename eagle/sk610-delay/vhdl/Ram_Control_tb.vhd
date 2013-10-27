LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

entity Ram_Control_tb is
end Ram_Control_tb;

architecture Ram_Control_tb_a of Ram_Control_tb is

	signal Clk    			: std_logic;
	signal ResetN 			: std_logic;
	signal Overflow			: std_logic;
	signal V_Sync			: std_logic;
	signal Rec				: std_logic;
signal			Overdub			:  std_logic;
signal			Freeze			:  std_logic;
signal			Looper			:  std_logic;
signal			Write_Data		:  std_logic_vector (7 downto 0);
signal			Read_Data		:  std_logic_vector (7 downto 0);
signal			Ram_Address 	:  std_logic_vector(13 downto 0);  -- 12 bits Address / 2 bits BANK
signal			Ram_RAS			:  std_logic;
signal			Ram_CAS 		:  std_logic;
signal			Ram_WE			:  std_logic;
signal			Ram_Data		:  std_logic_vector(7 downto 0);
signal			Ram_Clk			:  std_logic;
signal			Ram_DQM			:  std_logic;
signal 					ADDA_Clk		:  std_logic;

	component Ram_Control
		port
		(
			Clk    			: in  std_logic;
			ResetN 			: in  std_logic;
			Overflow		: out std_logic;
					ADDA_Clk		: out std_logic;

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
	end component;
begin

t1 : Ram_Control port map (
			Clk    			=> Clk,
			ResetN			=> ResetN,
			Overflow		=> Overflow,
			ADDA_Clk		=> ADDA_Clk,
			V_Sync			=> V_Sync,
			Rec				=> Rec,
			Overdub			 => 				Overdub			,
			Freeze			 => 			Freeze			,
			Looper			 => 			Looper			,

			Write_Data		 => 			Write_Data		,
			Read_Data		 => 			Read_Data		,
		
			Ram_Address 	 => 			Ram_Address 	,
			Ram_RAS			 => 			Ram_RAS			,
			Ram_CAS 		 => 			Ram_CAS 		,
			Ram_WE			 => 			Ram_WE			,
			Ram_Data		 => 			Ram_Data		,
			Ram_Clk			 => 			Ram_Clk			,
			Ram_DQM			 => 			Ram_DQM			
);


init: process
begin
	ResetN <= '0'; wait for 250 ns;
	ResetN <= '1'; wait;
end process;

always: process
begin
	loop 
	Clk <= '0'; wait for 4000 ps;
	Clk <= '1'; wait for 4000 ps;
	end loop;
	WAIT;        
end process;


always2: process
begin
	loop 
	V_Sync <= '0'; wait for 50 ns;
	V_Sync <= '1'; wait for 50 ns;
	end loop;
	WAIT;        
end process;

set_rec: process
begin
	Rec <= '0';
	wait for 70 ns;
	Rec <= '1';
	wait for 20 ns;
	Rec <= '0';
	wait for 10 ns;

	wait;
end process;

end Ram_Control_tb_a;
