
�
�No debug cores found in the current design.
Before running the implement_debug_core command, either use the Set Up Debug wizard (GUI mode)
or use the create_debug_core and connect_debug_core Tcl commands to insert debug cores into the design.
154*	chipscopeZ16-241h px� 
d
Command: %s
53*	vivadotcl23
place_design -directive Explore2default:defaultZ4-113h px� 
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
n
/The placer was invoked with the '%s' directive.14*	placeflow2
Explore2default:defaultZ46-5h px� 
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
00:00:00.082default:default2
00:00:00.112default:default2
2876.4962default:default2
0.0002default:default2
985222default:default2
1062152default:defaultZ17-722h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.092default:default2
00:00:00.092default:default2
2876.4962default:default2
0.0002default:default2
985202default:default2
1062122default:defaultZ17-722h px� 
�

Phase %s%s
101*constraints2
1.1 2default:default2F
2IO Placement/ Clock Placement/ Build Placer Device2default:defaultZ18-101h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
h
SPhase 1.1 IO Placement/ Clock Placement/ Build Placer Device | Checksum: 108610716
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:15 ; elapsed = 00:00:07 . Memory (MB): peak = 2876.496 ; gain = 0.000 ; free physical = 98482 ; free virtual = 1061752default:defaulth px� 
}

Phase %s%s
101*constraints2
1.2 2default:default2.
Build Placer Netlist Model2default:defaultZ18-101h px� 
c
BComplex timing constraints detected. Disabling fast timing updates721*placeZ30-896h px� 
P
;Phase 1.2 Build Placer Netlist Model | Checksum: 1cd9768c8
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:26 ; elapsed = 00:00:13 . Memory (MB): peak = 2876.496 ; gain = 0.000 ; free physical = 98441 ; free virtual = 1061342default:defaulth px� 
z

Phase %s%s
101*constraints2
1.3 2default:default2+
Constrain Clocks/Macros2default:defaultZ18-101h px� 
M
8Phase 1.3 Constrain Clocks/Macros | Checksum: 1cd9768c8
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:26 ; elapsed = 00:00:13 . Memory (MB): peak = 2876.496 ; gain = 0.000 ; free physical = 98441 ; free virtual = 1061342default:defaulth px� 
I
4Phase 1 Placer Initialization | Checksum: 1cd9768c8
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:27 ; elapsed = 00:00:13 . Memory (MB): peak = 2876.496 ; gain = 0.000 ; free physical = 98437 ; free virtual = 1061292default:defaulth px� 
q

Phase %s%s
101*constraints2
2 2default:default2$
Global Placement2default:defaultZ18-101h px� 
D
/Phase 2 Global Placement | Checksum: 169a39b8c
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:56 ; elapsed = 00:00:26 . Memory (MB): peak = 2939.551 ; gain = 63.055 ; free physical = 98220 ; free virtual = 1059132default:defaulth px� 
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
;Phase 3.1 Commit Multi Column Macros | Checksum: 169a39b8c
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:56 ; elapsed = 00:00:26 . Memory (MB): peak = 2939.551 ; gain = 63.055 ; free physical = 98221 ; free virtual = 1059132default:defaulth px� 


Phase %s%s
101*constraints2
3.2 2default:default20
Commit Most Macros & LUTRAMs2default:defaultZ18-101h px� 
R
=Phase 3.2 Commit Most Macros & LUTRAMs | Checksum: 1abb0b4b7
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:03 ; elapsed = 00:00:31 . Memory (MB): peak = 2939.551 ; gain = 63.055 ; free physical = 98216 ; free virtual = 1059082default:defaulth px� 
y

Phase %s%s
101*constraints2
3.3 2default:default2*
Area Swap Optimization2default:defaultZ18-101h px� 
L
7Phase 3.3 Area Swap Optimization | Checksum: 13567dca4
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:04 ; elapsed = 00:00:32 . Memory (MB): peak = 2939.551 ; gain = 63.055 ; free physical = 98217 ; free virtual = 1059102default:defaulth px� 
�

Phase %s%s
101*constraints2
3.4 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px� 
T
?Phase 3.4 Pipeline Register Optimization | Checksum: 13567dca4
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:04 ; elapsed = 00:00:32 . Memory (MB): peak = 2939.551 ; gain = 63.055 ; free physical = 98218 ; free virtual = 1059102default:defaulth px� 
x

Phase %s%s
101*constraints2
3.5 2default:default2)
Timing Path Optimizer2default:defaultZ18-101h px� 
K
6Phase 3.5 Timing Path Optimizer | Checksum: 21f11fa06
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:06 ; elapsed = 00:00:32 . Memory (MB): peak = 2939.551 ; gain = 63.055 ; free physical = 98217 ; free virtual = 1059102default:defaulth px� 


Phase %s%s
101*constraints2
3.6 2default:default20
Small Shape Detail Placement2default:defaultZ18-101h px� 
R
=Phase 3.6 Small Shape Detail Placement | Checksum: 138749811
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:14 ; elapsed = 00:00:40 . Memory (MB): peak = 2939.551 ; gain = 63.055 ; free physical = 98152 ; free virtual = 1059022default:defaulth px� 
u

