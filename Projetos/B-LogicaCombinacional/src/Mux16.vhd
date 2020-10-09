library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux16 is
	port ( 
			a:   in  STD_LOGIC_VECTOR(15 downto 0);
			b:   in  STD_LOGIC_VECTOR(15 downto 0);
			sel: in  STD_LOGIC;
			q:   out STD_LOGIC_VECTOR(15 downto 0));
end entity;

architecture arch of Mux16 is
begin
		q(0)  <=  (not sel and a(0 )) or (sel and b(0 ));
		q(1)  <=  (not sel and a(1 )) or (sel and b(1 ));
		q(2)  <=  (not sel and a(2 )) or (sel and b(2 ));
		q(3)  <=  (not sel and a(3 )) or (sel and b(3 ));
		q(4)  <=  (not sel and a(4 )) or (sel and b(4 ));
		q(5)  <=  (not sel and a(5 )) or (sel and b(5 ));
		q(6)  <=  (not sel and a(6 )) or (sel and b(6 ));
		q(7)  <=  (not sel and a(7 )) or (sel and b(7 ));
		q(8)  <=  (not sel and a(8 )) or (sel and b(8 ));
		q(9)  <=  (not sel and a(9 )) or (sel and b(9 ));
		q(10) <=  (not sel and a(10)) or (sel and b(10));
		q(11) <=  (not sel and a(11)) or (sel and b(11));
		q(12) <=  (not sel and a(12)) or (sel and b(12));
		q(13) <=  (not sel and a(13)) or (sel and b(13));
		q(14) <=  (not sel and a(14)) or (sel and b(14));
		q(15) <=  (not sel and a(15)) or (sel and b(15));

end architecture;
