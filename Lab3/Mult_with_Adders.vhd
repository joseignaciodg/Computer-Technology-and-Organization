library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Mult_with_Adders is
	port(
 X : in std_logic_vector(3 downto 0);
 Y : in std_logic_vector(3 downto 0);
 Z : out std_logic_vector(7 downto 0)
 );
end Mult_with_Adders;

architecture Behavioral of Mult_with_Adders is

COMPONENT adder8b
 port( a: in std_logic_vector(7 downto 0);
		 b: in std_logic_vector(7 downto 0);
		 c: out std_logic_vector(7 downto 0) );
end component;

signal x_1, y_1, x_2, x_3: std_logic_vector(7 downto 0);
signal y_2, y_3, z_3: std_logic_vector(7 downto 0);

begin

x_1(0) <= '0';
x_1(1) <= X(0) and Y(1); x_1(2) <= X(1) and Y(1); 
x_1(3) <= X(2) and Y(1); x_1(4) <= X(3) and Y(1);
x_1(7 downto 5) <= "000";

y_1(0) <= X(0) and Y(0); y_1(1) <= X(1) and Y(0); 
y_1(2) <= X(2) and Y(0); y_1(3) <= X(3) and Y(0);
y_1(7 downto 4) <= "0000";

x_2(1 downto 0) <= "00";
x_2(2) <= X(0) and Y(2); x_2(3) <= X(1) and Y(2); 
x_2(4) <= X(2) and Y(2); x_2(5) <= X(3) and Y(2);
x_2(7 downto 6) <= "00";

x_3(2 downto 0) <= "000";
x_3(3) <= X(0) and Y(3); x_3(4) <= X(1) and Y(3); 
x_3(5) <= X(2) and Y(3); x_3(6) <= X(3) and Y(3);
x_3(7) <= '0';

mod_adder8b1: adder8b port map(x_1, y_1, y_2);
mod_adder8b2: adder8b port map(x_2, y_2, y_3);
mod_adder8b3: adder8b port map(x_3, y_3, z_3);

Z <= z_3;

end Behavioral;

