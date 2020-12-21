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
ExecStep $xv_path/bin/xsim neuro_simul_behav -key {Behavioral:sim_1:Functional:neuro_simul} -tclbatch neuro_simul.tcl -log simulate.log
