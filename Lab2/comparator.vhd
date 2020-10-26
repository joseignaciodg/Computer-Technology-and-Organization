library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity comparator is
	port (switch, O: in std_logic_vector(7 downto 0);
	eq: out std_logic);
end comparator;

architecture Behavioral of comparator is
begin
	eq <= '1' when switch = O else '0';

end Behavioral;