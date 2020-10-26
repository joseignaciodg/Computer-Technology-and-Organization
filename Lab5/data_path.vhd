library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.definitions.all;

entity data_path is
    port( clk, reset : in  std_logic;
          control    : in  std_logic_vector (W_CONTROL-1 downto 0);
          status     : out std_logic_vector (W_STATUS-1  downto 0);
          disp_1     : out std_logic_vector(3 downto 0);
			 disp_2     : out std_logic_vector(3 downto 0);
			 leds_bar   : out std_logic_vector(9 downto 0) );
end data_path;

architecture arch_dp of data_path is
    component C_mod10
        generic(n: natural := 4);
			 port( clk: in std_logic;
					 rst: in std_logic;
					 load: in std_logic;
					 count_up: in std_logic;
					 din: in std_logic_vector(n-1 downto 0);
					 dout: out std_logic_vector(n-1 downto 0) );
    end component C_mod10;
   
	 COMPONENT freq_divider
		 generic( half_count: unsigned);
		 port (
			  rst: in std_logic;
			  clk_in: in std_logic; 
			  clk_out: out std_logic
		 );
	 end component;
	 
	 COMPONENT sequence_generator
	 port( clk, load, rst, shiftinv : in  std_logic;
          din            : in  std_logic_vector (9 downto 0);
          dout           : out std_logic_vector (9 downto 0) );
    end component;
	
	signal out_clk1Hz, out_clk10Hz, out_clk1KHz: std_logic;
	--signal counternumber1, counternumber2, seq_generator: std_logic_vector(3 downto 0);
	signal leds_in, leds_out: std_logic_vector(9 downto 0);
	signal out_counter1, out_counter2, out_counter3: std_logic_vector(3 downto 0);
begin

	 --MULTIPLEXERS
	 leds_in <= leds_out when control(mux_seq1) = '1' else (others => '0') when control(mux_seq2) = '0' else "0101010101";
	 
	 U_FREQ1HZ: freq_divider
		  generic map("10111110101111000001111111")
        port map(reset, clk, out_clk1Hz);
	 COUNTER_1: C_mod10 
        port map(out_clk1Hz, control(rst_cnts), control(ld_seg), control(cu_1hz), "0000", out_counter1);
	 U_FREQ10HZ: freq_divider
		  generic map("10011000100101100111111")
        port map(reset, clk, out_clk10Hz);
	 COUNTER_2: C_mod10 
        port map(out_clk10Hz, control(rst_cnts), control(ld_cnts), control(cu_cnts), "0000", out_counter2);
	 U_FREQ1KHZ: freq_divider
		  generic map("1100001101001111")
        port map(reset, clk, out_clk1KHz);
    COUNTER_3: C_mod10 
        port map(out_clk1KHz, control(rst_cnts), control(ld_cnts), control(cu_cnts), "0000", out_counter3);
	 
	 disp_1 <= out_counter2;
	 disp_2 <= out_counter3;
    
	 SEQ_GENE: sequence_generator
			port map(out_clk1KHz, control(ld_seq), reset, control(shift_r), leds_in, leds_out);
	 
	 status(equal_counters) <= '1' when out_counter2 = out_counter3 else '0';
	 status(equal_9) <= '1' when out_counter1 = "1001" else '0';
	 
	 leds_bar <= leds_out;
	 end arch_dp;
