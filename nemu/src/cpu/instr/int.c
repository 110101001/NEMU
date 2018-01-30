#include "cpu/instr.h"
extern void raise_sw_intr(uint8_t intr_no);
make_instr_func(int_){
	uint8_t iindex=0;
	iindex=instr_fetch(eip+1,1);//get index
	raise_sw_intr(iindex);
	//printf("esp is %x\n",cpu.esp);
	return 0;
}

make_instr_func(iret){
	cpu.eip=vaddr_read(cpu.esp,SREG_SS,4);
	//printf("esp is %x\n",cpu.esp);
	//printf("ret addr is %x\n",cpu.eip);
	cpu.esp+=4;
	cpu.CS.val=vaddr_read(cpu.esp,SREG_SS,2);
	cpu.esp+=2;
	cpu.eflags.val=vaddr_read(cpu.esp,SREG_SS,4);
	cpu.esp+=4;
	return 0;
}
