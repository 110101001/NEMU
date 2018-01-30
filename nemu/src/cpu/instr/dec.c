#include "cpu/instr.h"

static void instr_execute_1op() {
	operand_read(&opr_src);
	opr_src.val=alu_sub(1,opr_src.val);
	operand_write(&opr_src);
}


make_instr_impl_1op(dec,rm,b)
make_instr_impl_1op(dec,rm,v)
make_instr_impl_1op(dec,r,v)
