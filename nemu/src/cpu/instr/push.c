#include"cpu/instr.h"

/*
static void instr_execute_1op() {
	operand_read(&opr_src);
	cpu.esp -= 4;
	opr_src.addr = cpu.esp;
	opr_src.type = OPR_MEM;
	operand_write(&opr_src);
}
*/

//make_instr_impl_1op(push, i, b)

make_instr_func(push_i_v) {
	OPERAND imm;
	int len =1;

	imm.type = OPR_IMM;
	imm.data_size = data_size;
	imm.addr = eip + len;
	imm.sreg = SREG_CS;
	len += data_size/8;

	operand_read(&imm);
	cpu.esp -= data_size/8;
	imm.addr = cpu.esp;
	imm.type = OPR_MEM;
	imm.sreg = SREG_SS;
	operand_write(&imm);
	print_asm_1("push	", "", len, &imm);

	return len;
}

make_instr_func(push_i_b) {
	OPERAND imm;
	int len =1;

	imm.type = OPR_IMM;
	imm.data_size = 8;
	imm.addr = eip + len;
	imm.sreg = SREG_CS;
	len += 1;

	operand_read(&imm);
	cpu.esp -= 4;
	imm.addr = cpu.esp;
	imm.type = OPR_MEM;
	imm.data_size = 32;
	imm.sreg = SREG_SS;
	/*
		Intel i386 mannual don't note that
		a sign-extension is neccessary here
	 */

	operand_write(&imm);
	print_asm_1("push	", "", len, &imm);

	return len;
}

make_instr_func(push_ecx_v) {
	OPERAND opr_ecx;
	int len = 1;

	opr_ecx.type = OPR_MEM;
	opr_ecx.data_size = data_size;
	opr_ecx.val = cpu.ecx;

	cpu.esp -= data_size/8;
	opr_ecx.addr = cpu.esp;
	opr_ecx.sreg = SREG_SS;
	operand_write(&opr_ecx);
	print_asm_0("push	ecx", "", len);

	return len;
}

make_instr_func(push_eax_v) {
	OPERAND opr_eax;
	int len = 1;

	opr_eax.type = OPR_MEM;
	opr_eax.data_size = data_size;
	opr_eax.val = cpu.eax;
	
	cpu.esp -= data_size/8;
	opr_eax.addr = cpu.esp;
	opr_eax.sreg = SREG_SS;
	operand_write(&opr_eax);
	print_asm_0("push	eax", "", len);

	return len;
}

make_instr_func(push_ebp_v) {
	OPERAND opr_ebp;
	int len = 1;

	opr_ebp.type = OPR_MEM;
	/*
	 *	the type of OPERAND depends on where it is stored
	 *	OPR_MEM -> data & stack
	 *	OPR_IMM -> code
	 *	OPR_REG -> simply store the index of registers
	 */
	opr_ebp.data_size = data_size;
	opr_ebp.val = cpu.ebp;
	opr_ebp.sreg = SREG_SS;

	cpu.esp -= data_size/8;
	opr_ebp.addr = cpu.esp;
	operand_write(&opr_ebp);
	print_asm_0("push	ebp", "", len);

	return len;
}

make_instr_func(push_esi_v) {
	OPERAND opr_esi;
	int len = 1;

	opr_esi.type = OPR_MEM;
	opr_esi.data_size = data_size;
	opr_esi.val = cpu.esi;

	cpu.esp -= data_size/8;
	opr_esi.addr = cpu.esp;
	opr_esi.sreg = SREG_SS;
	operand_write(&opr_esi);
	print_asm_0("push	esi", "", len);

	return len;
}

make_instr_func(push_edi_v) {
	OPERAND opr_edi;
	int len = 1;

	opr_edi.type = OPR_MEM;
	opr_edi.data_size = data_size;
	opr_edi.val = cpu.edi;
	
	cpu.esp -= data_size/8;
	opr_edi.addr = cpu.esp;
	opr_edi.sreg = SREG_SS;
	operand_write(&opr_edi);
	print_asm_0("push	edi", "", len);

	return len;
}

make_instr_func(push_m_v) {
	OPERAND m;
	int len = 1;

	m.data_size = data_size;
	len += modrm_opcode_rm(eip + len, &opcode, &m);
	operand_read(&m);

	cpu.esp -= data_size/8;
	m.addr = cpu.esp;
	m.sreg = SREG_SS;
	operand_write(&m);

	print_asm_1("push m	", "", len, &m);
	return len;
}

make_instr_func(push_ebx_v) {
	OPERAND opr_ebx;
	int len = 1;

	opr_ebx.type = OPR_MEM;
	opr_ebx.data_size = data_size;
	opr_ebx.val = cpu.ebx;
	
	cpu.esp -= data_size/8;
	opr_ebx.addr = cpu.esp;
	opr_ebx.sreg = SREG_SS;
	operand_write(&opr_ebx);
	print_asm_0("push	ebx", "", len);

	return len;
}

make_instr_func(push_edx_v) {
	OPERAND opr_edx;
	int len = 1;

	opr_edx.type = OPR_MEM;
	opr_edx.data_size = data_size;
	opr_edx.val = cpu.edx;
	
	cpu.esp -= data_size/8;
	opr_edx.addr = cpu.esp;
	opr_edx.sreg = SREG_SS;
	operand_write(&opr_edx);
	print_asm_0("push	edx", "", len);

	return len;
}

make_instr_func(push_esp_v) {
	OPERAND opr_esp;
	int len = 1;
	
	opr_esp.type = OPR_MEM;
	opr_esp.data_size = data_size;
	opr_esp.val = cpu.esp;
	/*
		Intel noted that in 80386 the value pushed into stack
		is the value of esp before the instruction
	 */

	cpu.esp -= data_size/8;
	opr_esp.addr = cpu.esp;
	opr_esp.sreg = SREG_SS;
	operand_write(&opr_esp);
	print_asm_0("push	esp", "", len);

	return len;
}
