-- COUNTER MOD 10
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity C_mod10 is
 generic(n: natural := 4);
 port( clk: in std_logic;
		 rst: in std_logic;
		 load: in std_logic;
		 count_up: in std_logic;
		 din: in std_logic_vector(n-1 downto 0);
		 dout: out std_logic_vector(n-1 downto 0) );
end C_mod10;

architecture ARCH of C_mod10 is
	signal aux_output: unsigned (n-1 downto 0);
begin
	 process(clk, rst)
	 begin
		if rst ='1' then
			aux_output <= (others => '0');
		elsif rising_edge(clk) then
			if load = '1' then
				aux_output <= unsigned(din);
			elsif count_up = '1' then
				aux_output <= aux_output + 1;
			end if;
		end if;
	 end process;
 dout <= std_logic_vector(aux_output);
end ARCH;