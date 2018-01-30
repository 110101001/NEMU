#include "cpu/instr.h"

static void instr_execute_1op() {
	opr_src.val=vaddr_read(cpu.esp,SREG_SS,opr_src.data_size/8);
	cpu.esp+=data_size==16?2:4;
	operand_write(&opr_src);
}


make_instr_impl_1op(pop,r,v)
make_instr_impl_1op(pop,rm,v)

make_instr_func(popa){
	uint32_t ori_esp=cpu.esp;
	//printf("pop esp is %x\n",cpu.esp);
	int index;
	//printf("push If = %d\n",cpu.eflags.IF);
	for(index=0;index<8;index++){
		cpu.gpr[index].val=vaddr_read(ori_esp+32-(index+1)*4,SREG_SS,4);
		//printf("Poping gpr[%d](%x) from %x\n",index,cpu.gpr[index].val,(ori_esp+32-(index+1)*4));
	}
	return 1;
}
