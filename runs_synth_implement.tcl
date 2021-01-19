##Create a script for a multivariable test for synthesis and implementation strategies for Vivado 2016.2
#June 2017 Alberto L. Gasso
#synthesis
create_run synth_0 -flow {Vivado Synthesis 2016}
create_run synth_2 -flow {Vivado Synthesis 2016} -strategy Flow_AreaOptimized_high
create_run synth_3 -flow {Vivado Synthesis 2016} -strategy Flow_AreaOptimized_medium
create_run synth_4 -flow {Vivado Synthesis 2016} -strategy Flow_AreaMultThresholdDSP
create_run synth_5 -flow {Vivado Synthesis 2016} -strategy Flow_AlternateRoutability
create_run synth_7 -flow {Vivado Synthesis 2016} -strategy Flow_PerfThresholdCarry
create_run synth_6 -flow {Vivado Synthesis 2016} -strategy Flow_PerfOptimized_high
create_run synth_8 -flow {Vivado Synthesis 2016} -strategy Flow_RuntimeOptimized #The best strategies to synthetize
 
#Implementation
#synth_0 Default
create_run imple_0 -parent_run synth_0 -flow {Vivado Implementation 2016} -strategy Performance_Explore
create_run imple_1 -parent_run synth_0 -flow {Vivado Implementation 2016} -strategy Performance_ExplorePostRoutePhysOpt
create_run imple_2 -parent_run synth_0 -flow {Vivado Implementation 2016} -strategy Performance_WLBlockPlacement
create_run imple_3 -parent_run synth_0 -flow {Vivado Implementation 2016} -strategy Performance_WLBlockPlacementFanoutOpt
create_run imple_4 -parent_run synth_0 -flow {Vivado Implementation 2016} -strategy Performance_NetDelay_high
create_run imple_5 -parent_run synth_0 -flow {Vivado Implementation 2016} -strategy Performance_NetDelay_low
create_run imple_6 -parent_run synth_0 -flow {Vivado Implementation 2016} -strategy Performance_Retiming
create_run imple_7 -parent_run synth_0 -flow {Vivado Implementation 2016} -strategy Performance_ExtraTimingOpt
create_run imple_8 -parent_run synth_0 -flow {Vivado Implementation 2016} -strategy Performance_RefinePlacement
create_run imple_9 -parent_run synth_0 -flow {Vivado Implementation 2016} -strategy Performance_SpreadSLLs
create_run imple_10 -parent_run synth_0 -flow {Vivado Implementation 2016} -strategy Performance_BalanceSLLs
create_run imple_11 -parent_run synth_0 -flow {Vivado Implementation 2016} -strategy Congestion_SpreadLogic_high
create_run imple_12 -parent_run synth_0 -flow {Vivado Implementation 2016} -strategy Congestion_SpreadLogic_medium
create_run imple_13 -parent_run synth_0 -flow {Vivado Implementation 2016} -strategy Congestion_SpreadLogic_low
create_run imple_14 -parent_run synth_0 -flow {Vivado Implementation 2016} -strategy Congestion_SpreadLogic_Explore
create_run imple_15 -parent_run synth_0 -flow {Vivado Implementation 2016} -strategy Congestion_SSI_SpreadLogic_high
create_run imple_16 -parent_run synth_0 -flow {Vivado Implementation 2016} -strategy Congestion_SSI_SpreadLogic_low
create_run imple_17 -parent_run synth_0 -flow {Vivado Implementation 2016} -strategy Congestion_SSI_SpreadLogic_Explore
create_run imple_18 -parent_run synth_0 -flow {Vivado Implementation 2016} -strategy Area_Explore
create_run imple_19 -parent_run synth_0 -flow {Vivado Implementation 2016} -strategy Area_ExploreSequential
create_run imple_20 -parent_run synth_0 -flow {Vivado Implementation 2016} -strategy Area_ExploreWithRemap
create_run imple_21 -parent_run synth_0 -flow {Vivado Implementation 2016} -strategy Power_DefaultOpt
create_run imple_22 -parent_run synth_0 -flow {Vivado Implementation 2016} -strategy Power_ExploreArea
create_run imple_23 -parent_run synth_0 -flow {Vivado Implementation 2016} -strategy Flow_RunPhysOpt
create_run imple_24 -parent_run synth_0 -flow {Vivado Implementation 2016} -strategy Flow_RunPostRoutePhysOpt
create_run imple_25 -parent_run synth_0 -flow {Vivado Implementation 2016} -strategy Flow_RuntimeOptimized
create_run imple_26 -parent_run synth_0 -flow {Vivado Implementation 2016} -strategy Flow_Quick
 
