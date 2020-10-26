library ieee;
use ieee.std_logic_1164.all;
use work.definitions.all;

entity controller is
    port( clk, reset, start, stop : in  std_logic;
          status                  : in  std_logic_vector (W_STATUS-1  downto 0);
          control                 : out std_logic_vector (W_CONTROL-1 downto 0));
end controller;

architecture arch_controller of controller is
    type T_STATE is (S_init, S_start, S_stop, S_equal, S_not_equal);
    signal STATE, NEXT_STATE: T_STATE;
begin

	SYNC_STATE: process (clk, reset)
	begin
		if clk'event and clk = '1' then
			if reset = '1' then
				STATE <= S_init;
			else
				STATE <= NEXT_STATE;
			end if;
		end if;
	end process SYNC_STATE;

    COMB: process (STATE, start, stop, status)
    begin
        control <= (others => '0');
        case STATE is
            when S_init =>
					 control(rst_cnts) <= '1';
					 control(cu_cnts) <= '0';
					 control(cu_1hz) <= '0';
					 control(mux_seq1) <= '0';
					 control(mux_seq2) <= '0';
					 control(shift_r) <= '0';
					 control(ld_seq) <= '1';
                if (start='1') then
                    NEXT_STATE <= S_start;
                else
                    NEXT_STATE <= S_init;
                end if;
            when S_start =>
                control(ld_seq) <= '0';
					 control(cu_cnts) <= '1';
                control(rst_cnts) <= '0';
					 control(ld_cnts) <= '1';
					 if (stop='1') then
                    NEXT_STATE <= S_stop;
                else
                    NEXT_STATE <= S_start;
                end if;
            when S_stop =>
					 control(cu_cnts) <= '0';
					 if (status(equal_counters) ='1') then
						 NEXT_STATE <= S_equal;
					 else
						 NEXT_STATE <= S_not_equal;
					 end if;                          
            when S_equal =>
					 control(ld_seg) <= '1';
                control(shift_r) <= '1';
					 control(mux_seq1) <= '0';
                control(mux_seq2) <= '0';
                control(ld_seq) <= '1';
					 control(cu_1hz) <= '1';
                if (status(equal_9) ='1') then
						 NEXT_STATE <= S_init;
					 else
						 NEXT_STATE <= S_equal;
					 end if;  
				when S_not_equal =>
				    control(ld_seg) <= '1';
					 control(shift_r) <= '1';
					 control(mux_seq1) <= '0';
                control(mux_seq2) <= '1';
                control(ld_seq) <= '1';
					 control(cu_1hz) <= '1';
                if (status(equal_9) ='1') then
						 NEXT_STATE <= S_init;
					 else
						 NEXT_STATE <= S_not_equal;
					 end if;
        end case;
    end process;

end arch_controller;
