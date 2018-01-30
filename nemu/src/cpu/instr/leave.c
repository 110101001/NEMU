#include"cpu/instr.h"

int leave(uint32_t eip,uint8_t opcode){
	//if(datasize==32){
		cpu.esp=cpu.ebp;
	//}
	//else{//datasize==16
	//	cpu.sp=cpu.bp
	//}
		OPERAND rel;
		rel.type = OPR_IMM;
		rel.sreg = SREG_SS;
	    rel.data_size = data_size;
	    rel.addr = cpu.esp;
		operand_read(&rel);
		cpu.esp+=4;
		cpu.ebp=rel.val;
		return 1;
}