#synth_2 Flow_AreaOptimized_high
create_run imple_30 -parent_run synth_2 -flow {Vivado Implementation 2016} -strategy Performance_Explore
create_run imple_31 -parent_run synth_2 -flow {Vivado Implementation 2016} -strategy Performance_ExplorePostRoutePhysOpt
create_run imple_32 -parent_run synth_2 -flow {Vivado Implementation 2016} -strategy Performance_WLBlockPlacement
create_run imple_33 -parent_run synth_2 -flow {Vivado Implementation 2016} -strategy Performance_WLBlockPlacementFanoutOpt
create_run imple_34 -parent_run synth_2 -flow {Vivado Implementation 2016} -strategy Performance_NetDelay_high
create_run imple_35 -parent_run synth_2 -flow {Vivado Implementation 2016} -strategy Performance_NetDelay_low
create_run imple_36 -parent_run synth_2 -flow {Vivado Implementation 2016} -strategy Performance_Retiming
create_run imple_37 -parent_run synth_2 -flow {Vivado Implementation 2016} -strategy Performance_ExtraTimingOpt
create_run imple_38 -parent_run synth_2 -flow {Vivado Implementation 2016} -strategy Performance_RefinePlacement
create_run imple_39 -parent_run synth_2 -flow {Vivado Implementation 2016} -strategy Performance_SpreadSLLs
create_run imple_40 -parent_run synth_2 -flow {Vivado Implementation 2016} -strategy Performance_BalanceSLLs
create_run imple_41 -parent_run synth_2 -flow {Vivado Implementation 2016} -strategy Congestion_SpreadLogic_high
create_run imple_42 -parent_run synth_2 -flow {Vivado Implementation 2016} -strategy Congestion_SpreadLogic_medium
create_run imple_43 -parent_run synth_2 -flow {Vivado Implementation 2016} -strategy Congestion_SpreadLogic_low
create_run imple_44 -parent_run synth_2 -flow {Vivado Implementation 2016} -strategy Congestion_SpreadLogic_Explore
create_run imple_45 -parent_run synth_2 -flow {Vivado Implementation 2016} -strategy Congestion_SSI_SpreadLogic_high
create_run imple_46 -parent_run synth_2 -flow {Vivado Implementation 2016} -strategy Congestion_SSI_SpreadLogic_low
create_run imple_47 -parent_run synth_2 -flow {Vivado Implementation 2016} -strategy Congestion_SSI_SpreadLogic_Explore
create_run imple_48 -parent_run synth_2 -flow {Vivado Implementation 2016} -strategy Area_Explore
create_run imple_49 -parent_run synth_2 -flow {Vivado Implementation 2016} -strategy Area_ExploreSequential
create_run imple_50 -parent_run synth_2 -flow {Vivado Implementation 2016} -strategy Area_ExploreWithRemap
create_run imple_51 -parent_run synth_2 -flow {Vivado Implementation 2016} -strategy Power_DefaultOpt
create_run imple_52 -parent_run synth_2 -flow {Vivado Implementation 2016} -strategy Power_ExploreArea
create_run imple_53 -parent_run synth_2 -flow {Vivado Implementation 2016} -strategy Flow_RunPhysOpt
create_run imple_54 -parent_run synth_2 -flow {Vivado Implementation 2016} -strategy Flow_RunPostRoutePhysOpt
create_run imple_55 -parent_run synth_2 -flow {Vivado Implementation 2016} -strategy Flow_RuntimeOptimized
create_run imple_56 -parent_run synth_2 -flow {Vivado Implementation 2016} -strategy Flow_Quick
 
