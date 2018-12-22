#include "cpu/instr.h"

make_instr_func(sti) {
	int len = 1;
	cpu.eflags.IF = 1;
	return len;
}
