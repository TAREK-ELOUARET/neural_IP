library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.numeric_std.all;

library neural;
use neural.package_type.all;

entity neuro_bio is
  generic (
	SIZE_WIDTH :natural ;
  	NBR_NEURON :natural ;
  	NBR_PIXELS :natural 
  );
  port (
	clk 		: in std_logic;
	reset       : in std_logic;
	pixel 		: in std_logic_vector(SIZE_WIDTH -1 downto 0);
  	weight      : in std_logic_vector(SIZE_WIDTH -1 downto 0);
  	flag        : inout std_logic;
  	--result      : out std_logic_vector(SIZE_WIDTH downto 0)
  	VecOut 		: out std_logic_vector(SIZE_WIDTH -1 downto 0)
  	);
end entity neuro_bio;

architecture neuronFunction of neuro_bio is
  signal pixel_t  : integer range 0 to 2 ** (SIZE_WIDTH -1);
  signal weight_t : integer range 0 to 2 ** (SIZE_WIDTH -1);
  --signal output_t : std_logic_vector(SIZE_WIDTH downto 0);
  signal flag_t_vector     : std_logic_vector(SIZE_WIDTH -1 downto 0) := (others => '0'); 
  
  -- Calculate the absoluate value between two signals
  shared variable result    : integer  ;
  shared variable cnt       : natural  ;
  shared variable flag_t    : natural  :=0;
begin
    pixel_t  <= to_integer(signed (pixel));
    weight_t <= to_integer(signed(weight));
    --flag   <= flag_t;
	
	weighted_sum:process (pixel_t, weight_t, clk, reset)

    
	begin 
	
		      if reset = '1' then result := 0;	       
		  	     else if rising_edge(clk) then 
		  	           if cnt < NBR_PIXELS then
		  	           
		  	                   if cnt = 0 then -- ABS & add operations
		  	                          result := 0;
  				                      result := result + ABS_FUNCTION(pixel_t - weight_t);
  				                      cnt    := cnt + 1;
  				                      flag_t := 0;
  				                      
  				               else if cnt = NBR_PIXELS - 1 then -- devision & substruction operations
  				                      result := result + ABS_FUNCTION(pixel_t - weight_t);
  				                      result := 1 - (result / NBR_NEURON);
                                      cnt    := 0;
                                      flag_t := 1;
  				               else  
  				                      result := result + ABS_FUNCTION(pixel_t - weight_t);
                                      cnt    := cnt + 1;
                                      flag_t := 0;
                               end if;   
                       end if;    
			          end if;
		         end if;
		      end if;
	VecOut <= std_logic_vector(to_signed(result, vecOut'length));
    flag_t_vector <= std_logic_vector(to_signed(flag_t, flag_t_vector'length));

	flag <= flag_t_vector(0);
	end process weighted_sum; 

end neuronFunction;