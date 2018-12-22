#include "cpu/instr.h"

make_instr_func(neg_rm_v) {
	OPERAND rm;
	int len = 1;

	rm.data_size = data_size;
	len += modrm_rm(eip + len, &rm);
	operand_read(&rm);

	if(rm.val == 0)
		cpu.eflags.CF = 0;
	else
		cpu.eflags.CF = 1;
	
	rm.val = -rm.val;
	operand_write(&rm);

	return len;
}
