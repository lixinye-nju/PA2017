#include "cpu/instr.h"

static void instr_execute_2op() {
	operand_read(&opr_src);
	operand_read(&opr_dest);

	opr_src.val = sign_ext(opr_src.val, opr_src.data_size);
	opr_dest.val = sign_ext(opr_dest.val, opr_dest.data_size);

	opr_dest.val = alu_and(opr_src.val, opr_dest.val);
} 

make_instr_impl_2op(test, r, rm, b)
make_instr_impl_2op(test, i, rm, v)
make_instr_impl_2op(test, i, rm, b)

make_instr_func(test_r2rm_v) {
	OPERAND r, rm;
	int len = 1;

	r.data_size = data_size;
	rm.data_size = data_size;

	len += modrm_r_rm(eip + len, &r, &rm);

	operand_read(&r);
	operand_read(&rm);

	r.val = sign_ext(r.val, r.data_size);
	rm.val = sign_ext(rm.val, rm.data_size);

	alu_and(r.val, rm.val);

	print_asm_2("test", "", len, &r, &rm);
	return len;
}

make_instr_func(test_i2ax_v) {
	OPERAND imm, ax;
	int len = 1;

	imm.data_size = data_size;
	ax.data_size = data_size;

	imm.type = OPR_IMM;
	imm.addr = eip + len;
	len += data_size/8;
	operand_read(&imm);

	ax.type = OPR_REG;
	ax.addr = REG_EAX;
	operand_read(&ax);

	imm.val = sign_ext(imm.val, imm.data_size);
	ax.val = sign_ext(ax.val, ax.data_size);

	ax.val = alu_and(imm.val, ax.val);
	/*	the result of the operation is discarded,
	 * 	and only the flags are modified.
	 */
	
	return len;
}

make_instr_func(test_i2al_b) {
	OPERAND imm, al;
	int len = 1;
	
	imm.data_size = 8;
	al.data_size = 8;

	imm.type = OPR_IMM;
	imm.addr = eip + len;
	len += 1;
	operand_read(&imm);

	al.type = OPR_REG;
	al.addr = REG_AL;
	operand_read(&al);

	imm.val = sign_ext(imm.val, imm.data_size);
	al.val = sign_ext(al.val, al.data_size);

	al.val = alu_and(imm.val, al.val);
	if(((al.val >> 7) & 0x1) == 0x1)
		cpu.eflags.SF = 1;

	return len;
}
