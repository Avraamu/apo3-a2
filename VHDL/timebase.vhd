library IEEE;
use IEEE.std_logic_1164.ALL;

entity timebase is
   port(clk      :in    std_logic;
	res	 :in	std_logic;
        gfx      :out   std_logic;
        bulletspd:out   std_logic;
        lanespd  :out   std_logic;
        score    :out   std_logic);
end timebase;


