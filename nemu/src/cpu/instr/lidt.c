#include "cpu/instr.h"

make_instr_func(lidt) {//Consider datasize==32 only
		int len=1;
        OPERAND data;
        data.data_size = 16;
		len += modrm_rm(eip + 1, &data);
        operand_read(&data);
		cpu.IDTR.limit=data.val;
		//printf("addr is %x\n",data.addr);
        data.data_size = 32;
		data.addr+=2;
        operand_read(&data);
		print_asm_1("lidt", "", 2, &data);
		cpu.IDTR.base=data.val;
		//printf("IDTR is %x,%x\n",cpu.IDTR.base,cpu.IDTR.limit);
		return len;
}