#synth_3 Flow_AreaOptimized_medium
create_run imple_60 -parent_run synth_3 -flow {Vivado Implementation 2016} -strategy Performance_Explore
create_run imple_61 -parent_run synth_3 -flow {Vivado Implementation 2016} -strategy Performance_ExplorePostRoutePhysOpt
create_run imple_62 -parent_run synth_3 -flow {Vivado Implementation 2016} -strategy Performance_WLBlockPlacement
create_run imple_63 -parent_run synth_3 -flow {Vivado Implementation 2016} -strategy Performance_WLBlockPlacementFanoutOpt
create_run imple_64 -parent_run synth_3 -flow {Vivado Implementation 2016} -strategy Performance_NetDelay_high
create_run imple_65 -parent_run synth_3 -flow {Vivado Implementation 2016} -strategy Performance_NetDelay_low
create_run imple_66 -parent_run synth_3 -flow {Vivado Implementation 2016} -strategy Performance_Retiming
create_run imple_67 -parent_run synth_3 -flow {Vivado Implementation 2016} -strategy Performance_ExtraTimingOpt
create_run imple_68 -parent_run synth_3 -flow {Vivado Implementation 2016} -strategy Performance_RefinePlacement
create_run imple_69 -parent_run synth_3 -flow {Vivado Implementation 2016} -strategy Performance_SpreadSLLs
create_run imple_70 -parent_run synth_3 -flow {Vivado Implementation 2016} -strategy Performance_BalanceSLLs
create_run imple_71 -parent_run synth_3 -flow {Vivado Implementation 2016} -strategy Congestion_SpreadLogic_high
create_run imple_72 -parent_run synth_3 -flow {Vivado Implementation 2016} -strategy Congestion_SpreadLogic_medium
create_run imple_73 -parent_run synth_3 -flow {Vivado Implementation 2016} -strategy Congestion_SpreadLogic_low
create_run imple_74 -parent_run synth_3 -flow {Vivado Implementation 2016} -strategy Congestion_SpreadLogic_Explore
create_run imple_75 -parent_run synth_3 -flow {Vivado Implementation 2016} -strategy Congestion_SSI_SpreadLogic_high
create_run imple_76 -parent_run synth_3 -flow {Vivado Implementation 2016} -strategy Congestion_SSI_SpreadLogic_low
create_run imple_77 -parent_run synth_3 -flow {Vivado Implementation 2016} -strategy Congestion_SSI_SpreadLogic_Explore
create_run imple_78 -parent_run synth_3 -flow {Vivado Implementation 2016} -strategy Area_Explore
create_run imple_79 -parent_run synth_3 -flow {Vivado Implementation 2016} -strategy Area_ExploreSequential
create_run imple_80 -parent_run synth_3 -flow {Vivado Implementation 2016} -strategy Area_ExploreWithRemap
create_run imple_81 -parent_run synth_3 -flow {Vivado Implementation 2016} -strategy Power_DefaultOpt
create_run imple_82 -parent_run synth_3 -flow {Vivado Implementation 2016} -strategy Power_ExploreArea
create_run imple_83 -parent_run synth_3 -flow {Vivado Implementation 2016} -strategy Flow_RunPhysOpt
create_run imple_84 -parent_run synth_3 -flow {Vivado Implementation 2016} -strategy Flow_RunPostRoutePhysOpt
create_run imple_85 -parent_run synth_3 -flow {Vivado Implementation 2016} -strategy Flow_RuntimeOptimized
create_run imple_86 -parent_run synth_3 -flow {Vivado Implementation 2016} -strategy Flow_Quick
 
