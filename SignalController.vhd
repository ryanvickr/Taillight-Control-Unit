-- Signal Controller

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SignalController is
	Port (
		L : in STD_LOGIC;
		R : in STD_LOGIC;
		B : in STD_LOGIC;
		FL : out STD_LOGIC;
		FR : out STD_LOGIC;
		SL : out STD_LOGIC;
		SR : out STD_LOGIC;
		E : out STD_LOGIC
	);
end SignalController;
 
architecture SignalController_code of SignalController is
 
begin

	FL <= (L and not R);
	FR <= (not L and R);
	SL <= (not L and B) or (R and B);
	SR <= (not R and B) or (L and B);
	E <= L and R and not B;
 
end SignalController_code;
