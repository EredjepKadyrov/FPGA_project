library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity e_modulo_counter is
	generic( n: positive := 4; k: positive := 15);
	port (	sl_clock, sl_reset_n:	in		std_logic;
			sl_enable:				in		std_logic;
			slv_Q:					out		std_logic_vector(n-1 downto 0);
			sl_rollover:			out		std_logic
	);
end entity e_modulo_counter;

architecture a_modulo_counter of e_modulo_counter is

-- Declarations:

-- Signal Declarations:
	signal u_counter_int:	unsigned(n-1 downto 0);

begin

-- Assignments:

-- Concurrent Assignments:
	slv_Q <= std_logic_vector(u_counter_int);
	
-- Conditional Signal Assignments:
	sl_rollover <= '1' when (u_counter_int = k-1) else '0';

-- Sequential process with async. low-active reset and sync high-active enable
	p_mod_cnt: process(sl_clock, sl_reset_n)
	begin
		if(sl_reset_n = '0') then
			u_counter_int <= (others => '0');
		elsif(rising_edge(sl_clock)) then
		   if(sl_enable = '1') then
		      if(u_counter_int = k-1) then
		         u_counter_int <= (others => '0');
		      else
		         u_counter_int <= u_counter_int + 1;
		      end if;
		   end if;
		end if;
	end process p_mod_cnt;

end architecture a_modulo_counter;
	