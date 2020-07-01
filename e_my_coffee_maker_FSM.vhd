library ieee;
use ieee.std_logic_1164.all;

entity e_my_coffee_maker_FSM is
generic(	n3: positive := 28; k3: positive := 150000000;
			n6: positive := 29; k6: positive := 300000000
		);
port(
			CLOCK_50:	in				std_logic;
			SW:			in				std_logic_vector(9 downto 9);
			KEY:		in				std_logic_vector(3 downto 0);
			LEDR:		out				std_logic_vector(9 downto 0);
			HEX0:		out				std_logic_vector(0 to 6);
			HEX1:		out				std_logic_vector(0 to 6);
			HEX2:		out				std_logic_vector(0 to 6);
			HEX3:		out				std_logic_vector(0 to 6);
			HEX4:		out				std_logic_vector(0 to 6);
			HEX5:		out				std_logic_vector(0 to 6)
);
end entity e_my_coffee_maker_FSM;

architecture a_my_coffee_maker_FSM of e_my_coffee_maker_FSM is

   -- Type Declaration
   type t_coffee_maker_states is (S_IDLE, S_GRIND, S_BREW, S_CHOC_POWDER, S_PUMP_WATER, S_PUMP_MILK,S_TEST, S_DONE);
   signal coffee_maker_state : t_coffee_maker_states;

   -- Component Declaration
   component e_modulo_counter
      generic( n: natural := 4; k: integer := 15);
      port (   sl_clock, sl_reset_n:	in		std_logic;
               sl_enable:				in		std_logic;
               slv_Q:					out		std_logic_vector(n-1 downto 0);
               sl_rollover:			    out		std_logic
      );
   end component e_modulo_counter;

   -- Signal Declaration
   signal sl_Clock_int:			std_logic;
   signal sl_resetn_int:		std_logic;
    
   signal slv_selection_int:	std_logic_vector(3 downto 0);

   signal sl_reset3n_int, sl_done3_int: std_logic;
   signal sl_reset6n_int, sl_done6_int: std_logic;

   signal sl_coffee_int:			std_logic;
   signal sl_cappuccino_int:		std_logic;
   signal sl_espresso_int:			std_logic;
   signal sl_hot_chocolate_int:	std_logic;

   signal sl_fsm_ready_int:		std_logic;
   signal sl_fsm_done_int:			std_logic;
   
   constant c_A: std_logic_vector(0 to 6) := "0001000";
   constant c_C: std_logic_vector(0 to 6) := "0110001";
   constant c_E: std_logic_vector(0 to 6) := "0110000";
   constant c_F: std_logic_vector(0 to 6) := "0111000";
   constant c_H: std_logic_vector(0 to 6) := "1001000";
   constant c_O: std_logic_vector(0 to 6) := "0000001";
   constant c_P: std_logic_vector(0 to 6) := "0011000";
   constant c_R: std_logic_vector(0 to 6) := "1111010";
   constant c_S: std_logic_vector(0 to 6) := "0100100";
   constant c_U: std_logic_vector(0 to 6) := "1000001";
   constant c_dash:  std_logic_vector(0 to 6) := "1111110";
   constant c_blank:  std_logic_vector(0 to 6) := "1111111";

