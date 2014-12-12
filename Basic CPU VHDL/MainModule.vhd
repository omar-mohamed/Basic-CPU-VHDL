library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL ;
use work.MyPackage.all;


entity MainModule is
Port ( START: IN STD_LOGIC;
			CLK: IN STD_LOGIC;
			RegFileOut1: OUT STD_LOGIC_VECTOR(31 downto 0);
			RegFileOut2: OUT STD_LOGIC_VECTOR(31 downto 0);
			ALUOut: OUT STD_LOGIC_VECTOR(31 downto 0));
end MainModule;

architecture Behavioral of MainModule is
SIGNAL A: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL B: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL Write_Data: STD_LOGIC_VECTOR (31 DOWNTO 0);

SIGNAL Data: STD_LOGIC_VECTOR (31 DOWNTO 0);

SIGNAL OP: STD_LOGIC_VECTOR (5 DOWNTO 0);
SIGNAL Operation: STD_LOGIC_VECTOR (3 DOWNTO 0);

SIGNAL Wr : STD_LOGIC;

SIGNAL Cin : STD_LOGIC;
SIGNAL Cout : STD_LOGIC;
SIGNAL overflow : STD_LOGIC;
SIGNAL zero : STD_LOGIC;
begin


CI: ClkInst port map(START,CLK,Data);
-----------------------
OP <= Data(31 downto 26);
Operation<= "0000" when OP ="100100" else
				"0001" when OP ="100101" else
				"0010" when OP ="100000" else
				"0110" when OP ="100010" else
				"0111" when OP ="101010" else
				"1100" when OP ="100111" ;
Cin<= Operation(2);
Wr <= '1' when Data(31 downto 26)="000000" else
		'0';
-----------------------
RF : RegisterFile port map(Data(25 downto 21),Data(20 downto 16),Data(15 downto 11),Wr,CLK,Write_Data,A,B); 
ALU: ALU32bit port map(A,B,Cin,Operation,Write_Data,Cout,overflow,zero);
-----------------------
RegFileOut1<=A;
RegFileOut2<=B;
ALUOut<=Write_Data;
-----------------------
end Behavioral;