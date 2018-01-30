#include"cpu/instr.h"

static void instr_execute_2op(){
	//operand_read(&opr_src);
	//operand_read(&opr_dest);
	opr_dest.val=opr_src.addr;
	operand_write(&opr_dest);
}

make_instr_impl_2op(lea,rm,r,v)

