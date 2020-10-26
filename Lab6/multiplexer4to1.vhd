library ieee; 
use ieee.std_logic_1164.all; 

entity multiplexer4to1 is 
  generic(
    bits_inputs: positive := 32
  ); 
  port( 
    input0  : in  std_logic_vector(bits_inputs-1 downto 0);
    input1  : in  std_logic_vector(bits_inputs-1 downto 0);
    input2  : in  std_logic_vector(bits_inputs-1 downto 0);
    input3  : in  std_logic_vector(bits_inputs-1 downto 0);
    selector: in  std_logic_vector(1 downto 0); 
    output  : out std_logic_vector(bits_inputs-1 downto 0)  
  ); 
end multiplexer4to1; 

architecture multiplexer4to1Arch of multiplexer4to1 is 

begin 

  output <= input0 when (selector = "00") else 
            input1 when (selector = "01") else 
            input2 when (selector = "10") else 
            input3;  
  
end multiplexer4to1Arch;
