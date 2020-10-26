library IEEE;
use IEEE.std_logic_1164.all;

entity controlUnit is
  port( 
    clk     : in  std_logic;
    rst_n   : in  std_logic;
    control : out std_logic_vector(16 downto 0);
    Zero    : in  std_logic;
    op      : in  std_logic_vector(5 downto 0)
  );
end controlUnit;

architecture controlUnitArch of controlUnit is
--Control signals 
  signal control_aux : std_logic_vector(16 downto 0);
  alias PCWrite      : std_logic is control_aux(0);
  alias IorD         : std_logic is control_aux(1);
  alias MemWrite     : std_logic is control_aux(2);
  alias MemRead      : std_logic is control_aux(3);
  alias IRWrite      : std_logic is control_aux(4);
  alias RegDst       : std_logic is control_aux(5);
  alias MemtoReg     : std_logic_vector(1 downto 0) is control_aux(7 downto 6);
  alias RegWrite     : std_logic is control_aux(8);
  alias AWrite       : std_logic is control_aux(9);
  alias BWrite       : std_logic is control_aux(10);  
  alias ALUScrA      : std_logic is control_aux(11);
  alias ALUScrB      : std_logic_vector(1 downto 0) is control_aux(13 downto 12);
  alias OutWrite     : std_logic is control_aux(14);
  alias ALUop        : std_logic_vector(1 downto 0) is control_aux(16 downto 15);
  --States
  TYPE states IS (S0, S1, S2, S3, S4, S5, S6, S7, S8, S9, S10, S11, S12, S13);
  SIGNAL currentState, nextState: states;

begin

  control <= control_aux;

  stateGen:
  PROCESS (currentState, op , zero)
  BEGIN
    nextState   <= currentState;
    control_aux <= (OTHERS=>'0'); --Asign 0 to all control signals
      
    CASE currentState IS
    
      WHEN S0 =>
        PCWrite   <= '1';
        MemRead   <= '1';
        ALUScrB   <= "01";
        nextState <= S1;
      
      WHEN S1 =>
        IRWrite   <= '1';
        nextState <= S2;
      
      WHEN S2 =>
        AWrite <= '1';
        BWrite <= '1';
        if (op = "000000") then    -- R-type
          nextState <= S8;
        elsif (op = "100011") then -- lw
          nextState <= S3;
        elsif (op = "101011") then -- sw
          nextState <= S6;
        elsif (op = "000100") then -- beq
          nextState <= S10;
		  elsif (op = "010000") then -- mfhi
          nextState <= S12;
		  elsif (op = "010010") then -- mflo
          nextState <= S13;
		  elsif (op = "000010") then -- srl
          nextState <= S11;
        end if;
    
      WHEN S3 =>
        ALUScrA   <= '1';
        ALUScrB   <= "10";
        OutWrite  <= '1';
        nextState <= S4;
      
      WHEN S4 =>
        MemRead   <= '1';
        IorD      <= '1';
        nextState <= S5;
    
      WHEN S5 =>
        MemtoReg  <= "01";
        RegWrite  <= '1';
        nextState <= S0;
    
      WHEN S6 =>
        ALUScrA   <= '1';
        ALUScrB   <= "10";
        OutWrite  <= '1';
        nextState <= S7;
      
      WHEN S7 =>
        MemWrite  <= '1';
        IorD      <= '1';
        nextState <= S0;
    
      WHEN S8 =>
        ALUScrA   <= '1';
        ALUOp     <= "10";
        OutWrite  <= '1';
        nextState <= S9;
    
      WHEN S9 =>
        RegDst    <= '1';
        RegWrite  <= '1';
        nextState <= S0;
      
      WHEN S10 =>
        ALUScrA <= '1';
        ALUOp   <= "01";
        if (Zero = '0') then
          nextState <= S0;
        else
          nextState <= S11;
        end if;
      
      WHEN S11 =>
        PCWrite <= '1';
        ALUScrB <= "11";
        nextState <= S0;
		  
		WHEN S12 =>
			MemtoReg  <= "10";
			RegWrite  <= '1';
			nextState <= S0;
			
		WHEN S13 =>	
			MemtoReg  <= "11";
			RegWrite  <= '1';
			nextState <= S0;
			
    END CASE;
  END PROCESS stateGen;

  state:
  PROCESS (rst_n, clk)
  BEGIN
    IF (rst_n = '0') THEN
      currentState <= S0;
    ELSIF RISING_EDGE(clk) THEN
      currentState <= nextState;
    END IF;
  END PROCESS state;

end controlUnitArch;
