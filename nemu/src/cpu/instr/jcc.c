#include "cpu/instr.h"

static void instr_execute_1op_cc_pass() {
	operand_read(&opr_src);
	cpu.eip += sign_ext(opr_src.val, opr_src.data_size);
}

static void instr_execute_1op_cc_fail() {/* Do nothing */}

make_instr_impl_1op_cc(j, i, v, g)
make_instr_impl_1op_cc(j, i, v, ae)
make_instr_impl_1op_cc(j, i, v, b)
make_instr_impl_1op_cc(j, i, v, ge)
make_instr_impl_1op_cc(j, i, v, no)
make_instr_impl_1op_cc(j, i, v, np)
make_instr_impl_1op_cc(j, i, v, ns)
make_instr_impl_1op_cc(j, i, v, o)
make_instr_impl_1op_cc(j, i, v, p)
make_instr_impl_1op_cc(j, i, b, a)
make_instr_impl_1op_cc(j, i, b, ae)
make_instr_impl_1op_cc(j, i, b, no)
make_instr_impl_1op_cc(j, i, b, np)
make_instr_impl_1op_cc(j, i, b, ns)
make_instr_impl_1op_cc(j, i, b, o)
make_instr_impl_1op_cc(j, i, b, p)
make_instr_impl_1op_cc(j, i, b, s)


#define jcc_helper(suffix) \
	make_instr_impl_1op_cc(j, i, suffix, e) \
	make_instr_impl_1op_cc(j, i, suffix, a) \
	make_instr_impl_1op_cc(j, i, suffix, b) \
	make_instr_impl_1op_cc(j, i, suffix, g) \
	make_instr_impl_1op_cc(j, i, suffix, l) \
	make_instr_impl_1op_cc(j, i, suffix, o) \
	make_instr_impl_1op_cc(j, i, suffix, p) \
	make_instr_impl_1op_cc(j, i, suffix, s) \
	make_instr_impl_1op_cc(j, i, suffix, ae) \
	make_instr_impl_1op_cc(j, i, suffix, ge) \
	make_instr_impl_1op_cc(j, i, suffix, le) \
	make_instr_impl_1op_cc(j, i, suffix, na) \
	make_instr_impl_1op_cc(j, i, suffix, ne) \
	make_instr_impl_1op_cc(j, i, suffix, no) \
	make_instr_impl_1op_cc(j, i, suffix, np) \
	make_instr_impl_1op_cc(j, i, suffix, ns) \

jcc_helper(near)
jcc_helper(short_)
make_instr_impl_1op_cc(j, i, short_, ecxz)

make_instr_func(je_b) {
	OPERAND imm;
	int len = 1;

	imm.data_size = 8;
	imm.type = OPR_IMM;
	imm.addr = eip + len;
	
	operand_read(&imm);
	len += 1;
	print_asm_1("je", "", len, &imm);
	if(cpu.eflags.ZF == 1) {
		len += (int8_t)imm.val;
	}

	/*	It may be confused with the conversion "(int8_t)imm.val",
	 *	actually it is designed to extend imm.val's sign-bit to 32-bits.
	 *  Through transition to int8_t,
	 *	imm.val only get the low-8-bits of the original val,
	 *	when adding imm.val to len, 
	 *	imm.val is converted to int32_t implicitly and 
	 *	the sign-bit is extended to 32-bits
	 */
	
	return len;
}

make_instr_func(jg_b) {
	OPERAND imm;
	int len = 1;

	imm.data_size = 8;
	imm.type = OPR_IMM;
	imm.addr = eip + len;
	operand_read(&imm);

	len += 1;
	print_asm_1("jg", "", len, &imm);
	if(cpu.eflags.ZF == 0 && cpu.eflags.SF == cpu.eflags.OF) {
		len += (int8_t)imm.val;
	}
	return len;
}

make_instr_func(jng_b) {
	OPERAND imm;
	int len = 1;

	imm.data_size = 8;
	imm.type = OPR_IMM;
	imm.addr = eip + len;
	operand_read(&imm);

	len += 1;
	print_asm_1("jng", "", len, &imm);
	if(cpu.eflags.ZF == 1 || cpu.eflags.SF != cpu.eflags.OF) {
		len += (int8_t)imm.val;
	}
	return len;
}

make_instr_func(jne_b) {
	OPERAND imm;
	int len = 1;

	imm.data_size = 8;
	imm.type = OPR_IMM;
	imm.addr = eip + len;
	operand_read(&imm);

	len += 1;
	print_asm_1("jne", "", len, &imm);
	if(cpu.eflags.ZF == 0) {
		len += (int8_t)imm.val;
	}
	return len;
}

make_instr_func(jna_b) {
	OPERAND imm;
	int len = 1;

	imm.data_size = 8;
	imm.type = OPR_IMM;
	imm.addr = eip + len;
	operand_read(&imm);

	len += 1;
	print_asm_1("jbe", "", len, &imm);
	if(cpu.eflags.ZF == 1 || cpu.eflags.CF == 1)
		len += (int8_t)imm.val;

	return len;
}

