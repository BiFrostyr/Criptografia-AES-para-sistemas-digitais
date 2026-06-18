library ieee;
use ieee.std_logic_1164;

entity Counter is
    port map(
        clk, enable, sel : in std_logic;
        maior : out std_logic
    );
end Counter;

architecture arch of Counter is
    signal i, mux_out, reg_out : std_logic_vector(3 downto 0);
begin
    mux : entity work.Mux2x1(arch)
        generic map (N => 4)
        port map (sel => sel, in0 => i, in1 => "0001", z => );
    
    reg : entity work.VectorRegister(arch)
        generic map (N => 4)
        port map (clk => clk, enable => enable, inVector => mux_out, outVector => reg_out);

    maior <= i < "1001";

    adder : entity work.HalfAdder(arch)
        port map (a => reg_out, b => "0001", sum => i);
end architecture arch;