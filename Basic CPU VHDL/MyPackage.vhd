library IEEE;
use IEEE.STD_LOGIC_1164.all;

package MyPackage is
---------------------------------------------------
 component MUX4 is
    Port ( I0 : in  STD_LOGIC;
           I1 : in  STD_LOGIC;
           I2 : in  STD_LOGIC;
           I3 : in  STD_LOGIC;
           S : in  STD_LOGIC_Vector (1 downto 0) ;
           O : out STD_LOGIC);
end component;
---------------------------------------------------
 component MUX2 is
    Port ( I0 : in  STD_LOGIC;
           I1 : in  STD_LOGIC;
           S : in  STD_LOGIC ;
           O : out STD_LOGIC);
end component;
---------------------------------------------------
component ALU1bit is
    Port ( A  : in  STD_LOGIC;
           B : in  STD_LOGIC;
			  Less : in  STD_LOGIC;
           Cin   : in  STD_LOGIC;
			  Operation  : in  STD_LOGIC_VECTOR (3 downto 0);
           Result : out  STD_LOGIC;
           Set  : out  STD_LOGIC;
			  Cout  : out  STD_LOGIC);
end component;
---------------------------------------------------
component GenericReg IS
	GENERIC(n:NATURAL :=32);
	PORT (
	I: IN  STD_LOGIC_VECTOR (n-1 DOWNTO 0);
	CLK, LOD, INC, CLR: IN STD_LOGIC;
	O: OUT  STD_LOGIC_VECTOR (n-1 DOWNTO 0));
end component;
---------------------------------------------------
component reg32_0 IS
	GENERIC(n:NATURAL := 32);
	PORT (
	I: IN  STD_LOGIC_VECTOR (n-1 DOWNTO 0);
	CLK, LOD, INC, CLR: IN STD_LOGIC;
	O: OUT  STD_LOGIC_VECTOR (n-1 DOWNTO 0));
END component;
---------------------------------------------------
component reg32_1 IS
	PORT (
	I: IN  STD_LOGIC_VECTOR (31 DOWNTO 0);
	CLK, LOD, INC, CLR: IN STD_LOGIC;
	O: OUT  STD_LOGIC_VECTOR (31 DOWNTO 0));
END component;
---------------------------------------------------
component INSTRMEMORY is
	Generic(words : natural :=64;wordsize: natural :=32; addresssize: natural := 32);
  port(
    LoadIt: in Std_logic ;
	 DATA: out STD_LOGIC_VECTOR(wordsize-1 downto 0);
    ADDRESS: in STD_LOGIC_VECTOR(addresssize-1 downto 0);
    CLK: in STD_LOGIC
    );
end component;
---------------------------------------------------
component Reg6 IS
	GENERIC(n:NATURAL :=6);
	PORT (
	CLK, INC, CLR: IN STD_LOGIC;
	O: OUT  STD_LOGIC_VECTOR (n-1 DOWNTO 0));
END component;
---------------------------------------------------
component ClkInst is
Port ( START: IN STD_LOGIC;
			CLK: IN STD_LOGIC;
			Data : OUT STD_LOGIC_VECTOR(31 downto 0));
end component;
---------------------------------------------------
component Decoder32 is
    Port ( I : in  STD_LOGIC_VECTOR (4 downto 0);
           O : out  STD_LOGIC_VECTOR (31 downto 0);
           ena : in  STD_LOGIC);
end component;
---------------------------------------------------
component MUX32 is
	generic (n: natural := 32);
	Port ( I0 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I1 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I2 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I3 : in  STD_LOGIC_VECTOR (n-1 downto 0);
			  I4 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I5 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I6 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I7 : in  STD_LOGIC_VECTOR (n-1 downto 0);
			  I8 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I9 : in  STD_LOGIC_VECTOR (n-1 downto 0);
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
end component;
---------------------------------------------------
component RegisterFile is
    Port (
	read_sel1 : in std_logic_vector(4 downto 0);
	read_sel2 : in std_logic_vector(4 downto 0);
	write_sel : in std_logic_vector(4 downto 0);
	write_ena : in std_logic;
	clk: in std_logic;
	write_data: in std_logic_vector(31 downto 0) ;
	data1: out std_logic_vector(31 downto 0) ;
	data2: out std_logic_vector(31 downto 0));

end component;
---------------------------------------------------
component ALU32bit is
 Port ( A  : in  STD_LOGIC_VECTOR (31 downto 0);
           B : in  STD_LOGIC_VECTOR (31 downto 0);
           Cin   : in  STD_LOGIC;
			  Operation  : in  STD_LOGIC_VECTOR (3 downto 0);
           Result : out  STD_LOGIC_VECTOR (31 downto 0);
			  Cout  : out  STD_LOGIC;
			  overflow  : out  STD_LOGIC;
			  zero  : out  STD_LOGIC);
end component;
---------------------------------------------------
end MyPackage;