#include "cpu/instr.h"
#include "cpu/intr.h"

make_instr_func(INT) {
	OPERAND imm;

	imm.data_size = 8;
	imm.type = OPR_IMM;
	imm.addr = eip + 1;
	operand_read(&imm);
	raise_sw_intr(imm.val);
	/*	cpu.eip has been modified in raise_sw_instr,
		thus the return value should be 0.
	 */
	return 0;
} 
