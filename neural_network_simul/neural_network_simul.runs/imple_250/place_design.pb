
�
�No debug cores found in the current design.
Before running the implement_debug_core command, either use the Set Up Debug wizard (GUI mode)
or use the create_debug_core and connect_debug_core Tcl commands to insert debug cores into the design.
154*	chipscopeZ16-241h px� 
Q
Command: %s
53*	vivadotcl2 
place_design2default:defaultZ4-113h px� 
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
00:00:00.062default:default2
00:00:00.112default:default2
2876.2272default:default2
0.0002default:default2
993232default:default2
1079422default:defaultZ17-722h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.062default:default2
00:00:00.062default:default2
2876.2272default:default2
0.0002default:default2
993132default:default2
1079312default:defaultZ17-722h px� 
�

Phase %s%s
101*constraints2
1.1 2default:default2F
2IO Placement/ Clock Placement/ Build Placer Device2default:defaultZ18-101h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
g
RPhase 1.1 IO Placement/ Clock Placement/ Build Placer Device | Checksum: aff14830
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:12 ; elapsed = 00:00:06 . Memory (MB): peak = 2876.227 ; gain = 0.000 ; free physical = 99294 ; free virtual = 1079122default:defaulth px� 
}

Phase %s%s
101*constraints2
1.2 2default:default2.
Build Placer Netlist Model2default:defaultZ18-101h px� 
c
BComplex timing constraints detected. Disabling fast timing updates721*placeZ30-896h px� 
P
;Phase 1.2 Build Placer Netlist Model | Checksum: 188e31a0c
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:22 ; elapsed = 00:00:10 . Memory (MB): peak = 2876.227 ; gain = 0.000 ; free physical = 99286 ; free virtual = 1079052default:defaulth px� 
z

Phase %s%s
101*constraints2
1.3 2default:default2+
Constrain Clocks/Macros2default:defaultZ18-101h px� 
M
8Phase 1.3 Constrain Clocks/Macros | Checksum: 188e31a0c
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:22 ; elapsed = 00:00:10 . Memory (MB): peak = 2876.227 ; gain = 0.000 ; free physical = 99286 ; free virtual = 1079052default:defaulth px� 
I
4Phase 1 Placer Initialization | Checksum: 188e31a0c
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:22 ; elapsed = 00:00:11 . Memory (MB): peak = 2876.227 ; gain = 0.000 ; free physical = 99285 ; free virtual = 1079032default:defaulth px� 
q

Phase %s%s
101*constraints2
2 2default:default2$
Global Placement2default:defaultZ18-101h px� 
D
/Phase 2 Global Placement | Checksum: 1590b0403
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:46 ; elapsed = 00:00:21 . Memory (MB): peak = 2939.281 ; gain = 63.055 ; free physical = 99261 ; free virtual = 1078802default:defaulth px� 
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
;Phase 3.1 Commit Multi Column Macros | Checksum: 1590b0403
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:46 ; elapsed = 00:00:21 . Memory (MB): peak = 2939.281 ; gain = 63.055 ; free physical = 99252 ; free virtual = 1078712default:defaulth px� 


Phase %s%s
101*constraints2
3.2 2default:default20
Commit Most Macros & LUTRAMs2default:defaultZ18-101h px� 
R
=Phase 3.2 Commit Most Macros & LUTRAMs | Checksum: 19fe3ebcd
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:51 ; elapsed = 00:00:24 . Memory (MB): peak = 2939.281 ; gain = 63.055 ; free physical = 99227 ; free virtual = 1078792default:defaulth px� 
y

Phase %s%s
101*constraints2
3.3 2default:default2*
Area Swap Optimization2default:defaultZ18-101h px� 
L
7Phase 3.3 Area Swap Optimization | Checksum: 1b76fa100
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:52 ; elapsed = 00:00:24 . Memory (MB): peak = 2939.281 ; gain = 63.055 ; free physical = 99225 ; free virtual = 1078792default:defaulth px� 
�

Phase %s%s
101*constraints2
3.4 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px� 
T
?Phase 3.4 Pipeline Register Optimization | Checksum: 1b76fa100
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:52 ; elapsed = 00:00:24 . Memory (MB): peak = 2939.281 ; gain = 63.055 ; free physical = 99225 ; free virtual = 1078802default:defaulth px� 
x

Phase %s%s
101*constraints2
3.5 2default:default2)
Timing Path Optimizer2default:defaultZ18-101h px� 
K
6Phase 3.5 Timing Path Optimizer | Checksum: 14684c032
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:53 ; elapsed = 00:00:25 . Memory (MB): peak = 2939.281 ; gain = 63.055 ; free physical = 99223 ; free virtual = 1078802default:defaulth px� 


