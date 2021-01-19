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
constant    NBR_NEURON_T :natural := 20;
constant    NBR_PIXELS_T :natural := 20;

constant NUMBER_OF_NEURONS_SET_AZIMUTH :natural := 3;
constant NUMBER_OF_SIGNATURE_NEURONS :natural := 20;
constant NUMBER_OF_column_NEURONS :natural := 3;
constant table_2D_to_1D_size :natural := (NUMBER_OF_SIGNATURE_NEURONS * NUMBER_OF_column_NEURONS);


type table is array(0 to NBR_NEURON_T -1) of sfixed(SIZE_WIDTH_T -1 downto -6);
type table_azimuth is array(0 to NUMBER_OF_column_NEURONS*NUMBER_OF_NEURONS_SET_AZIMUTH -1) of sfixed(SIZE_WIDTH_T -1 downto -6);

type table_2D_to_1D is array(0 to table_2D_to_1D_size - 1) of sfixed(SIZE_WIDTH_T -1 downto -6);
type array_2D is array (0 to NUMBER_OF_SIGNATURE_NEURONS -1, 0 to NUMBER_OF_column_NEURONS -1) of sfixed(SIZE_WIDTH_T -1 downto -6);--no double??
type array_2D_azimuth_weight is array (0 to NUMBER_OF_SIGNATURE_NEURONS -1, 0 to NUMBER_OF_column_NEURONS * NUMBER_OF_NEURONS_SET_AZIMUTH -1) of sfixed(SIZE_WIDTH_T -1 downto -6);-- type of azimuth_weight_connection??
type std_logic_type is array (0 to NUMBER_OF_SIGNATURE_NEURONS -1, 0 to NUMBER_OF_column_NEURONS -1) of std_logic;--for weights SWM type??

type find_coordonate_type is array (0 to 1) of natural;--no double??

--alias TYPE_OF_SIGNAL: std_logic_vector(SIZE_WIDTH-1 downto 0) is std_logic_vector(SIZE_WIDTH-1 downto 0);

--function CALCULATION_NBR_CYCLES(nombre_neurons : integer )  return  integer;
--function ABS_FUNCTION(A : sfixed(SIZE_WIDTH_T - 1 downto -6))  return  sfixed;
function comparaison_function(A : sfixed(SIZE_WIDTH_T - 1 downto -6); B :     sfixed(SIZE_WIDTH_T - 1 downto -6)) return  sfixed;

end package_type;

package body package_type is
   
   function comparaison_function(A :     sfixed(SIZE_WIDTH_T - 1 downto -6); B :     sfixed(SIZE_WIDTH_T - 1 downto -6)
                      ) return  sfixed is 
    begin
    
        if (A >= B) then return A;
            else return B;
        end if;
    end function;

end package_type;