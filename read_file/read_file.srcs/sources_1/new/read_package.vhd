library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.numeric_std.all;

library read_package_library;
--use neuronal.MATH_REAL.all;
use read_package_library.float_pkg.all;
use read_package_library.fixed_pkg.all;
use read_package_library.fixed_float_types.all;

package read_package is


constant    SIZE_WIDTH_T            :natural := 23;
constant    NBR_OF_FILE_ELEMENT     :natural := 2914;
constant    file_input              :string := "input_file.txt";
constant    file_output             :string := "output_file2.txt";


subtype word is real; 
subtype sfixed_type is sfixed(SIZE_WIDTH_T - 1 downto -6);--signed(SIZE_WIDTH_T - 1 downto 0);

type storage_array_word is array (0 to NBR_OF_FILE_ELEMENT - 1) of word;
type sfixed_type_array is array (0 to NBR_OF_FILE_ELEMENT - 1) of sfixed_type;


end read_package;

package body read_package is
   
   
end read_package;