library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.numeric_std.all;

--library ieee_proposed;
--use ieee_proposed.fixed_pkg.all;

package package_type is

constant    SIZE_WIDTH_T :natural := 16;
constant    NBR_NEURON_T :natural := 500;
constant    NBR_PIXELS_T :natural := 2500;
type table is array(0 to NBR_NEURON_T -1) of std_logic_vector(SIZE_WIDTH_T -1 downto 0);

--alias TYPE_OF_SIGNAL: std_logic_vector(SIZE_WIDTH-1 downto 0) is std_logic_vector(SIZE_WIDTH-1 downto 0);

function CALCULATION_NBR_CYCLES(nombre_neurons : integer )  return  integer;
function ABS_FUNCTION(A : integer )  return  integer;
function comparaison_function(A : std_logic_vector(SIZE_WIDTH_T - 1 downto 0); B :     std_logic_vector(SIZE_WIDTH_T - 1 downto 0)) return  integer;

end package_type;

package body package_type is
   
   function CALCULATION_NBR_CYCLES(nombre_neurons :     integer
                      ) return  integer is 
    variable numberofcycles : integer:= 0;
    variable nbr_neurons    : integer:= nombre_neurons;
                 
    begin
    sequential_loop: while nbr_neurons > 1 loop
                        nbr_neurons := nbr_neurons/2;
                        numberofcycles := numberofcycles + 1;
    end loop sequential_loop;
    return numberofcycles;
    
    end function;
   
   function ABS_FUNCTION(A :     integer
                      ) return  integer is 
    begin
        if A >= 0 then return A;
            else return (-A);
        end if;
   end function;
  
   function comparaison_function(A :     std_logic_vector(SIZE_WIDTH_T - 1 downto 0); B :     std_logic_vector(SIZE_WIDTH_T - 1 downto 0)
                      ) return  integer is 
    begin
    
        if to_integer(signed (A)) >= to_integer(signed (B)) then return (to_integer(signed (B)));
            else return (to_integer(signed (A)));
        end if;
    end function;



end package_type;
