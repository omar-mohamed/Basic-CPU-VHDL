library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL ;
use work.MyPackage.all;

entity ALU1bit is
    Port ( A  : in  STD_LOGIC;
           B : in  STD_LOGIC;
			  Less : in  STD_LOGIC;
           Cin   : in  STD_LOGIC;
			  Operation  : in  STD_LOGIC_VECTOR (3 downto 0);
           Result : out  STD_LOGIC;
           Set  : out  STD_LOGIC;
			  Cout  : out  STD_LOGIC);
           
end ALU1bit;

architecture Behavioral of ALU1bit is
SIGNAL T_A: STD_LOGIC;
SIGNAL T_B: STD_LOGIC;
SIGNAL A_INV: STD_LOGIC;
SIGNAL B_INV: STD_LOGIC;
SIGNAL MUX_SELECT: STD_LOGIC_VECTOR (1 DOWNTO 0);
SIGNAL T_AND: STD_LOGIC;
SIGNAL T_OR: STD_LOGIC;
SIGNAL ADDER_Tmp: STD_LOGIC_VECTOR (1 DOWNTO 0);
SIGNAL T_ADDER: STD_LOGIC;
begin
---------
A_INV <= Operation(3);
B_INV <= Operation(2);
MUX_SELECT <= Operation(1 downto 0);
---------
Mux_2_A: MUX2 PORT MAP (A , not(A), A_INV , T_A);
Mux_2_B: MUX2 PORT MAP (B , not(B), B_INV , T_B);
---------		 
T_AND <= T_A and T_B;
T_OR <= T_A or T_B;
---------
ADDER_Tmp <= ( ('0' & T_A) + ('0' & T_B) + ('0'&Cin) );
Set <= ADDER_Tmp(1);
---------
T_ADDER <= ADDER_Tmp(0) ;
Cout <= ADDER_Tmp(1);
Mux_4_A: MUX4 PORT MAP (T_AND , T_OR, T_ADDER , Less, MUX_SELECT , Result);
---------
end Behavioral;