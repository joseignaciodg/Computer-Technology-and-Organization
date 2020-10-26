library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity counter is

port (	clk: in std_logic;
			rst: in std_logic;
			count: in std_logic;
			O: out std_logic_vector(3 downto 0)
);

end counter;

architecture Behavioral of counter is

component adder4b
port( a: in std_logic_vector(3 downto 0);
		b: in std_logic_vector(3 downto 0);
		c: out std_logic_vector(3 downto 0) ); 
end component;

component parallel_reg
    port (rst, clk, load: in std_logic;
			 I: in std_logic_vector(3 downto 0);
	       O: out std_logic_vector(3 downto 0));
end component;

component divider
    port (
        rst: in STD_LOGIC;
        clk_in: in STD_LOGIC; 
        clk_out: out STD_LOGIC
    );
end component;

signal parallel_reg_O: std_logic_vector(3 downto 0);
signal adder_O: std_logic_vector(3 downto 0);
signal clk_aux: std_logic;

begin
	clk_aux <= clk;

	adder_1: adder4b port map( a => parallel_reg_O,
									 b => "0001",
									 c => adder_O);
									 
	register_1: parallel_reg port map (
									rst => rst,
									clk => clk_aux,
									load => count,
									I => adder_O,
									O => parallel_reg_O
									);

	O <= parallel_reg_O;

end Behavioral;