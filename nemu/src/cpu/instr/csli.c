#include "cpu/instr.h"

make_instr_func(cli) {
	cpu.eflags.IF=0;
	//printf("If is 0!\n");
	return 1;
}

make_instr_func(sti) {
	cpu.eflags.IF=1;
	//printf("If is 1!\n");
	return 1;
}
