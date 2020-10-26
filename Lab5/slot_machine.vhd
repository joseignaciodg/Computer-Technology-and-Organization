library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.definitions.all;

entity slot_machine is
	port (START, STOP, RESET, CLOCK: in std_logic;
			display_1 : out std_logic_vector(3 downto 0);
			display_2 : out std_logic_vector(3 downto 0);
			LEDS: out std_logic_vector(9 downto 0)
			);
end slot_machine;

architecture Structural of slot_machine is

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
	
	 component controller
        port( clk, reset, start, stop : in std_logic;
              status                  : in  std_logic_vector(W_STATUS-1  downto 0);
              control                 : out std_logic_vector(W_CONTROL-1 downto 0));
    end component controller;
    
    component data_path
        port( clk, reset : in  std_logic;
              control    : in  std_logic_vector(W_CONTROL-1 downto 0);
				  status     : out std_logic_vector(W_STATUS-1  downto 0);
				  disp_1     : out std_logic_vector(3 downto 0);
				  disp_2     : out std_logic_vector(3 downto 0);
				  leds_bar   : out std_logic_vector(9 downto 0) );
    end component data_path;
	
	signal status  : std_logic_vector(W_STATUS-1 downto 0);
	signal control : std_logic_vector(W_CONTROL-1 downto 0);
	signal start_deb, stop_deb, reset_u : std_logic;
	
begin
	reset_u <= not RESET;
	
	--U_DEB_START: debouncer port map (RESET, CLOCK, START, open, start_deb, open);
	start_deb <= START;
	--U_DEB_STOP: debouncer port map (RESET, CLOCK, STOP, open, stop_deb, open);
	stop_deb <= STOP;
	
	U_CNTRL: controller
        port map(CLOCK, reset_u, start_deb, stop_deb, status, control);

   U_DP: data_path
        port map(CLOCK, reset_u, control, status, display_1, display_2, LEDS);
	
end Structural;