begin

   sl_resetn_int <= SW(9);
   sl_Clock_int <= CLOCK_50;
   slv_selection_int <= KEY;

   -- e_modulo_counter(n, k)(sl_clock, sl_reset_n, sl_enable, slv_Q, sl_rollover)   
   I_count3: e_modulo_counter
      generic map	(	n => n3, k => k3)
      port map	(	sl_clock		=>		sl_Clock_int,
						sl_reset_n	=>		sl_reset3n_int,
						sl_enable	=>		'1',
						slv_Q			=>		open,
						sl_rollover	=>		sl_done3_int
					);

   I_count6: e_modulo_counter
      generic map	(	n => n6, k => k6)
      port map	(	sl_clock	=>		sl_Clock_int,
						sl_reset_n	=>		sl_reset6n_int,
						sl_enable	=>		'1',
						slv_Q			=>		open,
						sl_rollover	=>		sl_done6_int
					);

   p_coffee_maker_FSM: process (sl_Clock_int, sl_resetn_int)
   begin
      if(sl_resetn_int = '0') then
	     coffee_maker_state <= S_IDLE;
	     sl_reset3n_int <= '0';
	     sl_reset6n_int <= '0';
	  elsif(rising_edge(sl_Clock_int)) then
         case(coffee_maker_state) is
		    when S_IDLE =>
		       if(sl_coffee_int = '1') then
		          -- Grind Coffee for 6 seconds
		          sl_reset3n_int <= '0';
		          sl_reset6n_int <= '1';
		          coffee_maker_state <= S_GRIND;
		       elsif(sl_cappuccino_int = '1') then
		          -- Grind Cappuccino for 3 seconds
		          sl_reset3n_int <= '1';
		          sl_reset6n_int <= '0';
		          coffee_maker_state <= S_GRIND;
		       elsif(sl_espresso_int = '1') then
		          -- Grind Espresso for 3 seconds
		          sl_reset3n_int <= '1';
		          sl_reset6n_int <= '0';
		          coffee_maker_state <= S_GRIND;
		       elsif(sl_hot_chocolate_int = '1') then
		          -- Brew Water for 6 seconds
		          sl_reset3n_int <= '0';
		          sl_reset6n_int <= '1';
		          coffee_maker_state <= S_BREW;
		       else
		          coffee_maker_state <= S_IDLE;
		       end if;  
		    when S_GRIND =>
		       if(sl_coffee_int = '1') then
		          -- Grind Coffee for 6 seconds done!
		          if(sl_done6_int = '1') then
		             -- Brew Water for 6 seconds
		             sl_reset3n_int <= '0';
		             sl_reset6n_int <= '1';
		             coffee_maker_state <= S_BREW;
		          end if;
		       elsif(sl_cappuccino_int = '1') then
		          -- Grind Cappuccino for 3 seconds done!
		          if(sl_done3_int = '1') then
		             -- Brew Water for 6 seconds
		             sl_reset3n_int <= '0';
		             sl_reset6n_int <= '1';
		             coffee_maker_state <= S_BREW;
		          end if;
		       elsif(sl_espresso_int = '1') then
		          -- Grind Espresso for 3 seconds done!
		          if(sl_done3_int = '1') then
		             -- Brew Water for 6 seconds
		             sl_reset3n_int <= '0';
		             sl_reset6n_int <= '1';
		             coffee_maker_state <= S_BREW;
		          end if;
		       else
		          coffee_maker_state <= S_GRIND;
		       end if;
		    when S_BREW =>
		       if(sl_coffee_int = '1') then
		          -- Brew Water of 6 seconds done!
		          if(sl_done6_int = '1') then
		             -- Pump Water for 6 seconds
		             sl_reset6n_int <= '1';
		             sl_reset3n_int <= '0';
		             coffee_maker_state <= S_PUMP_WATER;
		          end if;
		       elsif(sl_cappuccino_int = '1') then
		          -- Brew Water of 6 seconds done!
		          if(sl_done6_int = '1') then
		             -- Pump Water for 3 seconds
		             sl_reset6n_int <= '0';
		             sl_reset3n_int <= '1';
		             coffee_maker_state <= S_PUMP_WATER;
		          end if;
		       elsif(sl_espresso_int = '1') then
		          -- Brew Water of 6 seconds done!
		          if(sl_done6_int = '1') then
		             -- Pump Water 3 seconds
		             sl_reset6n_int <= '0';
		             sl_reset3n_int <= '1';
		             coffee_maker_state <= S_PUMP_WATER;
		          end if;
		       elsif(sl_hot_chocolate_int = '1') then
		          -- Brew Water of 6 seconds done!
		          if(sl_done6_int = '1') then
		             -- Fill in Chocolate Powder for 3 seconds
		             sl_reset6n_int <= '0';
		             sl_reset3n_int <= '1';
		             coffee_maker_state <= S_CHOC_POWDER;
		          end if;
		       else
		          coffee_maker_state <= S_BREW;
		       end if;
		    when S_CHOC_POWDER =>
		       if(sl_hot_chocolate_int = '1') then
		          -- Fill in Chocolate Powder for 3 seconds done!
		          if(sl_done3_int = '1') then
		             -- Pump Water for 6 seconds
		             sl_reset6n_int <= '1';
		             sl_reset3n_int <= '0';
		             coffee_maker_state <= S_PUMP_WATER;
		          end if;
		       else
		          coffee_maker_state <= S_CHOC_POWDER;
		       end if;		
		    when S_PUMP_WATER =>
		       if(sl_coffee_int = '1') then
		          -- Pump Water for 6 seconds done!
		          if(sl_done6_int = '1') then
		             -- Display Done for 3 seconds
		             sl_reset6n_int <= '0';
		             sl_reset3n_int <= '1';
		             coffee_maker_state <= S_DONE;
		          end if;
		       elsif(sl_cappuccino_int = '1') then
		          -- Pump Water for 3 seconds done!
		          if(sl_done3_int = '1') then
		             sl_reset6n_int <= '0';
		             sl_reset3n_int <= '1';
		             coffee_maker_state <= S_PUMP_MILK;
		          end if;
		       elsif(sl_espresso_int = '1') then
		          -- Pump Water for 3 seconds done!
		          if(sl_done3_int = '1') then
		             -- Display Done for 3 seconds
		             sl_reset6n_int <= '0';
		             sl_reset3n_int <= '1';
		             coffee_maker_state <= S_DONE;
		          end if;
		       elsif(sl_hot_chocolate_int = '1') then
		          -- Pump Water for 6 seconds done!
		          if(sl_done6_int = '1') then
		             -- Display Done for 3 seconds
		             sl_reset6n_int <= '0';
		             sl_reset3n_int <= '1';
		             coffee_maker_state <= S_DONE;
		          end if;
		       else
		          coffee_maker_state <= S_PUMP_WATER;
		       end if;   
		    when S_PUMP_MILK =>
		       if(sl_cappuccino_int = '1') then
		          -- Pump Milk for 3 seconds done!
		          if(sl_done3_int = '1') then
		             -- Display Done for 3 seconds
		             sl_reset6n_int <= '0';
		             sl_reset3n_int <= '1';
		             coffee_maker_state <= S_DONE;
		          end if;
		       else
		          coffee_maker_state <= S_PUMP_MILK;
		       end if;
			 when S_TEST =>
		       if(sl_cappuccino_int = '1') then
		          -- Pump Milk for 3 seconds done!
		          if(sl_done3_int = '1') then
		             -- Display Done for 3 seconds
		             sl_reset6n_int <= '0';
		             sl_reset3n_int <= '1';
		             coffee_maker_state <= S_PUMP_WATER;
		          end if;
		       else
		          coffee_maker_state <= S_PUMP_MILK;
		       end if;
		    when S_DONE =>
		       -- Display Done for 3 seconds done!
		       if(sl_done3_int = '1') then
		          -- Go back to IDLE
		          sl_reset6n_int <= '0';
		          sl_reset3n_int <= '0';
		          coffee_maker_state <= S_IDLE;
		       end if;
		    when others => 
		       coffee_maker_state <= S_IDLE;	
		       report "Reach undefined state";
		 end case;
	  end if;
   end process p_coffee_maker_FSM;
   
   p_coffee_maker_output: process (coffee_maker_state)
   begin
      case(coffee_maker_state) is
         when S_IDLE =>
			LEDR <= "1000000000";
			sl_fsm_ready_int <= '1';
			sl_fsm_done_int <= '0';
         when S_GRIND =>
			LEDR <= "0000000001"; -- Display GRIND Mode
			sl_fsm_ready_int <= '0';
			sl_fsm_done_int <= '0';
		 when S_BREW =>
			LEDR <= "0000000010"; -- Display BREW Mode
			sl_fsm_ready_int <= '0';
			sl_fsm_done_int <= '0';
		 when S_CHOC_POWDER =>
			LEDR <= "0000000100"; -- Display CHOC_POWDER Mode
			sl_fsm_ready_int <= '0';
			sl_fsm_done_int <= '0';
		 when S_PUMP_WATER =>
			LEDR <= "0000001000"; -- Display PUMP_WATER Mode
			sl_fsm_ready_int <= '0';
			sl_fsm_done_int <= '0';
		 when S_PUMP_MILK =>
			LEDR <= "0000010000"; -- Display PUMP_MILK Mode
			sl_fsm_ready_int <= '0';
			sl_fsm_done_int <= '0';
		 when S_TEST =>
			LEDR <= "0000100000"; -- Display PUMP_MILK Mode
			sl_fsm_ready_int <= '0';
			sl_fsm_done_int <= '0';
		 when S_DONE =>
			LEDR <= "0001000000"; -- Display DONE Mode
			sl_fsm_ready_int <= '0';
			sl_fsm_done_int <= '1';
		 when others =>
		    LEDR <= (others => '1');
	  end case;
   end process p_coffee_maker_output;
	
   p_choice: process (sl_Clock_int, sl_resetn_int, slv_selection_int)
   begin
      if (sl_resetn_int = '0') then
         sl_coffee_int			<= '0';
         sl_cappuccino_int		<= '0';
         sl_espresso_int		<= '0';
         sl_hot_chocolate_int	<= '0';
      elsif(rising_edge(sl_Clock_int)) then
         if(sl_fsm_ready_int = '1') then
            case slv_selection_int is
               when "1110" => sl_coffee_int 			<=	'1';
               when "1101" => sl_cappuccino_int			<= 	'1';
               when "1011" => sl_espresso_int			<= 	'1';
               when "0111" => sl_hot_chocolate_int		<= 	'1';
               when others => null;
            end case;
         end if;
         if(sl_fsm_done_int = '1') then
            sl_coffee_int			<= '0';
            sl_cappuccino_int		<= '0';
            sl_espresso_int			<= '0';
            sl_hot_chocolate_int	<= '0';
         end if;
      end if;
   end process p_choice;
	
   p_segments: process (sl_resetn_int, sl_coffee_int, sl_cappuccino_int, sl_espresso_int, sl_hot_chocolate_int)
   begin
      if(sl_resetn_int = '0') then
         HEX5 <= c_dash;	-- -
         HEX4 <= c_dash;	-- -
         HEX3 <= c_dash;	-- -
         HEX2 <= c_dash;	-- -
         HEX1 <= c_dash;	-- -
         HEX0 <= c_dash;	-- -
      elsif(sl_coffee_int = '1') then
         HEX5 <= c_C;		-- C
         HEX4 <= c_O;		-- O
         HEX3 <= c_F;		-- F
         HEX2 <= c_F;		-- F
         HEX1 <= c_E;		-- E
         HEX0 <= c_E;		-- E
      elsif(sl_cappuccino_int = '1') then
         HEX5 <= c_C;		-- C
         HEX4 <= c_A;		-- A
         HEX3 <= c_P;		-- P
         HEX2 <= c_P;		-- P
         HEX1 <= c_U;		-- U
         HEX0 <= c_blank;	-- 
      elsif(sl_espresso_int = '1') then
         HEX5 <= c_E;		-- E
         HEX4 <= c_S;		-- S
         HEX3 <= c_P;		-- P
         HEX2 <= c_R;		-- R
         HEX1 <= c_E; 		-- E
         HEX0 <= c_S; 		-- S
      elsif(sl_hot_chocolate_int = '1') then
         HEX5 <= c_C;		-- C
         HEX4 <= c_H;		-- H
         HEX3 <= c_O;		-- O
         HEX2 <= c_C;		-- C
         HEX1 <= c_blank;	-- 
         HEX0 <= c_blank;	-- 
      else
         HEX5 <= c_C;		-- C
         HEX4 <= c_H;		-- H
         HEX3 <= c_O;		-- O
         HEX2 <= c_O;		-- O
         HEX1 <= c_S; 		-- S
         HEX0 <= c_E;		-- E
      end if;
   end process p_segments;

end architecture a_my_coffee_maker_FSM;