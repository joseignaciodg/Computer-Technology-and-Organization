library ieee;
use ieee.std_logic_1164.all;
use work.definitions.all;

entity controller is
    port( clk, reset, init : in  std_logic;
          status           : in  std_logic_vector (W_STATUS-1  downto 0);
          control          : out std_logic_vector (W_CONTROL-1 downto 0);
          done             : out std_logic );
end controller;

architecture arch_controller of controller is
    type T_STATE is (S_init, S_load, S_idle, S_not_equal, S_acc);
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

    COMB: process (STATE, init, status)
    begin
        control <= (others => '0');
        done    <= '0';
        case STATE is
            when S_init =>
                done <= '1';
                if (init='1') then
                    NEXT_STATE <= S_load;
                else
                    NEXT_STATE <= S_init;
                end if;
            when S_load =>
                control(ld_ra) <= '1';
					 control(ld_rb) <= '1';
                control(ld_rn) <= '1';
                control(ld_racc) <= '1';
                control(mux_n) <= '1';
                control(mux_acc) <= '1';
					 control(mux_a) <= '1';
					 control(mux_b) <= '1';
                NEXT_STATE <= S_idle;
            when S_idle =>
                if (status(zero) ='1') then
                    NEXT_STATE <= S_init;
                else
                    if (status(equal_1) ='0') then
							 NEXT_STATE <= S_not_equal;
						  else
							 NEXT_STATE <= S_acc;
						  end if;
                end if;                             
            when S_acc =>
                control(ld_ra) <= '1';
					 control(ld_rb) <= '1';
                control(ld_rn) <= '1';
                control(ld_racc) <= '1';
                control(mux_n) <= '0';
                control(mux_acc) <= '0';
					 control(mux_a) <= '0';
					 control(mux_b) <= '0';
					 control(mux_add) <='0';
                NEXT_STATE <= S_idle;
				when S_not_equal =>
					 control(ld_ra) <= '1';
					 control(ld_rb) <= '1';
                control(ld_rn) <= '1';
                control(ld_racc) <= '1';
                control(mux_n) <= '0';
                control(mux_acc) <= '0';
					 control(mux_a) <= '0';
					 control(mux_b) <= '0';
					 control(mux_add) <='1';
                NEXT_STATE <= S_idle;
        end case;
    end process;

end arch_controller;
