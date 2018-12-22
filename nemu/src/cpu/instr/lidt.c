#include "cpu/instr.h"

make_instr_func(lidt_v) {
	int len = 1;
	OPERAND m1, m2;

	m1.data_size = 16;
	m2.data_size = 32;

	len += modrm_rm(eip + len, &m1);
	modrm_rm(eip + len, &m2);
	m2.addr = m1.addr + 2;
	operand_read(&m1);
	operand_read(&m2);

	assert(data_size == 16 || data_size == 32);
	if(data_size == 16) {
		cpu.idtr.limit = m1.val;
		cpu.idtr.base = m2.val & 0xffffff;
	}
	else {
		cpu.idtr.limit = m1.val;
		cpu.idtr.base = m2.val;
	}

	return len;
}