Phase %s%s
101*constraints2
3.6 2default:default20
Small Shape Detail Placement2default:defaultZ18-101h px� 
R
=Phase 3.6 Small Shape Detail Placement | Checksum: 1c63d0f99
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:59 ; elapsed = 00:00:30 . Memory (MB): peak = 2939.281 ; gain = 63.055 ; free physical = 99166 ; free virtual = 1078722default:defaulth px� 
u

Phase %s%s
101*constraints2
3.7 2default:default2&
Re-assign LUT pins2default:defaultZ18-101h px� 
H
3Phase 3.7 Re-assign LUT pins | Checksum: 1b89ec74f
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:00 ; elapsed = 00:00:32 . Memory (MB): peak = 2939.281 ; gain = 63.055 ; free physical = 99141 ; free virtual = 1078522default:defaulth px� 
�

Phase %s%s
101*constraints2
3.8 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px� 
T
?Phase 3.8 Pipeline Register Optimization | Checksum: 1b89ec74f
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:01 ; elapsed = 00:00:32 . Memory (MB): peak = 2939.281 ; gain = 63.055 ; free physical = 99138 ; free virtual = 1078522default:defaulth px� 
D
/Phase 3 Detail Placement | Checksum: 1b89ec74f
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:01 ; elapsed = 00:00:32 . Memory (MB): peak = 2939.281 ; gain = 63.055 ; free physical = 99122 ; free virtual = 1078372default:defaulth px� 
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
1.2732default:defaultZ30-746h px� 
S
>Phase 4.1.1 Post Placement Optimization | Checksum: 236a051cf
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:11 ; elapsed = 00:00:35 . Memory (MB): peak = 2939.281 ; gain = 63.055 ; free physical = 99211 ; free virtual = 1078492default:defaulth px� 
N
9Phase 4.1 Post Commit Optimization | Checksum: 236a051cf
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:11 ; elapsed = 00:00:35 . Memory (MB): peak = 2939.281 ; gain = 63.055 ; free physical = 99211 ; free virtual = 1078492default:defaulth px� 
y

Phase %s%s
101*constraints2
4.2 2default:default2*
Post Placement Cleanup2default:defaultZ18-101h px� 
L
7Phase 4.2 Post Placement Cleanup | Checksum: 236a051cf
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:11 ; elapsed = 00:00:36 . Memory (MB): peak = 2939.281 ; gain = 63.055 ; free physical = 99211 ; free virtual = 1078492default:defaulth px� 
s

Phase %s%s
101*constraints2
4.3 2default:default2$
Placer Reporting2default:defaultZ18-101h px� 
F
1Phase 4.3 Placer Reporting | Checksum: 236a051cf
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:12 ; elapsed = 00:00:36 . Memory (MB): peak = 2939.281 ; gain = 63.055 ; free physical = 99211 ; free virtual = 1078492default:defaulth px� 
z

Phase %s%s
101*constraints2
4.4 2default:default2+
Final Placement Cleanup2default:defaultZ18-101h px� 
M
8Phase 4.4 Final Placement Cleanup | Checksum: 2529f18a2
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:12 ; elapsed = 00:00:36 . Memory (MB): peak = 2939.281 ; gain = 63.055 ; free physical = 99211 ; free virtual = 1078492default:defaulth px� 
\
GPhase 4 Post Placement Optimization and Clean-Up | Checksum: 2529f18a2
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:12 ; elapsed = 00:00:36 . Memory (MB): peak = 2939.281 ; gain = 63.055 ; free physical = 99211 ; free virtual = 1078492default:defaulth px� 
>
)Ending Placer Task | Checksum: 177761170
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:12 ; elapsed = 00:00:36 . Memory (MB): peak = 2939.281 ; gain = 63.055 ; free physical = 99207 ; free virtual = 1078452default:defaulth px� 
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
00:01:182default:default2
00:00:392default:default2
2939.2812default:default2
63.0552default:default2
991992default:default2
1078372default:defaultZ17-722h px� 
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
00:00:052default:default2
00:00:022default:default2
2939.2812default:default2
0.0002default:default2
991952default:default2
1078512default:defaultZ17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2|
h/users/tareelou/git_neural/neural_network_simul/neural_network_simul.runs/imple_250/top_level_placed.dcp2default:defaultZ17-1381h px� 
�
�report_io: Time (s): cpu = 00:00:00.38 ; elapsed = 00:00:00.58 . Memory (MB): peak = 2939.281 ; gain = 0.000 ; free physical = 99184 ; free virtual = 107826
*commonh px� 
�
�report_utilization: Time (s): cpu = 00:00:00.33 ; elapsed = 00:00:00.51 . Memory (MB): peak = 2939.281 ; gain = 0.000 ; free physical = 99193 ; free virtual = 107835
*commonh px� 
�
�report_control_sets: Time (s): cpu = 00:00:00.11 ; elapsed = 00:00:00.28 . Memory (MB): peak = 2939.281 ; gain = 0.000 ; free physical = 99194 ; free virtual = 107836
*commonh px� 


End Record