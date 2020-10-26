library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Module is
	port( pushbutton, reset, clock: in std_logic;
			SWITCH: in std_logic_vector(7 downto 0);
			LED: out std_logic_vector(9 downto 0);
			DISPLAY : out std_logic_vector(6 downto 0);
			NUM_attempts : in std_logic_vector (3 downto 0)
			);
end Module;

architecture Structural of Module is
	COMPONENT register4bits is
		port( rst, clk, load: in std_logic;
		input: in std_logic_vector (3 downto 0);
		switch: in std_logic_vector(3 downto 0);
		O: out std_logic_vector(3 downto 0) );
	end component;

	COMPONENT subtractor is
		 port( a: in std_logic_vector(3 downto 0);
		 b: in std_logic_vector(3 downto 0);
		 c: out std_logic_vector(3 downto 0) );
	end component;
	
	COMPONENT multiplexer is
    Port ( Att_mux : in  STD_LOGIC;
           A   : in  STD_LOGIC_VECTOR (3 downto 0);
           B   : in  STD_LOGIC_VECTOR (3 downto 0);
           X   : out STD_LOGIC_VECTOR (3 downto 0));
	end component;

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
	signal X_multout : STD_LOGIC_VECTOR (3 downto 0);
	signal O_reg4bits : O: std_logic_vector(3 downto 0);
	signal C_subout : std_logic_vector (3 downto 0)
	signal O_output: std_logic_vector(7 downto 0);
	signal eq_signal, xDeb_signal, xDebFalling_signal, xDebRisin_signal: std_logic;	
	signal x_output: std_logic_vector(3 downto 0);
	signal led_out: std_logic_vector(9 downto 0);
	signal display_out: std_logic_vector(6 downto 0);
begin	
	mod_register4bits: register4bits port map (reset, clock, pushbutton, NUM_attempts, X_multout, O_reg4bits);
	mod_subtractor: subtractor port map (O_reg4bits, "0001", C_subout);
	mod_multiplexer: multiplexer port map (pushbutton, NUM_attempts, C_subout);												
	mod_register8bits: register8bits port map (reset, clock, pushbutton, x_output, SWITCH, O_output);
	mod_debouncer: debouncer port map (reset, clock, pushbutton, xDeb_signal, xDebFalling_signal, xDebRisin_signal);
	--xDebFalling_signal <= pushbutton;
	mod_conv_7seg: conv_7seg port map (x_output, display_out);
	mod_comparator: comparator port map (SWITCH, O_output, eq_signal);
	mod_FSM: FSM port map (reset, xDebFalling_signal, clock, eq_signal, x_output, led_out);

	DISPLAY <= display_out;
	LED <= led_out;
	
end Structural;

