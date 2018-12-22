#include "cpu/instr.h"

make_instr_func(pusha_v) {
	int len = 1;
	OPERAND reg[8];
	
	for(int i = 0; i < 8; i++) {
		reg[i].data_size = data_size;
		reg[i].type = OPR_REG;
		reg[i].addr = i;
		operand_read(&reg[i]);
	}

	assert(data_size == 16 || data_size == 32);
	if(data_size == 16)
		reg[REG_ESP].val = cpu.esp & 0xffff;
	else
		reg[REG_ESP].val = cpu.esp;
	
	for(int i = 0; i < 8; i++) {
		reg[i].type = OPR_MEM;
		reg[i].sreg = SREG_SS;
		cpu.esp -= data_size/8;
		reg[i].addr = cpu.esp;
		operand_write(&reg[i]);
		//printf("reg%d: 0x%x\n", i, reg[i].val);
		//printf("esp: 0x%x\n", cpu.esp);
	}

	return len;
}
