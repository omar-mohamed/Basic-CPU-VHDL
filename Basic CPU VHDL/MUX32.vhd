library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity MUX32 is
	generic (n: natural := 32);
    Port ( I0  : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I1  : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I2  : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I3  : in  STD_LOGIC_VECTOR (n-1 downto 0);
			  I4  : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I5  : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I6  : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I7  : in  STD_LOGIC_VECTOR (n-1 downto 0);
			  I8  : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I9  : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I10 : in  STD_LOGIC_VECTOR (n-1 downto 0);
			  I11 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I12 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I13 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I14 : in  STD_LOGIC_VECTOR (n-1 downto 0);
			  I15 : in  STD_LOGIC_VECTOR (n-1 downto 0);
			  I16 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I17 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I18 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I19 : in  STD_LOGIC_VECTOR (n-1 downto 0);
			  I20 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I21 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I22 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I23 : in  STD_LOGIC_VECTOR (n-1 downto 0);
			  I24 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I25 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I26 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I27 : in  STD_LOGIC_VECTOR (n-1 downto 0);
			  I28 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I29 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I30 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I31 : in  STD_LOGIC_VECTOR (n-1 downto 0);
		
           S : in  STD_LOGIC_Vector (4 downto 0) ;
           O : out STD_LOGIC_VECTOR (n-1 downto 0));
end MUX32;

architecture Behavioral of MUX32 is

begin

	O <= 	I0 when S = "00000" else
			I1 when S = "00001" else 
			I2 when S = "00010" else 
			I3 when S = "00011" else
			I4 when S = "00100" else 
			I5 when S = "00101" else 
			I6 when S = "00110" else
			I7 when S = "00111" else 
			I8 when S = "01000" else 
			I9 when S = "01001" else
			I10 when S = "01010" else 
			I11 when S = "01011" else 
			I12 when S = "01100" else
			I13 when S = "01101" else 
			I14 when S = "01110" else 
			I15 when S = "01111" else
			I16 when S = "10000" else 
			I17 when S = "10001" else 
			I18 when S = "10010" else
			I19 when S = "10011" else 
			I20 when S = "10100" else 
			I21 when S = "10101" else
			I22 when S = "10110" else 
			I23 when S = "10111" else 
			I24 when S = "11000" else
			I25 when S = "11001" else 
			I26 when S = "11010" else 
			I27 when S = "11011" else
			I28 when S = "11100" else 
			I29 when S = "11101" else 
			I30 when S = "11110" else
			I31 when S = "11111";
			
end Behavioral;