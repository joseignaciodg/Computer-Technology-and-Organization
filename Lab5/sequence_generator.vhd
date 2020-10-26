library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sequence_generator is
	 port( clk, load, rst, shiftinv : in  std_logic;
          din            : in  std_logic_vector (9 downto 0);
          dout           : out std_logic_vector (9 downto 0) );
end sequence_generator;

architecture Behavioral of sequence_generator is

begin
	process(rst, clk)
    begin
		  if rst = '1' then
            dout <= (others => '0');
        elsif (clk'event and clk='1') then
            if load = '1' then
                if (shiftinv = '1') then 
						dout <= not din;
					 else -- (shiftinv = '0')
						dout(9) <= not din(0);
						dout(8 downto 0) <= din(9 downto 1);
					 end if;	
            end if;
        end if;
    end process;
end Behavioral;

