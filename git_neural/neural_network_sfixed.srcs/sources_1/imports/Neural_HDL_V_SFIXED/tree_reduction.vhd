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


entity tree_reduction is
  generic (
	SIZE_WIDTH :natural := SIZE_WIDTH_T;
  	NBR_NEURON :natural := NBR_NEURON_T;
  	NBR_PIXELS :natural := NBR_PIXELS_T 
  );
  port (
	clk 		: in std_logic;
	reset       : in std_logic;
  	flag        : in std_logic;
  	mux_table_input    : in table;
  	mux_table_output   : out table
  	);
end entity tree_reduction;

architecture treeFunction of tree_reduction is
    shared variable mux_table_t : table;
    
begin

    tree_reduction : process (clk, flag)

       variable temp:      sfixed (SIZE_WIDTH_T -1 downto -6);
           
        begin
                             
                if flag = '1' then
                    mux_table_t := mux_table_input;
                        if rising_edge(clk) then 
                
                            for j in table'LEFT to table'RIGHT - 1 loop 
                                for i in table'LEFT to table'RIGHT - 1 - j loop 
                                    if mux_table_t(i) <= mux_table_t(i + 1) then
                                        temp := mux_table_t(i);
                                        mux_table_t(i) := mux_table_t(i + 1);
                                        mux_table_t(i + 1) := temp;
                                    end if;
                                end loop;
                            end loop;
                        end if;
                end if;
        mux_table_output <= mux_table_t;

    end process tree_reduction;
    
end treeFunction;