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
  	mux_table_output   : out std_logic_vector(SIZE_WIDTH - 1 downto 0)
  	);
end entity tree_reduction;

architecture treeFunction of tree_reduction is
    shared variable mux_table_t : table;
    
begin

	       tree_reduction : process (flag)
	              variable I : integer range 0 to NBR_NEURON_T;
	              variable k : integer range 0 to NBR_NEURON_T;
	              variable nbr_neurons : integer range 0 to  NBR_NEURON_T;
	              variable numberofcycles : integer range 0 to NBR_NEURON_T; 
	              variable var_t         : integer;
                  --variable a         : std_logic_vector(SIZE_WIDTH - 1 downto 0);
	              
                  begin
                      I := 0; k := 0; nbr_neurons := NBR_NEURON_T; --numberofcycles := CALCULATION_NBR_CYCLES(NBR_NEURON_T); --number of cycles calculated separatly as been done in HLS
                      
                      if flag = '1' then
                          --if rising_edge(clk) then 
                            mux_table_t := mux_table_input;
                            --sequential_loop_2: for J in 0 to numberofcycles  loop
                              sequential_loop_2: while true  loop
                                  sequential_loop_1: while I < nbr_neurons loop
                                --Concurrent_loop_for_mux: for J in 0 to NBR_PIXELS generate
                                        
                                        if I = nbr_neurons -1 then  
                                                mux_table_t(k) := mux_table_t(I); -- if nbr_enuron is ODD (impair)!                         
                                        else   
                                                var_t := comparaison_function (mux_table_t(I), mux_table_t(I+1));                            
                                                mux_table_t(k) := std_logic_vector(to_signed(var_t, mux_table_t(k)'length));                              
                                        end if;
                                        
                              --end generate Concurrent_loop_for_mux;  
                                        I := I+2;  
                                        k := k+1;
                                  end loop sequential_loop_1;
                                        
                                        if ((nbr_neurons MOD 2) /= 0) then nbr_neurons := nbr_neurons +1;
                                        end if;
                                        nbr_neurons := nbr_neurons / 2;
                                         
                                        if nbr_neurons = 1 then exit; end if; ---COnditional exit(0) when the number of cycles isn't precised or effective!!
                                       
                                        I := 0;
                                        k := 0;
                            end loop sequential_loop_2;  
                           mux_table_output <= mux_table_t(0); -- To remain the result even after finishing the operation.
                       
                      -- else mux_table_output <= (others => '0'); -- to show up a 0 after minimum calculation operation.
                         --end if;
                       end if;
            end process tree_reduction;
end treeFunction;