library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Comparator is
    generic (
        N : positive := 4
        );
    port (
        a, b : in std_logic_vector(N-1 downto 0);
        maior : out std_logic
    );
end entity Comparator;

architecture arch of Comparator is
begin
    maior <= '1' when unsigned(a) > unsigned(b) else '0';
end architecture arch;