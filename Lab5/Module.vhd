library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Module is
	port (start, stop, reset, clock: in std_logic;
			leds: out std_logic_vector(9 downto 0);
			Result1 : out std_logic_vector(6 downto 0);
			Result2 : out std_logic_vector(6 downto 0)
			);
end Module;

architecture Behavioral of Module is
	
	COMPONENT conv_7seg
		port ( x     : in   STD_LOGIC_VECTOR (3 downto 0);
           display : out  STD_LOGIC_VECTOR (6 downto 0) );
	end component;
	
	COMPONENT slot_machine
		port (START, STOP, RESET, CLOCK: in std_logic;
				display_1 : out std_logic_vector(3 downto 0);
				display_2 : out std_logic_vector(3 downto 0);
				LEDS: out std_logic_vector(9 downto 0)
				);
	end component;
	
	signal display_1, display_2: std_logic_vector(3 downto 0);
	signal display_out1, display_out2: std_logic_vector(6 downto 0);
	signal leds_aux: std_logic_vector(9 downto 0);
	
begin
	mod_slot_machine: slot_machine port map (start, stop, reset, clock, display_1, display_2, leds_aux);
	
	mod_conv_7seg1: conv_7seg port map (display_1, display_out1);
	mod_conv_7seg2: conv_7seg port map (display_2, display_out2);
	leds <= leds_aux;
	Result2 <= display_out2;
	Result1 <= display_out1;

end Behavioral;

