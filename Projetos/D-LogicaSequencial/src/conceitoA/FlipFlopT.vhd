-- Elementos de Sistemas
-- FlipFlopT.vhd

library ieee;
use ieee.std_logic_1164.all;

entity FlipFlopT is
	port(
		clock:  in std_logic;
		t:      in std_logic;
		q:      out std_logic:= '0';
		notq:   out std_logic:= '1'
	);
end entity;

architecture arch of FlipFlopT is

signal tmp: std_logic;
begin

	process (clock)
	begin
		if clock = '1' then
			if t = '0' then
				tmp <= tmp;
			elsif t = '1' then
				tmp <= not(tmp);
			end if;
		end if;
	end process;
	
	q <= tmp;

end architecture;
