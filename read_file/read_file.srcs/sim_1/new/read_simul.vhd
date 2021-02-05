--library ieee;
--use std.textio.all;
--use ieee.std_logic_textio.all;

--use ieee.std_logic_1164.all;
--use ieee.std_logic_signed.all;
--use ieee.numeric_std.all;

--library read;
--use read.read_package.all;

--use read.float_pkg.all;
--use read.fixed_pkg.all;
--use read.fixed_float_types.all;

--entity neuro_simul is
----  Port ( );
--end neuro_simul;

--architecture architecture_neuro of neuro_simul is

----impure function read_array (file_name : string) return storage_array_pixels is 

----variable ram_content_pixels : storage_array_pixels := (others => 0); --variable ram_content_azimuth_neurons : storage_array_pixels;		
----variable index              : natural := 0;
----type    load_file_type is file of word;
----file    load_file           : load_file_type open read_mode is file_name;

----    begin 

----        while not endfile (load_file)  loop --and index < NBR_OF_FILE_ELEMENT - 1
----            read (load_file, ram_content_pixels(index));
----            index := index + 1;
----        end loop;
        
----        file_close(load_file);
----    return ram_content_pixels;
  
----end function read_array;


--signal clk                          : std_logic := '0'; 
--signal file_out_t                   : sfixed(SIZE_WIDTH_T -1 downto -6);
--signal storage_sfixed               : sfixed_type_array;
--signal file_in_t                    : word;
--signal storage                      : storage_array_pixels;
--signal counter_values               : natural := 0;

--file file_VECTORS : text;
----component counter is
---- port (
----    clk                 : in std_logic; 
----    file_in             : in word;
----    file_out            : out sfixed(SIZE_WIDTH_T -1 downto -6)
----    );
----end component;

--begin   

--ROM: process 

--variable ram_content_pixels : storage_array_pixels; --variable ram_content_azimuth_neurons : storage_array_pixels;		
--variable index              : natural := 0;
--type    load_file_type is file of word;
--file    load_file           : load_file_type open read_mode is file_name;

--begin 
--        --file_open(load_file, file_name, read_mode);
--        file_open(load_file, file_name,  read_mode);
--        --for j in 0 to NBR_OF_FILE_ELEMENT - 1  loop
--        while not endfile (load_file)  loop 
--            read (load_file, ram_content_pixels(index));
--            storage(index) <= ram_content_pixels(index);
--            --storage_sfixed(index) <= to_sfixed(storage(index), sfixed_type'RIGHT, sfixed_type'LEFT);

--            index := index + 1;
--            wait for 1 ns;   
--        end loop;
--        file_close(load_file);
--        --
--        wait; -- to block the reading once at a time !!
--end process ROM;

----    UUT : counter
----        Port map( 
----            clk => clk,
----            file_in  =>  file_in_t,
----            file_out => file_out_t
----        );
----    reading_file: process 
----    begin 
----        --for j in 0 to NBR_OF_FILE_ELEMENT - 1  loop
----            storage      <=    read_array(file_name);
----       -- end loop;
----        wait;
----    end process reading_file;
    
--    clk          <=    not clk after 2 ns;
    
----    counter_signal: process (clk)
----    begin 
----            if clk = '1' then
----                file_in_t   <=   storage(counter_values);
----                counter_values <= counter_values + 1;
----            end if;
----            if counter_values = (NBR_OF_FILE_ELEMENT - 1) then counter_values <= 0; end if;
----    end process counter_signal;

--end architecture_neuro;

library ieee;
use std.textio.all;
--use ieee.std_logic_textio.all;

use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.numeric_std.all;

library read_package_library;
use read_package_library.read_package.all;

use read_package_library.float_pkg.all;
use read_package_library.fixed_pkg.all;
use read_package_library.fixed_float_types.all;

entity neuro_simul is
--  Port ( );
end neuro_simul;


architecture architecture_neuro OF neuro_simul IS

component counter is
 port (
    clk                 : in bit; 
    file_in             : in sfixed_type;
    file_out            : out sfixed_type
    );
end component;

signal clock,endoffile : bit := '0';
signal dataread_real : word;
signal dataread_sfixed : sfixed_type_array;
signal linenumber : integer:= 1;
signal file_out_t                   : sfixed_type;
signal file_in_t                    : sfixed_type;

begin


clock <= not (clock) after 1 ns; --clock with time period 2 ns

    UUT : counter
        Port map( 
            clk => clock,
            file_in  =>  file_in_t,
            file_out => file_out_t
        );

process
file input_file         : text is in file_input; --declare input file
--file output_file        : text is in file_output; --declare output file
file output_file        : text open write_mode is file_output;

variable inline         : line; --line number declaration
variable v_OLINE        : line;
variable dataread1      : word;
variable index          : natural := 0;

begin
    file_open(input_file, file_input, read_mode);
    file_open(output_file, file_output, write_mode);
    
    wait until clock = '1' and clock'event;
    if (not endfile(input_file)) then 
        readline(input_file, inline); 
        read(inline, dataread1);
        dataread_real   <= dataread1;
        dataread_sfixed(index) <= to_sfixed(dataread1,sfixed_type'high,sfixed_type'low); --signed(to_sfixed(dataread_real,5,-5))
        file_in_t <= to_sfixed(dataread1,sfixed_type'high,sfixed_type'low);
        wait for 1 ns;
        write(v_OLINE, dataread1); --outwrite the input values to the external file
        writeline(output_file, v_OLINE);
        index := index + 1; 
    else
        endoffile <='1'; 
    end if;
    
end process;

--process (clock)
--begin
    
--end process;
end architecture architecture_neuro;