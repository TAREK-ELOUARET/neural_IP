
�
�No debug cores found in the current design.
Before running the implement_debug_core command, either use the Set Up Debug wizard (GUI mode)
or use the create_debug_core and connect_debug_core Tcl commands to insert debug cores into the design.
154*	chipscopeZ16-241h px� 
p
Command: %s
53*	vivadotcl2?
+place_design -directive AltSpreadLogic_high2default:defaultZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7z0452default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7z0452default:defaultZ17-349h px� 
�
�The version limit for your license is '%s' and will expire in %s days. A version limit expiration means that, although you may be able to continue to use the current version of tools or IP with this license, you will not be eligible for any updates or new releases.
519*common2
2019.012default:default2
-6842default:defaultZ17-1223h px� 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px� 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
place_design2default:defaultZ4-22h px� 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px� 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
U

Starting %s Task
103*constraints2
Placer2default:defaultZ18-103h px� 
z
/The placer was invoked with the '%s' directive.14*	placeflow2'
AltSpreadLogic_high2default:defaultZ46-5h px� 
}
BMultithreading enabled for place_design using a maximum of %s CPUs12*	placeflow2
82default:defaultZ30-611h px� 
v

Phase %s%s
101*constraints2
1 2default:default2)
Placer Initialization2default:defaultZ18-101h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.192default:default2
00:00:00.232default:default2
2876.2272default:default2
0.0002default:default2
988612default:default2
1070582default:defaultZ17-722h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.192default:default2
00:00:00.192default:default2
2876.2272default:default2
0.0002default:default2
1006212default:default2
1088252default:defaultZ17-722h px� 
�

Phase %s%s
101*constraints2
1.1 2default:default2F
2IO Placement/ Clock Placement/ Build Placer Device2default:defaultZ18-101h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
h
SPhase 1.1 IO Placement/ Clock Placement/ Build Placer Device | Checksum: 10ab7b3a5
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:39 ; elapsed = 00:00:21 . Memory (MB): peak = 2876.227 ; gain = 0.000 ; free physical = 100395 ; free virtual = 1087352default:defaulth px� 
}

Phase %s%s
101*constraints2
1.2 2default:default2.
Build Placer Netlist Model2default:defaultZ18-101h px� 
c
BComplex timing constraints detected. Disabling fast timing updates721*placeZ30-896h px� 
P
;Phase 1.2 Build Placer Netlist Model | Checksum: 14d8768b8
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:24 ; elapsed = 00:00:44 . Memory (MB): peak = 2876.227 ; gain = 0.000 ; free physical = 102083 ; free virtual = 1104602default:defaulth px� 
z

Phase %s%s
101*constraints2
1.3 2default:default2+
Constrain Clocks/Macros2default:defaultZ18-101h px� 
M
8Phase 1.3 Constrain Clocks/Macros | Checksum: 14d8768b8
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:24 ; elapsed = 00:00:44 . Memory (MB): peak = 2876.227 ; gain = 0.000 ; free physical = 102044 ; free virtual = 1104212default:defaulth px� 
I
4Phase 1 Placer Initialization | Checksum: 14d8768b8
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:25 ; elapsed = 00:00:45 . Memory (MB): peak = 2876.227 ; gain = 0.000 ; free physical = 102039 ; free virtual = 1104162default:defaulth px� 
q

Phase %s%s
101*constraints2
2 2default:default2$
Global Placement2default:defaultZ18-101h px� 
D
/Phase 2 Global Placement | Checksum: 202eb0ade
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:02:35 ; elapsed = 00:01:17 . Memory (MB): peak = 2939.281 ; gain = 63.055 ; free physical = 101050 ; free virtual = 1094412default:defaulth px� 
q

Phase %s%s
101*constraints2
3 2default:default2$
Detail Placement2default:defaultZ18-101h px� 
}

