// set to 0 when testing on another platform
// set to 1 when testing on the Zynq
#define ON_ZYNQ 1

#if ON_ZYNQ
#include "xparameters.h"
#include "stdio.h"
#include "stdlib.h"
#include "xil_types.h"
#include "xil_printf.h"
#define BRAM_MEMORY XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR
#define bool int
#define true 1
#define false 0
#define printf(fmt, ...) \
            do { xil_printf(fmt, ##__VA_ARGS__); } while (0)
#else
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
typedef uint32_t u32;
#define printf(fmt, ...) \
            do { printf(fmt, ##__VA_ARGS__); } while (0)
#endif



typedef struct FreeListNode {
  void * base;
  u32 num_bytes;
  bool free; 
  struct FreeListNode * next;
} FreeListNode;

static FreeListNode * newFreeListNode(void * base, u32 num_bytes) {
  FreeListNode * e = (FreeListNode*) malloc(sizeof(FreeListNode));
  e->base = base;
  e->num_bytes = num_bytes;
  e->next = NULL;
  e->free = true;    
  return e;
} 

static void append(FreeListNode * head, FreeListNode * newTail) {
  FreeListNode * current = head;
  while (current->next != NULL) {
    current = current->next;
  }
  current->next = newTail;
}

// find the FreeListNode that is free,
// satisfies num_bytes
// and is the smallest such FreeListNode. Return a pointer to that node.
// set free to false for that node
static FreeListNode * allocSmallestSatisfying(FreeListNode * head, u32 num_bytes) {
	FreeListNode* smallestsatisfying = NULL;
	FreeListNode* node = head;
	u32 cursmallestnumbytes = -1; // Wraps around to max value
	while (node != NULL) {
		if (node->free) {
			if (node->num_bytes >= num_bytes) {
				if (node->num_bytes < cursmallestnumbytes) {
					smallestsatisfying = node;
					cursmallestnumbytes = node->num_bytes;
				}
			}
		}
		node = node->next;
	}
	if (smallestsatisfying != NULL) {
		smallestsatisfying->free = false;
	}
	return smallestsatisfying;
}

// find the FreeListNode whose base is the given start pointer
// and set free to true.
static void setFree(FreeListNode * head, void * start) {
	FreeListNode* node = head;
	while (node != NULL) {
		if (node->base == start) {
			node->free = true;
			return;
		}
		node = node->next;
	}
} 

// the system's free list
FreeListNode * freeList;

// allocate num_bytes from the system
// and return a pointer to the first byte.
// If no appropriate space is found, return NULL
void* ialloc(u32 num_bytes) {
  FreeListNode * available = allocSmallestSatisfying(freeList, num_bytes);
  if (available != NULL) {
    return available->base;
  } else {
    return NULL;
  }
}

// free the memory starting at ptr.
// ptr must have been returned by ialloc in the past.
void ifree(void * ptr) {
  setFree(freeList, ptr); 
}

// initialize the system's free list
void initialize(void * base, u32 total_bytes, u32 chunk_size) {
  // sentinel
  freeList = newFreeListNode(NULL, 0); 
  
  for (u32 next_byte = 0; next_byte < total_bytes; next_byte += chunk_size) {
    append(freeList, newFreeListNode(base + next_byte/4, chunk_size)); 
  }
}

int main() {
  const u32 total_bytes = 4096 * 4;
  const u32 chunk_size = 128;
#if ON_ZYNQ
  // On Zynq use the allocator to manage the memory
  // of our BRAM peripheral
  void * base = BRAM_MEMORY;
#else
  // On other platforms, just use
  // the allocator to manage some heap memory
  void * base = malloc(total_bytes);
#endif

  initialize(base, total_bytes, chunk_size);


  // test out some allocations and frees

  u32 * di = (u32*)ialloc(64);
  if (di == NULL) {
    printf("fail to allocate\r\n");
    exit(1);
  }
    
  di[0] = 4;
  di[1] = 9;
  di[2] = 8;
  di[3] = 0;

  u32 * dj = (u32*)ialloc(100);
  if (dj == NULL) {
    printf("fail to allocate\r\n");
    exit(1);
  }
  dj[0] = 100;
  dj[1] = 200;
  dj[2] = 300;
  dj[3] = 400;

  printf("%d\r\n", di[2]);
  printf("%d\r\n", dj[2]);

  ifree(di);
  u32 * dk = (u32*) ialloc(21);
  if (dk == NULL) {
    printf("fail to allocate\r\n");
    exit(1);
  }
  dk[3] = 77;

  printf("%d\r\n", dk[3]);

  ifree(dj);
  ifree(dk);
}


