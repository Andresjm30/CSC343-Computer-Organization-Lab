library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Structural architectures are appropriate when it is easier to specify
-- structure as opposed to behavior. In my experience, the most common use of
-- structural architectures is for datapaths with custom pipelines, where the
-- structure is very important. You might be able to specify a behavioral
-- description that is functionally equivalent, but unless you are careful, the
-- synthesis tool will not convert it into the same structure that you are
-- expecting. When achieving an exact structure is important, use a structural
-- architecture.
--
-- The following example illustrates how to convert the structure of a small,
-- pipelined adder tree (see add_tree.pdf) into VHDL. Note that you should
-- always draw the structure first (i.e., create a schematic). Once you have
-- the drawing, translating to VHDL requires almost no thought.

entity add_tree is
  generic (
    width     :     positive := 8);
  port (
    clk       : in  std_logic;
    rst       : in  std_logic;
    en        : in  std_logic;
    valid_in  : in  std_logic;
    valid_out : out std_logic;
    in1       : in  std_logic_vector(width-1 downto 0);
    in2       : in  std_logic_vector(width-1 downto 0);
    in3       : in  std_logic_vector(width-1 downto 0);
    in4       : in  std_logic_vector(width-1 downto 0);
    output    : out std_logic_vector(width-1 downto 0));
end add_tree;

architecture STR1 of add_tree is

  -- every object that will be instantiated should be declared as a component.
  -- This simply involves copying and pasting the corresponding entity,
  -- changing "entity" to "component", etc.

  component add
    generic (
      width  :     positive := 8);
    port (
      in1    : in  std_logic_vector(width-1 downto 0);
      in2    : in  std_logic_vector(width-1 downto 0);
      output : out std_logic_vector(width-1 downto 0));
  end component;

  component reg
    generic (
      width  :     positive := 8);
    port (
      clk    : in  std_logic;
      rst    : in  std_logic;
      load   : in  std_logic;
      input  : in  std_logic_vector(width-1 downto 0);
      output : out std_logic_vector(width-1 downto 0));
  end component;

  signal add1_out, add2_out, add3_out : std_logic_vector(width-1 downto 0);
  signal add1_reg, add2_reg           : std_logic_vector(width-1 downto 0);
  signal valid_reg1                   : std_logic;

begin  -- STR1

  -- add the first two inputs
  --
  -- This create an instance of the "add" entity. The generic map defines
  -- values of any generics and the port map establishes I/O connections. The
  -- left side of the port map are formal parameters associated with the entity
  -- being instantiated. The right side are actual parameters that correspond
  -- to signals within this entity.
  U_ADD1 : add
    generic map (
      width  => width)
    port map (
      in1    => in1,
      in2    => in2,
      output => add1_out);

  -- store the result in a register (i.e., pipeline the adder tree)
  U_ADD1_REG : reg
    generic map (
      width  => width)
    port map (
      clk    => clk,
      rst    => rst,
      load   => en,
      input  => add1_out,
      output => add1_reg);

  -- add the second two inputs
  U_ADD2 : add
    generic map (
      width  => width)
    port map (
      in1    => in3,
      in2    => in4,
      output => add2_out);

  -- store the second add output in a register
  U_ADD2_REG : reg
    generic map (
      width  => width)
    port map (
      clk    => clk,
      rst    => rst,
      load   => en,
      input  => add2_out,
      output => add2_reg);

  -- add the two previous registers
  U_ADD3 : add
    generic map (
      width  => width)
    port map (
      in1    => add1_reg,
      in2    => add2_reg,
      output => add3_out);

  -- store the result in a register connected to the output
  U_ADD3_REG : reg
    generic map (
      width  => width)
    port map (
      clk    => clk,
      rst    => rst,
      load   => en,
      input  => add3_out,
      output => output);


  U_VALID_REG1 : reg
    generic map (
      width     => 1)
    port map (
      clk       => clk,
      rst       => rst,
      load      => en,
      input(0)  => valid_in,
      output(0) => valid_reg1);

  U_VALID_REG2 : reg
    generic map (
      width     => 1)
    port map (
      clk       => clk,
      rst       => rst,
      load      => en,
      input(0)  => valid_reg1,
      output(0) => valid_out);

