
�
�No debug cores found in the current design.
Before running the implement_debug_core command, either use the Set Up Debug wizard (GUI mode)
or use the create_debug_core and connect_debug_core Tcl commands to insert debug cores into the design.
154*	chipscopeZ16-241h px� 
r
Command: %s
53*	vivadotcl2A
-place_design -directive ExtraPostPlacementOpt2default:defaultZ4-113h px� 
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
|
/The placer was invoked with the '%s' directive.14*	placeflow2)
ExtraPostPlacementOpt2default:defaultZ46-5h px� 
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
00:00:00.202default:default2
00:00:00.242default:default2
2876.2342default:default2
0.0002default:default2
1015902default:default2
1091242default:defaultZ17-722h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.202default:default2
00:00:00.202default:default2
2876.2342default:default2
0.0002default:default2
1015902default:default2
1091242default:defaultZ17-722h px� 
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
�Time (s): cpu = 00:00:36 ; elapsed = 00:00:19 . Memory (MB): peak = 2876.234 ; gain = 0.000 ; free physical = 101491 ; free virtual = 1091102default:defaulth px� 
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
�Time (s): cpu = 00:01:17 ; elapsed = 00:00:38 . Memory (MB): peak = 2876.234 ; gain = 0.000 ; free physical = 101457 ; free virtual = 1089912default:defaulth px� 
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
�Time (s): cpu = 00:01:18 ; elapsed = 00:00:38 . Memory (MB): peak = 2876.234 ; gain = 0.000 ; free physical = 101475 ; free virtual = 1090102default:defaulth px� 
I
4Phase 1 Placer Initialization | Checksum: 14d8768b8
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:18 ; elapsed = 00:00:39 . Memory (MB): peak = 2876.234 ; gain = 0.000 ; free physical = 101475 ; free virtual = 1090102default:defaulth px� 
q

Phase %s%s
101*constraints2
2 2default:default2$
Global Placement2default:defaultZ18-101h px� 
D
/Phase 2 Global Placement | Checksum: 1ccfd1b82
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:02:28 ; elapsed = 00:01:10 . Memory (MB): peak = 2939.289 ; gain = 63.055 ; free physical = 101098 ; free virtual = 1086532default:defaulth px� 
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
;Phase 3.1 Commit Multi Column Macros | Checksum: 1ccfd1b82
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:02:29 ; elapsed = 00:01:10 . Memory (MB): peak = 2939.289 ; gain = 63.055 ; free physical = 101116 ; free virtual = 1086712default:defaulth px� 


Phase %s%s
101*constraints2
3.2 2default:default20
Commit Most Macros & LUTRAMs2default:defaultZ18-101h px� 
R
=Phase 3.2 Commit Most Macros & LUTRAMs | Checksum: 135184b19
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:02:52 ; elapsed = 00:01:27 . Memory (MB): peak = 2939.289 ; gain = 63.055 ; free physical = 101218 ; free virtual = 1088492default:defaulth px� 
y

Phase %s%s
101*constraints2
3.3 2default:default2*
Area Swap Optimization2default:defaultZ18-101h px� 
K
6Phase 3.3 Area Swap Optimization | Checksum: cd7feb31
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:02:54 ; elapsed = 00:01:28 . Memory (MB): peak = 2939.289 ; gain = 63.055 ; free physical = 101209 ; free virtual = 1088412default:defaulth px� 
�

Phase %s%s
101*constraints2
3.4 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px� 
S
>Phase 3.4 Pipeline Register Optimization | Checksum: cd7feb31
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:02:55 ; elapsed = 00:01:28 . Memory (MB): peak = 2939.289 ; gain = 63.055 ; free physical = 101217 ; free virtual = 1088482default:defaulth px� 
x

Phase %s%s
101*constraints2
3.5 2default:default2)
Timing Path Optimizer2default:defaultZ18-101h px� 
J
5Phase 3.5 Timing Path Optimizer | Checksum: e38a0f91
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:02:59 ; elapsed = 00:01:29 . Memory (MB): peak = 2939.289 ; gain = 63.055 ; free physical = 101216 ; free virtual = 1088522default:defaulth px� 


Phase %s%s
101*constraints2
3.6 2default:default20
Small Shape Detail Placement2default:defaultZ18-101h px� 
R
=Phase 3.6 Small Shape Detail Placement | Checksum: 23243e5b3
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:03:26 ; elapsed = 00:01:54 . Memory (MB): peak = 2939.289 ; gain = 63.055 ; free physical = 101308 ; free virtual = 1088622default:defaulth px� 
u

Phase %s%s
101*constraints2
3.7 2default:default2&
Re-assign LUT pins2default:defaultZ18-101h px� 
H
3Phase 3.7 Re-assign LUT pins | Checksum: 22b958315
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:03:33 ; elapsed = 00:02:01 . Memory (MB): peak = 2939.289 ; gain = 63.055 ; free physical = 101272 ; free virtual = 1088562default:defaulth px� 
�

