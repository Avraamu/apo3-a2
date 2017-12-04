
library ieee,CellsLib;

use ieee.std_logic_1164.all;
use CellsLib.CellsLib_DECL_PACK.all;

architecture synthesised of bulletspd_fsm is

   component no210
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component iv110
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   component na210
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ex210
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component dfr11
      port( D, R, CK : in std_logic;  Q : out std_logic);
   end component;
   
   component dfn10
      port( D, CK : in std_logic;  Q : out std_logic);
   end component;
   
   signal state_1_port, state_0_port, next_state_1_port, next_state_0_port, n1,
      n2, bulletspd_p_port, n8, n9, n10, n11 : std_logic;

begin
   bulletspd_p <= bulletspd_p_port;
   
   state_reg_0_inst : dfn10 port map( D => n2, CK => clk, Q => state_0_port);
   state_reg_1_inst : dfr11 port map( D => next_state_1_port, R => res, CK => 
                           clk, Q => state_1_port);
   U3 : iv110 port map( A => n1, Y => n2);
   U4 : no210 port map( A => res, B => next_state_0_port, Y => n1);
   U12 : no210 port map( A => bulletspd, B => n8, Y => next_state_1_port);
   U13 : ex210 port map( A => state_0_port, B => n9, Y => n8);
   U14 : na210 port map( A => n10, B => n11, Y => next_state_0_port);
   U15 : na210 port map( A => bulletspd, B => n9, Y => n11);
   U16 : iv110 port map( A => state_1_port, Y => n9);
   U17 : iv110 port map( A => bulletspd_p_port, Y => n10);
   U18 : no210 port map( A => state_0_port, B => state_1_port, Y => 
                           bulletspd_p_port);

end synthesised;



