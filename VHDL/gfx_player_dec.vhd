library IEEE;
use IEEE.std_logic_1164.ALL;

entity gfx_player_dec is
   port(h_detail:in    std_logic_vector(2 downto 0);
        v_detail:in    std_logic_vector(2 downto 0);
        schild  :in    std_logic_vector(1 downto 0);
        rgb     :out   std_logic_vector(2 downto 0));
end gfx_player_dec;

