LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

 
ENTITY reg_testbench IS
END reg_testbench;
 
ARCHITECTURE behavior OF reg_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT register8bits
    PORT( rst, clk, load: in std_logic;
		switch: in std_logic_vector(7 downto 0);
		O: out std_logic_vector(7 downto 0) );
    END COMPONENT;
    
  --Inputs
    signal rst : std_logic;
    signal clk : std_logic;
    signal switch : std_logic_vector(7 downto 0);
	 signal load: std_logic;
		
--Outputs
    signal O : std_logic_vector(7 downto 0);
 
   constant clk_period : time := 50 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: register8bits PORT MAP (
			 rst => rst,
          clk => clk,
			 load => load,
          switch => switch,
          O => O
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process	
      begin	
		-- Stop reseting
		rst<='1';
		load <= '0';
			wait for 45 ns;
		-- Reset for 45 ns.	
		rst<='0';
		load <= '0';
		switch <="00000000";
			wait for 50 ns;	
		-- Load value "00001101"
		rst<='1';
		load <= '1';
		switch <="00001101";
			wait for 50 ns;	
		-- Maintain the value for 100 ns
		rst<='1';
		load <= '0';
		switch <="00000000"; 
			wait for 100 ns;	
		-- Load value "00000011" 
		rst<='1';
		load <= '1';
		switch <="00000011"; 
			wait for 50 ns;	
		-- Maintain the value forever
		rst<='1';
		load <= '0';
		switch <="00000000";
      wait;
   end process;

END;