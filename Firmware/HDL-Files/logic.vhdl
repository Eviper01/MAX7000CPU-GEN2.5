library ieee;
use ieee.std_logic_1164.all;
entity Octal_Bus_Driver is
  port(
  A: In std_logic_vector (7 downto 0);
  O: Out std_logic_vector (7 downto 0);
  En: In std_logic
  );

end Octal_Bus_Driver;

architecture Octal_Bus_Driver_beh of Octal_Bus_Driver is
begin
    O <= A when En='1' else "ZZZZZZZZ";
end architecture;


library ieee;
use ieee.std_logic_1164.all;

entity D_flip_flop is
   port (clk,Din,rst,en : in std_logic;
            Q: out std_logic;
            Qnot : out std_logic);
 end D_flip_flop;
architecture DFF_arch of D_flip_flop is
   begin
       process (clk,en,Din,rst)
        begin
             if(en='0') then
               Q <='Z';
               Qnot <= 'Z';
             elsif(rst='1') then
               Q <='0';
               Qnot <='1';
             elsif(clk'event and clk='1') then
               Q <= Din;
               Qnot <= not Din;
             end  if;
     end process;
end DFF_arch;
