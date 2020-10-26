library ieee; 
use ieee.std_logic_1164.all;

entity multiplexer2to1 is 
  generic(
    bits_inputs: positive := 32
  ); 
  port( 
    input0  : in  std_logic_vector(bits_inputs-1 downto 0); 
    input1  : in  std_logic_vector(bits_inputs-1 downto 0); 
    selector: in  std_logic; 
    output  : out std_logic_vector(bits_inputs-1 downto 0)  
  ); 
end multiplexer2to1; 

architecture multiplexer2to1Arch of multiplexer2to1 is 

begin 

  output <= input0 when (selector = '0') else input1;  
  
end multiplexer2to1Arch;