Phase %s%s
101*constraints2
3.1 2default:default2.
Commit Multi Column Macros2default:defaultZ18-101h px� 
P
;Phase 3.1 Commit Multi Column Macros | Checksum: 202eb0ade
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:02:36 ; elapsed = 00:01:18 . Memory (MB): peak = 2939.281 ; gain = 63.055 ; free physical = 101046 ; free virtual = 1094372default:defaulth px� 


Phase %s%s
101*constraints2
3.2 2default:default20
Commit Most Macros & LUTRAMs2default:defaultZ18-101h px� 
R
=Phase 3.2 Commit Most Macros & LUTRAMs | Checksum: 1fefb0035
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:03:02 ; elapsed = 00:01:36 . Memory (MB): peak = 2939.281 ; gain = 63.055 ; free physical = 100866 ; free virtual = 1092572default:defaulth px� 
y

Phase %s%s
101*constraints2
3.3 2default:default2*
Area Swap Optimization2default:defaultZ18-101h px� 
L
7Phase 3.3 Area Swap Optimization | Checksum: 1a979b1d5
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:03:04 ; elapsed = 00:01:37 . Memory (MB): peak = 2939.281 ; gain = 63.055 ; free physical = 100824 ; free virtual = 1092152default:defaulth px� 
�

Phase %s%s
101*constraints2
3.4 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px� 
T
?Phase 3.4 Pipeline Register Optimization | Checksum: 1a979b1d5
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:03:05 ; elapsed = 00:01:38 . Memory (MB): peak = 2939.281 ; gain = 63.055 ; free physical = 100800 ; free virtual = 1091912default:defaulth px� 
x

Phase %s%s
101*constraints2
3.5 2default:default2)
Timing Path Optimizer2default:defaultZ18-101h px� 
K
6Phase 3.5 Timing Path Optimizer | Checksum: 155e67bdb
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:03:10 ; elapsed = 00:01:40 . Memory (MB): peak = 2939.281 ; gain = 63.055 ; free physical = 100803 ; free virtual = 1091942default:defaulth px� 


Phase %s%s
101*constraints2
3.6 2default:default20
Small Shape Detail Placement2default:defaultZ18-101h px� 
R
=Phase 3.6 Small Shape Detail Placement | Checksum: 2503e7e46
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:03:37 ; elapsed = 00:02:06 . Memory (MB): peak = 2939.281 ; gain = 63.055 ; free physical = 99420 ; free virtual = 1078112default:defaulth px� 
u

Phase %s%s
101*constraints2
3.7 2default:default2&
Re-assign LUT pins2default:defaultZ18-101h px� 
H
3Phase 3.7 Re-assign LUT pins | Checksum: 1dbe7dd79
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:03:45 ; elapsed = 00:02:13 . Memory (MB): peak = 2939.281 ; gain = 63.055 ; free physical = 98959 ; free virtual = 1073502default:defaulth px� 
�

Phase %s%s
101*constraints2
3.8 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px� 
T
?Phase 3.8 Pipeline Register Optimization | Checksum: 1dbe7dd79
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:03:47 ; elapsed = 00:02:15 . Memory (MB): peak = 2939.281 ; gain = 63.055 ; free physical = 98870 ; free virtual = 1072612default:defaulth px� 
D
/Phase 3 Detail Placement | Checksum: 1dbe7dd79
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:03:49 ; elapsed = 00:02:16 . Memory (MB): peak = 2939.281 ; gain = 63.055 ; free physical = 98784 ; free virtual = 1071752default:defaulth px� 
�

