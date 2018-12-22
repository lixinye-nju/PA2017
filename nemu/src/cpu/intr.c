#include "cpu/intr.h"
#include "cpu/instr.h"
#include "memory/memory.h"


void raise_intr(uint8_t intr_no) {
#ifdef IA32_INTR
	OPERAND opr_eflags, opr_cs, opr_eip;
	
	opr_eflags.data_size = 32;
	opr_eflags.type = OPR_MEM;
	opr_eflags.val = cpu.eflags.val;
	cpu.esp -= 4;
	opr_eflags.addr = cpu.esp;
	opr_eflags.sreg = SREG_SS;
	operand_write(&opr_eflags);

	opr_cs.data_size = 32;
	opr_cs.type = OPR_MEM;
	opr_cs.val = cpu.cs.val;
	/*
		actually the visible part of cs is only 16-bit,
		a implicit extension is done here.
	 */
	cpu.esp -= 4;
	opr_cs.addr = cpu.esp;
	opr_cs.sreg = SREG_SS;
	operand_write(&opr_cs);

	opr_eip.data_size = 32;
	opr_eip.type = OPR_MEM;
	opr_eip.val = cpu.eip;
	cpu.esp -= 4;
	opr_eip.addr = cpu.esp;
	opr_eip.sreg = SREG_SS;
	operand_write(&opr_eip);

	laddr_t idtIdx = cpu.idtr.base + intr_no*sizeof(GateDesc);
	GateDesc gateRead;
	gateRead.val[0] = laddr_read(idtIdx, 4);
	gateRead.val[1] = laddr_read(idtIdx + 4, 4);
	
	if(gateRead.type == 0xe)
		cpu.eflags.IF = 0;

	uint32_t offset = (gateRead.offset_31_16 << 16) 
						| gateRead.offset_15_0;
	uint16_t selector = gateRead.selector;
	cpu.cs.val = selector;
	load_sreg((uint8_t)cpu.cs.index);

	cpu.eip = offset;

#endif
}

void raise_sw_intr(uint8_t intr_no) {
	// return address is the next instruction
	cpu.eip += 2;
	raise_intr(intr_no);
}
