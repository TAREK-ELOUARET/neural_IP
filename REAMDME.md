		################################### README ###########################################

I put in the project above two folder, the first contains the development using HLS tool, and the second based on VHDL language.

so the architecture is composed of two substantial functions or components, weighted-sum & tree-reduction.

	- In the weighted-sum we use the mathematical formulas within each parallel neuron and through sequential pixel value per cycle or time unit.
	- Eventually, the tree-reduction process is dedicated to extract the maximum value from all pre-calculated neurons.

I hereby attach in the VHDL project some packages (to initiate some pre-calculation functions, declaration of some types of signals and tables so on). also, the simulation file to verify the behavior functionality of each componenet (included the top-level).


PS:
In the VHDL program, we works with "std logic" types, we foresee to replace the calculation by fixed-point in the following days as exepected.
