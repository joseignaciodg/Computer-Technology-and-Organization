library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all; 

entity registerBank is
  port( 
    clk      : in  std_logic;
    rst_n    : in  std_logic;
    RA       : in  std_logic_vector(4 downto 0);
    RB       : in  std_logic_vector(4 downto 0);
    RegWrite : in  std_logic;
    RW       : in  std_logic_vector(4 downto 0);
    busW     : in  std_logic_vector(31 downto 0);
    busA     : out std_logic_vector(31 downto 0);
    busB     : out std_logic_vector(31 downto 0) 
  );
end registerBank;

architecture registerBankArch of registerBank is
   
  type register_bank_type  is array (31 downto 0) of std_logic_vector(31 downto 0);
  signal registerBank : register_bank_type;
  
begin

  write:
  process(clk, rst_n)
  begin
    if (rst_n = '0') then
      for i in 0 to 31 loop
        registerBank(i) <= (others=>'0');
      end loop;    
    elsif rising_edge(clk) then
      if (RegWrite = '1') then
        registerBank(to_integer(unsigned(RW))) <= busW;
      end if;
    end if;
  end process;
  
  read:
  busA <= registerBank(to_integer(unsigned(RA)));
  busB <= registerBank(to_integer(unsigned(RB)));

end registerBankArch;
