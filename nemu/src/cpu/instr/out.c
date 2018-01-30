#include "cpu/instr.h"
#include "device/port_io.h"
static void instr_execute_2op(){
	operand_read(&opr_src);
	operand_read(&opr_dest);
	pio_write(opr_src.val,opr_dest.data_size/8,opr_dest.val);
}
make_instr_func(out_i2a_b){
	int len=1;
	decode_data_size_b
	decode_operand_i2a
	instr_execute_2op();
	return len;
}
make_instr_func(out_i2a_v){
	int len=1;
	decode_data_size_b
	decode_operand_i2a
	opr_dest.data_size=data_size;
	instr_execute_2op();
	return len;
}

make_instr_func(out_d2a_b){
	//printf("writing to %x\n",cpu.edx&0xFFFF);
	pio_write((cpu.edx&0xFFFF),1,cpu.eax);
	return 1;
}

make_instr_func(out_d2a_v){
	//printf("writing to %x\n",cpu.edx&0xFFFF);
	pio_write((cpu.edx&0xFFFF),data_size/8,cpu.eax);
	return 1;
}