make_instr_func(jl_v) {
	OPERAND imm;
	int len = 1;

	imm.data_size = data_size;
	imm.type = OPR_IMM;
	imm.addr = eip + len;
	operand_read(&imm);

	len += data_size/8;
	print_asm_1("jl", "", len, &imm);
	if(cpu.eflags.SF != cpu.eflags.OF ) {
		assert(data_size == 16 || data_size == 32);
		if(data_size == 16)
			len += (int16_t)imm.val;
		else
			len += (int32_t)imm.val;
	}

	return len;
}

make_instr_func(jge_b) {
	OPERAND imm;
	int len = 1;
	
	imm.data_size = 8;
	imm.type = OPR_IMM;
	imm.addr = eip + len;
	len += 1;
	operand_read(&imm);

	print_asm_1("jge", "", len, &imm);
	if(cpu.eflags.SF == cpu.eflags.OF)
		len += (int8_t)imm.val;

	return len;

}

make_instr_func(jle_v) {
	OPERAND imm;
	int len = 1;

	imm.data_size = data_size;
	imm.type = OPR_IMM;
	imm.addr = eip + len;
	operand_read(&imm);

	len += data_size/8;
	print_asm_1("jle", "", len, &imm);
	if(cpu.eflags.SF != cpu.eflags.OF || cpu.eflags.ZF == 1) {
		assert(data_size ==16 || data_size ==32);
		if(data_size == 16)
			len += (int16_t)imm.val;
		else
			len += (int32_t)imm.val;
	}

	return len;
}

make_instr_func(jbe_v) {
	OPERAND imm;
	int len = 1;

	imm.data_size = data_size;
	imm.type = OPR_IMM;
	imm.addr = eip + len;
	len += data_size/8;
	operand_read(&imm);
	
	print_asm_1("jbe", "", len, &imm);
	assert(data_size == 16 || data_size == 32);
	if(cpu.eflags.CF == 1 || cpu.eflags.ZF == 1) {
		if(data_size == 16)
			len += (int16_t)imm.val;
		else
			len += (int32_t)imm.val;
	}

	return len;
}

make_instr_func(jl_b) {
	OPERAND imm;
	int len = 1;
	
	imm.data_size = 8;
	imm.type = OPR_IMM;
	imm.addr = eip + len;
	operand_read(&imm);

	len += 1;
	print_asm_1("jl", "", len, &imm);
	if(cpu.eflags.SF != cpu.eflags.OF)
		len += (int8_t)imm.val;

	return len;
}

make_instr_func(je_v) {
	OPERAND imm;
	int len = 1;

	imm.data_size = data_size;
	imm.type = OPR_IMM;
	imm.addr = eip + len;
	operand_read(&imm);

	len += data_size/8;
	print_asm_1("je", "", len + 1, &imm);
	if(cpu.eflags.ZF == 1) {
		if(data_size == 16)
			imm.val = (int32_t)(imm.val << 16) >> 16;
		/*	sign-extention
		 */

		len += imm.val;
	}

	return len;
}

make_instr_func(ja_v) {
	OPERAND  imm;
	int len = 1;

	imm.data_size = data_size;
	imm.type = OPR_IMM;
	imm.addr = eip + 1;
	operand_read(&imm);

	len += data_size/8;
	print_asm_1("ja", "", len + 1, &imm);
	if(cpu.eflags.ZF == 0 && cpu.eflags.CF == 0) {
		if(data_size == 16)
			imm.val = (int32_t)(imm.val << 16) >> 16;

		len += imm.val;
	}

	return len;
}

make_instr_func(js_v) {
	OPERAND  imm;
	int len = 1;

	imm.data_size = data_size;
	imm.type = OPR_IMM;
	imm.addr = eip + len;
	operand_read(&imm);

	len += data_size/8;
	print_asm_1("js", "", len + 1, &imm);
	if(cpu.eflags.SF == 1) {
		if(data_size == 16)
			imm.val = (int32_t)(imm.val << 16) >> 16;
		
		len += imm.val;
	}

	return len;
}

make_instr_func(jb_b) {
	OPERAND imm;
	int len = 1;

	imm.data_size = 8;
	imm.type = OPR_IMM;
	imm.addr = eip + len;
	
	operand_read(&imm);
	len += 1;
	print_asm_1("jb", "", len, &imm);
	if(cpu.eflags.CF == 1)
		len += (int8_t)imm.val;

	return len;
}

/*make_instr_func(jg_v) {
	OPERAND  imm;
	int len = 1;

	imm.data_size = data_size;
	imm.type = OPR_IMM;
	imm.addr = eip + 1;
	operand_read(&imm);

	len += data_size/8;
	print_asm_1("jg", "", len + 1, &imm);
	if(cpu.eflags.ZF == 0 && cpu.eflags.SF == cpu.eflags.OF) {
		if(data_size == 16) {
			imm.val = (int32_t)(imm.val << 16) >> 16;
		}
		len += imm.val;
	}

	return len;
}*/

make_instr_func(jne_v) {
	OPERAND  imm;
	int len = 1;

	imm.data_size = data_size;
	imm.type = OPR_IMM;
	imm.addr = eip + len;
	operand_read(&imm);

	len += data_size/8;
	print_asm_1("jne", "", len + 1, &imm);
	if(cpu.eflags.ZF == 0) {
		if(data_size == 16) 
			imm.val = (int32_t)(imm.val << 16) >> 16;
		
		len += imm.val;
	}

	return len;
}

