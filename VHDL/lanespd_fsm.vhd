library IEEE;
use IEEE.std_logic_1164.ALL;

entity lanespd_fsm is
   port(lanespd  :in    std_logic;
        lanespd_p:out   std_logic;
        clk      :in    std_logic;
        res      :in    std_logic);
end lanespd_fsm;


