#include "cpu/instr.h"

make_instr_func(jmp_near) {
        OPERAND rel;
        rel.type = OPR_IMM;
		rel.sreg = SREG_CS;
        rel.data_size = data_size;
        rel.addr = eip + 1;

        operand_read(&rel);

	int offset = sign_ext(rel.val, data_size);
	print_asm_1("jmp", "", 1 + data_size/8, &rel);

	cpu.eip += offset;

        return 1 + data_size / 8;
}


make_instr_func(jmp_rel_v) {
	OPERAND imm;
	
	int len = 1;
	imm.type = OPR_IMM;
	imm.addr = eip + len;
	len += data_size/8;
	imm.data_size = data_size;
	print_asm_1("jmp rel", "", len, &imm);
	operand_read(&imm);
	
	assert(imm.data_size == 32 || imm.data_size == 16);
	if(imm.data_size == 16)
		len += (int32_t)(imm.val << 16) >> 16;
	else
		len += imm.val;
	return len;
}

make_instr_func(jmp_rel_b) {
	OPERAND imm;
	int len = 1;

	imm.type = OPR_IMM;
	imm.addr = eip + len;
	imm.data_size = 8;
	len += 1;

	operand_read(&imm);
	print_asm_1("jmp", "", len, &imm);
	len += (int8_t)imm.val;

	return len;
}

make_instr_func(jmp_rm_v) {
	OPERAND rm;

	int len = 1;
	rm.data_size = data_size;
	
	len += modrm_rm(eip + len, &rm);
	operand_read(&rm);

	print_asm_1("jmp rm", "", len, &rm);

	assert(data_size == 16 || data_size ==32);
	if(data_size == 16) {
		rm.val = (int32_t)(rm.val << 16) >> 16;
		cpu.eip = rm.val & 0xffff;
	}
	else
		cpu.eip = rm.val;
	
	/*	faced with indirect jump,
	 *	returning the value of offset is adopted.
	 *	when it comes to direct jump,
	 *	directly changing the value of eip is prefered.
	 */

	return 0;

}

make_instr_func(ljmp_v) {
	OPERAND selector, offset;
	int len = 1;

	selector.data_size = 16;
	offset.data_size = data_size;

	offset.type = OPR_IMM;
	offset.addr = eip + len;
	operand_read(&offset);
	len += data_size/8;

	selector.type = OPR_IMM;
	selector.addr = eip + len;
	operand_read(&selector);
	len += 2;

	cpu.cs.val = selector.val;
	load_sreg((uint8_t)cpu.cs.index);
	assert(data_size == 16 || data_size == 32);
	if(data_size == 16)
		cpu.eip = (offset.val & 0xffff);
	else
		cpu.eip = offset.val;
	
	return 0;
}



