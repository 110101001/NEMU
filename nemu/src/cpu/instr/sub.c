#include"cpu/instr.h"

static void instr_execute_2op(){
	operand_read(&opr_src);
	operand_read(&opr_dest);
	OPR_SBL
	opr_dest.val=alu_sub(opr_src.val,opr_dest.val);
	operand_write(&opr_dest);
}

make_instr_impl_2op(sub,i,rm,v)
make_instr_impl_2op(sub,i,rm,b)
make_instr_impl_2op(sub,i,rm,bv)
make_instr_impl_2op(sub,i,r,v)
make_instr_impl_2op(sub,i,r,b)
make_instr_impl_2op(sub,i,a,v)
make_instr_impl_2op(sub,i,a,b)
make_instr_impl_2op(sub,r,rm,b)
make_instr_impl_2op(sub,r,rm,v)
make_instr_impl_2op(sub,rm,r,b)
make_instr_impl_2op(sub,rm,r,v)


