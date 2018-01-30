#include"cpu/instr.h"

static void instr_execute_2op(){
	operand_read(&opr_src);
	operand_read(&opr_dest);
	OPR_SBL
	opr_dest.val=alu_add(opr_src.val,opr_dest.val);
	operand_write(&opr_dest);
}

make_instr_impl_2op(add,i,rm,v)
make_instr_impl_2op(add,i,rm,bv)
make_instr_impl_2op(add,i,rm,b)
make_instr_impl_2op(add,i,r,v)
make_instr_impl_2op(add,i,a,v)
make_instr_impl_2op(add,i,a,b)
make_instr_impl_2op(add,i,r,b)
make_instr_impl_2op(add,r,rm,b)
make_instr_impl_2op(add,r,rm,v)
make_instr_impl_2op(add,rm,r,b)
make_instr_impl_2op(add,rm,r,v)


