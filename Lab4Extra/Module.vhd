library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.definitions.all;

entity Module is
	port( START, reset, clock: in std_logic;
			Operand1: in std_logic_vector(3 downto 0);
			Operand2: in std_logic_vector(3 downto 0);
			Operand3: in std_logic_vector(3 downto 0);
			Done: out std_logic_vector(9 downto 0);
			Result1 : out std_logic_vector(6 downto 0);
			Result2 : out std_logic_vector(6 downto 0)
			);
end Module;

architecture Structural of Module is

	COMPONENT ASM_multiplier
		port( reset, clk, init : in  std_logic;
      a_in, b_in, c_in       : in  std_logic_vector(W_FACTORS-1 downto 0);
      done             : out std_logic;
      r              : out std_logic_vector(W_RESULT-1  downto 0) );
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
	
	signal DONE_out: std_logic;
	signal xDeb_signal, xDebFalling_signal, xDebRisin_signal: std_logic;	
	signal led_out: std_logic_vector(9 downto 0);
	signal r_out: std_logic_vector(7 downto 0);
	signal r_1: std_logic_vector(3 downto 0);
	signal r_2: std_logic_vector(3 downto 0);
	signal display_out1: std_logic_vector(6 downto 0);
	signal display_out2: std_logic_vector(6 downto 0);
	
begin															
	mod_debouncer: debouncer port map (reset, clock, START, xDeb_signal, xDebFalling_signal, xDebRisin_signal);
	--xDebFalling_signal <= START;
	mod_ASM_multiplier: ASM_multiplier port map (not reset, clock, xDebFalling_signal, Operand1, Operand2, Operand3, DONE_out, r_out);			
	r_1 <= r_out(3 downto 0);
	r_2 <= r_out(7 downto 4);
	mod_conv_7seg1: conv_7seg port map (r_1, display_out1);
	mod_conv_7seg2: conv_7seg port map (r_2, display_out2);
	--recuerda el not reset de port map
	process (DONE_out)
	begin
		if (DONE_out = '1') then
			led_out <= (others => '1');
		else
			led_out <= (others => '0');
		end if;
	end process;
	Done <= led_out;
	Result2 <= display_out2;
	Result1 <= display_out1;
	
end Structural;

