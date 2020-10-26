package definitions is
    constant W_FACTORS : integer := 4;
    constant W_RESULT  : integer := (W_FACTORS*3);

    -- Control Constants
    constant ld_ra     : integer := 0;
	 constant ld_rb     : integer := 1;
    constant ld_rn     : integer := 2;
    constant ld_racc   : integer := 3;
    constant mux_a_l   : integer := 4;   
    constant mux_a_m   : integer := 5;   
    constant mux_b_l   : integer := 6;
	 constant mux_b_m   : integer := 7;
    constant mux_n     : integer := 8;	  -- mux_n = '1' for external input
	 constant mux_acc   : integer := 9;	  -- mux_acc = '1' for external input
	 constant mux_add   : integer := 10;
	 constant mux_i     : integer := 11; 
	 constant mux_sub   : integer := 12; 
	 constant mux_zero  : integer := 13;
    constant ld_ri     : integer := 14;
	 constant ld_rc     : integer := 15;	 
	 constant W_CONTROL : integer := 16;   -- Control vector width

    -- Status Constants
    constant zero      : integer := 0;   -- reg n = 0?
	 constant equal_1   : integer := 1;
    constant W_STATUS  : integer := 2;   -- Status vector width
end package definitions;