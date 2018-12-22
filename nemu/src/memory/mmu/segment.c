#include "cpu/cpu.h"
#include "memory/memory.h"

// return the linear address from the virtual address and segment selector
uint32_t segment_translate(uint32_t offset, uint8_t sreg) {
	/* TODO: perform segment translation from virtual address to linear address
	 * by reading the invisible part of the segment register 'sreg'
	 */
	assert(sreg >= 0 && sreg < 6);
	uint32_t base = cpu.segReg[sreg].base;
	uint32_t linear_addr = base + offset;
	return linear_addr;
}

// load the invisible part of a segment register
void load_sreg(uint8_t sreg) {
	/* TODO: load the invisibile part of the segment register 'sreg' by reading the GDT.
	 * The visible part of 'sreg' should be assigned by mov or ljmp already.
	 */
	assert(cpu.segReg[sreg].ti == 0);
	
	uint32_t idx = cpu.segReg[sreg].index;
	laddr_t gdtIdx = cpu.gdtr.base + idx*sizeof(SegDesc);
	SegDesc segRead;
	segRead.val[0] = laddr_read(gdtIdx, 4);
	segRead.val[1] = laddr_read(gdtIdx + 4, 4);
	assert(segRead.base_15_0 == 0 && segRead.base_23_16 == 0 &&
			segRead.base_31_24 == 0);
	assert(segRead.limit_15_0 == 0xffff && 
			segRead.limit_19_16 == 0xf);
	assert(segRead.granularity == 1);
	assert(segRead.present == 1);

	cpu.segReg[sreg].base = segRead.base_15_0 | 
			(segRead.base_23_16 << 16) |
			(segRead.base_31_24 << 24);
	cpu.segReg[sreg].limit = segRead.limit_15_0 |
			(segRead.limit_19_16 << 16);
	cpu.segReg[sreg].type = segRead.type;
	cpu.segReg[sreg].privilege_level = segRead.privilege_level;
	cpu.segReg[sreg].soft_use = segRead.soft_use;
}
