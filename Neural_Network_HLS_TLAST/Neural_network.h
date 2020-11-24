#include "hls_math.h"
#include <ap_fixed.h> // fixed_point propreties
//#include <cmath>
#include <fstream>
#include <iostream>
#include <iomanip>
#include <cstdlib>
#include "ap_int.h"


#define Number_Neurons 3000u
#define Number_of_points_vignette 10u

#define Nbr_OF_TOTAL_BITS 31
#define Nbr_OF_INTEGER 24

struct ap_axis_input{
	ap_fixed<Nbr_OF_TOTAL_BITS,Nbr_OF_INTEGER,AP_RND> 		data;
	ap_uint<1>  last;//is 1, not letter "l"
};

struct ap_axis_output{
	ap_fixed<Nbr_OF_TOTAL_BITS,Nbr_OF_INTEGER,AP_RND> 		data;
	ap_uint<1>  last;//is 1, not letter "l"
};

ap_fixed<Nbr_OF_TOTAL_BITS,Nbr_OF_INTEGER,AP_RND>   F_ABS(ap_fixed<Nbr_OF_TOTAL_BITS,Nbr_OF_INTEGER,AP_RND>);
void weighted_sum (ap_axis_input  *, ap_axis_input *, ap_fixed<Nbr_OF_TOTAL_BITS,Nbr_OF_INTEGER,AP_RND>  *);
void Multiplexor (ap_fixed<Nbr_OF_TOTAL_BITS,Nbr_OF_INTEGER,AP_RND>  *, ap_fixed<Nbr_OF_TOTAL_BITS,Nbr_OF_INTEGER,AP_RND> *);
void neural_network (ap_axis_input *, ap_axis_input *, ap_axis_output *);

