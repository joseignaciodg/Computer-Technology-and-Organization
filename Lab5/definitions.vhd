library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

package definitions is
    constant FREQ_1HZ    : unsigned := "11";
    constant FREQ_1KHZ   : unsigned := "01";
	 constant FREQ_10KHZ  : unsigned := "10";

    -- Control Constants
    constant cu_cnts   : integer := 0;	--counter1 and counter2 count up
    constant cu_1hz    : integer := 1; --counter remainig count up  
    constant rst_cnts  : integer := 2; --reset all counters 
    constant ld_seq    : integer := 3;	--load sequence generator
	 constant mux_seq1  : integer := 4;	-- mux_sequence (1 => output, 0 => external signal)
	 constant mux_seq2  : integer := 5;	-- mux_sequence(external signal) (0 => 0´s, 1 => "0101010101")
	 constant shift_r   : integer := 6; --sequence generator selector (0 => right circular shift, 1 => invert)
	 constant ld_cnts   : integer := 7;
	 constant ld_seg    : integer := 8;
	 constant W_CONTROL : integer := 9; -- Control vector width

    -- Status Constants
    constant equal_counters : integer := 0;   -- counter1 == counter2 ?
	 constant equal_9   		 : integer := 1;	 --counter <= 9 ?
    constant W_STATUS  		 : integer := 2;   -- Status vector width
end package definitions;