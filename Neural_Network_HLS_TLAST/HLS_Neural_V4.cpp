
#include "neural_network.h"

using namespace std;
using namespace hls;

ap_fixed<Nbr_OF_TOTAL_BITS,Nbr_OF_INTEGER,AP_RND> ZERO_type = 0.0000;


template<typename T>
inline T fp_abs(T a)
{
	if (a >= ZERO_type)
		return  a;
	else
		return -a;
}

//// Call of functions ////
void neural_network (ap_axis_input *W, ap_axis_input *E, ap_axis_output *vecOut) {

	ap_fixed<Nbr_OF_TOTAL_BITS,Nbr_OF_INTEGER,AP_RND>  vector[Number_Neurons]; // Initiliaze it as Pointer
	ap_fixed<Nbr_OF_TOTAL_BITS,Nbr_OF_INTEGER,AP_RND>  vecOut_1[Number_Neurons];

	#pragma HLS stream variable=W
	#pragma HLS stream variable=E
	#pragma HLS stream variable=vecOut

	#pragma HLS INTERFACE ap_ctrl_none port=return

	#pragma HLS INTERFACE axis port=W
	#pragma HLS INTERFACE axis port=E
	#pragma HLS INTERFACE axis port=vecOut

	#pragma HLS PIPELINE
		weighted_sum (W, E, vector); // XXX for debug purposes; remove after use (uncomment lines directly above & below)
		Multiplexor (vector, vecOut_1);

	vecOut -> last = E -> last;
	vecOut -> data = vecOut_1[0];
}



///// Calculus of neurals value through the appropriate equation
void weighted_sum (ap_axis_input *W, ap_axis_input *E, ap_fixed<Nbr_OF_TOTAL_BITS,Nbr_OF_INTEGER,AP_RND>  vecOut_1[Number_Neurons]) {

	ap_fixed<Nbr_OF_TOTAL_BITS,Nbr_OF_INTEGER,AP_RND>  table[Number_Neurons]= {0.0000};
    uint16_t i,j;

#pragma HLS pipeline
loopA1:	for(j = 0; j < Number_of_points_vignette; j++){
			for (i=0; i < Number_Neurons; i++) {
				#pragma HLS unroll
					table[i]  = fp_abs(E->data - W->data) + table[i];
            }
		}

// FIXME after the previous loop is debugged, uncomment the following.
loopA2:	for(j=0; j < Number_Neurons; j++) {
				#pragma HLS unroll
					vecOut_1[j] = 1 - table[j]/Number_Neurons; //XXX what is the result of ap_fixed<...,...>/unsigned int ?
		}


}

void Multiplexor (ap_fixed<Nbr_OF_TOTAL_BITS,Nbr_OF_INTEGER,AP_RND>  A[Number_Neurons], ap_fixed<Nbr_OF_TOTAL_BITS,Nbr_OF_INTEGER,AP_RND> B[Number_Neurons]) {

    uint16_t i,j,nbr_neurons=Number_Neurons, numberofcycles=0, k=0;

#pragma HLS pipeline
///////////// Multiplexor Part //////////////
loopB1:	while (nbr_neurons > 1){
				nbr_neurons = nbr_neurons/2;
				numberofcycles++;
    	}

        nbr_neurons = Number_Neurons;

/// Calculation of Maximum based on reduction-tree
loopB2:for (i=0; i < numberofcycles; i++) {

           for (j=0; j < nbr_neurons; j=j+2) {
               if (A[j] >= A[j+1])
                   A[k] = A[j];
               else A[k]= A[j+1];
               k++;
           }
           nbr_neurons /=2;
           k=0;
       }
       B[0] = A[0];
}

