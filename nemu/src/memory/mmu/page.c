#include "cpu/cpu.h"
#include "memory/memory.h"

// translate from linear address to physical address
paddr_t page_translate(laddr_t laddr) {
#ifndef TLB_ENABLED
	uint32_t dir = (laddr & 0xffc00000) >> 22;
	uint32_t page = (laddr & 0x003ff000) >> 12;
	uint32_t offset = laddr & 0x00000fff;
	uint32_t dirBase = cpu.cr3.pbdr << 12;
	uint32_t pdeAddr = dirBase + dir * sizeof(PDE);
	//printf("laddr: 0x%x\ndirBase: 0x%x\tpdeAddr: 0x%x\n", laddr, dirBase, pdeAddr);
	PDE pdeRead;
	pdeRead.val = paddr_read(pdeAddr, 4);
	//printf("pdeRead.val: 0x%x\n", pdeRead.val);
	assert(pdeRead.present == 1);
	uint32_t pageBase = (pdeRead.page_frame << 12);
	uint32_t pageAddr = pageBase + page * sizeof(PTE);
	PTE pteRead;
	pteRead.val = paddr_read(pageAddr, 4);
	//printf("pteRead.val: 0x%x\n", pteRead.val);
	assert(pteRead.present == 1);
	uint32_t pageFrame = pteRead.page_frame;
	paddr_t paddr = (pageFrame << 12) | offset;
	//printf("paddr: 0x%x\n", paddr);
	//printf("-------------------------------\n");
	return paddr;
#else	
	return tlb_read(laddr) | (laddr & PAGE_MASK);;
#endif
}
