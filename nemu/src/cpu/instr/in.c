#include "cpu/instr.h"
#include "device/port_io.h"

make_instr_func(in_dx2al) {
	OPERAND opr_al, opr_dx;
	int len = 1;

	opr_dx.data_size = 16;
	opr_dx.type = OPR_REG;
	opr_dx.addr = REG_DX;
	operand_read(&opr_dx);

	opr_al.data_size = 8;
	opr_al.type = OPR_REG;
	opr_al.addr = REG_AL;
	opr_al.val = pio_read(opr_dx.val, 1);
	operand_write(&opr_al);

	return len;
}

make_instr_func(in_dx2eax_v) {
	OPERAND opr_dx, opr_eax;
	int len = 1;

	opr_dx.data_size = 16;
	opr_dx.type = OPR_REG;
	opr_dx.addr = REG_DX;
	operand_read(&opr_dx);

	opr_eax.data_size = data_size;
	opr_eax.type = OPR_REG;
	opr_eax.addr = REG_EAX;
	opr_eax.val = pio_read(opr_dx.val, data_size/8);
	operand_write(&opr_eax);

	return len;
}