#synth_4 Flow_AreaMultThresholdDSP
create_run imple_100 -parent_run synth_4 -flow {Vivado Implementation 2016} -strategy Performance_Explore
create_run imple_101 -parent_run synth_4 -flow {Vivado Implementation 2016} -strategy Performance_ExplorePostRoutePhysOpt
create_run imple_102 -parent_run synth_4 -flow {Vivado Implementation 2016} -strategy Performance_WLBlockPlacement
create_run imple_103 -parent_run synth_4 -flow {Vivado Implementation 2016} -strategy Performance_WLBlockPlacementFanoutOpt
create_run imple_104 -parent_run synth_4 -flow {Vivado Implementation 2016} -strategy Performance_NetDelay_high
create_run imple_105 -parent_run synth_4 -flow {Vivado Implementation 2016} -strategy Performance_NetDelay_low
create_run imple_106 -parent_run synth_4 -flow {Vivado Implementation 2016} -strategy Performance_Retiming
create_run imple_107 -parent_run synth_4 -flow {Vivado Implementation 2016} -strategy Performance_ExtraTimingOpt
create_run imple_108 -parent_run synth_4 -flow {Vivado Implementation 2016} -strategy Performance_RefinePlacement
create_run imple_109 -parent_run synth_4 -flow {Vivado Implementation 2016} -strategy Performance_SpreadSLLs
create_run imple_110 -parent_run synth_4 -flow {Vivado Implementation 2016} -strategy Performance_BalanceSLLs
create_run imple_111 -parent_run synth_4 -flow {Vivado Implementation 2016} -strategy Congestion_SpreadLogic_high
create_run imple_112 -parent_run synth_4 -flow {Vivado Implementation 2016} -strategy Congestion_SpreadLogic_medium
create_run imple_113 -parent_run synth_4 -flow {Vivado Implementation 2016} -strategy Congestion_SpreadLogic_low
create_run imple_114 -parent_run synth_4 -flow {Vivado Implementation 2016} -strategy Congestion_SpreadLogic_Explore
create_run imple_115 -parent_run synth_4 -flow {Vivado Implementation 2016} -strategy Congestion_SSI_SpreadLogic_high
create_run imple_116 -parent_run synth_4 -flow {Vivado Implementation 2016} -strategy Congestion_SSI_SpreadLogic_low
create_run imple_117 -parent_run synth_4 -flow {Vivado Implementation 2016} -strategy Congestion_SSI_SpreadLogic_Explore
create_run imple_118 -parent_run synth_4 -flow {Vivado Implementation 2016} -strategy Area_Explore
create_run imple_119 -parent_run synth_4 -flow {Vivado Implementation 2016} -strategy Area_ExploreSequential
create_run imple_120 -parent_run synth_4 -flow {Vivado Implementation 2016} -strategy Area_ExploreWithRemap
create_run imple_121 -parent_run synth_4 -flow {Vivado Implementation 2016} -strategy Power_DefaultOpt
create_run imple_122 -parent_run synth_4 -flow {Vivado Implementation 2016} -strategy Power_ExploreArea
create_run imple_123 -parent_run synth_4 -flow {Vivado Implementation 2016} -strategy Flow_RunPhysOpt
create_run imple_124 -parent_run synth_4 -flow {Vivado Implementation 2016} -strategy Flow_RunPostRoutePhysOpt
create_run imple_125 -parent_run synth_4 -flow {Vivado Implementation 2016} -strategy Flow_RuntimeOptimized
create_run imple_126 -parent_run synth_4 -flow {Vivado Implementation 2016} -strategy Flow_Quick
 
