#include "cpu/instr.h"
#include "device/port_io.h"
static void instr_execute_2op(){
	operand_read(&opr_src);
	//printf("src is %x\n",opr_src.val);
	opr_dest.val = pio_read(opr_src.val,opr_dest.data_size/8);
	operand_write(&opr_dest);
}
make_instr_func(in_i2a_b){
	int len=1;
	decode_data_size_b
	decode_operand_i2a
	instr_execute_2op();
	return len;
}
make_instr_func(in_i2a_v){
	int len=1;
	decode_data_size_b
	decode_operand_i2a
	opr_dest.data_size=data_size;
	instr_execute_2op();
	return len;
}

make_instr_func(in_d2a_b){
	//printf("read from %x\n",cpu.edx&0xFFFF);
	cpu.eax=pio_read((cpu.edx&0xFFFF),1);
	return 1;
}

make_instr_func(in_d2a_v){
	//printf("read from %x\n",cpu.edx&0xFFFF);
	cpu.eax=pio_read((cpu.edx&0xFFFF),data_size/8);
	return 1;
}

