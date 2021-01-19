library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.numeric_std.all;

library neuronal;
use neuronal.package_type.all;

use neuronal.float_pkg.all;
use neuronal.fixed_pkg.all;
use neuronal.fixed_float_types.all;

entity neuro_bio is
  generic (
	SIZE_WIDTH :natural ;
  	NBR_NEURON :natural ;
  	NBR_PIXELS :natural 
  );
  port (
	clk 		: in std_logic;
	reset       : in std_logic;
	pixel 		: in sfixed(SIZE_WIDTH_T - 1 downto -6);
  	weight      : in sfixed(SIZE_WIDTH_T - 1 downto -6);
  	flag        : inout std_logic;
  	--result      : out std_logic_vector(SIZE_WIDTH downto 0)
  	VecOut 		: out sfixed (SIZE_WIDTH_T -1 downto -6)
  	);
end entity neuro_bio;

architecture neuronFunction of neuro_bio is
  --signal pixel_t  : integer range 0 to 5028;
  --signal weight_t : integer range 0 to 5028;
  --signal output_t : std_logic_vector(SIZE_WIDTH downto 0);
  signal flag_t_vector     : std_logic_vector(SIZE_WIDTH downto 0); 
  
  -- Calculate the absoluate value between two signals
  shared variable result    : sfixed (SIZE_WIDTH_T - 1 downto -6);
  shared variable cnt       : natural  ;
  shared variable flag_t    : natural  :=0;
begin
    --pixel_t  <= to_integer(signed (pixel));
    --weight_t <= to_integer(signed(weight));
	
	weighted_sum:process (pixel, weight, clk, reset)

    
	begin 
	
		      if reset = '1' then result := sfixed (to_signed(0, result'length));	       
		  	  
		  	  else    
		  	       if rising_edge(clk) then 
		  	               if cnt < NBR_PIXELS then
		  	           
		  	                       if cnt = 0 then -- ABS & add operations
		  	                          result := sfixed (to_signed(0, result'length));
                                      
                                      if (pixel >= weight) then result := resize(result + resize((pixel - weight), result), result);
                                      else result := resize(result + resize(-(pixel - weight), result), result);
                                      end if;
  				                      
  				                      cnt    := cnt + 1;
  				                      flag_t := 0;
  				                      
  				                   elsif cnt = NBR_PIXELS - 1 then -- devision & substruction operations
  				                      --result := resize(result + resize(ABS_FUNCTION(pixel - weight), result), result);
  				                                                            
                                        if (pixel >= weight) then result := resize(result + resize((pixel - weight), result), result);
                                        else result := resize(result + resize(-(pixel - weight), result), result);
                                        end if;
                                        
  				                        result := resize ((sfixed (to_signed(1, result'length)) - (result / NBR_NEURON)), result);
                                        cnt    := 0;
                                        flag_t := 1;
  				                   else  
  				                      --result := resize(result + resize(ABS_FUNCTION(pixel - weight), result), result);
  				                                                            
                                        if (pixel >= weight) then result := resize(result + resize(pixel - weight, result), result);
                                        else result := resize(result + resize(-(pixel - weight), result), result);
                                        end if;
                                        
                                        cnt    := cnt + 1;
                                        flag_t := 0;
                                  end if;   
                            end if;    
			       end if;
            end if;

	VecOut <= sfixed (to_signed(result, vecOut'length));
    flag_t_vector <= std_logic_vector(to_signed(flag_t, flag_t_vector'length));

	flag <= flag_t_vector(0);
	end process weighted_sum; 

end neuronFunction;