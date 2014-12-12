library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.MyPackage.all;

entity ClkInst is
Port ( START: IN STD_LOGIC;
			CLK: IN STD_LOGIC;
			Data : OUT STD_LOGIC_VECTOR(31 downto 0));
end ClkInst;

architecture Behavioral of ClkInst is
signal ADDRESS: STD_LOGIC_VECTOR(31 downto 0):= (others => '0');
signal TOut: STD_LOGIC_VECTOR(5 downto 0);
begin

R: Reg6 generic map (6) port map (CLK,START,not(START),TOut);
ADDRESS(7 downto 2) <= TOut;
IM: INSTRMEMORY generic map (32) port map (not(START),Data,ADDRESS,CLK);

end Behavioral;