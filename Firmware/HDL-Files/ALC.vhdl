library ieee;
use ieee.std_logic_1164.all;

entity ALC is
  port(
  regA: in std_logic_vector (7 downto 0);
  regB: in std_logic_vector (7 downto 0);
  MainBus: out std_logic_vector (7 downto 0);
  Ins: in std_logic_vector(7 downto 0);
  Reset: in std_logic;
  UserCLK: in std_logic;
  SlowCLK: in std_logic;
  CLK_Select: in std_logic;
  CLK: buffer std_logic; -- this needs to be birectional
  Count: out std_logic;
  CounterOutControl: out std_logic;
  InsRegControl: buffer std_logic;
  RegAControl: out std_logic;
  RegBControl: out std_logic;
  MainRegReadControl: out std_logic;
  LowJumpRegLoad: out std_logic;
  HighJumpRegLoad: out std_logic;
  JumpEnable: out std_logic;
  MainRegOutputControl: out std_logic;
  MemOutEnable: out std_logic;
  MemWriteControl: out std_logic;
  Ram_LowControl: out std_logic;
  Ram_HighControl: out std_logic;
  Ram_Addr_Enable: out std_logic;
  StackCount: out std_logic;
  StackOutControl: out std_logic;
  DisplayControl: out std_logic;
  LowStackJump: out std_logic;
  HighStackJump: out std_logic;
  SYNC: in std_logic; --bidirectional
  STATE: in std_logic; --bidirectional
  StackCountDirection: out std_logic
  );
end ALC;

architecture Hardware of ALC is

  component Octal_Bus_Driver
  port(
  A: in std_logic_vector (7 downto 0);
  O: out std_logic_vector (7 downto 0);
  En: in std_logic
  );
  end component;


  component D_flip_flop is
    port (clk,Din,rst,en : in std_logic;
             Q: out std_logic;
             Qnot : out std_logic);
    end component;

--verilog ALU

component Circuit74181b is
  port(A: in std_logic_vector(3 downto 0);
       B: in std_logic_vector (3 downto 0);
       S: in std_logic_vector (3 downto 0);
       CNb: in std_logic;
       M: in std_logic;
       F: out std_logic_vector (3 downto 0);
       AEB: out std_logic;
       X: out std_logic;
       Y: out std_logic;
       CN4b: out std_logic
  );
end component;

component MicroCodeGen is
  port(Instruction: in std_logic_vector (7 downto 0);
       ABFlag: in std_logic;
       CarryFlag: in std_logic;
       Reset: in std_logic;
       clk: in std_logic;
       Count: out std_logic;
       CounterOutControl: out std_logic;
       InsRegControl: out std_logic;
       RegAControl: out std_logic;
       RegBControl: out std_logic;
       MainRegReadControl: out std_logic;
       LowJumpRegLoad: out std_logic;
       HighJumpRegLoad: out std_logic;
       JumpEnable: out std_logic;
       MainRegOutputControl: out std_logic;
       MemOutEnable: out std_logic;
       MemWriteControl: out std_logic;
       Ram_LowControl: out std_logic;
       Ram_HighControl: out std_logic;
       Ram_Addr_Enable: out std_logic;
       StackCount: out std_logic;
       StackOutControl: out std_logic;
       DisplayControl: out std_logic;
       LowStackJump: out std_logic;
       HighStackJump: out std_logic;
       StackCountDirection: out std_logic;
       Drive_Enable: out std_logic;
       ALU_Enable: out std_logic);

end component;

component KeyDecoder is
    port(
    Serial_CLK: in std_logic;
    Serial_Data: in std_logic;
    Scan_Code: out std_logic_vector (7 downto 0);
    Output_Enable: in std_logic;
    System_CLK: in std_logic);
end component;

