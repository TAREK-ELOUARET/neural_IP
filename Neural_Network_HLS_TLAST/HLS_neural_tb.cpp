
#include "neural_network.h"

using namespace std;
using namespace hls;



int main(){

	    ap_axis_input E_neurons = {.data = {12.0, 25.3, 18.2, 46.7, 32.2, 21.39, 13.22, 12.7, 21.56, 16.78},  .last = 1 };
		ap_axis_input Weight   = {.data  =  {1.2, 4.23, 3.2, 16.11, 12.2, 17.24, 3.22, 8.78, 6.29, 4.23}, .last = 1 };


	    ap_axis_output vecOut;

		neural_network (&Weight, &E_neurons, &vecOut);

	    //for (i=0; i < Number_Neurons; i++)
	    cout<<endl<<"Final VecOut = " << vecOut.data[0] << endl;
	    cout<<endl<<"Final last = " << vecOut.last << endl;

}
