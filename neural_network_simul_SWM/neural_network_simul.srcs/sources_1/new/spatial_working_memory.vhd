library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.numeric_std.all;

library neural;
use neural.package_type.all;
use neural.MATH_REAL.all;

entity spatial_working_memory is
  generic (
	SIZE_WIDTH :natural ;
  	NBR_NEURON :natural ;
  	NBR_PIXELS :natural 
  );
  port (
	clk 		: in std_logic;
	
  	flag_signature         : in std_logic; -- means that the signature tree has well been sorted
  	flag_learning          : in std_logic; -- means the signature_weights are invited to learn and adjust their values
  	flag_reset_image       : in std_logic; -- means that the signature tree has well been sorted
  	
  	signature_neurons      : in table;
  	signature_weight       : in table; 
  	
  	azimuth_neurons        : in table;
  	azimuth_weight         : in table;
  
  	SWM_neurons 		   : out array_2D
  	);
end entity spatial_working_memory;

architecture neuronFunction of spatial_working_memory is
  signal flag_t_vector     : std_logic_vector(SIZE_WIDTH -1 downto 0) := (others => '0'); 
  signal flag_SWM : std_logic:= '0';
  -- Calculate the absoluate value between two signals
  shared variable SWM_neurons_t 		   : array_2D;

    function maximum_set(Azimuth_neuron :     table -- calculation of maximum (Aj(t) * Wj,il(t))
                      ) return  std_logic_vector is 
                      variable temp : std_logic_vector(SIZE_WIDTH -1 downto 0);
                      variable Azimuth_neuron_t : table;

        begin
    
            for j in table'LEFT to table'RIGHT - 1 loop 
                for i in table'LEFT to table'RIGHT - 1 - j loop 
                    if Azimuth_neuron(i) <= Azimuth_neuron(i + 1) then
                        temp := Azimuth_neuron(i);
                        Azimuth_neuron_t(i) := Azimuth_neuron(i + 1);
                        Azimuth_neuron_t(i + 1) := temp;
                    end if;
                 end loop;
           end loop;
        return Azimuth_neuron_t(0);

    end function;
   
    function linearize_2D_array(Azimuth_neuron :     array_2D -- linearize the matrix neurons into one dimension in order to facilitate its sort!
                     ) return  table_2D_to_1D is 
                     variable Azimuth_neuron_t : table_2D_to_1D;
                     variable k : integer := 0;
        begin
   
           for i in 0 to NUMBER_OF_SIGNATURE_NEURONS - 1 loop 
               for j in 0 to NUMBER_OF_AZIMUTH_NEURONS - 1 loop 
                    Azimuth_neuron_t (k) := Azimuth_neuron (i, j);
                    k := k+1;
                end loop;
          end loop;
       return Azimuth_neuron_t;

    end function;
  
    function maximum_set_SWM(Azimuth_neuron :     table_2D_to_1D -- calculation of maximum neuron value to get updated its weight connection!
                      ) return  std_logic_vector is 
                      variable temp : std_logic_vector(SIZE_WIDTH -1 downto 0);
                      variable Azimuth_neuron_t : table;

        begin
    
            for j in table_2D_to_1D'LEFT to table_2D_to_1D'RIGHT - 1 loop 
                for i in table_2D_to_1D'LEFT to table_2D_to_1D'RIGHT - 1 - j loop 
                    if Azimuth_neuron(i) <= Azimuth_neuron(i + 1) then
                        temp := Azimuth_neuron(i);
                        Azimuth_neuron_t(i) := Azimuth_neuron(i + 1);
                        Azimuth_neuron_t(i + 1) := temp;
                    end if;
                 end loop;
           end loop;
        return Azimuth_neuron_t(0);

   end function;
   
begin

	
	SWM:process (clk)
	variable Azimuth_neuron_t :     table;
	variable l :     integer;
	
	begin 
	
	   if flag_signature = '1' then
            if rising_edge(clk) then 
		      if flag_reset_image = '1' then
		          for i in 0 to NUMBER_OF_SIGNATURE_NEURONS - 1 loop 
		                l := 0;
                        for j in 0 to NUMBER_OF_AZIMUTH_NEURONS -1 loop
                            
                            for k in l to l+2 loop
                                Azimuth_neuron_t(k) := azimuth_neurons(k) * azimuth_weight(k);
                            end loop;
                                                
		                    SWM_neurons_t(i,j) := (signature_neurons(j) * signature_weight(j)) * (maximum_set(Azimuth_neuron_t));
		                    l := l+3;
		          end loop;
		          end loop;
		          flag_SWM <= '1';
		      end if;
		
		    end if;
	   end if;
	end process SWM; 
	
	
	learning:process (clk, flag_SWM)
    variable Azimuth_neuron_t :     table;
    variable l :     integer;
    variable Maximum_learning_value: std_logic_vector(SIZE_WIDTH -1 downto 0);
    
    begin 
    
       if flag_SWM = '1' then
            if rising_edge(clk) then 
                 Maximum_learning_value := maximum_set_SWM(linearize_2D_array(SWM_neurons_t)); -- CHOOSE THE MAXIMUM VALUE FROM NEURONS TO be UPDATE & LEARN
                 -- UPDATE NOW THE WEIGHT OF THE SELECTED NEURON WITH MAXIMUM VALUE!   
            end if;
       end if;
    end process learning; 

end neuronFunction;