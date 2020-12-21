##Create a script for a multivariable test for synthesis and implementation strategies for Vivado 2016.2
#June 2017 Alberto L. Gasso
#synthesis
create_run synth_optimized -flow {Vivado Synthesis 2016} -strategy Flow_RuntimeOptimized
 
#Implementation

#synth_optimized Flow_RuntimeOptimized
create_run imple_230 -parent_run synth_optimized -flow {Vivado Implementation 2016} -strategy Performance_Explore
create_run imple_231 -parent_run synth_optimized -flow {Vivado Implementation 2016} -strategy Performance_ExplorePostRoutePhysOpt
create_run imple_232 -parent_run synth_optimized -flow {Vivado Implementation 2016} -strategy Performance_WLBlockPlacement
create_run imple_233 -parent_run synth_optimized -flow {Vivado Implementation 2016} -strategy Performance_WLBlockPlacementFanoutOpt
create_run imple_234 -parent_run synth_optimized -flow {Vivado Implementation 2016} -strategy Performance_NetDelay_high
create_run imple_235 -parent_run synth_optimized -flow {Vivado Implementation 2016} -strategy Performance_NetDelay_low
create_run imple_236 -parent_run synth_optimized -flow {Vivado Implementation 2016} -strategy Performance_Retiming
create_run imple_237 -parent_run synth_optimized -flow {Vivado Implementation 2016} -strategy Performance_ExtraTimingOpt
create_run imple_238 -parent_run synth_optimized -flow {Vivado Implementation 2016} -strategy Performance_RefinePlacement
create_run imple_239 -parent_run synth_optimized -flow {Vivado Implementation 2016} -strategy Performance_SpreadSLLs
create_run imple_240 -parent_run synth_optimized -flow {Vivado Implementation 2016} -strategy Performance_BalanceSLLs
create_run imple_241 -parent_run synth_optimized -flow {Vivado Implementation 2016} -strategy Congestion_SpreadLogic_high
create_run imple_242 -parent_run synth_optimized -flow {Vivado Implementation 2016} -strategy Congestion_SpreadLogic_medium
create_run imple_243 -parent_run synth_optimized -flow {Vivado Implementation 2016} -strategy Congestion_SpreadLogic_low
create_run imple_244 -parent_run synth_optimized -flow {Vivado Implementation 2016} -strategy Congestion_SpreadLogic_Explore
create_run imple_245 -parent_run synth_optimized -flow {Vivado Implementation 2016} -strategy Congestion_SSI_SpreadLogic_high
create_run imple_246 -parent_run synth_optimized -flow {Vivado Implementation 2016} -strategy Congestion_SSI_SpreadLogic_low
create_run imple_247 -parent_run synth_optimized -flow {Vivado Implementation 2016} -strategy Congestion_SSI_SpreadLogic_Explore
create_run imple_248 -parent_run synth_optimized -flow {Vivado Implementation 2016} -strategy Area_Explore
create_run imple_249 -parent_run synth_optimized -flow {Vivado Implementation 2016} -strategy Area_ExploreSequential
create_run imple_250 -parent_run synth_optimized -flow {Vivado Implementation 2016} -strategy Area_ExploreWithRemap
create_run imple_251 -parent_run synth_optimized -flow {Vivado Implementation 2016} -strategy Power_DefaultOpt
create_run imple_252 -parent_run synth_optimized -flow {Vivado Implementation 2016} -strategy Power_ExploreArea
create_run imple_253 -parent_run synth_optimized -flow {Vivado Implementation 2016} -strategy Flow_RunPhysOpt
create_run imple_254 -parent_run synth_optimized -flow {Vivado Implementation 2016} -strategy Flow_RunPostRoutePhysOpt
create_run imple_255 -parent_run synth_optimized -flow {Vivado Implementation 2016} -strategy Flow_RuntimeOptimized
create_run imple_256 -parent_run synth_optimized -flow {Vivado Implementation 2016} -strategy Flow_Quick
