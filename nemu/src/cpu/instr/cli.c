#include "cpu/instr.h"

make_instr_func(cli) {
	int len = 1;
	cpu.eflags.IF = 0;
	return len;
}
