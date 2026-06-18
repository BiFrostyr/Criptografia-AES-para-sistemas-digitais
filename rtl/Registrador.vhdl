library ieee;
use ieee.std_logic_1164.all;

entity Registrador is
    generic(
        N: positive
    );
    port map(
        clk, enable: in std_logic;
        entrada: in std_logic_vector(N-1 downto 0);
        saida: out std_logic_vector(N-1 downto 0)
    )
end Registrador;

architecture arch of Registrador is
begin
    process(clk, enable, entrada)
        variable reg : std_logic_vector(N-1 downto 0)
    begin
        if rising_edge(clk) then
            if (enable = '1') then
                saida <= entrada;
            end if;
        end if;
    end process;
end architecture arch;