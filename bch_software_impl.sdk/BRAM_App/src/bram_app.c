#include "xparameters.h"
#include "stdio.h"
#include "xil_types.h"

#include "xil_printf.h"

#define BRAM_MEMORY XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR
#define BRAM_MEMORY_LAST_WORD (XPAR_AXI_BRAM_CTRL_0_S_AXI_HIGHADDR-3)

int main (void) {
    volatile u32 * bram = (u32 *) BRAM_MEMORY;

    u32 data[5] = {8, 6, 7, 5, 3};

    for (int i=0; i<5;i++) {
    	*(bram+i) = data[i];
    }

    for (int i=0; i<5; i++) {
      xil_printf("BRAM word %d = %d\r\n", i, *(bram+i));
    }

    return 0;
}

