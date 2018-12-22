#include "cpu/instr.h"

make_instr_func(setne_rm_b) {
	OPERAND rm;
	int len = 1;

	rm.data_size = 8;

	len += modrm_rm(eip + len, &rm);
	
	rm.val = (cpu.eflags.ZF == 0);
	operand_write(&rm);
	print_asm_1("setne", "", len, &rm);
	return len;
}

make_instr_func(sete_rm_b) {
	OPERAND rm;
	int len = 1;

	rm.data_size = 8;

	len += modrm_rm(eip + len, &rm);

	rm.val = (cpu.eflags.ZF == 1);
	operand_write(&rm);
	print_asm_1("sete", "", len, &rm);
	return len;
}
