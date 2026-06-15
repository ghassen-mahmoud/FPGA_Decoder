
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity decoder_tb is
end entity decoder_tb;


architecture behavior of decoder_tb is

    component decoder
        port(
            din  : in  unsigned(2 downto 0);
            dout : out std_logic_vector(7 downto 0)
        );
    end component decoder;

    signal din_tb  : unsigned(2 downto 0) := (others => '0');


    signal dout_tb : std_logic_vector(7 downto 0);

begin
    dut: decoder
    port map(
        din  => din_tb,
        dout => dout_tb
    );

    stim_proc: process
    begin


        for i in 0 to 7 loop
        
            din_tb <= to_unsigned(i, din_tb'length);

            wait for 100 ns;

        end loop;

        assert false
            report "Simulation finished, there are no more input vectors (not a failure actually)"
            severity failure;

        wait;

    end process;

end architecture behavior;