library IEEE;
use IEEE.std_logic_1164.ALL;

architecture behaviour of lanespd_fsm is
type state_type is (high, hold, low);
signal state, next_state : state_type;
begin

lbl3:   process(clk)
	begin
		if (rising_edge(clk)) then
			if (res = '1') then
				state <= hold;
			else
				state <= next_state;
			end if;
		end if;
	end process;

lbl4:   process(state, lanespd)
	begin
		case state is

		when high =>
		lanespd_p <= '1';
		next_state <= hold;

		when hold =>
		lanespd_p <= '0';
		if lanespd = '0' then
		next_state <= low;
		else
		next_state <= hold;
		end if;

		when low =>
		lanespd_p <= '0';
		if lanespd = '1' then
		next_state <= high;
		else 
		next_state <= low;
		end if;

		end case;
	end process;
		
end behaviour;

