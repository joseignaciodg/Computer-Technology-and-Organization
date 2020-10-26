library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.definitions.all;

entity tb_multiplier is
end tb_multiplier;

architecture beh of tb_multiplier is

    component ASM_multiplier is
        port( reset, clk, init: in  std_logic;
              a_in, b_in, c_in: in  std_logic_vector(W_FACTORS-1 downto 0);
              done:             out std_logic;
              r:                out std_logic_vector(W_RESULT-1  downto 0) );
    end component;

    signal clk, reset, init, done  : std_logic := '0';
    signal a_in, b_in, c_in        : std_logic_vector(W_FACTORS-1 downto 0) :=  (others =>'0');
    signal r                       : std_logic_vector(W_RESULT-1  downto 0) :=  (others =>'0');

begin

  -------------------------------------------------------------------------------
  -- Component instantiation
  -------------------------------------------------------------------------------

  i_dut : ASM_multiplier
    port map (
      reset     => reset,
      clk       => clk,
      init      => init,
      a_in      => a_in,
      b_in      => b_in,
      c_in      => c_in,
      done      => done,
      r         => r
      );

  -----------------------------------------------------------------------------
  -- Process declaration
  -----------------------------------------------------------------------------
  -- Input clock
  p_clk : process
  begin
    clk <= '0', '1' after 5 ns;
    wait for 10 ns;
  end process p_clk;

  p_driver : process
    variable v_sol     : std_logic_vector(W_RESULT-1 downto 0);
    variable a, b, c   : natural;
  begin
    -- reset
    reset  <= '1';
    wait for 20 ns;
    reset  <= '0';

    wait until falling_edge(clk);
    init <= '0';

    -- Test 4*3*2
    a := 4; b := 3; c := 2;
    wait until falling_edge(clk);
    a_in <= std_logic_vector(to_unsigned(a, W_FACTORS));
    b_in <= std_logic_vector(to_unsigned(b, W_FACTORS));
    c_in <= std_logic_vector(to_unsigned(c, W_FACTORS));
    v_sol := std_logic_vector(to_unsigned(a*b*c, W_RESULT));
    init    <= '1';
    wait until falling_edge(clk);
    init    <= '0';
    -- Check
    wait until done = '1';    
    assert v_sol = r
        report "Error with multiplication, got " & integer'image(to_integer(unsigned(r))) &
               " instead of " & integer'image(to_integer(unsigned(v_sol)))
        severity error;

    -- Test 4*3*0
    a := 4; b := 3; c := 0;
    wait until falling_edge(clk);
    a_in <= std_logic_vector(to_unsigned(a, W_FACTORS));
    b_in <= std_logic_vector(to_unsigned(b, W_FACTORS));
    c_in <= std_logic_vector(to_unsigned(c, W_FACTORS));
    v_sol := std_logic_vector(to_unsigned(a*b*c, W_RESULT));
    init    <= '1';
    wait until falling_edge(clk);
    init    <= '0';
    -- Check
    wait until done = '1';    
    assert v_sol = r
        report "Error with multiplication, got " & integer'image(to_integer(unsigned(r))) &
               " instead of " & integer'image(to_integer(unsigned(v_sol)))
        severity error;

    -- Test 15*15*15
    a := 15; b := 15; c := 15;
    wait until falling_edge(clk);
    a_in <= std_logic_vector(to_unsigned(a, W_FACTORS));
    b_in <= std_logic_vector(to_unsigned(b, W_FACTORS));
    c_in <= std_logic_vector(to_unsigned(c, W_FACTORS));
    v_sol := std_logic_vector(to_unsigned(a*b*c, W_RESULT));
    init    <= '1';
    wait until falling_edge(clk);
    init    <= '0';
    -- Check
    wait until done = '1';    
    assert v_sol = r
        report "Error with multiplication, got " & integer'image(to_integer(unsigned(r))) &
               " instead of " & integer'image(to_integer(unsigned(v_sol)))
        severity error;    
    --End
    wait;
  end process p_driver;

end beh;