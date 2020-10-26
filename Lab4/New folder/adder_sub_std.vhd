library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity adder_sub is
    generic( n: natural := 8 );
    port( a   : in std_logic_vector(n-1 downto 0);
          b   : in std_logic_vector(n-1 downto 0);
          op  : in std_logic;
          res : out std_logic_vector(n-1 downto 0) );
end adder_sub;

architecture rtl of adder_sub is
    component adder
        generic( n: natural := 8 );
        port( a   : in std_logic_vector(n-1 downto 0);
              b   : in std_logic_vector(n-1 downto 0);
              ci  : in std_logic;
              sum : out std_logic_vector(n-1 downto 0);
              co  : out std_logic );    
    end component;
    signal op_v : std_logic_vector(n-1 downto 0);
begin
    op_v <= b xor (b'range => op);
    U_ADD: adder
        generic map(n)
        port map(
            a   => a,
            b   => op_v,
            ci  => op,
            sum => res,
            co  => open );
end rtl;