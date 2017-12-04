library IEEE;
use IEEE.std_logic_1164.ALL;

architecture behaviour of rng_tb is
	component rng
		port (clk      :in    std_logic;
        		reset    :in    std_logic;
		input_a  :in    std_logic;
		input_b  :in    std_logic;
		ff_in    :out		std_logic_vector(3 downto 0);
        		rng_out  :out   std_logic_vector(3 downto 0));
	end component;
	signal clk: std_logic;
	signal reset: std_logic;
	signal input_a: std_logic;
	signal input_b: std_logic;
	signal ff_in: std_logic_vector(3 downto 0);
	signal rng_out: std_logic_vector(3 downto 0);
	
begin
lbl1: rng port map (clk, reset, input_a, input_b, ff_in, rng_out);
	clk <= '0' after 0 ns,
	'1' after 100 ns when clk /= '1' else '0' after 100 ns;
	reset <= '1' after 0 ns,
	'0' after 200 ns;
	input_a <= '0' after 0 ns,
	'1' after 600 ns,
	'0' after 1000 ns,
	'1' after 3400 ns,
	'0' after 6600 ns,
	'1' after 9800 ns;
	input_b <= '0' after 0 ns,
	'1' after 6600 ns;

end behaviour;










