#include "cpu/instr.h"
#include "device/port_io.h"

make_instr_func(out_al2dx) {
	OPERAND opr_al, opr_dx;
	int len = 1;

	opr_al.data_size = 8;
	opr_al.type = OPR_REG;
	opr_al.addr = REG_AL;
	operand_read(&opr_al);

	opr_dx.data_size = 16;
	opr_dx.type = OPR_REG;
	opr_dx.addr = REG_DX;
	operand_read(&opr_dx);
	
	//printf("port number: 0x%x\n", opr_dx.val);
	//printf("ch: 0x%x\n", opr_al.val);
	pio_write(opr_dx.val, 1, opr_al.val);

	return len;
}