Phase %s%s
101*constraints2
4 2default:default2<
(Post Placement Optimization and Clean-Up2default:defaultZ18-101h px� 
{

Phase %s%s
101*constraints2
4.1 2default:default2,
Post Commit Optimization2default:defaultZ18-101h px� 
�

Phase %s%s
101*constraints2
4.1.1 2default:default2/
Post Placement Optimization2default:defaultZ18-101h px� 
�
hPost Placement Timing Summary WNS=%s. For the most accurate timing information please run report_timing.610*place2
1.2792default:defaultZ30-746h px� 
R
=Phase 4.1.1 Post Placement Optimization | Checksum: 8ffd0eb8
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:04:37 ; elapsed = 00:02:33 . Memory (MB): peak = 2939.281 ; gain = 63.055 ; free physical = 97631 ; free virtual = 1060422default:defaulth px� 
M
8Phase 4.1 Post Commit Optimization | Checksum: 8ffd0eb8
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:04:38 ; elapsed = 00:02:34 . Memory (MB): peak = 2939.281 ; gain = 63.055 ; free physical = 97632 ; free virtual = 1060432default:defaulth px� 
y

Phase %s%s
101*constraints2
4.2 2default:default2*
Post Placement Cleanup2default:defaultZ18-101h px� 
K
6Phase 4.2 Post Placement Cleanup | Checksum: 8ffd0eb8
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:04:40 ; elapsed = 00:02:35 . Memory (MB): peak = 2939.281 ; gain = 63.055 ; free physical = 97626 ; free virtual = 1060392default:defaulth px� 
s

Phase %s%s
101*constraints2
4.3 2default:default2$
Placer Reporting2default:defaultZ18-101h px� 
E
0Phase 4.3 Placer Reporting | Checksum: 8ffd0eb8
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:04:42 ; elapsed = 00:02:37 . Memory (MB): peak = 2939.281 ; gain = 63.055 ; free physical = 97616 ; free virtual = 1060382default:defaulth px� 
z

Phase %s%s
101*constraints2
4.4 2default:default2+
Final Placement Cleanup2default:defaultZ18-101h px� 
M
8Phase 4.4 Final Placement Cleanup | Checksum: 1005af359
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:04:42 ; elapsed = 00:02:38 . Memory (MB): peak = 2939.281 ; gain = 63.055 ; free physical = 97605 ; free virtual = 1060322default:defaulth px� 
\
GPhase 4 Post Placement Optimization and Clean-Up | Checksum: 1005af359
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:04:43 ; elapsed = 00:02:39 . Memory (MB): peak = 2939.281 ; gain = 63.055 ; free physical = 97645 ; free virtual = 1059892default:defaulth px� 
=
(Ending Placer Task | Checksum: d8e9c168
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:04:43 ; elapsed = 00:02:39 . Memory (MB): peak = 2939.281 ; gain = 63.055 ; free physical = 97584 ; free virtual = 1059272default:defaulth px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
432default:default2
12default:default2
32default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
place_design2default:defaultZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
place_design: 2default:default2
00:05:012default:default2
00:02:482default:default2
2939.2812default:default2
63.0552default:default2
975702default:default2
1059132default:defaultZ17-722h px� 
D
Writing placer database...
1603*designutilsZ20-1893h px� 
=
Writing XDEF routing.
211*designutilsZ20-211h px� 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px� 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2)
Write XDEF Complete: 2default:default2
00:00:202default:default2
00:00:082default:default2
2939.2812default:default2
0.0002default:default2
975122default:default2
1058612default:defaultZ17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2|
h/users/tareelou/git_neural/neural_network_simul/neural_network_simul.runs/imple_244/top_level_placed.dcp2default:defaultZ17-1381h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2&
write_checkpoint: 2default:default2
00:00:252default:default2
00:00:132default:default2
2939.2812default:default2
0.0002default:default2
975532default:default2
1058442default:defaultZ17-722h px� 
�
�report_io: Time (s): cpu = 00:00:00.45 ; elapsed = 00:00:00.64 . Memory (MB): peak = 2939.281 ; gain = 0.000 ; free physical = 97554 ; free virtual = 105844
*commonh px� 
�
�report_utilization: Time (s): cpu = 00:00:00.90 ; elapsed = 00:00:01 . Memory (MB): peak = 2939.281 ; gain = 0.000 ; free physical = 97511 ; free virtual = 105801
*commonh px� 
�
�report_control_sets: Time (s): cpu = 00:00:00.18 ; elapsed = 00:00:00.32 . Memory (MB): peak = 2939.281 ; gain = 0.000 ; free physical = 97493 ; free virtual = 105783
*commonh px� 


End Record