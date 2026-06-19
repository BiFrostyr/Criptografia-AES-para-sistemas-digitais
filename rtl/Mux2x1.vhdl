library ieee;
use ieee.std_logic_1164.all;

entity Mux2x1 is
    generic(
        N : positive
    );
    port(
        sel : in std_logic;
        in0, in1 : in std_logic_vector(N-1 downto 0);
        z : out std_logic_vector(N-1 downto 0)
    );
end Mux4x2_8bits;

architecture arch of Mux4x2_8bits is
begin
    z <= in0 when sel = '0' else
             in1;
end architecture arch;