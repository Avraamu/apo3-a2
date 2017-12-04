library IEEE;
use IEEE.std_logic_1164.ALL;

architecture behaviour of tb is
   component timebase
      port (clk       : in  std_logic;
            res       : in  std_logic;
            gfx       : out std_logic;
            bulletspd : out std_logic;
            lanespd   : out std_logic;
            score     : out std_logic);
   end component;

   component lanespd_fsm
      port (lanespd   : in  std_logic;
            lanespd_p : out std_logic;
            clk       : in  std_logic;
            res       : in  std_logic);
   end component;

   component bulletspd_fsm
      port (bulletspd   : in  std_logic;
            bulletspd_p : out std_logic;
            res         : in  std_logic;
            clk         : in  std_logic);
   end component;
signal clk, res, gfx, bulletspd, lanespd, score, lanespd_p, bulletspd_p : std_logic;

begin

lbl1: timebase port map (clk, res, gfx, bulletspd, lanespd, score);
clk <=  '1' after 0 ns,
	'0' after 81.4 ns when clk /= '0' else '1' after 81.4 ns;
res <=  '1' after 0 ns,
	'0' after 200 ns;

lbl2: bulletspd_fsm port map (bulletspd, bulletspd_p, res, clk);
clk <=  '1' after 0 ns,
	'0' after 81.4 ns when clk /= '0' else '1' after 81.4 ns;
res <=  '1' after 0 ns,
	'0' after 200 ns;

lbl3: lanespd_fsm port map (lanespd, lanespd_p, clk, res);
clk <=  '1' after 0 ns,
	'0' after 81.4 ns when clk /= '0' else '1' after 81.4 ns;
res <=  '1' after 0 ns,
	'0' after 200 ns;

end behaviour;








