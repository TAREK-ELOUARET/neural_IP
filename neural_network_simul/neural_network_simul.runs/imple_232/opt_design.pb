
O
Command: %s
53*	vivadotcl2

opt_design2default:defaultZ4-113h px� 
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
�Time (s): cpu = 00:00:09 ; elapsed = 00:00:03 . Memory (MB): peak = 2875.453 ; gain = 64.031 ; free physical = 101536 ; free virtual = 1090492default:defaulth px� 
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
�Time (s): cpu = 00:00:20 ; elapsed = 00:00:20 . Memory (MB): peak = 2875.453 ; gain = 0.000 ; free physical = 101424 ; free virtual = 1089372default:defaulth px� 
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
�Time (s): cpu = 00:39:00 ; elapsed = 00:39:02 . Memory (MB): peak = 2875.453 ; gain = 0.000 ; free physical = 101189 ; free virtual = 1088392default:defaulth px� 
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
�Time (s): cpu = 00:39:34 ; elapsed = 00:39:37 . Memory (MB): peak = 2875.453 ; gain = 0.000 ; free physical = 101135 ; free virtual = 1088302default:defaulth px� 
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
�Time (s): cpu = 00:39:41 ; elapsed = 00:39:44 . Memory (MB): peak = 2875.453 ; gain = 0.000 ; free physical = 101034 ; free virtual = 1088212default:defaulth px� 
a

Starting %s Task
103*constraints2&
Connectivity Check2default:defaultZ18-103h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.67 ; elapsed = 00:00:00.67 . Memory (MB): peak = 2875.453 ; gain = 0.000 ; free physical = 101023 ; free virtual = 1088162default:defaulth px� 
I
4Ending Logic Optimization Task | Checksum: f1ceba6f
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:39:43 ; elapsed = 00:39:45 . Memory (MB): peak = 2875.453 ; gain = 0.000 ; free physical = 101070 ; free virtual = 1087982default:defaulth px� 
a

Starting %s Task
103*constraints2&
Power Optimization2default:defaultZ18-103h px� 
s
7Will skip clock gating for clocks with period < %s ns.
114*pwropt2
2.002default:defaultZ34-132h px� 
I
4Ending Power Optimization Task | Checksum: f1ceba6f
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.29 ; elapsed = 00:00:00.30 . Memory (MB): peak = 2875.453 ; gain = 0.000 ; free physical = 101066 ; free virtual = 1087972default:defaulth px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
252default:default2
12default:default2
32default:default2
02default:defaultZ4-41h px� 
\
%s completed successfully
29*	vivadotcl2

opt_design2default:defaultZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2 
opt_design: 2default:default2
00:40:472default:default2
00:40:072default:default2
2875.4532default:default2
72.0352default:default2
1010652default:default2
1087962default:defaultZ17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2y
e/users/tareelou/git_neural/neural_network_simul/neural_network_simul.runs/imple_232/top_level_opt.dcp2default:defaultZ17-1381h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2&
write_checkpoint: 2default:default2
00:00:162default:default2
00:00:122default:default2
2875.4532default:default2
0.0002default:default2
1011132default:default2
1087742default:defaultZ17-722h px� 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px� 
�
#The results of DRC are in file %s.
168*coretcl2�
k/users/tareelou/git_neural/neural_network_simul/neural_network_simul.runs/imple_232/top_level_drc_opted.rptk/users/tareelou/git_neural/neural_network_simul/neural_network_simul.runs/imple_232/top_level_drc_opted.rpt2default:default8Z2-168h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2 
report_drc: 2default:default2
00:00:172default:default2
00:00:072default:default2
2875.4532default:default2
0.0002default:default2
1010782default:default2
1087822default:defaultZ17-722h px� 


End Record