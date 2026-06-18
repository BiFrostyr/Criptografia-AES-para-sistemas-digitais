library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity HalfAdder_4bits is
    port map(
        a, b : in std_logic_vector(3 downto 0);
        sum : out std_logic_vector(3 downto 0)
    );
end HalfAdder;

architecture arch of HalfAdder is
begin
    sum <= a + b;
end architecture arch;