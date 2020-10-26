library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity adder is
    generic( n: natural := 8 );
    port( a   : in std_logic_vector(n-1 downto 0);
          b   : in std_logic_vector(n-1 downto 0);
          ci  : in std_logic;
          sum : out std_logic_vector(n-1 downto 0);
          co  : out std_logic );
end adder;

architecture rtl of adder is
    signal sum_u: unsigned(n downto 0);
begin
    sum_u <= unsigned("0" & a) + unsigned("0" & b) + unsigned'("0" & ci);
    sum <= std_logic_vector(sum_u(n-1 downto 0));
    co <= sum_u(n);
end rtl;