#synth_5 Flow_AlternateRoutability
create_run imple_130 -parent_run synth_5 -flow {Vivado Implementation 2016} -strategy Performance_Explore
create_run imple_131 -parent_run synth_5 -flow {Vivado Implementation 2016} -strategy Performance_ExplorePostRoutePhysOpt
create_run imple_132 -parent_run synth_5 -flow {Vivado Implementation 2016} -strategy Performance_WLBlockPlacement
create_run imple_133 -parent_run synth_5 -flow {Vivado Implementation 2016} -strategy Performance_WLBlockPlacementFanoutOpt
create_run imple_134 -parent_run synth_5 -flow {Vivado Implementation 2016} -strategy Performance_NetDelay_high
create_run imple_135 -parent_run synth_5 -flow {Vivado Implementation 2016} -strategy Performance_NetDelay_low
create_run imple_136 -parent_run synth_5 -flow {Vivado Implementation 2016} -strategy Performance_Retiming
create_run imple_137 -parent_run synth_5 -flow {Vivado Implementation 2016} -strategy Performance_ExtraTimingOpt
create_run imple_138 -parent_run synth_5 -flow {Vivado Implementation 2016} -strategy Performance_RefinePlacement
create_run imple_139 -parent_run synth_5 -flow {Vivado Implementation 2016} -strategy Performance_SpreadSLLs
create_run imple_140 -parent_run synth_5 -flow {Vivado Implementation 2016} -strategy Performance_BalanceSLLs
create_run imple_141 -parent_run synth_5 -flow {Vivado Implementation 2016} -strategy Congestion_SpreadLogic_high
create_run imple_142 -parent_run synth_5 -flow {Vivado Implementation 2016} -strategy Congestion_SpreadLogic_medium
create_run imple_143 -parent_run synth_5 -flow {Vivado Implementation 2016} -strategy Congestion_SpreadLogic_low
create_run imple_144 -parent_run synth_5 -flow {Vivado Implementation 2016} -strategy Congestion_SpreadLogic_Explore
create_run imple_145 -parent_run synth_5 -flow {Vivado Implementation 2016} -strategy Congestion_SSI_SpreadLogic_high
create_run imple_146 -parent_run synth_5 -flow {Vivado Implementation 2016} -strategy Congestion_SSI_SpreadLogic_low
create_run imple_147 -parent_run synth_5 -flow {Vivado Implementation 2016} -strategy Congestion_SSI_SpreadLogic_Explore
create_run imple_148 -parent_run synth_5 -flow {Vivado Implementation 2016} -strategy Area_Explore
create_run imple_149 -parent_run synth_5 -flow {Vivado Implementation 2016} -strategy Area_ExploreSequential
create_run imple_150 -parent_run synth_5 -flow {Vivado Implementation 2016} -strategy Area_ExploreWithRemap
create_run imple_151 -parent_run synth_5 -flow {Vivado Implementation 2016} -strategy Power_DefaultOpt
create_run imple_152 -parent_run synth_5 -flow {Vivado Implementation 2016} -strategy Power_ExploreArea
create_run imple_153 -parent_run synth_5 -flow {Vivado Implementation 2016} -strategy Flow_RunPhysOpt
create_run imple_154 -parent_run synth_5 -flow {Vivado Implementation 2016} -strategy Flow_RunPostRoutePhysOpt
create_run imple_155 -parent_run synth_5 -flow {Vivado Implementation 2016} -strategy Flow_RuntimeOptimized
create_run imple_156 -parent_run synth_5 -flow {Vivado Implementation 2016} -strategy Flow_Quick
 
#synth_6 Flow_PerfOptimized_high
create_run imple_160 -parent_run synth_6 -flow {Vivado Implementation 2016} -strategy Performance_Explore
create_run imple_161 -parent_run synth_6 -flow {Vivado Implementation 2016} -strategy Performance_ExplorePostRoutePhysOpt
create_run imple_162 -parent_run synth_6 -flow {Vivado Implementation 2016} -strategy Performance_WLBlockPlacement
create_run imple_163 -parent_run synth_6 -flow {Vivado Implementation 2016} -strategy Performance_WLBlockPlacementFanoutOpt
create_run imple_164 -parent_run synth_6 -flow {Vivado Implementation 2016} -strategy Performance_NetDelay_high
create_run imple_165 -parent_run synth_6 -flow {Vivado Implementation 2016} -strategy Performance_NetDelay_low
create_run imple_166 -parent_run synth_6 -flow {Vivado Implementation 2016} -strategy Performance_Retiming
create_run imple_167 -parent_run synth_6 -flow {Vivado Implementation 2016} -strategy Performance_ExtraTimingOpt
create_run imple_168 -parent_run synth_6 -flow {Vivado Implementation 2016} -strategy Performance_RefinePlacement
create_run imple_169 -parent_run synth_6 -flow {Vivado Implementation 2016} -strategy Performance_SpreadSLLs
create_run imple_170 -parent_run synth_6 -flow {Vivado Implementation 2016} -strategy Performance_BalanceSLLs
create_run imple_171 -parent_run synth_6 -flow {Vivado Implementation 2016} -strategy Congestion_SpreadLogic_high
create_run imple_172 -parent_run synth_6 -flow {Vivado Implementation 2016} -strategy Congestion_SpreadLogic_medium
create_run imple_173 -parent_run synth_6 -flow {Vivado Implementation 2016} -strategy Congestion_SpreadLogic_low
create_run imple_174 -parent_run synth_6 -flow {Vivado Implementation 2016} -strategy Congestion_SpreadLogic_Explore
create_run imple_175 -parent_run synth_6 -flow {Vivado Implementation 2016} -strategy Congestion_SSI_SpreadLogic_high
create_run imple_176 -parent_run synth_6 -flow {Vivado Implementation 2016} -strategy Congestion_SSI_SpreadLogic_low
create_run imple_177 -parent_run synth_6 -flow {Vivado Implementation 2016} -strategy Congestion_SSI_SpreadLogic_Explore
create_run imple_178 -parent_run synth_6 -flow {Vivado Implementation 2016} -strategy Area_Explore
create_run imple_179 -parent_run synth_6 -flow {Vivado Implementation 2016} -strategy Area_ExploreSequential
create_run imple_180 -parent_run synth_6 -flow {Vivado Implementation 2016} -strategy Area_ExploreWithRemap
create_run imple_181 -parent_run synth_6 -flow {Vivado Implementation 2016} -strategy Power_DefaultOpt
create_run imple_182 -parent_run synth_6 -flow {Vivado Implementation 2016} -strategy Power_ExploreArea
create_run imple_183 -parent_run synth_6 -flow {Vivado Implementation 2016} -strategy Flow_RunPhysOpt
create_run imple_184 -parent_run synth_6 -flow {Vivado Implementation 2016} -strategy Flow_RunPostRoutePhysOpt
create_run imple_185 -parent_run synth_6 -flow {Vivado Implementation 2016} -strategy Flow_RuntimeOptimized
create_run imple_186 -parent_run synth_6 -flow {Vivado Implementation 2016} -strategy Flow_Quick
 
