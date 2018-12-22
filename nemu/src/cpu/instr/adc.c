#include "cpu/instr.h"

/*
static void instr_execute_2op() {
	operand_read(&opr_src);
	operand_read(&opr_dest);
	opr_dest.val = alu_adc(opr_src.val, opr_dest.val);
	operand_write(&opr_dest);
}
*/

make_instr_func(adc_r2rm_v) {
	OPERAND r, rm;
	int len = 1;

	r.data_size = data_size;
	rm.data_size = data_size;

	len += modrm_r_rm(eip + 1, &r, &rm);
	operand_read(&r);
	operand_read(&rm);

	r.val = sign_ext(r.val, r.data_size);
	rm.val = sign_ext(rm.val, rm.data_size);

	rm.val = alu_adc(r.val, rm.val);
	operand_write(&rm);

	return len;
}

make_instr_func(adc_i2rm_bv) {
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

	rm.val = alu_adc(imm.val, rm.val);
	operand_write(&rm);

	return len;
}
