--
-- Elementos de Sistemas - Aula 5 - Logica Combinacional
-- Rafael . Corsi @ insper . edu . br
--
-- Arquivo exemplo para acionar os LEDs e ler os bottoes
-- da placa DE0-CV utilizada no curso de elementos de
-- sistemas do 3s da eng. da computacao

----------------------------
-- Bibliotecas ieee       --
----------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

----------------------------
-- Entrada e saidas do bloco
----------------------------
entity TopLevel is
	port(
		CLOCK_50 : in  std_logic;
		SW       : in  std_logic_vector(9 downto 0);
		HEX0     : out std_logic_vector(6 downto 0); -- 7 seg0
		HEX1     : out std_logic_vector(6 downto 0); -- 7 seg1
		HEX2     : out std_logic_vector(6 downto 0); -- 7 seg2
		LEDR     : out std_logic_vector(9 downto 0)
		
	);
end entity;

----------------------------
-- Implementacao do bloco --
----------------------------
architecture rtl of TopLevel is

--------------
-- signals
--------------

---------------
-- implementacao
---------------
begin

	LEDR(0) <= (not((SW(0) and SW(1)) or SW(1))) or (SW(2) nand (SW(0) and SW(1)));
	

	u2 : work.sevenSeg port map(
		bcd => SW(3 downto 0),
		leds => HEX0
	);

	u3 : work.sevenSeg port map(
		bcd => SW(7 downto 4),
		leds => HEX1
	);
	
	u4 : work.sevenSeg port map(
		bcd(3 downto 2) => "00",
		bcd(1 downto 0) => SW(9 downto 8),
		leds => HEX2
	);


end rtl;
