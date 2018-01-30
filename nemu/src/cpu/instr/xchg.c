#include"cpu/instr.h"

static void instr_execute_2op(){
	uint32_t temp;
	operand_read(&opr_src);
	operand_read(&opr_dest);
	temp=opr_dest.val;
	opr_dest.val=opr_src.val;
	opr_src.val=temp;
	operand_write(&opr_dest);
}

make_instr_impl_2op(xchg,r,a,v)
make_instr_impl_2op(xchg,r,a,b)
make_instr_impl_2op(xchg,r,rm,b)
make_instr_impl_2op(xchg,r,rm,v)
make_instr_impl_2op(xchg,rm,r,b)
make_instr_impl_2op(xchg,rm,r,v)


