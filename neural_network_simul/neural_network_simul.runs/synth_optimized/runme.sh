#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/apps/Xilinx/SDK/2016.4/bin:/apps/Xilinx/Vivado/2016.4/ids_lite/ISE/bin/lin64:/apps/Xilinx/Vivado/2016.4/bin
else
  PATH=/apps/Xilinx/SDK/2016.4/bin:/apps/Xilinx/Vivado/2016.4/ids_lite/ISE/bin/lin64:/apps/Xilinx/Vivado/2016.4/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=/apps/Xilinx/Vivado/2016.4/ids_lite/ISE/lib/lin64
else
  LD_LIBRARY_PATH=/apps/Xilinx/Vivado/2016.4/ids_lite/ISE/lib/lin64:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/users/tareelou/git_neural/neural_network_simul/neural_network_simul.runs/synth_optimized'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -log top_level.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source top_level.tcl
