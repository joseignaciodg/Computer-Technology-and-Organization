library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity multiplexer is
    Port ( Att_mux : in  STD_LOGIC;
           A   : in  STD_LOGIC_VECTOR (3 downto 0);
           B   : in  STD_LOGIC_VECTOR (3 downto 0);
           X   : out STD_LOGIC_VECTOR (3 downto 0));
end multiplexer;

architecture Behavioral of multiplexer is
begin
    X <= A when (Att_mux = '1') else B;
end Behavioral;