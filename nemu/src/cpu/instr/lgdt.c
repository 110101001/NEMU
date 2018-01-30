#include "cpu/instr.h"

make_instr_func(lgdt) {//Consider datasize==32 only
		int len=1;
        OPERAND data;
        data.type = OPR_IMM;
        data.data_size = 16;
		len += modrm_rm(eip + 1, &data);
        operand_read(&data);
		cpu.GDTR.limit=data.val;
		//printf("addr is %x\n",data.addr);
        data.data_size = 32;
		data.addr+=2;
        operand_read(&data);
		print_asm_1("lgdt", "", 2, &data);
		cpu.GDTR.base=data.val;
		//printf("GDTR is %x,%x\n",cpu.GDTR.base,cpu.GDTR.limit);
		return len;
}
