LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY TestBenchMIPSMulticycle IS
END TestBenchMIPSMulticycle;
 
ARCHITECTURE behavior OF TestBenchMIPSMulticycle IS 
 
  -- Component Declaration for the Unit Under Test (UUT)
 
  COMPONENT MIPSMulticycle
    PORT(
      clk : IN  std_logic;
      rst_n : IN  std_logic
    );
  END COMPONENT;
    

  --Inputs
  signal clk : std_logic := '0';
  signal rst_n : std_logic := '0';

  -- Clock period definitions
  constant clk_period : time := 100 ns;
 
BEGIN
 
  -- Instantiate the Unit Under Test (UUT)
  uut: MIPSMulticycle PORT MAP (
         clk   => clk,
         rst_n => rst_n
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
    -- hold reset state for 200 ns.
    rst_n <= '0';
    wait for 200 ns;  
    rst_n <= '1';

    -- insert stimulus here 

    wait;
  end process;
END;
