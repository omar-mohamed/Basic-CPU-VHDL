library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL ;
use work.MyPackage.all;

entity ALU32bit is
 Port ( A  : in  STD_LOGIC_VECTOR (31 downto 0);
           B : in  STD_LOGIC_VECTOR (31 downto 0);
           Cin   : in  STD_LOGIC;
			  Operation  : in  STD_LOGIC_VECTOR (3 downto 0);
           Result : out  STD_LOGIC_VECTOR (31 downto 0);
			  Cout  : out  STD_LOGIC;
			  overflow  : out  STD_LOGIC;
			  zero  : out  STD_LOGIC);
end ALU32bit;

architecture Behavioral of ALU32bit is
SIGNAL Less : STD_LOGIC;
SIGNAL T_cout: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL T_Result: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL Set  : STD_LOGIC_VECTOR (31 downto 0);
begin

Alu_0:  ALU1bit PORT MAP (A(0)  , B(0) , Less, Cin       ,  Operation ,T_Result(0)  ,Set(0),  T_cout(0) );
Alu_1:  ALU1bit PORT MAP (A(1)  , B(1) , '0' , T_cout(0) ,  Operation ,T_Result(1)  ,Set(1),  T_cout(1) );
Alu_2:  ALU1bit PORT MAP (A(2)  , B(2) , '0' , T_cout(1) ,  Operation ,T_Result(2)  ,Set(2),  T_cout(2) );
Alu_3:  ALU1bit PORT MAP (A(3)  , B(3) , '0' , T_cout(2) ,  Operation ,T_Result(3)  ,Set(3),  T_cout(3) );
Alu_4:  ALU1bit PORT MAP (A(4)  , B(4) , '0' , T_cout(3) ,  Operation ,T_Result(4)  ,Set(4),  T_cout(4) );
Alu_5:  ALU1bit PORT MAP (A(5)  , B(5) , '0' , T_cout(4) ,  Operation ,T_Result(5)  ,Set(5),  T_cout(5) );
Alu_6:  ALU1bit PORT MAP (A(6)  , B(6) , '0' , T_cout(5) ,  Operation ,T_Result(6)  ,Set(6),  T_cout(6) );
Alu_7:  ALU1bit PORT MAP (A(7)  , B(7) , '0' , T_cout(6) ,  Operation ,T_Result(7)  ,Set(7),  T_cout(7) );
Alu_8:  ALU1bit PORT MAP (A(8)  , B(8) , '0' , T_cout(7) ,  Operation ,T_Result(8)  ,Set(8),  T_cout(8) );
Alu_9:  ALU1bit PORT MAP (A(9)  , B(9) , '0' , T_cout(8) ,  Operation ,T_Result(9)  ,Set(9),  T_cout(9) );
Alu_10: ALU1bit PORT MAP (A(10) , B(10), '0' , T_cout(9) ,  Operation ,T_Result(10) ,Set(10), T_cout(10) );
Alu_11: ALU1bit PORT MAP (A(11) , B(11), '0' , T_cout(10),  Operation ,T_Result(11) ,Set(11), T_cout(11) );
Alu_12: ALU1bit PORT MAP (A(12) , B(12), '0' , T_cout(11),  Operation ,T_Result(12) ,Set(12), T_cout(12) );
Alu_13: ALU1bit PORT MAP (A(13) , B(13), '0' , T_cout(12),  Operation ,T_Result(13) ,Set(13), T_cout(13) );
Alu_14: ALU1bit PORT MAP (A(14) , B(14), '0' , T_cout(13),  Operation ,T_Result(14) ,Set(14), T_cout(14) );
Alu_15: ALU1bit PORT MAP (A(15) , B(15), '0' , T_cout(14),  Operation ,T_Result(15) ,Set(15), T_cout(15) );
Alu_16: ALU1bit PORT MAP (A(16) , B(16), '0' , T_cout(15),  Operation ,T_Result(16) ,Set(16), T_cout(16) );
Alu_17: ALU1bit PORT MAP (A(17) , B(17), '0' , T_cout(16),  Operation ,T_Result(17) ,Set(17), T_cout(17) );
Alu_18: ALU1bit PORT MAP (A(18) , B(18), '0' , T_cout(17),  Operation ,T_Result(18) ,Set(18), T_cout(18) );
Alu_19: ALU1bit PORT MAP (A(19) , B(19), '0' , T_cout(18),  Operation ,T_Result(19) ,Set(19), T_cout(19) );
Alu_20: ALU1bit PORT MAP (A(20) , B(20), '0' , T_cout(19),  Operation ,T_Result(20) ,Set(20), T_cout(20) );
Alu_21: ALU1bit PORT MAP (A(21) , B(21), '0' , T_cout(20),  Operation ,T_Result(21) ,Set(21), T_cout(21) );
Alu_22: ALU1bit PORT MAP (A(22) , B(22), '0' , T_cout(21),  Operation ,T_Result(22) ,Set(22), T_cout(22) );
Alu_23: ALU1bit PORT MAP (A(23) , B(23), '0' , T_cout(22),  Operation ,T_Result(23) ,Set(23), T_cout(23) );
Alu_24: ALU1bit PORT MAP (A(24) , B(24), '0' , T_cout(23),  Operation ,T_Result(24) ,Set(24), T_cout(24) );
Alu_25: ALU1bit PORT MAP (A(25) , B(25), '0' , T_cout(24),  Operation ,T_Result(25) ,Set(25), T_cout(25) );
Alu_26: ALU1bit PORT MAP (A(26) , B(26), '0' , T_cout(25),  Operation ,T_Result(26) ,Set(26), T_cout(26) );
Alu_27: ALU1bit PORT MAP (A(27) , B(27), '0' , T_cout(26),  Operation ,T_Result(27) ,Set(27), T_cout(27) );
Alu_28: ALU1bit PORT MAP (A(28) , B(28), '0' , T_cout(27),  Operation ,T_Result(28) ,Set(28), T_cout(28) );
Alu_29: ALU1bit PORT MAP (A(29) , B(29), '0' , T_cout(28),  Operation ,T_Result(29) ,Set(29), T_cout(29) );
Alu_30: ALU1bit PORT MAP (A(30) , B(30), '0' , T_cout(29),  Operation ,T_Result(30) ,Set(30), T_cout(30) );
Alu_31: ALU1bit PORT MAP (A(31) , B(31), '0' , T_cout(30),  Operation ,T_Result(31) ,Less   , T_cout(31) );

overflow <= T_cout(30) xor T_cout(31);
---------
zero <=not(T_Result(0) or T_Result(1) or T_Result(2) or T_Result(3)or T_Result(4)or T_Result(5)or T_Result(6)
or T_Result(7)or T_Result(8)or T_Result(9)or T_Result(10)or T_Result(11)or T_Result(12)or T_Result(13)or T_Result(14)
or T_Result(15)or T_Result(16)or T_Result(17)or T_Result(18)or T_Result(19)or T_Result(20)or T_Result(21)or T_Result(22)
or T_Result(23)or T_Result(24)or T_Result(25)or T_Result(26)or T_Result(27)or T_Result(28)or T_Result(29)or T_Result(30)
or T_Result(31));
---------
Cout <= T_cout(31);
---------
Result <= T_Result;
---------
end Behavioral;