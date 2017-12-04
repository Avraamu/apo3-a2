library IEEE;
use IEEE.std_logic_1164.ALL;

entity gfx_dec_sel is
   port(rgb_dec_lane_h:in    std_logic_vector(2 downto 0);
        rgb_dec_lane_v:in    std_logic_vector(2 downto 0);
        rgb_dec_schild:in    std_logic_vector(2 downto 0);
        hpos          :in    std_logic;
        vpos          :in    std_logic;
        rgb           :out   std_logic_vector(2 downto 0));
end gfx_dec_sel;







