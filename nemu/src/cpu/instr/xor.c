#include "cpu/instr.h"

static void instr_execute_2op() {
	operand_read(&opr_src);
	operand_read(&opr_dest);

	opr_src.val = sign_ext(opr_src.val, opr_src.data_size);
	opr_dest.val = sign_ext(opr_dest.val, opr_dest.data_size);

	opr_dest.val = alu_xor(opr_src.val, opr_dest.val);
	operand_write(&opr_dest);
}

make_instr_impl_2op(xor, r, rm, v);

make_instr_func(xor_i2rm_bv) {
	OPERAND imm, rm;
	int len = 1;

	imm.data_size = 8;
	rm.data_size = data_size;

	len += modrm_rm(eip + len, &rm);
	operand_read(&rm);

	imm.type = OPR_IMM;
	imm.addr = eip + len;
	operand_read(&imm);
	len += 1;

	imm.val = sign_ext(imm.val, imm.data_size);
	rm.val = sign_ext(rm.val, rm.data_size);

	rm.val = alu_xor(imm.val, rm.val);
	operand_write(&rm);
	
	return len;
}
