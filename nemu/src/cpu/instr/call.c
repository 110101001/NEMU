#include"cpu/instr.h"

int call_rel(uint32_t eip,uint8_t opcode){
	OPERAND rel;
	//printf("At %x ,",cpu.eip);
	cpu.esp-=4;
	//printf("call begin\n");
	vaddr_write(cpu.esp,SREG_SS,4,eip+data_size/8+1);
	//printf("eip b4 call is %x\n",cpu.eip);
	//uint32_t ret=vaddr_read(cpu.esp,SREG_SS,4);
	//printf("addr is %x\n",ret);
    rel.type = OPR_IMM;
	rel.sreg = SREG_CS;
    rel.data_size = data_size;
    rel.addr = eip + 1;
	operand_read(&rel);
	/*if(data_size==16){
		eip+=vaddr_read(eip+1, SREG_CS, 2)+3;
	}
	else{// data_size==32
		eip+=vaddr_read(eip+1,SREG_CS,4)+5;
	}*/
	print_asm_1("call", "", 1, &rel);
	cpu.eip+=rel.val+data_size/8+1;
	//printf("calling to %x,esp is %x\n",cpu.eip,cpu.esp);
	return 0;
}

int call_rm_v(uint32_t eip,uint8_t opcode){
	int len=1;
	OPERAND rel;
	cpu.esp-=4;
	len+=modrm_rm(eip + 1, &rel);
    rel.data_size = data_size;
	operand_read(&rel);
	/*if(data_size==16){
		eip+=vaddr_read(eip+1, SREG_CS, 2)+3;
	}
	else{// data_size==32
		eip+=vaddr_read(eip+1,SREG_CS,4)+5;
	}*/
	print_asm_1("call", "", 1, &rel);
	vaddr_write(cpu.esp,SREG_SS,4,eip+len);
	cpu.eip=rel.val;
	return 0;
}
int ret_near(uint32_t eip,uint8_t opcode){
	OPERAND rel;
    rel.type = OPR_IMM;
	rel.sreg = SREG_SS;
    rel.data_size = 32;
    rel.addr = cpu.esp;
	operand_read(&rel);
	cpu.esp+=4;
	cpu.eip=rel.val;
	print_asm_1("ret", "near", 1, &rel);
	//printf("returning to %x,esp is %x\n",cpu.eip,cpu.esp);
	//uint32_t ret=vaddr_read(cpu.esp-4,SREG_SS,4);
	//printf("addr is %x\n",ret);
	return 0;
}

int ret_i_near(uint32_t eip,uint8_t opcode){
	OPERAND rel;
    rel.type = OPR_IMM;
	rel.sreg = SREG_SS;
    rel.data_size = data_size;
    rel.addr = cpu.esp;
	operand_read(&rel);
	cpu.esp+=4;
	cpu.eip=rel.val;
	cpu.esp+=instr_fetch(cpu.eip+1,2);
	print_asm_1("ret", "near", 1, &rel);
	return 0;
}
