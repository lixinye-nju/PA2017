#include "cpu/instr.h"

static void instr_execute_2op() {
	operand_read(&opr_src);
	operand_read(&opr_dest);

	opr_src.val = sign_ext(opr_src.val, opr_src.data_size);
	opr_dest.val = sign_ext(opr_dest.val, opr_dest.data_size);

	opr_dest.val = alu_or(opr_src.val, opr_dest.val);
	operand_write(&opr_dest);
}

make_instr_impl_2op(or, r, rm, v)
make_instr_impl_2op(or, rm, r, b)
make_instr_impl_2op(or, i, rm, b)
make_instr_impl_2op(or, i, rm, v)
make_instr_impl_2op(or, rm, r, v)

make_instr_func(or_i2rm_bv) {
	OPERAND imm, rm;
	int len = 1;

	imm.data_size = 8;
	rm.data_size = data_size;

	len += modrm_opcode_rm(eip + 1, &opcode, &rm);
	operand_read(&rm);

	imm.type = OPR_IMM;
	imm.addr = eip + len;
	len += 1;
	operand_read(&imm);

	imm.val = sign_ext(imm.val, imm.data_size);
	rm.val = sign_ext(rm.val, rm.data_size);
	
	print_asm_2("or", "", len + 1, &imm, &rm);
	rm.val = alu_or(imm.val, rm.val);

	operand_write(&rm);
	return len;
}

make_instr_func(or_i2al_b) {
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

	print_asm_2("or", "", len, &imm, &opr_al);
	opr_al.val = alu_or(imm.val, opr_al.val);
	operand_write(&opr_al);

	return len;
}

make_instr_func(or_i2eax_v) {
	OPERAND imm, opr_eax;
	int len = 1;

	imm.data_size = data_size;
	opr_eax.data_size = data_size;

	imm.type = OPR_IMM;
	imm.addr = eip + len;
	operand_read(&imm);
	len += data_size/8;

	opr_eax.type = OPR_REG;
	opr_eax.addr = REG_EAX;
	operand_read(&opr_eax);

	imm.val = sign_ext(imm.val, imm.data_size);
	opr_eax.val = sign_ext(opr_eax.val, opr_eax.data_size);

	print_asm_2("or", "", len, &imm, &opr_eax);
	opr_eax.val = alu_or(imm.val, opr_eax.val);
	operand_write(&opr_eax);

	return len;
}
