#include "cpu/instr.h"

make_instr_func(nemu_trap) {
	int i = 0;
	switch(cpu.eax) {
	case 4: 
		printf("\e[0;31mnemu trap output: \e[0m");
		for(i = 0; i < cpu.edx ; i++) {
			putchar((char) vaddr_read(cpu.ecx + i, SREG_DS, 1));
		}
		break;
	default:
		printf("nemu: HIT %s TRAP at eip = 0x%08x\n", (cpu.eax == 0 ? "\e[0;32mGOOD\e[0m" : "\e[0;31mBAD\e[0m"), eip);
		nemu_state = NEMU_STOP;
		break;
        }
        return 1;
}

make_instr_func(break_point) {
	printf("hit breakpoint at eip = 0x%08x\n", cpu.eip);
	nemu_state = NEMU_BREAK;
	return 1;
}
