library IEEE;
use IEEE.std_logic_1164.ALL;

architecture behaviour of rng is
begin
	process(clk, reset) is
	begin
	if(reset='1') then
		rng_out<="0000";
	elsif(clk'event and clk='1') 
	then
		rng_out(3) <= ff_in(3);
		rng_out(2) <= ff_in(2);
		rng_out(1) <= ff_in(1);
		rng_out(0) <= ff_in(0);
	end if;
	end process;

	process(clk, input_a, input_b) is
	begin
	if(clk'event and clk='0') then
		ff_in(3) <=  rng_out(0) xor rng_out(1);
		ff_in(2) <=  rng_out (3);
		ff_in(1) <=  rng_out(2) or input_a;
		ff_in(0) <= 	rng_out(1) or input_b;
	end if;
	end process;
end behaviour;





















































































































































