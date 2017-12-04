library IEEE;
use IEEE.std_logic_1164.ALL;

entity inputbuffer is
   port(btn0   :in    std_logic;
        btn1   :in    std_logic;
        btn2   :in    std_logic;
        btn3   :in    std_logic;
        btn4   :in    std_logic;
        btn5   :in    std_logic;
        btn6   :in    std_logic;
        btn7   :in    std_logic;
        btn_out:out   std_logic_vector(3 downto 0));
end inputbuffer;


