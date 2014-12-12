library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity MUX2 is
    Port ( I0 : in  STD_LOGIC;
           I1 : in  STD_LOGIC;
           S : in  STD_LOGIC ;
           O : out STD_LOGIC);
end MUX2;

architecture Behavioral of MUX2 is

begin

	O <= 	I0 when S = '0' else
			I1 ;
end Behavioral;