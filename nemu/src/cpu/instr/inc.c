#include "cpu/instr.h"

static void instr_execute_1op() {
	operand_read(&opr_src);
	opr_src.val = alu_add(1, opr_src.val);
	operand_write(&opr_src);
}

make_instr_func(inc_v) {
	OPERAND rm;
	int len = 1;

	rm.data_size = data_size;
	len += modrm_rm(eip + len, &rm);
	operand_read(&rm);
	
	rm.val = alu_add(1, rm.val);
	operand_write(&rm);
	print_asm_1("inc", "", len, &rm);
	
	return len;
}

make_instr_impl_r(inc, REG_EAX, v)
make_instr_impl_r(inc, REG_ECX, v)
make_instr_impl_r(inc, REG_EDX, v)
make_instr_impl_r(inc, REG_EDI, v)
/*make_instr_func(inc_REG_EDX_v) {
	OPERAND edx;
	int len = 1;

	edx.data_size = data_size;
	edx.type = OPR_REG;
	edx.addr = REG_EDX;

	operand_read(&edx);
	edx.val++;
	operand_write(&edx);
	return len;
}*/
