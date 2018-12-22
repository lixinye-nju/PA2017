#include <assert.h>
#include "cpu/instr.h"

make_instr_func(lgdt_v) {
	OPERAND m1, m2;
	int len = 1;

	m1.data_size = 16;
	m2.data_size = 32;
	// combine m1 and m2 to read a 6-bit data;
	len += modrm_rm(eip + 1, &m1);
	modrm_rm(eip + 1, &m2);
	m2.addr = m1.addr + 2;
	operand_read(&m1);
	operand_read(&m2);

	assert(data_size == 16 || data_size == 32);
	if(data_size == 16) {
		cpu.gdtr.base = m2.val & 0x00ffffff;
		cpu.gdtr.limit = m1.val;
	}
	else {
		cpu.gdtr.base = m2.val;
		cpu.gdtr.limit = m1.val;
	}

	return len;
}