#synth_7 Flow_PerfThresholdCarry
create_run imple_200 -parent_run synth_7 -flow {Vivado Implementation 2016} -strategy Performance_Explore
create_run imple_201 -parent_run synth_7 -flow {Vivado Implementation 2016} -strategy Performance_ExplorePostRoutePhysOpt
create_run imple_202 -parent_run synth_7 -flow {Vivado Implementation 2016} -strategy Performance_WLBlockPlacement
create_run imple_203 -parent_run synth_7 -flow {Vivado Implementation 2016} -strategy Performance_WLBlockPlacementFanoutOpt
create_run imple_204 -parent_run synth_7 -flow {Vivado Implementation 2016} -strategy Performance_NetDelay_high
create_run imple_205 -parent_run synth_7 -flow {Vivado Implementation 2016} -strategy Performance_NetDelay_low
create_run imple_206 -parent_run synth_7 -flow {Vivado Implementation 2016} -strategy Performance_Retiming
create_run imple_207 -parent_run synth_7 -flow {Vivado Implementation 2016} -strategy Performance_ExtraTimingOpt
create_run imple_208 -parent_run synth_7 -flow {Vivado Implementation 2016} -strategy Performance_RefinePlacement
create_run imple_209 -parent_run synth_7 -flow {Vivado Implementation 2016} -strategy Performance_SpreadSLLs
create_run imple_210 -parent_run synth_7 -flow {Vivado Implementation 2016} -strategy Performance_BalanceSLLs
create_run imple_211 -parent_run synth_7 -flow {Vivado Implementation 2016} -strategy Congestion_SpreadLogic_high
create_run imple_212 -parent_run synth_7 -flow {Vivado Implementation 2016} -strategy Congestion_SpreadLogic_medium
create_run imple_213 -parent_run synth_7 -flow {Vivado Implementation 2016} -strategy Congestion_SpreadLogic_low
create_run imple_214 -parent_run synth_7 -flow {Vivado Implementation 2016} -strategy Congestion_SpreadLogic_Explore
create_run imple_215 -parent_run synth_7 -flow {Vivado Implementation 2016} -strategy Congestion_SSI_SpreadLogic_high
create_run imple_216 -parent_run synth_7 -flow {Vivado Implementation 2016} -strategy Congestion_SSI_SpreadLogic_low
create_run imple_217 -parent_run synth_7 -flow {Vivado Implementation 2016} -strategy Congestion_SSI_SpreadLogic_Explore
create_run imple_218 -parent_run synth_7 -flow {Vivado Implementation 2016} -strategy Area_Explore
create_run imple_219 -parent_run synth_7 -flow {Vivado Implementation 2016} -strategy Area_ExploreSequential
create_run imple_220 -parent_run synth_7 -flow {Vivado Implementation 2016} -strategy Area_ExploreWithRemap
create_run imple_221 -parent_run synth_7 -flow {Vivado Implementation 2016} -strategy Power_DefaultOpt
create_run imple_222 -parent_run synth_7 -flow {Vivado Implementation 2016} -strategy Power_ExploreArea
create_run imple_223 -parent_run synth_7 -flow {Vivado Implementation 2016} -strategy Flow_RunPhysOpt
create_run imple_224 -parent_run synth_7 -flow {Vivado Implementation 2016} -strategy Flow_RunPostRoutePhysOpt
create_run imple_225 -parent_run synth_7 -flow {Vivado Implementation 2016} -strategy Flow_RuntimeOptimized
create_run imple_226 -parent_run synth_7 -flow {Vivado Implementation 2016} -strategy Flow_Quick
 
