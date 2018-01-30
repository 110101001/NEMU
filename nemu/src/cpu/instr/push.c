#include "cpu/instr.h"

static void instr_execute_1op() {
	operand_read(&opr_src);
	if(opr_src.data_size==8){
		if(opr_src.val&0x80){
			opr_src.val|=0xffffff00;
		}
	}
	cpu.esp-=data_size==16?2:4;
	vaddr_write(cpu.esp,SREG_SS,opr_src.data_size==16?2:4,opr_src.val);
	//printf("pushing to %x\n",cpu.esp);
}


make_instr_impl_1op(push,r,v)
make_instr_impl_1op(push,rm,v)
make_instr_impl_1op(push,i,b)
make_instr_impl_1op(push,i,v)

make_instr_func(pusha){
	uint8_t index;
	//printf("push If = %d\n",cpu.eflags.IF);
	for(index=0;index<8;index++){
		vaddr_write(cpu.esp-(index+1)*4,SREG_SS,4,cpu.gpr[index].val);
		//printf("Pushing gpr[%d](%x) to %x\n",index,cpu.gpr[index].val,(cpu.esp-(index+1)*4));
	}
	cpu.esp-=32;
	//printf("eflags is %x\n",cpu.esp);
	return 1;
}
