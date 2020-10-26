LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY TestBench IS
END TestBench;
 
ARCHITECTURE behavior OF TestBench IS 
  
    COMPONENT Module
    PORT(
         pushbutton : IN  std_logic;
         reset : IN  std_logic;
         clock : IN  std_logic;
         SWITCH : IN  std_logic_vector(7 downto 0);
         LED : OUT  std_logic_vector(9 downto 0);
         DISPLAY : OUT  std_logic_vector(6 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal pushbutton : std_logic := '0';
   signal reset : std_logic := '0';
   signal clock : std_logic := '0';
   signal SWITCH : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal LED : std_logic_vector(9 downto 0);
   signal DISPLAY : std_logic_vector(6 downto 0);

   -- Clock period definitions
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Module PORT MAP (
          pushbutton => pushbutton,
          reset => reset,
          clock => clock,
          SWITCH => SWITCH,
          LED => LED,
          DISPLAY => DISPLAY
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
      -- hold reset state for 10 ns.
      wait for 10 ns;	
			pushbutton <= '0';
			reset <= '1';
			SWITCH <= "00000000";
		wait for 10 ns;	
			SWITCH <= "01010101";
		wait for 10 ns;	
			pushbutton <= '1';
		wait for 10 ns;	
			pushbutton <= '0';
		wait for 10 ns;	
			reset <= '0';
		wait for 10 ns;	
			reset <= '1';
		wait for 10 ns;	
			SWITCH <= "11000011";
		wait for 10 ns;	
			pushbutton <= '1';
		wait for 10 ns;	
			pushbutton <= '0';
		wait for 10 ns;
			SWITCH <= "11010011";
		wait for 10 ns;	
			pushbutton <= '1';
		wait for 10 ns;	
			pushbutton <= '0';
		wait for 10 ns;
			SWITCH <= "11000011";
		wait for 10 ns;	
			pushbutton <= '1';
		wait for 10 ns;	
			pushbutton <= '0';
      wait;
   end process;

END;
