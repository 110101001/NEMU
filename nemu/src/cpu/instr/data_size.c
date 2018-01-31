#include "cpu/instr.h"

uint8_t data_size = 32;

make_instr_func(data_size_16) {
	uint8_t op_code = 0;
	int len = 0;
	data_size = 16;
	op_code = instr_fetch(eip + 1, 1);
	len = opcode_entry[op_code](eip + 1, op_code);
	data_size = 32;
	return 1 + len;
}
