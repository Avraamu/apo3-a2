library IEEE;
use IEEE.std_logic_1164.ALL;
use IEEE.numeric_std.all;

architecture behaviour of timebase is

signal new_count , count : unsigned (29 downto 0);
signal gfx_c, bulletspd_c, lanespd_c, score_c : std_logic_vector (29 downto 0);

begin
-- This process generates the register
lbl1:	process (clk)
	begin
		if ( rising_edge (clk) ) then 
			if ( res = '1' ) then
				count <= ( others => '0' ) ;
			else
				count <= new_count ;
			end if ;
		end if ;
	end process ;
-- This process generates the counter 
lbl2:	process (count) 
	begin
			new_count <= count + 1 ;
	end process ;

-- The count value is assigned to the output 
	gfx_c <= std_logic_vector (count) ;
	bulletspd_c <= std_logic_vector (count) ;
	lanespd_c <= std_logic_vector (count) ;
	score_c <= std_logic_vector (count) ;

	gfx <= gfx_c(9);
	bulletspd <= bulletspd_c(19);
	lanespd <= lanespd_c(21);
	score <= score_c(29);

end behaviour;














