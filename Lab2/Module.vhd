library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Module is
	port( pushbutton, reset, clock: in std_logic;
			SWITCH: in std_logic_vector(7 downto 0);
			LED: out std_logic_vector(9 downto 0);
			DISPLAY : out std_logic_vector(6 downto 0)
			);
end Module;

architecture Structural of Module is

	COMPONENT register8bits
		port( rst, clk, load: in std_logic;
		input: in std_logic_vector (3 downto 0);
		switch: in std_logic_vector(7 downto 0);
		O: out std_logic_vector(7 downto 0) );
	end component;
	
	COMPONENT comparator
		port (switch, O: in std_logic_vector(7 downto 0);
		eq: out std_logic);
	end component;
	
	COMPONENT FSM
		port(reset, button, clk, eq: in std_logic;
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

	signal O_output: std_logic_vector(7 downto 0);
	signal eq_signal, xDeb_signal, xDebFalling_signal, xDebRisin_signal: std_logic;	
	signal x_output: std_logic_vector(3 downto 0);
	signal led_out: std_logic_vector(9 downto 0);
	signal display_out: std_logic_vector(6 downto 0);
begin														--xDebFalling_signal en pushbutton
	mod_register8bits: register8bits port map (pushbutton, clock, reset, x_output, SWITCH, O_output);
	mod_debouncer: debouncer port map (reset, clock, pushbutton, xDeb_signal, xDebFalling_signal, xDebRisin_signal);
	mod_conv_7seg: conv_7seg port map (x_output, display_out);
	mod_comparator: comparator port map (SWITCH, O_output, eq_signal);
	mod_FSM: FSM port map (reset, pushbutton, clock, eq_signal, x_output, led_out);
								--xDebFalling_signal en pushbutton
	DISPLAY <= display_out;
	LED <= led_out;
	
end Structural;

