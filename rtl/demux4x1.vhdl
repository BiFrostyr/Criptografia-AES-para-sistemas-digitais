library ieee;
use ieee.std_logic_1164.all;

entity demux4x1 is
    generic (
        N: positive := 8
        );
        port(
            sel: in std_logic_vector(1 downto 0);
            en: in std_logic_vector(N-1 downto 0);
            z0, z1, z2, z3 : out std_logic_vector(N-1 downto 0)
        );
    end entity demux4x1;

    architecture arch of demux4x1 is
    begin
        process(sel, en)
        begin
            z0 <= (others => '0');
            z1 <= (others => '0');
            z2 <= (others => '0');
            z3 <= (others => '0');

            case(sel) is

            when "00" => 
                z0 <= en;
            when "01" =>
                z1 <= en;
            when "10" => 
                z2 <= en;
            when "11" => 
                z3 <= en;
            when others =>
                z0 <= (others => '0');
                z1 <= (others => '0');
                z2 <= (others => '0');
                z3 <= (others => '0');
            end case;

        end process;

    end architecture arch;
