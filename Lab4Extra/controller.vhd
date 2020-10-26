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
    type T_STATE is (S_init, S_load, S_idle1, S_idle2, S_new_operand, S_prepare, S_not_equal, S_acc);
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
					 control(ld_rc) <= '1';
					 control(ld_ri) <= '1';
					 control(mux_i) <= '1';
					 control(mux_a_m downto mux_a_l) <= "01";
					 control(mux_b_m downto mux_b_l) <= "01";
                NEXT_STATE <= S_idle1;
            when S_idle1 =>
					 control(mux_zero) <= '0';
                if (status(zero) ='1') then
                    NEXT_STATE <= S_init;
                else
						  NEXT_STATE <= S_new_operand;
                end if;
				when S_new_operand =>
					 control(mux_n) <= '1';
					 control(ld_rn) <= '1';
					 control(ld_racc) <= '1';
					 control(mux_acc) <= '1';
					 NEXT_STATE <= S_idle2;
				when S_idle2 =>
					 control(mux_zero) <= '1';
					 if (status(zero) ='1') then
                    NEXT_STATE <= S_prepare;
                else
                    if (status(equal_1) ='0') then
							 NEXT_STATE <= S_not_equal;
						  else
							 NEXT_STATE <= S_acc;
						  end if;
                end if;
				when S_prepare =>
					 control(mux_a_m downto mux_a_l) <= "10";
					 control(mux_b_m downto mux_b_l) <= "10";
					 control(mux_sub) <= '0';
					 NEXT_STATE <= S_idle1;
            when S_acc =>
					 control(mux_sub) <= '1';
                control(ld_ra) <= '1';
					 control(ld_rb) <= '1';
                control(ld_rn) <= '1';
                control(ld_racc) <= '1';
                control(mux_n) <= '0';
                control(mux_acc) <= '0';
					 control(mux_a_m downto mux_a_l) <= "00";
					 control(mux_b_m downto mux_b_l) <= "00";
					 control(mux_add) <='0';
                NEXT_STATE <= S_idle2;
				when S_not_equal =>
					 control(mux_sub) <= '1';
					 control(ld_ra) <= '1';
					 control(ld_rb) <= '1';
                control(ld_rn) <= '1';
                control(ld_racc) <= '1';
                control(mux_n) <= '0';
                control(mux_acc) <= '0';
					 control(mux_a_m downto mux_a_l) <= "00";
					 control(mux_b_m downto mux_b_l) <= "00";
					 control(mux_add) <='1';
                NEXT_STATE <= S_idle2;
        end case;
    end process;

end arch_controller;