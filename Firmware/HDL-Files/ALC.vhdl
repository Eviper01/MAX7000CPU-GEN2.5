library ieee;
use ieee.std_logic_1164.all;

entity ALC is
  port(
  regA: in std_logic_vector (15 downto 0);
  regB: in std_logic_vector (15 downto 0);
  MainBus: out std_logic_vector (15 downto 0);
  Ins: in std_logic_vector(5 downto 0);
  CLK_Select: in std_logic;
  FastCLK: in std_logic;
  UserCLK: in std_logic;
  CLK: out std_logic; --make it so this can be overridden
  ALU_Regs: in std_logic;
  I2CData: in std_logic;
  I2CCLK: in std_logic;
  --ProgramEnable: out std_logic; --this only needs to driven by JTAG
  OverflowFlag: out std_logic;
  EqualFlag: out std_logic
  );
end ALC;

architecture Hardware of ALC is

  component HexHex_Bus_Driver
  port(
  A: in std_logic_vector (15 downto 0);
  O: out std_logic_vector (15 downto 0);
  En: in std_logic
  );
  end component;


  component D_flip_flop is
    port (clk,Din,rst,en : in std_logic;
             Q: out std_logic;
             Qnot : out std_logic);
    end component;

--verilog ALU

-- component Circuit74181b is
--   port(A: in std_logic_vector(3 downto 0);
--        B: in std_logic_vector (3 downto 0);
--        S: in std_logic_vector (3 downto 0);
--        CNb: in std_logic;
--        M: in std_logic;
--        F: out std_logic_vector (3 downto 0);
--        AEB: out std_logic;
--        X: out std_logic;
--        Y: out std_logic;
--        CN4b: out std_logic
--   );
-- end component;

--uALU

component uALU is
  port(
  A: in std_logic_vector(15 downto 0);
  B: in std_logic_vector(15 downto 0);
  O: out std_logic_vector(15 downto 0);
  EqualOut: out std_logic;
  CarryOut: out std_logic;
  ModeSelect: in std_logic_vector(5 downto 0));
end component;



signal AequalB,interntalCLK, nClkSelectState, ClkSelectState, CarryOut: std_logic;
signal ALU_Out: std_logic_vector (15 downto 0);
signal ALU_connect: std_logic_vector(2 downto 0);
-- signal AequalB: std_logic_vector(4 downto 0);

begin



  --clock selector
  CLK <= interntalCLK;
  CLKFLOP : D_flip_flop port map (CLK_Select, nClkSelectState, '0', '1', ClkSelectState, nClkSelectState);
  --want to defualt this to user clock; it seems to defualt to user
  process(ClkSelectState)
  begin
    if ClkSelectState = '0' then
      interntalCLK <= FastCLK;
    else
      interntalCLK <= UserCLK;
    end if;
  end process;

  --ALU
  -- AequalB(4) <= AequalB(0) and AequalB(1) and AequalB(2) and AequalB(3);
  ALU_Buffer: HexHex_Bus_Driver port map(ALU_Out(15 downto 0), MainBus(15 downto 0), ALU_Regs); --only when the alu regs are feeding the system will the chip drive the bus

  --the flags are set on the falling edge of the ALU_Register enable system
  CarryFlagFlop: D_flip_flop port map(not ALU_Regs, CarryOut, '0', '1', OverflowFlag, open);
  ABFlagFlop: D_flip_flop port map(not ALU_Regs, AequalB, '0', '1', EqualFlag, open);


  -- --verilog implementation
  -- ALU_0: Circuit74181b port map(regA (3 downto 0), regB (3 downto 0), Ins(3 downto 0), not Ins(4), Ins(5),  ALU_Out(3 downto 0), AequalB(0), open, open, ALU_connect(0));
  -- ALU_1: Circuit74181b port map(regA (7 downto 4), regB (7 downto 4), Ins(3 downto 0), ALU_connect(0), Ins(5),  ALU_Out(7 downto 4), AequalB(1), open, open, ALU_connect(1));
  -- ALU_2: Circuit74181b port map(regA (11 downto 8), regB (15 downto 12), Ins(3 downto 0), ALU_connect(1), Ins(5),  ALU_Out(11 downto 8), AequalB(2), open, open, ALU_connect(2));
  -- ALU_3: Circuit74181b port map(regA (15 downto 12), regB (15 downto 12), Ins(3 downto 0), ALU_connect(2), Ins(5),  ALU_Out(15 downto 12), AequalB(3), open, open, CarryOut);


  --micro ALU implementation

  mainALU: uALU port map(regA(15 downto 0), regB(15 downto 0), ALU_Out(15 downto 0), AequalB, CarryOut, Ins(5 downto 0));



  --sort out key controller


end architecture;
