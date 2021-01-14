#!/bin/bash -f
xv_path="/apps/Xilinx/Vivado/2016.4"
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
ExecStep $xv_path/bin/xelab -wto 286763c7124d422c9b98bebc3ea7153a -m64 --debug typical --relax --mt 8 -L neuronal -L xil_defaultlib -L secureip --snapshot neuro_simul_behav xil_defaultlib.neuro_simul -log elaborate.log
