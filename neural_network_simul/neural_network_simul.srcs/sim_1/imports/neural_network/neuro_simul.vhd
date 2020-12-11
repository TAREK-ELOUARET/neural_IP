
---------------------------------------------------------------------------------
---------------- Simulation for tree_reduction.vhd -------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_signed."+";

library neural;
use neural.package_type.all;

entity neuro_simul is
    --  Port ( );
end neuro_simul;

architecture Behavioral of neuro_simul is

component tree_reduction is
    generic (
	SIZE_WIDTH :natural := SIZE_WIDTH_T;
    NBR_NEURON :natural := NBR_NEURON_T;
    NBR_PIXELS :natural := NBR_PIXELS_T 
  );
  port (
	clk 		: in std_logic;
	reset       : in std_logic;
  	flag        : in std_logic;
  	mux_table_input    : in table;
  	mux_table_output   : out std_logic_vector(SIZE_WIDTH_T - 1 downto 0)
  	);
end component tree_reduction;

    signal clk              : std_logic := '0';                            
    signal reset            : std_logic := '0';                            
    signal flag             : std_logic := '1';
    --signal mux_table_input_t  : table:= (others => ("00000001110"));
                                                           
    --signal mux_table_input_t  : table;
    signal mux_table_output_t : std_logic_vector(SIZE_WIDTH_T - 1 downto 0);
    
    signal mux_table_input_t : table := (
         2 => "0000000000000001" , --255
         3 => "0000000000001010" , 
         4 => "0000000000001111" , 
         6 => "0000000000000011" , 
         8 => "0000000000000110" , 
         9 => "0000000000000100" , 
         0 => "0000000001001010",
         1 => "0000000000000011",
         5 => "0000000000100000",
         7 => "0000000000000111",
         15=> "0000000000000001",

         12 => "0000000001001010",
         11 => "0000000000001011",
         14 => "0000000000000010",
         17 => "1000000000000100",
         19 => "0000000000000000",

         others => "0000000000000111" ) ;
begin
    
    UUT : tree_reduction
      generic map(
        SIZE_WIDTH => SIZE_WIDTH_T,
        NBR_NEURON => NBR_NEURON_T,
        NBR_PIXELS => NBR_PIXELS_T
      )
      Port map( 
        clk => clk,
        reset => reset,
        flag => flag,
        mux_table_input => mux_table_input_t,
        mux_table_output => mux_table_output_t
      );
    
  --delay_simul: PROCESS 
  --BEGIN
-----------------------------------------------------
    
    clk     <=    not clk after 10 ns;
    reset   <=    not reset after 700 ns;
    
    
end Behavioral;


-----------------------------------------------------------------------------------
---------------- Simulation for top_level.vhd -------------------
--library ieee;
--use ieee.std_logic_1164.all;
--use ieee.numeric_std.all;
--use ieee.std_logic_signed."+";

--library neural;
--use neural.package_type.all;

--entity neuro_simul is
--    --  Port ( );
--end neuro_simul;

--architecture Behavioral of neuro_simul is

--component top_level is
   
--  port (
--    clk             : in std_logic;
--    reset           : in std_logic;
--    pixel           : in std_logic_vector(SIZE_WIDTH_T -1 downto 0);
--    weight          : in std_logic_vector(SIZE_WIDTH_T -1 downto 0);
  
--    VecOut_weighted_sum             : out table;
--    VecOut_mux                      : out std_logic_vector(SIZE_WIDTH_T -1 downto 0)
--    );
--end component top_level;

--    signal clk              : std_logic := '0';                            
--    signal reset            : std_logic := '0';                            
--    signal pixel            : std_logic_vector(SIZE_WIDTH_T -1 downto 0):= ( 1 => '1', 2 => '0', others =>'0');
--    signal weight           : std_logic_vector(SIZE_WIDTH_T -1 downto 0):= ( 1 => '1', 2 => '1', others =>'0');
                                                               
--    signal VecOut_weighted_sum 		: table := (others => (others => '0'));
--    signal VecOut_mux 		        : std_logic_vector(SIZE_WIDTH_T -1 downto 0);

    
--begin

--    UUT : top_level
--      Port map( 
--        clk => clk,
--        reset => reset,
--        pixel => pixel,
--        weight => weight,
--        VecOut_weighted_sum => VecOut_weighted_sum,
--        VecOut_mux => VecOut_mux
--      );
    
--  --delay_simul: PROCESS 
--  --BEGIN
-------------------------------------------------------
    
--    clk     <=    not clk after 10 ns;
--    reset   <=    not reset after 700 ns;
--    pixel   <=    ( 1 => '1', 2 => '0', others =>'0')  after 20 ns;
--    weight  <=    ( 1 => '1', 2 => '1', others =>'0') after 20 ns;
    
    
--end Behavioral;