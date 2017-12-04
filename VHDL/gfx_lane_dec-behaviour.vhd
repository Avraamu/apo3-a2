library IEEE;
use IEEE.std_logic_1164.ALL;

architecture behaviour of gfx_lane_dec is
begin
	process(pos)
	begin
		if (pos(0) = '0') then -- if eerste deel
			if (pos(2 downto 0) = enemy_pos_1) then
				rgb <= "001";
			elsif (pos(2 downto 0) = bullet_pos_1) then
				rgb <= "010";
			else
				rgb <= "101";
			end if;
		else
			if ((pos(2 downto 0) nand enemy_pos_2) = "000") then
				rgb <= "001";
			elsif ((pos(2 downto 0) nand bullet_pos_2) = "000") then
				rgb <= "010";
			else
				rgb <= "101";
			end if;
		end if;
	end process;
end behaviour;












