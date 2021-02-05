----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/29/2021 07:34:46 PM
-- Design Name: 
-- Module Name: counter - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library ieee;
use std.textio.all;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.numeric_std.all;

library read_package_library;
use read_package_library.read_package.all;
--use neuronal.MATH_REAL.all;
--use neuronal.MATH_REAL.all;
use read_package_library.float_pkg.all;
use read_package_library.fixed_pkg.all;
use read_package_library.fixed_float_types.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity counter is
 port (
    clk                 : in bit; 
    file_in             : in sfixed_type;
    file_out            : out sfixed_type
    );
end counter;

architecture Behavioral of counter is

signal cnt : natural := 0;
signal file_out_t : sfixed_type;

begin

 file_out <= file_out_t;

 ROM_lecture: process (clk)
    begin 
        if clk = '1' then 
            file_out_t <= resize((file_in + 1), file_out_t);
            --cnt <= cnt+ 1;
--        end if;
--        if cnt = NBR_OF_FILE_ELEMENT - 1 then cnt <= 0; end if;
        end if;
end process ROM_lecture;

end Behavioral;