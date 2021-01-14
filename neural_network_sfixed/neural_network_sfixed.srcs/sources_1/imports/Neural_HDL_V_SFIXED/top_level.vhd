library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.std_logic_arith.all;
use ieee.numeric_std.all;

library neuronal;
use neuronal.package_type.all;

use neuronal.float_pkg.all;
use neuronal.fixed_pkg.all;
use neuronal.fixed_float_types.all;

entity top_level is

  port (
    clk 		: in std_logic;
    reset       : in std_logic;
	pixel 		: in sfixed(SIZE_WIDTH_T - 1 downto -6);
  	weight      : in sfixed(SIZE_WIDTH_T - 1 downto -6);
	
  	--VecOut_weighted_sum 		: out table;
  	VecOut_mux 		            : out table
  	);
end entity top_level;

architecture neuronFunction of top_level is
  signal pixel_t  : sfixed(SIZE_WIDTH_T - 1 downto -6);
  signal weight_t : sfixed(SIZE_WIDTH_T - 1 downto -6);
  signal flag_t   : std_logic := '0';
  signal enable   : std_logic := '0';

  signal vecOut_t : table := (others => (others => '0'));
  --signal vecOut_help : table := (others => (others => '0'));

  component neuro_bio 
        generic (
            SIZE_WIDTH :natural;
            NBR_NEURON :natural;
            NBR_PIXELS :natural
        );
        port (
            clk             : in std_logic;
            reset           : in std_logic;
            pixel           : in sfixed(SIZE_WIDTH_T - 1 downto -6);
            weight          : in sfixed(SIZE_WIDTH_T - 1 downto -6); 
            flag            : inout std_logic; -- to indicate if weighted_sum calculation is finished or not! 
            VecOut          : out sfixed (SIZE_WIDTH_T -1 downto -6)
            --result          : out std_logic_vector(SIZE_WIDTH downto 0)
        );
    end component;
    
    component tree_reduction
        generic (
            SIZE_WIDTH :natural;
            NBR_NEURON :natural;
            NBR_PIXELS :natural
         );
        port (
	        clk 		: in std_logic;
            reset       : in std_logic;
            flag        : in std_logic;
            mux_table_input    : in table;
            mux_table_output   : out table
        );
    end component tree_reduction;

begin
      
      --VecOut_weighted_sum <= vecOut_t; ----To extract results for simulations 
        
      Concurrent_loop_for_pixels: for I in 0 to (NBR_NEURON_T-1) generate        
           --Inner_loop2: IF enable = '1' generate 
           U1: neuro_bio 
                           generic map (SIZE_WIDTH => SIZE_WIDTH_T ,NBR_NEURON => NBR_NEURON_T,  NBR_PIXELS => NBR_PIXELS_T)
                           port map (pixel => pixel, weight => weight, clk => clk, reset => reset, flag => flag_t, VecOut => vecOut_t(I));

           end generate Concurrent_loop_for_pixels;
       
        --tree_reduction_bloc :  generate
           U2: tree_reduction 
                                      generic map (SIZE_WIDTH => SIZE_WIDTH_T ,NBR_NEURON => NBR_NEURON_T,  NBR_PIXELS => NBR_PIXELS_T)
                                      port map (clk => clk, reset => reset, flag => flag_t, mux_table_input => vecOut_t, mux_table_output => VecOut_mux);
           
          -- end generate tree_reduction_bloc;   
	
end neuronFunction;