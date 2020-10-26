LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 

ENTITY tb_module IS
END tb_module;
 
ARCHITECTURE behavior OF tb_module IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Module
    PORT(
         start : IN  std_logic;
         stop : IN  std_logic;
         reset : IN  std_logic;
         clock : IN  std_logic;
         leds : OUT  std_logic_vector(9 downto 0);
         Result1 : OUT  std_logic_vector(6 downto 0);
         Result2 : OUT  std_logic_vector(6 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal start : std_logic := '0';
   signal stop : std_logic := '0';
   signal reset : std_logic := '0';
   signal clock : std_logic := '0';

 	--Outputs
   signal leds : std_logic_vector(9 downto 0);
   signal Result1 : std_logic_vector(6 downto 0);
   signal Result2 : std_logic_vector(6 downto 0);

   -- Clock period definitions
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Module PORT MAP (
          start => start,
          stop => stop,
          reset => reset,
          clock => clock,
          leds => leds,
          Result1 => Result1,
          Result2 => Result2
        );

   -- Clock process definitions
   clock_process :process
   begin
		clock <= '0';
		wait for clock_period/2;
		clock <= '1';
		wait for clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		reset <= '0';
		
      wait for 20 ns;
		reset <= '1';
		wait for 20 ns;		

      wait for 20 ns;
		start <= '1';
      wait for 100 ns;
		stop<= '1';
      wait;
   end process;

END;
