LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

entity Address_Counter_tb is
end Address_Counter_tb;

architecture Address_Counter_tb_a of Address_Counter_tb is

		signal ResetN 			:  std_logic;		
		signal FSM_State		:  std_logic_vector(3 downto 0);
		signal Counter_Max		:  std_logic_vector (23 downto 0);
		signal Load_Enable		:  std_logic;
		
		signal Carry			:  std_logic;
		signal Count			:  std_logic_vector (23 downto 0);

	component Address_Counter
		port
		(
		ResetN 			: in std_logic;		
		FSM_State		: in std_logic_vector(3 downto 0);
		Counter_Max		: in std_logic_vector (23 downto 0);
		Load_Enable		: in std_logic;
		
		Carry			: out std_logic;
		Count			: out std_logic_vector (23 downto 0)
		);
	end component;
begin

t1 : Address_Counter port map (
		ResetN 			=> 		ResetN 			,
		FSM_State		=> 		FSM_State		,
		Counter_Max		=> 		Counter_Max		,
		Load_Enable		=> 		Load_Enable		,
		
		Carry			=> 		Carry			,
		Count			=> 		Count			
);


init: process
begin
	ResetN <= '0'; wait for 250 ns;
	ResetN <= '1'; wait;
end process;

always: process
begin
	loop 
	FSM_State <= "0011"; wait for 4000 ps;
	FSM_State <= "0000"; wait for 4000 ps;
	end loop;
	WAIT;        
end process;

process
begin
	wait for 1000 ns;
	Counter_Max <= "000000000000000000000111";
	wait;
end process;

end Address_Counter_tb_a;
