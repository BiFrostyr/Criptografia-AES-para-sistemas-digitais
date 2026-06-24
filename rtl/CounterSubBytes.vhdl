library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity CounterSubBytes is
    port ( 
        clk, enable, sel : in std_logic;
        subBytesDone     : out std_logic;
        cLinhaColuna     : out std_logic_vector(3 downto 0) -- Corrigido: adicionado ';' na linha anterior e fechado aqui
    );
end CounterSubBytes;

architecture arch of CounterSubBytes is

    signal i                  : unsigned(3 downto 0); 
    signal mux_out, reg_out   : std_logic_vector(3 downto 0);
begin

    mux: entity work.Mux2x1(arch)
        generic map (N => 4)
        port map (
            sel => sel, 
            in0 => std_logic_vector(i),
        );

    reg: entity work.VectorRegister(arch)
        generic map (N => 4)
        port map (
            clk        => clk, 
            enable     => enable, 
            in_vector  => mux_out, 
        );

    adder: entity work.HalfAdder_4bits(arch)
        port map (
            a   => unsigned(reg_out), 
            b   => "0001", 
            sum => i     
        );

    subBytesDone <= '1' when reg_out = "1111" else '0';
    cLinhaColuna <= reg_out;

end architecture arch;