Phase %s%s
101*constraints2
3.8 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px� 
T
?Phase 3.8 Pipeline Register Optimization | Checksum: 22b958315
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:03:34 ; elapsed = 00:02:02 . Memory (MB): peak = 2939.289 ; gain = 63.055 ; free physical = 101259 ; free virtual = 1088552default:defaulth px� 
D
/Phase 3 Detail Placement | Checksum: 22b958315
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:03:36 ; elapsed = 00:02:03 . Memory (MB): peak = 2939.289 ; gain = 63.055 ; free physical = 101251 ; free virtual = 1088572default:defaulth px� 
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
1.5142default:defaultZ30-746h px� 
S
>Phase 4.1.1 Post Placement Optimization | Checksum: 1ab086148
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:04:25 ; elapsed = 00:02:21 . Memory (MB): peak = 2939.289 ; gain = 63.055 ; free physical = 101279 ; free virtual = 1088482default:defaulth px� 
N
9Phase 4.1 Post Commit Optimization | Checksum: 1ab086148
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:04:26 ; elapsed = 00:02:22 . Memory (MB): peak = 2939.289 ; gain = 63.055 ; free physical = 101280 ; free virtual = 1088492default:defaulth px� 
�
hPost Placement Timing Summary WNS=%s. For the most accurate timing information please run report_timing.610*place2
1.5142default:defaultZ30-746h px� 
y

Phase %s%s
101*constraints2
4.2 2default:default2*
Post Placement Cleanup2default:defaultZ18-101h px� 
K
6Phase 4.2 Post Placement Cleanup | Checksum: ed77cc29
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:05:13 ; elapsed = 00:02:38 . Memory (MB): peak = 2939.289 ; gain = 63.055 ; free physical = 101254 ; free virtual = 1088552default:defaulth px� 
s

Phase %s%s
101*constraints2
4.3 2default:default2$
Placer Reporting2default:defaultZ18-101h px� 
E
0Phase 4.3 Placer Reporting | Checksum: ed77cc29
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:05:14 ; elapsed = 00:02:39 . Memory (MB): peak = 2939.289 ; gain = 63.055 ; free physical = 101246 ; free virtual = 1088582default:defaulth px� 
z

Phase %s%s
101*constraints2
4.4 2default:default2+
Final Placement Cleanup2default:defaultZ18-101h px� 
M
8Phase 4.4 Final Placement Cleanup | Checksum: 15dd5b0ca
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:05:15 ; elapsed = 00:02:40 . Memory (MB): peak = 2939.289 ; gain = 63.055 ; free physical = 101216 ; free virtual = 1088362default:defaulth px� 
\
GPhase 4 Post Placement Optimization and Clean-Up | Checksum: 15dd5b0ca
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:05:16 ; elapsed = 00:02:41 . Memory (MB): peak = 2939.289 ; gain = 63.055 ; free physical = 101225 ; free virtual = 1088562default:defaulth px� 
>
)Ending Placer Task | Checksum: 129d0a35b
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:05:16 ; elapsed = 00:02:41 . Memory (MB): peak = 2939.289 ; gain = 63.055 ; free physical = 101216 ; free virtual = 1088552default:defaulth px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
442default:default2
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
00:05:322default:default2
00:02:492default:default2
2939.2892default:default2
63.0552default:default2
1012122default:default2
1088512default:defaultZ17-722h px� 
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
00:00:192default:default2
00:00:072default:default2
2939.2892default:default2
0.0002default:default2
1011812default:default2
1088372default:defaultZ17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2|
h/users/tareelou/git_neural/neural_network_simul/neural_network_simul.runs/imple_236/top_level_placed.dcp2default:defaultZ17-1381h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2&
write_checkpoint: 2default:default2
00:00:242default:default2
00:00:122default:default2
2939.2892default:default2
0.0002default:default2
1012512default:default2
1088492default:defaultZ17-722h px� 
�
�report_io: Time (s): cpu = 00:00:00.43 ; elapsed = 00:00:00.63 . Memory (MB): peak = 2939.289 ; gain = 0.000 ; free physical = 101250 ; free virtual = 108848
*commonh px� 
�
�report_utilization: Time (s): cpu = 00:00:00.88 ; elapsed = 00:00:01 . Memory (MB): peak = 2939.289 ; gain = 0.000 ; free physical = 101247 ; free virtual = 108845
*commonh px� 
�
�report_control_sets: Time (s): cpu = 00:00:00.17 ; elapsed = 00:00:00.30 . Memory (MB): peak = 2939.289 ; gain = 0.000 ; free physical = 101246 ; free virtual = 108844
*commonh px� 


End Record