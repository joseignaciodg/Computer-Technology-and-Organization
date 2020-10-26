library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Module is
	port( START, reset, clock: in std_logic;
			Operand1: in std_logic_vector(3 downto 0);
			Operand2: in std_logic_vector(3 downto 0);
			Done: out std_logic_vector(9 downto 0);
			Result : out std_logic_vector(6 downto 0)
			);
end Module;

architecture Structural of Module is

	COMPONENT ASM_multiplier
		port( reset, clk, init : in  std_logic;
      a_in, b_in       : in  std_logic_vector(W_FACTORS-1 downto 0);
      done             : out std_logic;
      r                : out std_logic_vector(W_RESULT-1  downto 0) );
	end component;
	
	COMPONENT FSM
		port(reset, button, clk: in std_logic;
		x: out std_logic_vector(3 downto 0);
		led: out std_logic_vector(9 downto 0));
	end component;
	
	COMPONENT conv_7seg
		port ( x     : in   STD_LOGIC_VECTOR (3 downto 0);
           display : out  STD_LOGIC_VECTOR (6 downto 0) );
	end component;
	
	COMPONENT debouncer
		port (
        rst             : in std_logic;
        clk             : in std_logic;
        x               : in std_logic;
        xDeb            : out std_logic;
        xDebFallingEdge : out std_logic;
        xDebRisingEdge  : out std_logic
    );
	end component;
	
	signal xDeb_signal, xDebFalling_signal, xDebRisin_signal: std_logic;	
	signal x_output: std_logic_vector(3 downto 0);
	signal led_out: std_logic_vector(9 downto 0);
	signal display_out: std_logic_vector(6 downto 0);
begin															
	mod_debouncer: debouncer port map (reset, clock, START, xDeb_signal, xDebFalling_signal, xDebRisin_signal);
	--xDebFalling_signal <= pushbutton;
	mod_FSM: FSM port map (reset, xDebFalling_signal, clock, x_output, led_out);
								--xDebFalling_signal en pushbutton
	mod_conv_7seg: conv_7seg port map (x_output, display_out);
	mod_ASM_multiplier: ASM_multiplier port map (reset, clock, pushbutton, SWITCH(7 downto 4), SWITCH(3 downto 0), );			
	
	DISPLAY <= display_out;
	LED <= led_out;
	
end Structural;

