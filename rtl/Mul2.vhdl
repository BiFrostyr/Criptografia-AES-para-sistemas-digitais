library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Mul2 is
    port(
        entrada : in std_logic_vector(7 downto 0);
        saida : out std_logic_vector(7 downto 0)
    );
end entity Mul2;

architecture arch of Mul2 is
    signal shifted : std_logic_vector(7 downto 0);
begin
    shifted <= entrada(6 downto 0) & '0';

    saida(7) <= shifted(7) xor entrada(7);
    saida(6) <= shifted(6);
    saida(5) <= shifted(5);
    saida(4) <= shifted(4);
    saida(3) <= shifted(3) xor entrada(7);
    saida(2) <= shifted(2);
    saida(1) <= shifted(1) xor entrada(7);
    saida(0) <= shifted(0) xor entrada(7);
end architecture arch;