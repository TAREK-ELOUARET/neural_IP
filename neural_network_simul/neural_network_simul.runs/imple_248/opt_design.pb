
f
Command: %s
53*	vivadotcl25
!opt_design -directive ExploreArea2default:defaultZ4-113h px� 
h
$Directive used for opt_design is: %s67*	vivadotcl2
ExploreArea2default:defaultZ4-136h px� 
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
n
,Running DRC as a precondition to command %s
22*	vivadotcl2

opt_design2default:defaultZ4-22h px� 
R

Starting %s Task
103*constraints2
DRC2default:defaultZ18-103h px� 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px� 
U
DRC finished with %s
272*project2
0 Errors2default:defaultZ1-461h px� 
d
BPlease refer to the DRC report (report_drc) for more information.
274*projectZ1-462h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:09 ; elapsed = 00:00:03 . Memory (MB): peak = 2876.234 ; gain = 64.031 ; free physical = 101180 ; free virtual = 1096592default:defaulth px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
a

Starting %s Task
103*constraints2&
Logic Optimization2default:defaultZ18-103h px� 
@
+Implement Debug Cores | Checksum: bc1c4081
*commonh px� 
i

Phase %s%s
101*constraints2
1 2default:default2
Retarget2default:defaultZ18-101h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
K
Retargeted %s cell(s).
49*opt2
02default:defaultZ31-49h px� 
<
'Phase 1 Retarget | Checksum: 15d440e31
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:24 ; elapsed = 00:00:25 . Memory (MB): peak = 2876.234 ; gain = 0.000 ; free physical = 101661 ; free virtual = 1102142default:defaulth px� 
u

Phase %s%s
101*constraints2
2 2default:default2(
Constant propagation2default:defaultZ18-101h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
N
Eliminated %s cells.
10*opt2
3161762default:defaultZ31-10h px� 
G
2Phase 2 Constant propagation | Checksum: 84e74a07
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:37:05 ; elapsed = 00:37:09 . Memory (MB): peak = 2876.234 ; gain = 0.000 ; free physical = 100488 ; free virtual = 1090782default:defaulth px� 
f

Phase %s%s
101*constraints2
3 2default:default2
Sweep2default:defaultZ18-101h px� 
e
 Eliminated %s unconnected nets.
12*opt2$
4682184682182default:default8Z31-12h px� 
f
!Eliminated %s unconnected cells.
11*opt2$
173194	1731942default:default8Z31-11h px� 
8
#Phase 3 Sweep | Checksum: f1ceba6f
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:37:40 ; elapsed = 00:37:44 . Memory (MB): peak = 2876.234 ; gain = 0.000 ; free physical = 100467 ; free virtual = 1090162default:defaulth px� 
r

Phase %s%s
101*constraints2
4 2default:default2%
BUFG optimization2default:defaultZ18-101h px� 
[
 Eliminated %s unconnected nets.
12*opt2
002default:default8Z31-12h px� 
\
!Eliminated %s unconnected cells.
11*opt2
0	02default:default8Z31-11h px� 
D
/Phase 4 BUFG optimization | Checksum: f1ceba6f
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:37:47 ; elapsed = 00:37:51 . Memory (MB): peak = 2876.234 ; gain = 0.000 ; free physical = 100386 ; free virtual = 1089352default:defaulth px� 
u

Phase %s%s
101*constraints2
5 2default:default2(
Constant propagation2default:defaultZ18-101h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
M
Eliminated %s cells.
10*opt2
774942default:defaultZ31-10h px� 
G
2Phase 5 Constant propagation | Checksum: dad357a1
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:39:33 ; elapsed = 00:39:36 . Memory (MB): peak = 2876.234 ; gain = 0.000 ; free physical = 98987 ; free virtual = 1075352default:defaulth px� 
f

Phase %s%s
101*constraints2
6 2default:default2
Sweep2default:defaultZ18-101h px� 
c
 Eliminated %s unconnected nets.
12*opt2"
96287962872default:default8Z31-12h px� 
d
!Eliminated %s unconnected cells.
11*opt2"
40953	409532default:default8Z31-11h px� 
8
#Phase 6 Sweep | Checksum: d58f433e
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:39:40 ; elapsed = 00:39:43 . Memory (MB): peak = 2876.234 ; gain = 0.000 ; free physical = 98983 ; free virtual = 1075322default:defaulth px� 
l

Phase %s%s
101*constraints2
7 2default:default2
Resynthesis2default:defaultZ18-101h px� 