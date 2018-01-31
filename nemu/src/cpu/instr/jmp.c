#include "cpu/instr.h"

#define JMPCASE jump_case(opcode)

/*int jump_case(uint8_t opcode){
	switch(opcode){
		case 0x70: if(cpu.eflags.OF==1) return 1;break;
		case 0x71: if(cpu.eflags.OF==0) return 1;break;
		case 0x72: if(cpu.eflags.CF==1) return 1;break;
		case 0x73: if(cpu.eflags.CF==0) return 1;break;
		case 0x74: if(cpu.eflags.ZF==1) return 1;break;
		case 0x75: if(cpu.eflags.ZF==0) return 1;break;
		case 0x76: if(cpu.eflags.CF==1||cpu.eflags.ZF==1) return 1;break;
		case 0x77: if(cpu.eflags.CF==0&&cpu.eflags.ZF==0) return 1;break;
		case 0x78: if(cpu.eflags.SF==1) return 1;break;
		case 0x79: if(cpu.eflags.SF==0) return 1;break;
		case 0x7A: if(cpu.eflags.PF==1) return 1;break;
		case 0x7B: if(cpu.eflags.PF==0) return 1;break;
		case 0x7C: if(cpu.eflags.SF!=cpu.eflags.OF) return 1;break;
		case 0x7D: if(cpu.eflags.SF==cpu.eflags.OF) return 1;break;
		case 0x7E: if(cpu.eflags.ZF==1||cpu.eflags.SF!=cpu.eflags.OF) return 1;break;
		case 0x7F: if(cpu.eflags.ZF==0&&cpu.eflags.SF==cpu.eflags.OF) return 1;break;
		case 0xEB: return 1;
	}
	return 0;
}
*/
make_instr_func(jmp_near) {
        OPERAND rel;
        rel.type = OPR_IMM;
		rel.sreg = SREG_CS;
        rel.data_size = data_size;
        rel.addr = eip + 1;

        operand_read(&rel);

		int offset = sign_ext(rel.val, data_size);
		print_asm_1("jmp", "", 2, &rel);

		cpu.eip += offset;

        return 1 + data_size / 8;
}

make_instr_func(jmp_short_) {
        OPERAND rel;
        rel.type = OPR_IMM;
		rel.sreg = SREG_CS;
        rel.data_size = 8;
        rel.addr = eip + 1;

        operand_read(&rel);

		int offset = sign_ext(rel.val, 8);
		print_asm_1("jmp", "", 2, &rel);
		cpu.eip += offset;

	    return 2;
}
make_instr_func(jmp_long_) {	
	cpu.CS.val=laddr_read(eip+5,2);
	//printf("cs=%d,%d,%d\n",cpu.CS.pl,cpu.CS.rpl,cpu.CS.index);
	cpu.CS.pl=0;
	load_sreg(SREG_CS);
	cpu.eip=instr_fetch(eip+1,4);
	//printf("jmping to %x\n",cpu.eip);
	return 0;
}

make_instr_func(jmp_rm) {
		int len=1;
        OPERAND rel;
		rel.data_size=data_size;
		len += modrm_rm(eip + 1, &rel);
        operand_read(&rel);

		//int offset = sign_ext(rel.val, 8);
		//printf("jmping to %x\n",rel.val);
		print_asm_1("jmp", "", len, &rel);
		cpu.eip = rel.val;

	    return 0;
}
