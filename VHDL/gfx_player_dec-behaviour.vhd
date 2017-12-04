library IEEE;
use IEEE.std_logic_1164.ALL;

architecture behaviour of gfx_player_dec is
begin
	process(h_detail, v_detail, schild)
	begin
		case schild is
			when "00" => -- boven
				if (v_detail = "000") then
					rgb <= "011";
				else
					rgb <= "000";
				end if;
			when "01" => -- links
				if (h_detail = "000") then
					rgb <= "011";
				else
					rgb <= "000";
				end if;
			when "10" => -- rechts
				if (h_detail = "111") then
					rgb <= "011";
				else
					rgb <= "000";
				end if;
			when "11" => -- onder
				if (v_detail = "111") then
					rgb <= "011";
				else
					rgb <= "000";
				end if;
			when others =>
				rgb <= "000";
		end case;
	end process;
end behaviour;






