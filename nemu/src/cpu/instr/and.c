#include "cpu/instr.h"

static void instr_execute_2op() {
	operand_read(&opr_src);
	operand_read(&opr_dest);

	opr_src.val = sign_ext(opr_src.val, opr_src.data_size);
	opr_dest.val = sign_ext(opr_dest.val, opr_dest.data_size);

	opr_dest.val = alu_and(opr_src.val, opr_dest.val);
	operand_write(&opr_dest);
}

make_instr_func(and_i2rm_bv) {
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
	//signed extension;

	rm.val = alu_and(imm.val, rm.val);
	operand_write(&rm);
	print_asm_2("and", "", len, &imm, &rm);

	return len;
}

make_instr_func(and_i2eax_v) {
	OPERAND imm, opEax;
	int len = 1;

	imm.data_size = data_size;
	opEax.data_size = data_size;

	imm.type = OPR_IMM;
	imm.addr = eip + len;
	operand_read(&imm);

	opEax.type = OPR_REG;
	opEax.addr = REG_EAX;
	operand_read(&opEax);

	imm.val = sign_ext(imm.val, imm.data_size);
	opEax.val = sign_ext(opEax.val, opEax.data_size);

	opEax.val = alu_and(imm.val, opEax.val);
	operand_write(&opEax);
	print_asm_2("and", "", len + data_size/8, &imm, &opEax);

	return len + data_size/8;
}

make_instr_func(and_i2al_b) {
	OPERAND imm, opr_al;
	int len = 1;

	imm.data_size = 8;
	opr_al.data_size = 8;

	imm.type = OPR_IMM;
	imm.addr = eip + len;
	operand_read(&imm);
	len += 1;

	opr_al.type = OPR_REG;
	opr_al.addr = REG_AL;
	operand_read(&opr_al);

	imm.val = sign_ext(imm.val, imm.data_size);
	opr_al.val = sign_ext(opr_al.val, opr_al.data_size);
	
	opr_al.val = alu_and(imm.val , opr_al.val);
	operand_write(&opr_al);
	print_asm_2("and", "", len, &imm, &opr_al);

	return len;
}


make_instr_impl_2op(and, rm, r, b)
make_instr_impl_2op(and, r, rm, v)
make_instr_impl_2op(and, i, rm, v)
make_instr_impl_2op(and, i, rm, b)
make_instr_impl_2op(and, rm, r, v)
