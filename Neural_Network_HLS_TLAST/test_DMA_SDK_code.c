#include <stdio.h>
#include <stdlib.h>
	#include <string.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "xil_cache.h"
#include "xdevcfg.h"
#include "xil_io.h"
#include "xil_types.h"
#include "xaxidma.h"
//#include <ap_fixed.h>

static XDcfg_Config * XDcfg_0 ;
XDcfg DcfgInstance ;
XDcfg * DcfgInstPtr ;

#define DMA_IN1		XPAR_AXI_DMA_0_DEVICE_ID
#define DMA_IN2     XPAR_AXI_DMA_1_DEVICE_ID
#define DMA_OUT     XPAR_AXI_DMA_2_DEVICE_ID

XAxiDma AxiDma_In1, AxiDma_In2, AxiDma_Out;

#define MEM_BASE_ADDR       0x01000000

#define TX_BUFFER_In1      (MEM_BASE_ADDR + 0x00100000)
#define TX_BUFFER_In2      (MEM_BASE_ADDR + 0x00200000)
#define RX_BUFFER_Out      (MEM_BASE_ADDR + 0x00300000)

#define N_samples		20
#define BYTES_TO_TRANSFER	sizeof(u32)*N_samples

int dma_init(u32 DeviceId, XAxiDma * InstancePtr)
{
	XAxiDma_Config *CfgPtr;
	int Status;

	CfgPtr = XAxiDma_LookupConfig(DeviceId);
	if (!CfgPtr) {
		xil_printf("No config found for %d\r\n", DeviceId);
		return XST_FAILURE;
	}

	Status = XAxiDma_CfgInitialize(InstancePtr, CfgPtr);
	if (Status != XST_SUCCESS) {
		xil_printf("Initialization failed %d\r\n", Status);
		return XST_FAILURE;
	}

	if(XAxiDma_HasSg(InstancePtr)){
		xil_printf("Device configured as SG mode \r\n");
		return XST_FAILURE;
	}

	XAxiDma_IntrDisable(InstancePtr, XAXIDMA_IRQ_ALL_MASK,
						XAXIDMA_DEVICE_TO_DMA);
	XAxiDma_IntrDisable(InstancePtr, XAXIDMA_IRQ_ALL_MASK,
						XAXIDMA_DMA_TO_DEVICE);


	return XST_SUCCESS;
}

int test_dma()
{
	dma_init(DMA_IN1, &AxiDma_In1);
	dma_init(DMA_IN2, &AxiDma_In2);
	dma_init(DMA_OUT, &AxiDma_Out);

    //Xil_DCacheDisable();
    //Xil_ICacheDisable();

	u32 *TxBufferPtr_In1= (u32 *)TX_BUFFER_In1;
    u32 *TxBufferPtr_In2= (u32 *)TX_BUFFER_In2;
    u32 *RxBufferPtr_Out= (u32 *)RX_BUFFER_Out;

    u32 Value_In1 = 40;
    u32 Value_In2 = 30;

    for(int Index = 0; Index < N_samples; Index ++) {
    	TxBufferPtr_In1[Index] = Value_In1--;
    	TxBufferPtr_In2[Index] = Value_In2--;
    	RxBufferPtr_Out[Index] = 0;
    }
    Xil_DCacheFlushRange((u32)TxBufferPtr_In1, BYTES_TO_TRANSFER);
    Xil_DCacheFlushRange((u32)TxBufferPtr_In2, BYTES_TO_TRANSFER);
    Xil_DCacheFlushRange((u32)RxBufferPtr_Out, BYTES_TO_TRANSFER);

	// Enabling  caches
    //Xil_DCacheEnable();
    //Xil_ICacheEnable();

    xil_printf("Hello World\n\r");


   // xil_printf("Memory address is 0x%08x\n\r  0x%08x\n\r  0x%08x\n\r", dma_in1, dma_in2,dma_out);


	int Status = XAxiDma_SimpleTransfer(&AxiDma_In1 ,(u32)TxBufferPtr_In1, BYTES_TO_TRANSFER, XAXIDMA_DMA_TO_DEVICE);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	Status = XAxiDma_SimpleTransfer(&AxiDma_In2 ,(u32)TxBufferPtr_In2, BYTES_TO_TRANSFER, XAXIDMA_DMA_TO_DEVICE);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	Status = XAxiDma_SimpleTransfer(&AxiDma_Out ,(u32) RxBufferPtr_Out, BYTES_TO_TRANSFER, XAXIDMA_DEVICE_TO_DMA);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	while (XAxiDma_Busy(&AxiDma_In1,XAXIDMA_DMA_TO_DEVICE)) {
				/* Wait */
		}

	while (XAxiDma_Busy(&AxiDma_In2,XAXIDMA_DMA_TO_DEVICE)) {
				/* Wait */
		}
    //xil_printf("\r\nDone sending data\r\n");

	while (XAxiDma_Busy(&AxiDma_Out,XAXIDMA_DEVICE_TO_DMA)) {
				/* Wait */
		}
    Xil_DCacheInvalidateRange((u32)RxBufferPtr_Out, BYTES_TO_TRANSFER);

    xil_printf("\r\nDone sending data\r\n");

    for(int Index = 0; Index < N_samples; Index ++) {
    	printf("dma_in1 %d	dma_in2 %d	dma_out %d	\r\n",
    			TxBufferPtr_In1[Index], TxBufferPtr_In2[Index], RxBufferPtr_Out[Index]);
     }


   // Xil_DCacheDisable();
    //Xil_ICacheDisable();

    return 0;
}



int main()
{
	//while (1) {
    print("\n\rHello World new test\n\r");
    test_dma();

    return 0;
}
