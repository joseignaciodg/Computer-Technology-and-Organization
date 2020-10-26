
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity register8bits is
	port( rst, clk, load: in std_logic;
	input: in std_logic_vector (3 downto 0);
	switch: in std_logic_vector(7 downto 0);
	O: out std_logic_vector(7 downto 0) );
end register8bits;

architecture ARCH_ASYN of register8bits is
begin
--Asynchronous reset
	process(clk, rst)
	begin
		if clk'event and clk = '1' then
			if rst = '0' then
				O <= "00000000";
			elsif load = '1' and input = "0000" then
				O <= switch;
			end if;
		end if;
 end process;
end ARCH_ASYN;

