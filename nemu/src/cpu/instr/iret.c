#include "cpu/instr.h"

make_instr_func(iret) {
	OPERAND opr_eip, opr_cs, opr_eflags;

	opr_eip.type = OPR_MEM;
	opr_eip.data_size = 32;
	opr_eip.addr = cpu.esp;
	opr_eip.sreg = SREG_SS;
	operand_read(&opr_eip);
	cpu.esp += 4;
	cpu.eip = opr_eip.val;

	opr_cs.type = OPR_MEM;
	opr_cs.data_size = 32;
	opr_cs.addr = cpu.esp;
	opr_cs.sreg = SREG_SS;
	operand_read(&opr_cs);
	cpu.esp += 4;
	cpu.cs.val = opr_cs.val & 0xffff;

	opr_eflags.type = OPR_MEM;
	opr_eflags.data_size = 32;
	opr_eflags.addr = cpu.esp;
	opr_eflags.sreg = SREG_SS;
	operand_read(&opr_eflags);
	cpu.esp += 4;
	cpu.eflags.val = opr_eflags.val;

	return 0;
}
