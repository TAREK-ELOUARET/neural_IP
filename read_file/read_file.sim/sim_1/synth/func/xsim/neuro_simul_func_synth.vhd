-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Mon Feb  1 11:22:55 2021
-- Host        : d309-pc1 running 64-bit Ubuntu 18.04.5 LTS
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               /home/tarek/read_file/read_file.sim/sim_1/synth/func/xsim/neuro_simul_func_synth.vhd
-- Design      : counter
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu7ev-ffvc1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity counter is
  port (
    clk : in STD_LOGIC;
    file_in : in STD_LOGIC_VECTOR ( 8 downto 0 );
    file_out : out STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of counter : entity is true;
end counter;

architecture STRUCTURE of counter is
  signal file_out_OBUF : STD_LOGIC_VECTOR ( 8 downto 0 );
begin
\file_in_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => file_in(0),
      O => file_out_OBUF(0)
    );
\file_in_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => file_in(1),
      O => file_out_OBUF(1)
    );
\file_in_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => file_in(2),
      O => file_out_OBUF(2)
    );
\file_in_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => file_in(3),
      O => file_out_OBUF(3)
    );
\file_in_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => file_in(4),
      O => file_out_OBUF(4)
    );
\file_in_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => file_in(5),
      O => file_out_OBUF(5)
    );
\file_in_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => file_in(6),
      O => file_out_OBUF(6)
    );
\file_in_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => file_in(7),
      O => file_out_OBUF(7)
    );
\file_in_IBUF[8]_inst\: unisim.vcomponents.IBUF
     port map (
      I => file_in(8),
      O => file_out_OBUF(8)
    );
\file_out_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => file_out_OBUF(0),
      O => file_out(0)
    );
\file_out_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => file_out_OBUF(1),
      O => file_out(1)
    );
\file_out_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => file_out_OBUF(2),
      O => file_out(2)
    );
\file_out_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => file_out_OBUF(3),
      O => file_out(3)
    );
\file_out_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => file_out_OBUF(4),
      O => file_out(4)
    );
\file_out_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => file_out_OBUF(5),
      O => file_out(5)
    );
\file_out_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => file_out_OBUF(6),
      O => file_out(6)
    );
\file_out_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => file_out_OBUF(7),
      O => file_out(7)
    );
\file_out_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => file_out_OBUF(8),
      O => file_out(8)
    );
end STRUCTURE;
