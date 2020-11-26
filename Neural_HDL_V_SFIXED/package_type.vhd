library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.numeric_std.all;

library neuronal;

use neuronal.float_pkg.all;
use neuronal.fixed_pkg.all;
use neuronal.fixed_float_types.all;

package package_type is

constant    SIZE_WIDTH_T :natural := 16;
constant    NBR_NEURON_T :natural := 10;
constant    NBR_PIXELS_T :natural := 10;
type table is array(0 to NBR_NEURON_T -1) of sfixed(SIZE_WIDTH_T -1 downto -6);

--alias TYPE_OF_SIGNAL: std_logic_vector(SIZE_WIDTH-1 downto 0) is std_logic_vector(SIZE_WIDTH-1 downto 0);

--function CALCULATION_NBR_CYCLES(nombre_neurons : integer )  return  integer;
--function ABS_FUNCTION(A : sfixed(SIZE_WIDTH_T - 1 downto -6))  return  sfixed;
function comparaison_function(A : sfixed(SIZE_WIDTH_T - 1 downto -6); B :     sfixed(SIZE_WIDTH_T - 1 downto -6)) return  sfixed;

end package_type;

package body package_type is
   
--    function CALCULATION_NBR_CYCLES(nombre_neurons :     integer
--                      ) return  integer is 
--    variable numberofcycles : integer:= 0;
--    variable nbr_neurons    : integer:= nombre_neurons;
                 
--    begin
--    sequential_loop: while nbr_neurons > 1 loop
--                        nbr_neurons := nbr_neurons/2;
--                        numberofcycles := numberofcycles + 1;
--    end loop sequential_loop;
--    return numberofcycles;
    
--    end function;
   
   --function ABS_FUNCTION(A :     sfixed(SIZE_WIDTH_T - 1 downto -6)
     --                 ) return  sfixed is 
    --begin
      --  if A >= 0 then return A;
        --    else return (resize(-A, A));
       -- end if;
   --end function;
  
   function comparaison_function(A :     sfixed(SIZE_WIDTH_T - 1 downto -6); B :     sfixed(SIZE_WIDTH_T - 1 downto -6)
                      ) return  sfixed is 
    begin
    
        if (A >= B) then return A;
            else return B;
        end if;
    end function;



end package_type;