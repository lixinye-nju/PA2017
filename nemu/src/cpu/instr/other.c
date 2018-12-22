#include "cpu/instr.h"

//int times = 0;

make_instr_func(call_rel_v) {
	/*
	if(cpu.eip == 0x821435) {
		printf("%d\n", times);
		times++;
	}
	*/
	OPERAND opr_eip, imm;
	int len = 1 + data_size/8;
	cpu.esp -= data_size/8;
	
	opr_eip.type = OPR_MEM;
	opr_eip.data_size = data_size;
	opr_eip.val = eip + len;
	opr_eip.addr = cpu.esp;
	opr_eip.sreg = SREG_SS;
	operand_write(&opr_eip);

	imm.data_size = data_size;
	imm.type = OPR_IMM;
	imm.addr = eip + 1;
	operand_read(&imm);
	print_asm_1("call", "", len, &imm);

	assert(data_size == 16 || data_size == 32);
	if(data_size == 16) {
		imm.val = (int32_t)(imm.val << 16) >> 16;
	}
	
	len += (int32_t)imm.val;
	return len;
}

make_instr_func(call_rm_v) {
	OPERAND rm, opr_eip;
	int len = 1;
	cpu.esp -= data_size/8;
	
	rm.data_size = data_size;
	len += modrm_opcode_rm(eip + len, &opcode, &rm);
	operand_read(&rm);

	opr_eip.data_size = data_size;
	opr_eip.type = OPR_MEM;
	opr_eip.addr = cpu.esp;
	opr_eip.val = eip + len; 
	opr_eip.sreg = SREG_SS;
	operand_write(&opr_eip);

	print_asm_1("call	", "", len, &rm);
	assert(data_size == 16 || data_size == 32);
	if(data_size == 16) 
		cpu.eip = rm.val & 0xffff;
	else
		cpu.eip = rm.val;

	return 0;
}

make_instr_func(leave_v) {
	OPERAND opr_ebp;
	int len = 1;

	cpu.esp = cpu.ebp;

	opr_ebp.data_size = data_size;
	opr_ebp.type = OPR_MEM;
	opr_ebp.addr = cpu.ebp;
	opr_ebp.sreg = SREG_SS;

	operand_read(&opr_ebp);
	cpu.ebp = opr_ebp.val;
	cpu.esp += data_size/8;
	print_asm_0("leave", "", len);

	return len;
}

make_instr_func(ret_v) {
	OPERAND addr;
	int len = 1;
	
	addr.type = OPR_MEM;
	addr.data_size = data_size;
	addr.addr = cpu.esp;
	addr.sreg = SREG_SS;
	operand_read(&addr);
	cpu.esp += data_size/8;
	print_asm_0("ret", "", len);

	assert(data_size == 16 || data_size == 32);
	if(data_size == 16)
		cpu.eip = addr.val & 0xffff;
	else
		cpu.eip = addr.val;
	
	return 0;
}

make_instr_func(ret_imm_v) {
	OPERAND imm, m;
	int len = 1;

	imm.type = OPR_IMM;
	m.type = OPR_IMM;

	imm.data_size = 16;
	m.data_size = data_size;

	m.addr = cpu.esp;
	operand_read(&m);
	cpu.esp += data_size/8;

	imm.addr = eip + len;
	len += 1;
	operand_read(&imm);
	cpu.esp += sign_ext(imm.val, 32);

	print_asm_1("ret", "", len, &imm);
	cpu.eip = m.val;

	return 0;
}

make_instr_func(lea_v) {
	OPERAND m, r;
	int len = 1;

	m.data_size = data_size;
	r.data_size = data_size;
	
	len += modrm_r_rm(eip + len, &r, &m);
	r.val = m.addr;
	operand_write(&r);
	print_asm_2("lea", "", len, &m, &r);

	return len;
}
