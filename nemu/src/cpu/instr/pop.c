#include "cpu/instr.h"

static void instr_execute_1op() {
	operand_read(&opr_src);
	cpu.esp += data_size/8;
	opr_dest.val = opr_src.val;
	operand_write(&opr_dest);
		
}

make_instr_func(pop_ebx_v) {
	OPERAND opr_ebx;
	int len = 1;

	opr_ebx.type = OPR_MEM;
	opr_ebx.data_size = data_size;
	opr_ebx.addr = cpu.esp;
	opr_ebx.sreg = SREG_SS;

	operand_read(&opr_ebx);
	cpu.esp += data_size/8;

	assert(data_size == 16 || data_size == 32);
	if(data_size == 16)
		cpu.ebx = (opr_ebx.val & 0xffff) |
					(cpu.ebx & 0xffff0000);
	else
		cpu.ebx = opr_ebx.val;
	/*	if data_size == 16, 
	 *	then the val read from esp
	 *	is only written into bx instead of ebx
	 */

	print_asm_0("pop	ebx", "", len);
	
	return len;
}

make_instr_func(pop_ebp_v) {
	OPERAND opr_ebp;
	int len = 1;

	opr_ebp.type = OPR_MEM;
	opr_ebp.data_size = data_size;
	opr_ebp.addr = cpu.esp;
	opr_ebp.sreg = SREG_SS;

	operand_read(&opr_ebp);
	cpu.esp += data_size/8;

	assert(data_size == 16 || data_size == 32);
	if(data_size == 16)
		cpu.ebp = (opr_ebp.val & 0xffff) |
					(cpu.ebp & 0xffff0000);
	else
		cpu.ebp = opr_ebp.val;
	
	print_asm_0("pop	ebp", "", len);

	return len;
}

make_instr_impl_m(pop, REG_ESI, v)
make_instr_impl_m(pop, REG_EDI, v)
