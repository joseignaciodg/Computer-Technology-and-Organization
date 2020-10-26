
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY testbench IS
END testbench;
 
ARCHITECTURE behavior OF testbench IS 
 
    COMPONENT counter
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         count : IN  std_logic;
         O : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;

   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal count : std_logic := '0';
   signal O : std_logic_vector(3 downto 0);
   constant clk_period : time := 10 ns;
 
BEGIN
   uut: counter PORT MAP (
          clk => clk,
          rst => rst,
          count => count,
          O => O
        );
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 
   stim_proc: process
   begin		
      rst <= '1';	
		count <= '0';
		wait for 2*clk_period;	
		rst <= '0';
		count <= '1';
      wait;
   end process;

END;
