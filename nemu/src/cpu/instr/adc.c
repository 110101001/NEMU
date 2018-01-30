#include"cpu/instr.h"

static void instr_execute_2op() {
	operand_read(&opr_src);
	operand_read(&opr_dest);
	OPR_SBL
	opr_dest.val=alu_adc(opr_src.val,opr_dest.val);
	operand_write(&opr_dest);
}

make_instr_impl_2op(adc,r,rm,b)
make_instr_impl_2op(adc,r,rm,v)
make_instr_impl_2op(adc,rm,r,b)
make_instr_impl_2op(adc,rm,r,v)
make_instr_impl_2op(adc,i,a,b)
make_instr_impl_2op(adc,i,a,v)
make_instr_impl_2op(adc,i,rm,b)
make_instr_impl_2op(adc,i,rm,v)
make_instr_impl_2op(adc,i,rm,bv)
