#include "cpu/intr.h"
#include "cpu/instr.h"
#include "memory/memory.h"


void raise_intr(uint8_t intr_no) {
#ifdef IA32_INTR
	//printf("Please implement raise_intr()");
	//assert(0);
	//printf("intr_no is %x\n",intr_no);
	union{
		GateDesc Gatedesc;
		uint32_t val[2];
	} GD;
	
	//push 
	cpu.esp-=4;
	vaddr_write(cpu.esp,SREG_SS,4,cpu.eflags.val);
	//printf("esp\n");
	cpu.esp-=2;
	vaddr_write(cpu.esp,SREG_SS,2,cpu.CS.val);
	cpu.esp-=4;
	vaddr_write(cpu.esp,SREG_SS,4,cpu.eip);
	//set flag
	cpu.eflags.IF=0;
	cpu.eflags.TF=0;

	//jmp
	GD.val[0]=laddr_read(cpu.IDTR.base+intr_no*8,4);
	GD.val[1]=laddr_read(cpu.IDTR.base+intr_no*8+4,4);
	cpu.eip=GD.Gatedesc.offset_15_0+(GD.Gatedesc.offset_31_16<<16);
	//cpu.CS.val=GD.Gatedesc.type;
	//load_sreg(SREG_CS);
	//printf("IDTR is %x\n",cpu.IDTR.base);
	
	return;
#endif
}

void raise_sw_intr(uint8_t intr_no) {
	// return address is the next instruction
	cpu.eip += 2;
	raise_intr(intr_no);
}
