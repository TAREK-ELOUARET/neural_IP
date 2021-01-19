-- Written BY TAREK ELOUARET, ETIS LABORATORY, UNIVERSITY OF CERGY-PARIS CY
-- COPYWRITE WELL SAVED

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
    clk 		                 : in std_logic;
    flag_reset_image                        : in std_logic;
	pixel 		                 : in sfixed(SIZE_WIDTH_T - 1 downto -6);
  	weight                       : in sfixed(SIZE_WIDTH_T - 1 downto -6);
	flag_learning                : in std_logic;
	
  	VecOut_weighted_sum          : out table;
  	VecOut_mux 		             : out table
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
            clk                     : in std_logic;
            reset                   : in std_logic;
            pixel                   : in sfixed(SIZE_WIDTH_T - 1 downto -6);
            weight                  : in sfixed(SIZE_WIDTH_T - 1 downto -6); 
            flag                    : inout std_logic; -- to indicate if weighted_sum calculation is finished or not! 
            VecOut                  : out sfixed (SIZE_WIDTH_T -1 downto -6)
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
	        clk 		            : in std_logic;
            reset                   : in std_logic;
            flag                    : in std_logic;
            mux_table_input         : in table;
            flag_signature          : out std_logic;
            mux_table_output        : out table
        );
    end component tree_reduction;

    component spatial_working_memory
        generic (
	       SIZE_WIDTH :natural ;
  	       NBR_NEURON :natural ;
  	       NBR_PIXELS :natural 
        );
        port (
	       clk 		              : in std_logic;
  	       flag_signature         : in std_logic; -- means that the signature tree has well been sorted
           flag_learning          : in std_logic; -- means the signature_weights are invited to learn and adjust their values
           flag_reset_image       : in std_logic; -- means that the signature tree has well been sorted
           
           signature_neurons      : in table;
           signature_weight       : in array_2D := (others =>(others => (others => '0'))); 
           
           azimuth_neurons        : in table_azimuth;
           azimuth_weight         : in array_2D_azimuth_weight := (others =>(others => (others => '0'))); -- To change it to fixed point type after into 0.001
       
           SWM_neurons            : out array_2D
  	     );
    end component spatial_working_memory;
        
        signal SWM_neurons_t        : array_2D;
        signal flag_signature       : std_logic;
        signal VecOut_mux_t 		             : table;
begin
      
      VecOut_weighted_sum <= vecOut_t; ----To extract results for simulations 
        
      Concurrent_loop_for_pixels: for I in 0 to (NBR_NEURON_T-1) generate        
           --Inner_loop2: IF enable = '1' generate 
           U1: neuro_bio 
                           generic map (SIZE_WIDTH => SIZE_WIDTH_T ,NBR_NEURON => NBR_NEURON_T,  NBR_PIXELS => NBR_PIXELS_T)
                           port map (pixel => pixel, weight => weight, clk => clk, reset => reset, flag => flag_t, VecOut => vecOut_t(I));

           end generate Concurrent_loop_for_pixels;
       
        --tree_reduction_bloc :  generate
           U2: tree_reduction 
                           generic map (SIZE_WIDTH => SIZE_WIDTH_T ,NBR_NEURON => NBR_NEURON_T,  NBR_PIXELS => NBR_PIXELS_T)
                           port map (clk => clk, reset => flag_reset_image, flag => flag_t, mux_table_input => vecOut_t, flag_signature => flag_signature, mux_table_output => VecOut_mux_t);
           
          -- end generate tree_reduction_bloc;   
	       U3: spatial_working_memory
	                       generic map (SIZE_WIDTH => SIZE_WIDTH_T ,NBR_NEURON => NBR_NEURON_T,  NBR_PIXELS => NBR_PIXELS_T)
                           port map (clk => clk, flag_signature => flag_signature, flag_learning => flag_learning, flag_reset_image => flag_reset_image, signature_neurons => VecOut_mux_t, signature_weight => signature_weight, azimuth_neurons => azimuth_neurons, azimuth_weight => azimuth_weight, SWM_neurons => SWM_neurons_t);


end neuronFunction;