signal interntalCLK, nClkSelectState, ClkSelectState, ModReadTSig, ModOutTSig, ALU_connect, ABLow, ABHigh, CarryFlag, ABLowHigh, ABFlag, ALU_Enable, CarryOut, Drive_Enable, Constant_Enable, Key_Enable: std_logic;
signal ALU_Out, Constants, Keycode : std_logic_vector (7 downto 0);
begin

  CLK <= interntalCLK;

  --clock selector
  CLKFLOP : D_flip_flop port map (CLK_Select, nClkSelectState, Reset, '1', ClkSelectState, nClkSelectState);
  --want to defualt this to user clock
  process(UserCLK, SlowCLK, ClkSelectState)
  begin
    if ClkSelectState = '0' then
      interntalCLK <= SlowCLK;
    else
      interntalCLK <= UserCLK;
    end if;
  end process;

  Control_Unit: MicroCodeGen port map(
       Ins (7 downto 0),
       ABFlag,
       CarryFlag,
       Reset,
       interntalCLK,
       Count,
       CounterOutControl,
       InsRegControl,
       RegAControl,
       RegBControl,
       MainRegReadControl,
       LowJumpRegLoad,
       HighJumpRegLoad,
       JumpEnable,
       MainRegOutputControl,
       MemOutEnable,
       MemWriteControl,
       Ram_LowControl,
       Ram_HighControl,
       Ram_Addr_Enable,
       StackCount,
       StackOutControl,
       DisplayControl,
       LowStackJump,
       HighStackJump,
       StackCountDirection,
       Drive_Enable,
       ALU_Enable
  );

  Constant_Enable <= Drive_Enable and not Ins(7);

  Constants_Buffer: Octal_Bus_Driver port map(Ins(7 downto 0), MainBus(7 downto 0), Constant_Enable);

  --keyboard controller

  Key_Enable <= Drive_Enable and Ins(7);
  Keyboard_Controller: KeyDecoder port map(SYNC, STATE, MainBus(7 downto 0), Key_Enable, CLK);


  --ALU
  CarryFlagFlop: D_flip_flop port map(InsRegControl, CarryOut, '0', '1', CarryFlag, open);
  ABLowHigh <= ABLow and ABHigh;
  ABFlagFlop: D_flip_flop port map(InsRegControl, ABLowHigh, '0', '1', ABFlag, open);
  ALU_Buffer: Octal_Bus_Driver port map(ALU_Out(7 downto 0), MainBus(7 downto 0), ALU_Enable);



  --verilog implementation
  ALU_Low: Circuit74181b port map(regA (3 downto 0), regB (3 downto 0), Ins(3 downto 0), not Ins(4), Ins(5),  ALU_Out(3 downto 0), ABLow, open, open, ALU_connect);
  ALU_High: Circuit74181b port map(regA (7 downto 4), regB (7 downto 4), Ins(3 downto 0), ALU_connect, Ins(5),  ALU_Out(7 downto 4), ABHigh, open, open, CarryOut);

  --commands
                -- {"NOP": "10111111", --nop is not dealt with
                -- "AIN": "10000000",
                -- "BIN": "10000001",
                -- "JMP": "10000010",
                -- "JPE": "10000101",
                -- "JPC": "10000100",
                -- "DSP": "10000011",
                -- "JBI": "10000110",
                -- "JBHI": "10000111",
                --
                -- "FLF": "11110011", -- all alu functions are dealt with
                -- "FLT": "11111100",
                -- "SUM": "11001001",
                -- "SUB": "11010110",
                -- "AOT": "11111111",
                -- "BOT": "11111010",
                -- "A--": "11001111",
                -- "NTA": "11110000",
                -- "NTB": "11110101",
                -- "XOR": "11111001",
                -- "AND": "11111110",
                -- "ORR": "11111011",
                -- "LSH": "11011100",
                --
                -- "MEO": "10110001",
                -- "MEN": "10110000",
                -- "SMA": "10100000",
                -- "SMAH": "10100001",
                --
                -- "STK": "10110010",
                -- "USK": "10110011",
                --
                -- }
                --

                -- need some set stack pointer commands
                --SSK 1010 0010
                --SSKH 1010 0100

end architecture;
