library IEEE;
use IEEE.std_logic_1164.all;

entity memory is
  port( 
    clk      : in  std_logic;
    ADDR     : in  std_logic_vector(31 downto 0 );
    MemWrite : in  std_logic;
    MemRead  : in  std_logic;
    DW       : in  std_logic_vector(31 downto 0 );
    DR       : out std_logic_vector(31 downto 0 ) 
  );
end memory;

architecture memory_Arch of memory is

  -- This componen has been created using an IPCore with a .coe file with the initial content
--  COMPONENT mem32x512
--    PORT (
--     clka   : IN  STD_LOGIC;
--     ena     : IN  STD_LOGIC;
--     wea     : IN  STD_LOGIC_VECTOR(0 DOWNTO 0);
--     addra  : IN  STD_LOGIC_VECTOR(8 DOWNTO 0);
--     dina    : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
--     douta  : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
--    );
--  END COMPONENT;   
  
  -- This component has been created using VHDL code, the initial content is specified inside it
  COMPONENT BlockRam is
    port (
      clka, wea, ena : in STD_LOGIC;
      addra          : in STD_LOGIC_VECTOR (8 downto 0);
      dina           : in STD_LOGIC_VECTOR (31 downto 0);
      douta          : out STD_LOGIC_VECTOR (31 downto 0)
    );
  end COMPONENT;  
  
  signal wea : std_logic_vector(0 downto 0);
  signal ena : std_logic;
  
begin

--  mem: mem32x512 PORT MAP(
--     clka    => clk,
--     ena     => ena,
--     wea     => wea,
--     addra   => ADDR(10 downto 2), -- We reduce the RAM size to 512 positions (4 byte words for data and instructions)
--     dina    => DW,
--     douta   => DR
--    );
    
  mem: BlockRam PORT MAP(
     clka   => clk,
     ena    => ena,
     wea    => MemWrite,
     addra  => ADDR(10 downto 2), -- We reduce the RAM size to 512 positions (4 byte words for data and instructions)
     dina   => DW,
     douta  => DR
    );    

  ena <= '1' when (MemWrite = '1' or MemRead = '1') else '0';
  wea <= "1" when (MemWrite = '1') else "0";
    
end memory_Arch;
