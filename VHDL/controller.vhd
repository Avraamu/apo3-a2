library IEEE;
use IEEE.std_logic_1164.ALL;

entity controller is
   port(reset  :in    std_logic;
        clk    :in    std_logic;
        schildl:in    std_logic;
        schildr:in    std_logic;
        schildb:in    std_logic;
        schildo:in    std_logic;
        schietl:in    std_logic;
        schietr:in    std_logic;
        schietb:in    std_logic;
        schieto:in    std_logic);
end controller;


