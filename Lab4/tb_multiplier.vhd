library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.definitions.all;

entity tb_multiplier is
end tb_multiplier;

architecture beh of tb_multiplier is

    component ASM_multiplier is
        port( reset, clk, init: in  std_logic;
              a_in, b_in:       in  std_logic_vector(W_FACTORS-1 downto 0);
              done:             out std_logic;
              r:                out std_logic_vector(W_RESULT-1  downto 0) );
    end component;

    signal clk, reset, init, done  : std_logic := '0';
    signal a_in, b_in              : std_logic_vector(W_FACTORS-1 downto 0) :=  (others =>'0');
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
    variable v_i, v_j  : natural := 0;
    variable v_sol     : std_logic_vector(W_RESULT-1 downto 0);
  begin
    -- reset
    reset  <= '1';
    wait for 20 ns;
    reset  <= '0';

    init <= '0';
    a_loop : for v_i in 1 to (2**W_FACTORS)-1 loop
        wait until falling_edge(clk);
        a_in <= std_logic_vector(to_unsigned(v_i, W_FACTORS));
        b_loop : for v_j in 1 to (2**W_FACTORS)-1 loop
            b_in <= std_logic_vector(to_unsigned(v_j, W_FACTORS));
            init    <= '1';
            wait until falling_edge(clk);
            init    <= '0';
            wait until done = '1';
            wait until falling_edge(clk);
            v_sol := std_logic_vector(unsigned(a_in)*unsigned(b_in));
            assert v_sol = r
                report "Error with multiplication, got " & integer'image(to_integer(unsigned(r))) & " instead of " & integer'image(to_integer(unsigned(v_sol)))
                severity error;
            wait until falling_edge(clk);
        end loop b_loop;
    end loop a_loop;
    
    --End
    wait;
  end process p_driver;

end beh;