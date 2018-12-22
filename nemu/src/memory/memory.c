#include "nemu.h"
#include "cpu/cpu.h"
#include "memory/memory.h"
#include "memory/cache.h"
#include "device/mm_io.h"
#include <memory.h>
#include <stdio.h>


extern Cacheline cache[1024];

uint8_t hw_mem[MEM_SIZE_B];

uint32_t hw_mem_read(paddr_t paddr, size_t len) {
	uint32_t ret = 0;
	assert(paddr < MEM_SIZE_B && paddr >= 0);
	memcpy(&ret, hw_mem + paddr, len);
	return ret;
}

void hw_mem_write(paddr_t paddr, size_t len, uint32_t data) {
	assert(paddr < MEM_SIZE_B);
	memcpy(hw_mem + paddr, &data, len);
}

uint32_t paddr_read(paddr_t paddr, size_t len) {
	uint32_t ret = 0;
	int map_no = is_mmio(paddr);
	if(map_no == -1) {
#ifdef CACHE_ENABLED
		ret = cacheRead(paddr, len, cache);
#else
		ret = hw_mem_read(paddr, len);
#endif
	}
	else
		ret = mmio_read(paddr, len, map_no);
	return ret;
}

void paddr_write(paddr_t paddr, size_t len, uint32_t data) {
	int map_no = is_mmio(paddr);
	if(map_no == -1) {
#ifdef CACHE_ENABLED
		cacheWrite(paddr, len, data,cache);
#else
		hw_mem_write(paddr, len, data);
#endif
	}
	else
		mmio_write(paddr, len, data, map_no);
}


uint32_t laddr_read(laddr_t laddr, size_t len) {
	assert(len == 1 || len == 2 || len == 4);
#ifdef IA32_PAGE
	paddr_t paddr = laddr;
	if(cpu.cr0.pg == 1 && cpu.cr0.pe == 1) {
		paddr = page_translate(laddr);
		return paddr_read(paddr, len);
	}
	else {
		return paddr_read(laddr, len);
	}
#else
	return paddr_read(laddr, len);
#endif
}

void laddr_write(laddr_t laddr, size_t len, uint32_t data) {
	assert(len == 1 || len == 2 || len == 4);
#ifdef IA32_PAGE
	paddr_t paddr = laddr;
	if(cpu.cr0.pg == 1 && cpu.cr0.pe == 1) {
		paddr = page_translate(laddr);
		paddr_write(paddr, len, data);
		return;
	}
	else {
		paddr_write(laddr, len, data);
	}
#else
	paddr_write(laddr, len, data);
#endif
}


uint32_t vaddr_read(vaddr_t vaddr, uint8_t sreg, size_t len) {
	assert(len == 1 || len == 2 || len == 4);
#ifndef IA32_SEG
	return laddr_read(vaddr, len);
#else
	uint32_t laddr = vaddr;
	if(cpu.cr0.pe == 1) {
		laddr = segment_translate(vaddr, sreg);
	}
	return laddr_read(laddr, len);
#endif
}

void vaddr_write(vaddr_t vaddr, uint8_t sreg, size_t len, uint32_t data) {
	assert(len == 1 || len == 2 || len == 4);
#ifndef IA32_SEG
	laddr_write(vaddr, len, data);
#else
	uint32_t laddr = vaddr;
	if(cpu.cr0.pe == 1) {
		laddr = segment_translate(vaddr, sreg);
	}
	laddr_write(laddr, len, data);
#endif
}

void init_mem() {
	// clear the memory on initiation
	memset(hw_mem, 0, MEM_SIZE_B);
	initCache();

#ifdef TLB_ENABLED
	make_all_tlb();
	init_all_tlb();
#endif
}

uint32_t instr_fetch(vaddr_t vaddr, size_t len) {
	assert(len == 1 || len == 2 || len == 4);
	return vaddr_read(vaddr, SREG_CS, len);
}

uint8_t * get_mem_addr() {
	return hw_mem;
}
