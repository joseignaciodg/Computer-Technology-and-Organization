library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity mult8bits is
	port(
 X : in std_logic_vector(3 downto 0);
 Y : in std_logic_vector(3 downto 0);
 Z : out std_logic_vector(7 downto 0)
 );
end mult8bits;

architecture Behavioral of mult8bits is
	 signal x_u, y_u: unsigned(3 downto 0);
    signal z_u: unsigned(7 downto 0);
begin
	
	x_u <= unsigned(X);
	y_u <= unsigned(Y);
	z_u <= x_u * y_u;
	Z <= std_logic_vector(z_u(7 downto 0));
 
end Behavioral;