end STR1;


architecture STR2 of add_tree is

  -- We can simplify the structure by combining the adder and the register into
  -- a single pipelined adder.

  component add_pipe
    generic (
      width  :     positive := 8);
    port (
      clk    : in  std_logic;
      rst    : in  std_logic;
      load   : in  std_logic;
      in1    : in  std_logic_vector(width-1 downto 0);
      in2    : in  std_logic_vector(width-1 downto 0);
      output : out std_logic_vector(width-1 downto 0));
  end component;

  component reg
    generic (
      width  :     positive := 8);
    port (
      clk    : in  std_logic;
      rst    : in  std_logic;
      load   : in  std_logic;
      input  : in  std_logic_vector(width-1 downto 0);
      output : out std_logic_vector(width-1 downto 0));
  end component;
  
  signal add1_out, add2_out : std_logic_vector(width-1 downto 0);
  signal valid_reg1         : std_logic;

begin  -- STR2

  U_ADD1 : add_pipe
    generic map (
      width  => width)
    port map (
      clk    => clk,
      rst    => rst,
      load   => en,
      in1    => in1,
      in2    => in2,
      output => add1_out);

  U_ADD2 : add_pipe
    generic map (
      width  => width)
    port map (
      clk    => clk,
      rst    => rst,
      load   => en,
      in1    => in3,
      in2    => in4,
      output => add2_out);

  U_ADD3 : add_pipe
    generic map (
      width  => width)
    port map (
      clk    => clk,
      rst    => rst,
      load   => en,
      in1    => add1_out,
      in2    => add2_out,
      output => output);

  U_VALID_REG1 : reg
    generic map (
      width     => 1)
    port map (
      clk       => clk,
      rst       => rst,
      load      => en,
      input(0)  => valid_in,
      output(0) => valid_reg1);

  U_VALID_REG2 : reg
    generic map (
      width     => 1)
    port map (
      clk       => clk,
      rst       => rst,
      load      => en,
      input(0)  => valid_reg1,
      output(0) => valid_out);

end STR2;


architecture STR3 of add_tree is

  -- In this example, we eliminate the component declaration

  signal add1_out, add2_out : std_logic_vector(width-1 downto 0);
  signal valid_reg1         : std_logic;

begin  -- STR2

  -- Component declarations are not needed if the following syntax is used.
  -- This assumes there is an add_pipe entity in the work directory.
  -- If not, you will get an error during compilation. If there are multiple
  -- architectures you specify the appropriate one in parentheses after the
  -- entity name (e.g., entity work.add_pipe(CARRY_LOOKAHEAD)).
  -- See top_level.vhd for an example.

  U_ADD1 : entity work.add_pipe
    generic map (
      width  => width)
    port map (
      clk    => clk,
      rst    => rst,
      load   => en,
      in1    => in1,
      in2    => in2,
      output => add1_out);

  U_ADD2 : entity work.add_pipe
    generic map (
      width  => width)
    port map (
      clk    => clk,
      rst    => rst,
      load   => en,
      in1    => in3,
      in2    => in4,
      output => add2_out);

  U_ADD3 : entity work.add_pipe
    generic map (
      width  => width)
    port map (
      clk    => clk,
      rst    => rst,
      load   => en,
      in1    => add1_out,
      in2    => add2_out,
      output => output);

  U_VALID_REG1 : entity work.reg
    generic map (
      width     => 1)
    port map (
      clk       => clk,
      rst       => rst,
      load      => en,
      input(0)  => valid_in,
      output(0) => valid_reg1);

  U_VALID_REG2 : entity work.reg
    generic map (
      width     => 1)
    port map (
      clk       => clk,
      rst       => rst,
      load      => en,
      input(0)  => valid_reg1,
      output(0) => valid_out);


end STR3;
