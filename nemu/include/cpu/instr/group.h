#ifndef __INSTR_GROUP_H__
#define __INSTR_GROUP_H__

#define OPR_SBL\
	switch(opr_src.data_size){\
		case 8:\
			if(opr_src.val&0x80) opr_src.val|=0xffffff00;\
			break;\
		case 16:\
			if(opr_src.val&0x8000) opr_src.val|=0xffff0000;\
			break;\
	}\
	switch(opr_dest.data_size){\
		case 8:\
			if(opr_dest.val&0x80) opr_dest.val|=0xffffff00;\
			break;\
		case 16:\
			if(opr_dest.val&0x8000) opr_dest.val|=0xffff0000;\
			break;\
	}\
/*	if(opr_src.data_size!=opr_dest.data_size){\
		if(opr_src.val&0x80){\
			if(opr_dest.data_size==32) opr_src.val|=0xffffff00;\
			else opr_src.val|=0xff00;\
		}\
	}\*/


// entries for all instructions
extern instr_func opcode_entry[];
extern instr_func opcode_2_byte_entry[];
extern instr_func group_1_b_entry[];
extern instr_func group_1_v_entry[];
extern instr_func group_1_bv_entry[];
extern instr_func group_2_b_entry[];
extern instr_func group_2_v_entry[];
extern instr_func group_2_1b_entry[];
extern instr_func group_2_1v_entry[];
extern instr_func group_2_cb_entry[];
extern instr_func group_2_cv_entry[];
extern instr_func group_3_b_entry[];
extern instr_func group_3_v_entry[];
extern instr_func group_5_indirect_entry[];
extern instr_func group_7_entry[];
extern instr_func group_x87_d8_entry[];
extern instr_func group_x87_d9_entry[];
extern instr_func group_x87_da_entry[];
extern instr_func group_x87_db_entry[];
extern instr_func group_x87_dc_entry[];
extern instr_func group_x87_dd_entry[];
extern instr_func group_x87_de_entry[];
extern instr_func group_x87_df_entry[];

make_instr_func(group_1_b);
make_instr_func(group_1_v);
make_instr_func(group_1_bv);

make_instr_func(group_2_b);
make_instr_func(group_2_v);
make_instr_func(group_2_1b);
make_instr_func(group_2_1v);
make_instr_func(group_2_cb);
make_instr_func(group_2_cv);

make_instr_func(group_3_b);
make_instr_func(group_3_v);

make_instr_func(group_5_indirect);

make_instr_func(group_7);

make_instr_func(group_x87_d8);
make_instr_func(group_x87_d9);
make_instr_func(group_x87_da);
make_instr_func(group_x87_db);
make_instr_func(group_x87_dc);
make_instr_func(group_x87_dd);
make_instr_func(group_x87_de);
make_instr_func(group_x87_df);

#endif
