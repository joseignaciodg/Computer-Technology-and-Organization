library ieee;
use ieee.std_logic_1164.all;

entity asynch_reg is
    generic (n: natural := 8);
    port( clk, rst, load : in  std_logic;
          din            : in  std_logic_vector (n-1 downto 0);
          dout           : out std_logic_vector (n-1 downto 0) );
end asynch_reg;

architecture arch_reg of asynch_reg is
begin
    process(rst, clk)
    begin
        if rst = '1' then
            dout <= (others => '0');
        elsif (clk'event and clk='1') then
            if load = '1' then
                dout <= din;
            end if;
        end if;
    end process;
end arch_reg;