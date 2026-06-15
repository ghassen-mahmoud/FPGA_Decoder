library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity decoder is
    port(
        din  : in  unsigned(2 downto 0);
        dout : out std_logic_vector(7 downto 0)
    );
end entity decoder;

architecture behavioral of decoder is
begin

    process(din)
    begin
        dout <= (others => '0');
        dout(to_integer(din)) <= '1';

    end process;

end architecture behavioral;