library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

ENTITY FSM IS
	port(reset, button, clk: in std_logic;
	x: out std_logic_vector(3 downto 0);
	led: out std_logic_vector(9 downto 0));
END FSM;

architecture Behavioral of FSM is
	type STATES is (INITIAL, S3, S2, S1, FINAL);
	signal STATE, NEXT_STATE: STATES;
begin

SYNC: process (clk, reset)--Asynchronous
	begin
		if clk'event and clk ='1' then
			if reset ='0' then
				STATE <= INITIAL;
			else
				STATE <= NEXT_STATE;
			end if;
		end if;
end process SYNC;

COMB: process (STATE ,button)
	begin
		case STATE is
			when INITIAL =>
				x <= "0000";
				led <= "1111111111";
				if (button='1') then NEXT_STATE <= S3;
				else 				 	   NEXT_STATE <= INITIAL;
				end if;
			when S3 =>
				x <= "0011";
				led <= "0000000000";
				if (button='1') 	then NEXT_STATE <= INITIAL;
				elsif (button='1' and eq='0') then NEXT_STATE <= S2;
				else 									  	  NEXT_STATE <= S3;
				end if;
			when S2 =>
				x <= "0010";
				if (button='1' and eq='1') 	then NEXT_STATE <= INITIAL;
				elsif (button='1' and eq='0') then NEXT_STATE <= S1;
				else 									  	  NEXT_STATE <= S2;
				end if;
			when S1 =>
				x <= "0001";
				if (button='1' and eq='1') 	then NEXT_STATE <= INITIAL;
				elsif (button='1' and eq='0') then NEXT_STATE <= FINAL;
				else 									  	  NEXT_STATE <= S1;
				end if;
			when FINAL =>
				x <= "1111";
		end case;
	end process comb;
end Behavioral;