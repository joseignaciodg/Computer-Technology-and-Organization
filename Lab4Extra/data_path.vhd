library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.definitions.all;

entity data_path is
    port( clk, reset : in  std_logic;
          a_in, b_in, c_in : in  std_logic_vector (W_FACTORS-1 downto 0);
          control    : in  std_logic_vector (W_CONTROL-1 downto 0);
          status     : out std_logic_vector (W_STATUS-1  downto 0);
          acc          : out std_logic_vector (W_RESULT-1  downto 0) );
end data_path;

architecture arch_dp of data_path is
    component asynch_reg
        generic (n: natural := 8);
        port( clk, rst, load : in  std_logic;
              din            : in  std_logic_vector (n-1 downto 0);
              dout           : out std_logic_vector (n-1 downto 0) );
    end component asynch_reg;
    component adder_sub
        generic( n: natural := 8 );
        port( a   : in std_logic_vector(n-1 downto 0);
              b   : in std_logic_vector(n-1 downto 0);
              op  : in std_logic;
              res : out std_logic_vector(n-1 downto 0) );
    end component adder_sub;
    
	 signal in_ra, out_ra, out_shifta, a_with_zeroes: std_logic_vector(acc'RANGE);
	 signal lsb_b: std_logic;
    signal in_ri, out_ri, in_rn, out_rn, zeroes, out_sub, inb_sub, in_rb, out_rb, in_rc, out_rc, out_shiftb, out_mux_zero, in_sub_mux: std_logic_vector(a_in'RANGE);
    signal in_racc, ina_add, out_racc, out_add: std_logic_vector(acc'RANGE);

begin
    zeroes <= (others => '0');
    acc    <= out_racc;
	 in_rc <= c_in;

    U_REG_A: asynch_reg 
        generic map(W_RESULT)
        port map(clk, reset, control(ld_ra), in_ra, out_ra);
	 U_REG_B: asynch_reg 
        generic map(W_FACTORS)
        port map(clk, reset, control(ld_rb), in_rb, out_rb);
	 U_REG_C: asynch_reg 
        generic map(W_FACTORS)
        port map(clk, reset, control(ld_rc), in_rc, out_rc);
    U_REG_N: asynch_reg 
        generic map(W_FACTORS)
        port map(clk, reset, control(ld_rn), in_rn, out_rn);
	 U_REG_I: asynch_reg 
        generic map(W_FACTORS)
        port map(clk, reset, control(ld_ri), in_ri, out_ri);
    U_REG_ACC: asynch_reg 
        generic map(W_RESULT)
        port map(clk, reset, control(ld_racc), in_racc, out_racc);

    inb_sub <= (0=>'1', others=>'0');
	 in_sub_mux <= out_rb when control(mux_sub)='1' else out_ri;
    U_SUB: adder_sub 
        generic map(W_FACTORS)
        port map(out_rn, inb_sub, '1', out_sub);
    U_ADD: adder_sub 
        generic map(W_RESULT)
        port map( ina_add, out_racc, '0', out_add);
		  
	 a_with_zeroes <=(W_RESULT-1 downto W_FACTORS => '0') & a_in;
	 out_shifta <= out_ra(W_RESULT -2 downto 0) & '0'; 
	 out_shiftb <= '0' & out_rb(W_FACTORS -1 downto 1);
	 ina_add <= out_ra when control(mux_add) ='0' else (others =>'0');     
	 in_ra <= out_shifta when control(mux_a_m downto mux_a_l)= "00" else a_with_zeroes when control(mux_a_m downto mux_a_l)="01" else out_racc;
	 in_rb <= out_shiftb when control(mux_b_m downto mux_b_l)= "00" else b_in when control(mux_b_m downto mux_b_l)="01" else out_rc;
    in_rn <= out_sub when control(mux_n)='0' else "0100"; --4
	 in_ri <= out_sub when control(mux_i)='0' else "0010"; --2
    in_racc <= out_add when control(mux_acc)='0' else (others =>'0');
     
	 lsb_b <= out_rb(0);
	 out_mux_zero <= out_rn when control(mux_zero)='1' else out_ri; 
	 
    status(zero) <= '1' when out_mux_zero = zeroes else '0';
    status(equal_1) <= '1' when lsb_b = '1' else '0';
	 
end arch_dp;
