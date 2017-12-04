library IEEE;
use IEEE.std_logic_1164.ALL;

entity gfx_lane_dec is
   port(pos       :in    std_logic_vector(3 downto 0);
        enemy_pos_1 :in    std_logic_vector(2 downto 0);
        enemy_pos_2 :in    std_logic_vector(2 downto 0);
        bullet_pos_1:in    std_logic_vector(2 downto 0);
        bullet_pos_2:in    std_logic_vector(2 downto 0);
		rgb         :out   std_logic_vector(2 downto 0));
end gfx_lane_dec;


