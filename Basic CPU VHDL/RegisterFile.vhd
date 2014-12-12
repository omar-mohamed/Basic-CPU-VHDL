library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.MyPackage.ALL;

entity RegisterFile is
    Port (
	read_sel1 : in std_logic_vector(4 downto 0);
	read_sel2 : in std_logic_vector(4 downto 0);
	write_sel : in std_logic_vector(4 downto 0);
	write_ena : in std_logic;
	clk: in std_logic;
	write_data: in std_logic_vector(31 downto 0) ;
	data1: out std_logic_vector(31 downto 0) ;
	data2: out std_logic_vector(31 downto 0));

end RegisterFile;

architecture Behavioral of RegisterFile is
	
signal decout, m0,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,m11,m12,m13,m14,m15,m16,m17,m18,m19,m20,m21,m22,m23,m24,m25,m26,m27,m28,m29,m30,m31 : std_logic_vector(31 downto 0); 
signal d0,d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,d11,d12,d13,d14,d15,d16,d17,d18,d19,d20,d21,d22,d23,d24,d25,d26,d27,d28,d29,d30,d31 : std_logic;

begin

dec1 : Decoder32 port map (write_sel,decout,'1');
mux1 : MUX32 port map(m0,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,m11,m12,m13,m14,m15,m16,m17,m18,m19,m20,m21,m22,m23,m24,m25,m26,m27,m28,m29,m30,m31,read_sel1,data1);
mux2 : MUX32 port map(m0,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,m11,m12,m13,m14,m15,m16,m17,m18,m19,m20,m21,m22,m23,m24,m25,m26,m27,m28,m29,m30,m31,read_sel2,data2);
	
d0  <= decout(0) and write_ena;
d1  <= decout(1) and write_ena;
d2  <= decout(2) and write_ena;
d3  <= decout(3) and write_ena;
d4  <= decout(4) and write_ena;
d5  <= decout(5) and write_ena;
d6  <= decout(6) and write_ena;
d7  <= decout(7) and write_ena;
d8  <= decout(8) and write_ena;
d9  <= decout(9) and write_ena;
d10 <= decout(10) and write_ena;
d11 <= decout(11) and write_ena;
d12 <= decout(12) and write_ena;
d13 <= decout(13) and write_ena;
d14 <= decout(14) and write_ena;
d15 <= decout(15) and write_ena;
d16 <= decout(16) and write_ena;
d17 <= decout(17) and write_ena;
d18 <= decout(18) and write_ena;
d19 <= decout(19) and write_ena;
d20 <= decout(20) and write_ena;
d21 <= decout(21) and write_ena;
d22 <= decout(22) and write_ena;
d23 <= decout(23) and write_ena;
d24 <= decout(24) and write_ena;
d25 <= decout(25) and write_ena;
d26 <= decout(26) and write_ena;
d27 <= decout(27) and write_ena;
d28 <= decout(28) and write_ena;
d29 <= decout(29) and write_ena;
d30 <= decout(30) and write_ena;
d31 <= decout(31) and write_ena;
r0: reg32_0    generic map (32) port map (write_data,clk,d0,'0','0',m0);
r1: reg32_1    port map (write_data,clk,d1,'0','0',m1);
r2: GenericReg generic map (32) port map (write_data,clk,d2,'0','0',m2);
r3: GenericReg generic map (32) port map (write_data,clk,d3,'0','0',m3);
r4: GenericReg generic map (32) port map (write_data,clk,d4,'0','0',m4);
r5: GenericReg generic map (32) port map (write_data,clk,d5,'0','0',m5);
r6: GenericReg generic map (32) port map (write_data,clk,d6,'0','0',m6);
r7: GenericReg generic map (32) port map (write_data,clk,d7,'0','0',m7);
r8: GenericReg generic map (32) port map (write_data,clk,d8,'0','0',m8);
r9: GenericReg generic map (32) port map (write_data,clk,d9,'0','0',m9);
r10: GenericReg generic map (32) port map (write_data,clk,d10,'0','0',m10);
r11: GenericReg generic map (32) port map (write_data,clk,d11,'0','0',m11);
r12: GenericReg generic map (32) port map (write_data,clk,d12,'0','0',m12);
r13: GenericReg generic map (32) port map (write_data,clk,d13,'0','0',m13);
r14: GenericReg generic map (32) port map (write_data,clk,d14,'0','0',m14); 
r15: GenericReg generic map (32) port map (write_data,clk,d15,'0','0',m15);
r16: GenericReg generic map (32) port map (write_data,clk,d16,'0','0',m16);
r17: GenericReg generic map (32) port map (write_data,clk,d17,'0','0',m17);
r18: GenericReg generic map (32) port map (write_data,clk,d18,'0','0',m18);
r19: GenericReg generic map (32) port map (write_data,clk,d19,'0','0',m19);
r20: GenericReg generic map (32) port map (write_data,clk,d20,'0','0',m20);
r21: GenericReg generic map (32) port map (write_data,clk,d21,'0','0',m21);
r22: GenericReg generic map (32) port map (write_data,clk,d22,'0','0',m22);
r23: GenericReg generic map (32) port map (write_data,clk,d23,'0','0',m23);
r24: GenericReg generic map (32) port map (write_data,clk,d24,'0','0',m24);
r25: GenericReg generic map (32) port map (write_data,clk,d25,'0','0',m25);
r26: GenericReg generic map (32) port map (write_data,clk,d26,'0','0',m26);
r27: GenericReg generic map (32) port map (write_data,clk,d27,'0','0',m27);
r28: GenericReg generic map (32) port map (write_data,clk,d28,'0','0',m28);
r29: GenericReg generic map (32) port map (write_data,clk,d29,'0','0',m29);
r30: GenericReg generic map (32) port map (write_data,clk,d30,'0','0',m30);
r31: GenericReg generic map (32) port map (write_data,clk,d31,'0','0',m31);
end Behavioral;