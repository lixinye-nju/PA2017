#include"cpu/instr.h"

make_instr_func(add_i2rm_v) {
	OPERAND imm, rm;
	int len = 1;

	imm.data_size = data_size;
	rm.data_size = data_size;

	len += modrm_opcode_rm(eip + len, &opcode, &rm);
	operand_read(&rm);
	
	imm.type = OPR_IMM;
	imm.addr = eip + len;
	operand_read(&imm);

	imm.val = sign_ext(imm.val, imm.data_size);
	rm.val = sign_ext(rm.val, rm.data_size);

	rm.val = alu_add(imm.val, rm.val);
	operand_write(&rm);
	print_asm_2("add", "", len + data_size/8, &imm, &rm);

	return len + data_size/8;
}

make_instr_func(add_i2rm_bv) {
	OPERAND imm, rm;
	int len = 1;
	
	imm.data_size = 8;
	rm.data_size = data_size;

	len += modrm_opcode_rm(eip + len, &opcode, &rm);
	operand_read(&rm);

	imm.type = OPR_IMM;
	imm.addr = eip + len;
	len += 1;
	operand_read(&imm);
	
	imm.val = sign_ext(imm.val, imm.data_size);
	rm.val = sign_ext(rm.val, rm.data_size);

	
	rm.val = alu_add(imm.val, rm.val);
	operand_write(&rm);
	print_asm_2("add", "", len, &imm, &rm);

	return len;
}

make_instr_func(add_i2eax_v) {
	OPERAND imm, rm;
	int len = 1;

	imm.data_size = data_size;
	imm.type = OPR_IMM;
	imm.addr = eip + len;
	len += data_size/8;
	operand_read(&imm);

	rm.data_size = data_size;
	rm.type = OPR_REG;
	rm.addr = REG_EAX;	//both available on EAX and AX
	operand_read(&rm);

	imm.val = sign_ext(imm.val, imm.data_size);
	rm.val = sign_ext(rm.val, rm.data_size);

	rm.val = alu_add(imm.val, rm.val);
	operand_write(&rm);
	print_asm_2("add", "", len, &imm, &rm);

	return len;
}

make_instr_func(add_r2rm_v) {
	OPERAND r, rm;
	int len = 1;

	r.data_size = data_size;
	rm.data_size = data_size;
	
	len += modrm_r_rm(eip + len, &r, &rm);
	operand_read(&r);
	operand_read(&rm);

	r.val = sign_ext(r.val, r.data_size);
	rm.val = sign_ext(rm.val, rm.data_size);

	rm.val = alu_add(r.val, rm.val);
	operand_write(&rm);
	print_asm_2("add", "", len, &r, &rm);

	return len;
}

make_instr_func(add_rm2r_v) {
	OPERAND r, rm;
	int len = 1;

	r.data_size = data_size;
	rm.data_size = data_size;

	len += modrm_r_rm(eip + len, &r, &rm);
	operand_read(&r);
	operand_read(&rm);

	r.val = sign_ext(r.val, r.data_size);
	rm.val = sign_ext(rm.val, rm.data_size);

	r.val = alu_add(r.val, rm.val);
	operand_write(&r);
	print_asm_2("add", "", len, &rm, &r);

	return len;
}

make_instr_func(add_rm2r_b) {
	OPERAND r, rm;
	int len = 1;

	r.data_size = 8;
	rm.data_size = 8;

	len += modrm_r_rm(eip + len, &r, &rm);
	operand_read(&r);
	operand_read(&rm);
	
	r.val = sign_ext(r.val, r.data_size);
	rm.val = sign_ext(rm.val, rm.data_size);

	r.val = alu_add(r.val, rm.val);
	operand_write(&r);
	print_asm_2("add", "", len, &rm, &r);

	return len;
}
