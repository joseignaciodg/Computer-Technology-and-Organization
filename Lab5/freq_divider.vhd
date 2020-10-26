library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Creates clk_out clock with a period T_out=T_in*(half_count+1)*2 
-- for half_count greater than 0.
--
-- Example 1HZ clk from 100MHz clk =>  
--    half_count=10111110101111000001111111 (=49999999)
--
-- Example 10HZ clk from 100MHz clk =>  
--    half_count=10011000100101100111111 (=4999999)
--
-- Example 1KHZ clk from 100MHz clk =>  
--    half_count=1100001101001111 (=49999)
--

entity freq_divider is
    generic( half_count: unsigned);
    port (
        rst: in std_logic;
        clk_in: in std_logic; 
        clk_out: out std_logic
    );
end freq_divider;

architecture divider_arch of freq_divider is
    signal count: unsigned(half_count'RANGE);
    signal clk_aux: std_logic;
  
begin

    counter:
    process(rst, clk_in)
    begin
        if(rst='1') then
            count<= (others=>'0');
            clk_aux<='0';
        elsif rising_edge(clk_in) then
            if (count = half_count) then 
                clk_aux <= not clk_aux;
                count<= (others=>'0');
            else
                count <= count+1;
                clk_aux<=clk_aux;
            end if;
        end if;
    end process counter;

    clk_out <= clk_aux;

end divider_arch;
