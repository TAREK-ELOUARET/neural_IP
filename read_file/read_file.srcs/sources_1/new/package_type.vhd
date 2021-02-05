library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.numeric_std.all;

library read_package_library;
use read_package_library.read_package.all;

use read_package_library.float_pkg.all;
use read_package_library.fixed_pkg.all;
use read_package_library.fixed_float_types.all;

package package_type is


constant    SIZE_WIDTH_T :natural := 16;

subtype word is std_logic_vector(7 downto 0);
--subtype word is real;
subtype sfixed_type is sfixed(16 downto -5);
 
type storage_array_word is array (0 to 6) of word;
type storage_array_sfixed is array (0 to 6) of sfixed_type;

--alias TYPE_OF_SIGNAL: std_logic_vector(SIZE_WIDTH-1 downto 0) is std_logic_vector(SIZE_WIDTH-1 downto 0);


end package_type;

package body package_type is
   
   
end package_type;