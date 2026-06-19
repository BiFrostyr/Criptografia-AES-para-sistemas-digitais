library ieee;
use ieee.std_logic_1164.all;

entity Demux4x1 is
    generic (
        N: positive := 8
    );
    port(
        sel: in std_logic_vector(1 downto 0);
        a: in std_logic_vector(N-1 downto 0);
        out00, out01, out10, out11 : out std_logic_vector(N-1 downto 0)
    );
end entity Demux4x1;

architecture arch of Demux4x1 is
begin
    process(sel, a)
    begin
        out00 <= (others => '0');
        out01 <= (others => '0');
        out10 <= (others => '0');
        out11 <= (others => '0');

        case(sel) is

        when "00" => 
            out00 <= a;
        when "01" =>
            out01 <= a;
        when "10" => 
            out10 <= a;
        when "11" => 
            out11 <= a;
        when others =>
            out00 <= (others => '0');
            out01 <= (others => '0');
            out10 <= (others => '0');
            out11 <= (others => '0');
        end case;
    end process;
end architecture arch;
