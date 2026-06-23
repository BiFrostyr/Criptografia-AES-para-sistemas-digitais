library ieee;
use ieee.std_logic_1164.all;

entity Mux16x4 is
    port(
        sel : in std_logic_vector(3 downto 0);
        in0, in1, in2, in3, in4, in5, in6, in7,
        in8, in9, in10, in11, in12, in13, in14, 
        in15 : in std_logic_vector(7 downto 0);
        z : out std_logic_vector(7 downto 0)
    );
end entity Mux16x4;

architecture arch of Mux16x4 is
begin
    z <= in0  when sel = "0000" else
         in1  when sel = "0001" else
         in2  when sel = "0010" else
         in3  when sel = "0011" else
         in4  when sel = "0100" else
         in5  when sel = "0101" else
         in6  when sel = "0110" else
         in7  when sel = "0111" else
         in8  when sel = "1000" else
         in9  when sel = "1001" else
         in10 when sel = "1010" else
         in11 when sel = "1011" else
         in12 when sel = "1100" else
         in13 when sel = "1101" else
         in14 when sel = "1110" else
         in15;
end architecture arch;