#synth_8 Flow_RuntimeOptimized
create_run imple_230 -parent_run synth_8 -flow {Vivado Implementation 2016} -strategy Performance_Explore
create_run imple_231 -parent_run synth_8 -flow {Vivado Implementation 2016} -strategy Performance_ExplorePostRoutePhysOpt
create_run imple_232 -parent_run synth_8 -flow {Vivado Implementation 2016} -strategy Performance_WLBlockPlacement
create_run imple_233 -parent_run synth_8 -flow {Vivado Implementation 2016} -strategy Performance_WLBlockPlacementFanoutOpt
create_run imple_234 -parent_run synth_8 -flow {Vivado Implementation 2016} -strategy Performance_NetDelay_high
create_run imple_235 -parent_run synth_8 -flow {Vivado Implementation 2016} -strategy Performance_NetDelay_low
create_run imple_236 -parent_run synth_8 -flow {Vivado Implementation 2016} -strategy Performance_Retiming
create_run imple_237 -parent_run synth_8 -flow {Vivado Implementation 2016} -strategy Performance_ExtraTimingOpt
create_run imple_238 -parent_run synth_8 -flow {Vivado Implementation 2016} -strategy Performance_RefinePlacement
create_run imple_239 -parent_run synth_8 -flow {Vivado Implementation 2016} -strategy Performance_SpreadSLLs
create_run imple_240 -parent_run synth_8 -flow {Vivado Implementation 2016} -strategy Performance_BalanceSLLs
create_run imple_241 -parent_run synth_8 -flow {Vivado Implementation 2016} -strategy Congestion_SpreadLogic_high
create_run imple_242 -parent_run synth_8 -flow {Vivado Implementation 2016} -strategy Congestion_SpreadLogic_medium
create_run imple_243 -parent_run synth_8 -flow {Vivado Implementation 2016} -strategy Congestion_SpreadLogic_low
create_run imple_244 -parent_run synth_8 -flow {Vivado Implementation 2016} -strategy Congestion_SpreadLogic_Explore
create_run imple_245 -parent_run synth_8 -flow {Vivado Implementation 2016} -strategy Congestion_SSI_SpreadLogic_high
create_run imple_246 -parent_run synth_8 -flow {Vivado Implementation 2016} -strategy Congestion_SSI_SpreadLogic_low
create_run imple_247 -parent_run synth_8 -flow {Vivado Implementation 2016} -strategy Congestion_SSI_SpreadLogic_Explore
create_run imple_248 -parent_run synth_8 -flow {Vivado Implementation 2016} -strategy Area_Explore
create_run imple_249 -parent_run synth_8 -flow {Vivado Implementation 2016} -strategy Area_ExploreSequential
create_run imple_250 -parent_run synth_8 -flow {Vivado Implementation 2016} -strategy Area_ExploreWithRemap
create_run imple_251 -parent_run synth_8 -flow {Vivado Implementation 2016} -strategy Power_DefaultOpt
create_run imple_252 -parent_run synth_8 -flow {Vivado Implementation 2016} -strategy Power_ExploreArea
create_run imple_253 -parent_run synth_8 -flow {Vivado Implementation 2016} -strategy Flow_RunPhysOpt
create_run imple_254 -parent_run synth_8 -flow {Vivado Implementation 2016} -strategy Flow_RunPostRoutePhysOpt
create_run imple_255 -parent_run synth_8 -flow {Vivado Implementation 2016} -strategy Flow_RuntimeOptimized
create_run imple_256 -parent_run synth_8 -flow {Vivado Implementation 2016} -strategy Flow_Quick
