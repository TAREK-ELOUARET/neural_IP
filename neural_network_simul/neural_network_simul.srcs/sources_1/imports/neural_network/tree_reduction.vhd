library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.std_logic_arith.all;
use ieee.numeric_std.all;

library neural;
use neural.package_type.all;

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
	   variable I : integer range 0 to NBR_NEURON_T;
       variable k : integer range 0 to NBR_NEURON_T;
       variable nbr_neurons : integer range 0 to  NBR_NEURON_T;
       variable numberofcycles : integer range 0 to NBR_NEURON_T; 
       variable var_t         : integer;
       variable temp:      std_logic_vector (SIZE_WIDTH_T -1 downto 0);
                      --variable a         : std_logic_vector(SIZE_WIDTH - 1 downto 0);        
        begin
            I := 0; k := 0; nbr_neurons := NBR_NEURON_T; --numberofcycles := CALCULATION_NBR_CYCLES(NBR_NEURON_T); --number of cycles calculated separatly as been done in HLS
                             
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