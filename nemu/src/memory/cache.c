#include <time.h>
#include <stdlib.h>
#include <assert.h>
#include "nemu.h"
#include "memory/cache.h"

#define Random(x) (rand() % (x))

extern uint32_t hw_mem_read(paddr_t paddr, size_t len);
extern uint32_t hw_mem_write(paddr_t paddr, size_t len, uint32_t data);

Cacheline cache[1024];

void initCache() {
	for(int i = 0; i < 1024; i++) {
		cache[i].validBit = 0;
		cache[i].paddr = 0xffffffff;
		for(int i = 0; i < 16; i++) cache[i].data[i] = 0;
	}
}

uint32_t addCache(paddr_t paddr, Cacheline *cache) {
	uint8_t groupNum = (paddr & 0x1fc0) >> 6;
	for(int i = 8 * groupNum; i < 8 * groupNum + 8; i++) {
		if(cache[i].validBit == 0) {
			cache[i].validBit = 1;
			cache[i].paddr = paddr & 0xffffffc0;
			uint32_t addr_temp = paddr & 0xffffffc0;
			for(int j = 0; j < 16; j++) {
				cache[i].data[j] = hw_mem_read(addr_temp, 4);
				addr_temp += 4;
			}
			return i;
		}
	}
	
	srand((int)time(NULL));
	uint32_t temp = Random(8);	 // temp is a random number ranging from 0 to 7
	cache[8 * groupNum + temp].paddr = paddr & 0xffffffc0;
	uint32_t addr_temp = paddr & 0xffffffc0;
	for(int j = 0; j < 16; j++) {
		cache[8 * groupNum + temp].data[j] = hw_mem_read(addr_temp, 4);
		addr_temp += 4;
	}
	return 8 * groupNum + temp;
}

uint32_t cacheRead(paddr_t paddr, size_t len, Cacheline *cache) {
	uint8_t addrIn = paddr & 0x3f;
	if(addrIn + len > 0x40) {
		uint32_t res = hw_mem_read(paddr, len);
		return res;
	}

	uint8_t groupNum = (paddr & 0x1fc0) >> 6;
	uint32_t tag = (paddr & 0xffffe000) >> 13;
	bool find = false;
	uint32_t groupAddr = 0;
	
	for(int i = 8 * groupNum; i < 8 * groupNum + 8; i++) {
		if(cache[i].validBit == 0) continue;	
		if(cache[i].tag == tag) {
			find = true;
			groupAddr = i;
			break;
		}
	}


	if(!find) {
		groupAddr = addCache(paddr, cache);
	}
	
	uint32_t result = 0;
	memcpy(&result, (char *)cache[groupAddr].data + addrIn, len);
	assert(len <= 4); 			// if len > 4, uint32_t cannot return all results
	
	return result;
}

void cacheWrite(paddr_t paddr, size_t len, uint32_t data, Cacheline *cache) {
	//assert(paddr != 0x10000ba);
	/*if((paddr & 0xffffffc0) == 0x1000080) {
		printf("Writing\n");
		printf("paddr: 0x%x\tlen: 0x%x\tdata: 0x%x\n", paddr, len, data);
	}*/

	uint8_t addrIn = paddr & 0x3f;
	if(addrIn + len > 0x40) {
		size_t overlimit = 0x40 - addrIn;
		uint32_t data1 = 0, data2 = 0;
		switch(overlimit) {
			case 0: 
				printf("overlimit cannot be zero\n"); 
				assert(0);
				break;
			case 1:
				data1 = data & 0xff;
				data2 = (data & 0xffffff00) >> 8;
				break;
			case 2:
				data1 = data & 0xffff;
				data2 = (data & 0xffff0000) >> 16;
				break;
			case 3:
				data1 = data & 0xffffff;
				data2 = (data & 0xff000000) >> 24;
				break;
			default:
				printf("illegal value of overlimit: 0x%x\n", overlimit);
				assert(0);
		}
		cacheWrite(paddr, overlimit, data1, cache);
		cacheWrite(paddr + overlimit, len - overlimit, data2, cache);
		return;
	}

	uint8_t groupNum = (paddr & 0x1fc0) >> 6;
	uint32_t tag = (paddr & 0xffffe000) >> 13;
	bool find = false;
	uint32_t groupAddr = 0;

	for(int i = 8 * groupNum; i < 8 * groupNum + 8; i++) {
		if(cache[i].validBit == 0) continue;
		if(cache[i].tag == tag) {
			find = true;
			groupAddr = i;
			break;
		}
	}

	assert(len <= 4);			// if len > 4, uint32_t cannot carry all values
	if(find)
		memcpy((char *)&cache[groupAddr].data + addrIn, &data, len);
	hw_mem_write(paddr, len, data);
}
