library IEEE;
use IEEE.std_logic_1164.ALL;

-- rgb definitie (3-bit)
-- 000 - undefined
-- 001 - enemy
-- 010 - bullet
-- 011 - schild
-- 100 - buitenveld
-- 101 - laneveld

architecture behaviour of gfx_dec_sel is
begin
	process(hpos, vpos)
	begin
		if (hpos = '1' and vpos = '0') then
			rgb <= rgb_dec_lane_v;
		elsif (hpos = '0' and vpos = '1') then
			rgb <= rgb_dec_lane_h;
		elsif (hpos = '1' and vpos = '1') then
			rgb <= rgb_dec_schild;
		else
			rgb <= "100";
		end if;
	end process;
end behaviour;






