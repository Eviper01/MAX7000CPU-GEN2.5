library ieee;
use ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity uALU is port (
  A: in std_logic_vector(15 downto 0);
  B: in std_logic_vector(15 downto 0);
  O: out std_logic_vector(15 downto 0);
  EqualOut: out std_logic;
  CarryOut: out std_logic;
  ModeSelect: in std_logic_vector(5 downto 0));
end uALU;

architecture uALU_arch of uALU is

  -- signal

begin
  process(A,B, ModeSelect)
    begin
      if(ModeSelect="000001") then
  --     --Sub
        O <= A - B;
        if(A>B) then
          CarryOut <= '1';
        else
          CarryOut <= '0';
        end if;
    elsif (ModeSelect="000010") then
      -- NAND
        O <= A nand B;
        if(A<B) then
          CarryOut <= '1';
        else
          CarryOut <= '0';
        end if;
   -- elsif(ModeSelect="000011") then
   --  --LSH
   --  O <= A(14 downto 0) & '0';
   -- --
   -- elsif(ModeSelect="000011") then
   -- --RSH
   --  O <=  '0' & A(15 downto 1);


    -- elsif (ModeSelect="110000") then
    --     O <= not A;
    --   --NTA
    -- elsif (ModeSelect="110101") then
    --     O <= not B;
    --   --NTB
    -- elsif (ModeSelect="111001") then
    --   O <= A xor B;
    --   --XOR
    -- elsif (ModeSelect="111110") then
    --   O <= A and B;
    --   --AND
    -- elsif (ModeSelect="111011") then
    --   O <= A or B;
    --   --ORR
    -- elsif(ModeSelect="011100") then
    --   --LSH
    -- O <= A(14 downto 0) & '0';
      --CMP
    else
      --highZ
      -- O <= "XXXXXXXXXXXXXXXX"; --somehow tying this to a specific behiviour makes it better
      O <= "----------------";
      CarryOut <= '0';
    end if;

    end process;

    process(A,B)
    begin
        if (A=B) then
          EqualOut <= '1';
        else
        EqualOut <= '0';
      end if;
    end process;


end architecture;