Phase %s%s
101*constraints2
3.7 2default:default2&
Re-assign LUT pins2default:defaultZ18-101h px� 
H
3Phase 3.7 Re-assign LUT pins | Checksum: 1ab7f3ee1
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:16 ; elapsed = 00:00:42 . Memory (MB): peak = 2939.551 ; gain = 63.055 ; free physical = 98075 ; free virtual = 1058402default:defaulth px� 
�

Phase %s%s
101*constraints2
3.8 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px� 
T
?Phase 3.8 Pipeline Register Optimization | Checksum: 1ab7f3ee1
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:17 ; elapsed = 00:00:43 . Memory (MB): peak = 2939.551 ; gain = 63.055 ; free physical = 98065 ; free virtual = 1058312default:defaulth px� 
D
/Phase 3 Detail Placement | Checksum: 1ab7f3ee1
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:17 ; elapsed = 00:00:43 . Memory (MB): peak = 2939.551 ; gain = 63.055 ; free physical = 98059 ; free virtual = 1058252default:defaulth px� 
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
1.3902default:defaultZ30-746h px� 
S
>Phase 4.1.1 Post Placement Optimization | Checksum: 18d255ca3
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:30 ; elapsed = 00:00:48 . Memory (MB): peak = 2939.551 ; gain = 63.055 ; free physical = 98025 ; free virtual = 1058112default:defaulth px� 
N
9Phase 4.1 Post Commit Optimization | Checksum: 18d255ca3
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:31 ; elapsed = 00:00:48 . Memory (MB): peak = 2939.551 ; gain = 63.055 ; free physical = 98090 ; free virtual = 1058092default:defaulth px� 
y

Phase %s%s
101*constraints2
4.2 2default:default2*
Post Placement Cleanup2default:defaultZ18-101h px� 
L
7Phase 4.2 Post Placement Cleanup | Checksum: 18d255ca3
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:32 ; elapsed = 00:00:49 . Memory (MB): peak = 2939.551 ; gain = 63.055 ; free physical = 98071 ; free virtual = 1057942default:defaulth px� 
s

Phase %s%s
101*constraints2
4.3 2default:default2$
Placer Reporting2default:defaultZ18-101h px� 
F
1Phase 4.3 Placer Reporting | Checksum: 18d255ca3
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:32 ; elapsed = 00:00:49 . Memory (MB): peak = 2939.551 ; gain = 63.055 ; free physical = 98080 ; free virtual = 1058052default:defaulth px� 
z

Phase %s%s
101*constraints2
4.4 2default:default2+
Final Placement Cleanup2default:defaultZ18-101h px� 
M
8Phase 4.4 Final Placement Cleanup | Checksum: 1b47c42ec
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:32 ; elapsed = 00:00:49 . Memory (MB): peak = 2939.551 ; gain = 63.055 ; free physical = 98078 ; free virtual = 1058062default:defaulth px� 
\
GPhase 4 Post Placement Optimization and Clean-Up | Checksum: 1b47c42ec
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:32 ; elapsed = 00:00:49 . Memory (MB): peak = 2939.551 ; gain = 63.055 ; free physical = 98072 ; free virtual = 1058032default:defaulth px� 
>
)Ending Placer Task | Checksum: 13463f0b3
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:33 ; elapsed = 00:00:50 . Memory (MB): peak = 2939.551 ; gain = 63.055 ; free physical = 98062 ; free virtual = 1057952default:defaulth px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
482default:default2
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
00:01:392default:default2
00:00:522default:default2
2939.5512default:default2
63.0552default:default2
980542default:default2
1057882default:defaultZ17-722h px� 
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
00:00:062default:default2
00:00:022default:default2
2939.5512default:default2
0.0002default:default2
980102default:default2
1057932default:defaultZ17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2|
h/users/tareelou/git_neural/neural_network_simul/neural_network_simul.runs/imple_231/top_level_placed.dcp2default:defaultZ17-1381h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2&
write_checkpoint: 2default:default2
00:00:082default:default2
00:00:052default:default2
2939.5512default:default2
0.0002default:default2
979782default:default2
1058022default:defaultZ17-722h px� 
�
�report_io: Time (s): cpu = 00:00:00.44 ; elapsed = 00:00:00.58 . Memory (MB): peak = 2939.551 ; gain = 0.000 ; free physical = 97972 ; free virtual = 105801
*commonh px� 
�
�report_utilization: Time (s): cpu = 00:00:00.39 ; elapsed = 00:00:00.54 . Memory (MB): peak = 2939.551 ; gain = 0.000 ; free physical = 97964 ; free virtual = 105797
*commonh px� 
�
�report_control_sets: Time (s): cpu = 00:00:00.14 ; elapsed = 00:00:00.26 . Memory (MB): peak = 2939.551 ; gain = 0.000 ; free physical = 97945 ; free virtual = 105781
*commonh px� 


End Record