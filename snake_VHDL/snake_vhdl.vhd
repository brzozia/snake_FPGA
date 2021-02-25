library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity snake_vhdl is
port(
	reset: in std_logic;
	clk50: in std_logic;
	a1,a2,b1,b2,c1,c2,d1,d2,e1,e2,f1,f2,g1,g2: out std_logic
	);
end snake_vhdl;

architecture arch1 of snake_vhdl is
shared variable num : integer;
signal clk : std_logic :='0';
shared variable licznik : integer;
signal sig : std_logic := '0';
begin

	process(sig)
	begin
	case num is
		when 0 => 
			a1<='0';
			a2<='0';
			b2<='0';
			g2<='1';
			g1<='1';
			e1<='1';
			d1<='1';
			d2<='1';
			c2<='1';
			f1<='1';
			b1<='1';
			c1<='1';
			f2<='1';
			e2<='1';
		when 1 => 
			a1<='1';
			a2<='0';
			b2<='0';
			g2<='0';
			g1<='1';
			e1<='1';
			d1<='1';
			d2<='1';
			c2<='1';
			f1<='1';
			b1<='1';
			c1<='1';
			f2<='1';
			e2<='1';			
		when 2 => 
			a1<='1';
			a2<='1';
			b2<='0';
			g2<='0';
			g1<='0';
			e1<='1';
			d1<='1';
			d2<='1';
			c2<='1';
			f1<='1';
			b1<='1';
			c1<='1';
			f2<='1';
			e2<='1';
		when 3 => 
			a1<='1';
			a2<='1';
			b2<='1';
			g2<='0';
			g1<='0';
			e1<='0';
			d1<='1';
			d2<='1';
			c2<='1';
			f1<='1';
			b1<='1';
			c1<='1';
			f2<='1';
			e2<='1';	
		when 4 => 
			a1<='1';
			a2<='1';
			b2<='1';
			g2<='1';
			g1<='0';
			e1<='0';
			d1<='0';
			d2<='1';
			c2<='1';
			f1<='1';
			b1<='1';
			c1<='1';
			f2<='1';
			e2<='1';		
		when 5 => 
			a1<='1';
			a2<='1';
			b2<='1';
			g2<='1';
			g1<='1';
			e1<='0';
			d1<='0';
			d2<='0';
			c2<='1';
			f1<='1';
			b1<='1';
			c1<='1';
			f2<='1';
			e2<='1';	
		when 6 => 
			a1<='1';
			a2<='1';
			b2<='1';
			g2<='1';
			g1<='1';
			e1<='1';
			d1<='0';
			d2<='0';
			c2<='0';
			f1<='1';
			b1<='1';
			c1<='1';
			f2<='1';
			e2<='1';	
		when 7 => 
			a1<='1';
			a2<='1';
			b2<='1';
			g2<='0';
			g1<='1';
			e1<='1';
			d1<='1';
			d2<='0';
			c2<='0';
			f1<='1';
			b1<='1';
			c1<='1';
			f2<='1';
			e2<='1';				
		when 8 => 
			a1<='1';
			a2<='1';
			b2<='1';
			g2<='0';
			g1<='0';
			e1<='1';
			d1<='1';
			d2<='1';
			c2<='0';
			f1<='1';
			b1<='1';
			c1<='1';
			f2<='1';
			e2<='1';
		when 9 => 
			a1<='1';
			a2<='1';
			b2<='1';
			g2<='0';
			g1<='0';
			e1<='1';
			d1<='1';
			d2<='1';
			c2<='1';
			f1<='0';
			b1<='1';
			c1<='1';
			f2<='1';		
		when 10 => 
			a1<='0';
			a2<='1';
			b2<='1';
			g2<='1';
			g1<='0';
			e1<='1';
			d1<='1';
			d2<='1';
			c2<='1';
			f1<='0';
			b1<='1';
			c1<='1';
			f2<='1';
		when 11 => 
			a1<='0';
			a2<='0';
			b2<='1';
			g2<='1';
			g1<='1';
			e1<='1';
			d1<='1';
			d2<='1';
			c2<='1';
			f1<='0';
			b1<='1';
			c1<='1';
			f2<='1';	
		when others => 
			a1<='0';
			a2<='0';
			b2<='0';
			g2<='0';
			g1<='0';
			e1<='0';
			d1<='0';
			d2<='0';
			c2<='0';
			f1<='0';
			b1<='0';
			c1<='0';
			f2<='0';
			e2<='0';	
	end case;
end process;


process (clk, reset)
begin
	if rising_edge(clk) then
		sig<=not(sig);
		if(reset='0')then num:=0;
		else
			if(num=11) then num:=0;
			else num:=num+1;
			end if;
		end if;
	end if;
end process;

process(clk50)
begin
	if rising_edge(clk50) then
		licznik:=licznik+1;
		if(licznik=2054432) then
			clk <= not(clk);
			licznik:=0;
		end if;
	end if;


end process;
	
end arch1;
