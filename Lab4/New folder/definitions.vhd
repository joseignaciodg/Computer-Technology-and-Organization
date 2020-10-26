package definitions is
    constant W_FACTORS : integer := 4;
    constant W_RESULT  : integer := (W_FACTORS*2);

    -- Control Constants
    constant ld_ra     : integer := 0;
	 constant ld_rb     : integer := 1;
    constant ld_rn     : integer := 2;
    constant ld_racc   : integer := 3;
    constant mux_a     : integer := 4;   
    constant mux_b     : integer := 5;  
    constant mux_n     : integer := 6;	  -- mux_n = '1' for external input
	 constant mux_acc   : integer := 7;	  -- mux_acc = '1' for external input
	 constant mux_add   : integer := 8;
	 constant W_CONTROL : integer := 9;   -- Control vector width

    -- Status Constants
    constant zero      : integer := 0;   -- reg n = 0?
	 constant equal_1   : integer := 1;
    constant W_STATUS  : integer := 2;   -- Status vector width
end package definitions;