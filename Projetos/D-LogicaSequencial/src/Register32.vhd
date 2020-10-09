-- Elementos de Sistemas
-- by Luciano Soares
-- Register32.vhd

Library ieee;
use ieee.std_logic_1164.all;

entity Register32 is
	port(
		clock:   in STD_LOGIC;
		input:   in STD_LOGIC_VECTOR(31 downto 0);
		load:    in STD_LOGIC;
		output: out STD_LOGIC_VECTOR(31 downto 0)
	);
end entity;

architecture arch of Register32 is

	component Register16 is
		port(
			clock:   in STD_LOGIC;
			input:   in STD_LOGIC_VECTOR(15 downto 0);
			load:    in STD_LOGIC;
			output: out STD_LOGIC_VECTOR(15 downto 0)
      );
	end component;

begin

	 -- Implementação vem aqui!
	 Reg16_1: Register16
	 port map(
	   input => input (31 downto 16),
	   output => output(31 downto 16),
	   load => load,
	   clock => clock
	 );

	 Reg16_2: Register16
	 port map(
	   input => input (15 downto 0),
	   output => output(15 downto 0),
	   load => load,
	   clock => clock
	 );



end architecture;