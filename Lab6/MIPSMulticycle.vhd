library IEEE;
use IEEE.std_logic_1164.all;

entity MIPSMulticycle is
  port( 
    clk    : in  std_logic;
    rst_n  : in  std_logic
  );
end MIPSMulticycle;

architecture MIPSMulticycleArch of MIPSMulticycle is

  component controlUnit is
    port( 
      clk     : in  std_logic;
      rst_n   : in  std_logic;
      control : out std_logic_vector(16 downto 0);
      Zero    : in  std_logic;
      op      : in  std_logic_vector(5 downto 0)
    );
  end component;

  component dataPath is
    port( 
      clk     : in  std_logic;
      rst_n   : in  std_logic;
      control : in  std_logic_vector(16 downto 0);
      Zero    : out std_logic;
      op      : out std_logic_vector(5 downto 0)
    );
  end component;
  
  signal control : std_logic_vector(16 downto 0);
  signal Zero    : std_logic;
  signal op      : std_logic_vector(5 downto 0);

begin

  CU : controlUnit port map(clk => clk, rst_n => rst_n, control => control, Zero => Zero, op => op);
    
  DP : dataPath    port map(clk => clk, rst_n => rst_n, control => control, Zero => Zero, op => op); 

end MIPSMulticycleArch;
