#include "cpu/cpu.h"

#define EFLAG_SET_ZF cpu.eflags.ZF=!res
#define EFLAG_SET_ZF_SHIFT cpu.eflags.ZF=!(res<<(32-data_size))
#define EFLAG_SET_SF cpu.eflags.SF=res>>31

#define EFLAG_SET_SF_SHIFT cpu.eflags.SF=res>>(data_size-1)

#define EFLAG_SET_OF_ADD cpu.eflags.OF=(src>>31==dest>>31)&&(res>>31!=src>>31)
#define EFLAG_SET_OF_ADC cpu.eflags.OF=(src>>31==dest>>31)&&(res>>31!=src>>31)
//The only case that add CF could influence the result's sign bit is 0x11111111+0x00+0x01(CF),however there is no -0, so src>>31!=dest>>31, this won't be regard as overflow.
#define EFLAG_SET_OF_SUB cpu.eflags.OF=(src>>31!=dest>>31)&&(res>>31!=dest>>31)
#define EFLAG_SET_OF_SBB cpu.eflags.OF=(src>>31!=dest>>31)&&(res>>31!=dest>>31)&&!(res==0&&dest==0)
//The only case that minus CF could influence the result's sign bit is 0x00-0x00-0x01(CF), that should be considered.

//We didn't consider the change of OF in shift (cause teacher didn't asked to!)


#define EFLAG_SET_CF_ADD cpu.eflags.CF=(res<src)
#define EFLAG_SET_CF_ADC cpu.eflags.CF=((res-src<cpu.eflags.CF)||res<src)
#define EFLAG_SET_CF_SUB cpu.eflags.CF=src>dest
#define EFLAG_SET_CF_SBB cpu.eflags.CF=(cpu.eflags.CF>dest-src)||(src>dest)

#define EFLAG_SET_CF_SHL cpu.eflags.CF=dest>>(data_size-src)&0x01
#define EFLAG_SET_CF_SHR cpu.eflags.CF=dest>>(src-1)&0x01
#define EFLAG_SET_CF_SAL cpu.eflags.CF=dest>>(data_size-src)&0x01
#define EFLAG_SET_CF_SAR cpu.eflags.CF=dest>>(src-1)&0x01

#define	EFLAG_SET_CF_OF_MUL cpu.eflags.CF=!!(res>>data_size);cpu.eflags.OF=cpu.eflags.CF

#define EFLAG_SET_PF cpu.eflags.PF=eflag_set_PF(res)

uint32_t alu_add(uint32_t src, uint32_t dest) {
	/*printf("\e[0;32mPlease implement me at alu.c\e[0m\n");
	assert(0);
	return 0;*/
	uint32_t res=src+dest;
	EFLAG_SET_ZF;
	EFLAG_SET_SF;
	EFLAG_SET_OF_ADD; 
	EFLAG_SET_CF_ADD; 
	EFLAG_SET_PF;
	return res;
}

uint32_t alu_adc(uint32_t src, uint32_t dest) {
	/*printf("\e[0;32mPlease implement me at alu.c\e[0m\n");
	assert(0);
	return 0;*/
	uint32_t res=src+dest+cpu.eflags.CF;
	EFLAG_SET_ZF;
	EFLAG_SET_SF;
	EFLAG_SET_OF_ADC; 
	EFLAG_SET_CF_ADC; 
	EFLAG_SET_PF;
	return res;
}


uint32_t alu_sub(uint32_t src, uint32_t dest) {
	/*printf("\e[0;32mPlease implement me at alu.c\e[0m\n");
	assert(0);
	return 0;*/
	uint32_t res=dest-src;
	EFLAG_SET_ZF;
	EFLAG_SET_SF;
	EFLAG_SET_OF_SUB;
	EFLAG_SET_CF_SUB; 
	EFLAG_SET_PF;
	return res;
}

uint32_t alu_sbb(uint32_t src, uint32_t dest) {
	/*printf("\e[0;32mPlease implement me at alu.c\e[0m\n");
	assert(0);
	return 0;*/
	uint32_t res=dest-src-cpu.eflags.CF;
	EFLAG_SET_ZF;
	EFLAG_SET_SF;
	EFLAG_SET_OF_SBB; 
	EFLAG_SET_CF_SBB; 
	EFLAG_SET_PF;
	return res;
}


uint64_t alu_mul(uint32_t src, uint32_t dest, size_t data_size) {
	/*printf("\e[0;32mPlease implement me at alu.c\e[0m\n");
	assert(0);
	return 0;*/
	uint64_t res=(uint64_t)src*(uint64_t)dest;
	EFLAG_SET_CF_OF_MUL;
	EFLAG_SET_ZF;
	EFLAG_SET_SF;
	EFLAG_SET_PF;
	return res;
}

int64_t alu_imul(int32_t src, int32_t dest, size_t data_size) {
	/*printf("\e[0;32mPlease implement me at alu.c\e[0m\n");
	assert(0);
	return 0;*/
	dest=dest<<(64-data_size);
	dest=dest>>(64-data_size);
	src=src<<(64-data_size);
	src=src>>(64-data_size);
	int64_t res=(int64_t)dest*src;
	return res;
}

uint32_t alu_div(uint64_t src, uint64_t dest, size_t data_size) {
	/*printf("\e[0;32mPlease implement me at alu.c\e[0m\n");
	assert(0);
	return 0;*/
	uint32_t res=dest/src;
	return res;
}

int32_t alu_idiv(int64_t src, int64_t dest, size_t data_size) {
	/*printf("\e[0;32mPlease implement me at alu.c\e[0m\n");
	assert(0);
	return 0;*/

	/*uint64_t sign=0;
	if((src>>(data_size-1))&0x01){
		sign=1-sign;
		src=~src;
		src+=1;
	}
	if((dest>>(data_size-1))&0x01){
		sign=1-sign;
		dest=~dest;
		dest+=1;
	}
	uint64_t res=dest*src;
	sign=sign<<(2*data_size-1);
	res|=sign;
	return res;*/
	dest=dest<<(64-data_size);
	dest=dest>>(64-data_size);
	src=src<<(64-data_size);
	src=src>>(64-data_size);
	int32_t res=dest/src;
	return res;	
}


uint32_t alu_mod(uint64_t src, uint64_t dest) {
	/*printf("\e[0;32mPlease implement me at alu.c\e[0m\n");
	assert(0);
	return 0;*/
	uint32_t res=dest%src;
	return res;

}

int32_t alu_imod(int64_t src, int64_t dest) {
	/*printf("\e[0;32mPlease implement me at alu.c\e[0m\n");
	assert(0);
	return 0;*/
	int32_t res=dest%src;
	return res;
}

uint32_t alu_and(uint32_t src, uint32_t dest) {
	/*printf("\e[0;32mPlease implement me at alu.c\e[0m\n");
	assert(0);
	return 0;*/
	uint32_t res=src&dest;
	EFLAG_SET_ZF;
	EFLAG_SET_SF;
	EFLAG_SET_PF;
	cpu.eflags.CF=0;	
	cpu.eflags.OF=0;
	return res;	
}

uint32_t alu_xor(uint32_t src, uint32_t dest) {
	/*printf("\e[0;32mPlease implement me at alu.c\e[0m\n");
	assert(0);
	return 0;*/
	uint32_t res=src^dest;
	EFLAG_SET_ZF;
	EFLAG_SET_SF;
	EFLAG_SET_PF;
	cpu.eflags.CF=0;	
	cpu.eflags.OF=0;
	return res;	
	
}

uint32_t alu_or(uint32_t src, uint32_t dest) {
	/*printf("\e[0;32mPlease implement me at alu.c\e[0m\n");
	assert(0);
	return 0;*/
	uint32_t res=src|dest;
	EFLAG_SET_ZF;
	EFLAG_SET_SF;
	EFLAG_SET_PF;
	cpu.eflags.CF=0;	
	cpu.eflags.OF=0;
	return res;	
}

uint32_t alu_shl(uint32_t src, uint32_t dest, size_t data_size) {
	/*printf("\e[0;32mPlease implement me at alu.c\e[0m\n");
	assert(0);
	return 0;*/
	uint32_t res=dest<<src;
	uint32_t mask=0;
	switch(data_size){
	case 8:
		mask=0xFFFFFF00;
		break;
	case 16:
		mask=0xFFFF0000;
		break;
	case 32:
		mask=0x00;
		break;
	}
	//printf("%x,%d\n",mask,data_size);
	res&=~mask;
	//printf("%x\n",res);
	res|=(dest&mask);
	//printf("%x\n",res);
	EFLAG_SET_CF_SHL;
	EFLAG_SET_ZF_SHIFT;
	EFLAG_SET_SF_SHIFT;
	EFLAG_SET_PF;
	//printf("dest:%x,src:%x,res:%x,data_size:%x\n",dest,src,res,data_size);
	return res;
}

uint32_t alu_shr(uint32_t src, uint32_t dest, size_t data_size) {
	/*printf("\e[0;32mPlease implement me at alu.c\e[0m\n");
	assert(0);*/
	uint32_t res=dest>>src;
	uint32_t mask=0;
	switch(data_size){
	case 8:
		mask=0xFFFFFFFF<<(8-src);
		break;
	case 16:
		mask=0xFFFFFFFF<<(16-src);
		break;
	case 32:
		mask=0x00;
		break;
	}
	//printf("%x\n",mask);
	res&=~mask;
	//printf("%x\n",res);
	switch(data_size){
	case 8:
		mask=0xFFFFFF00;
		break;
	case 16:
		mask=0xFFFF0000;
		break;
	case 32:
		mask=0x00;
		break;
	}
	//printf("%x,%x\n",mask,dest&mask);
	res|=(dest&mask);
	EFLAG_SET_CF_SHR;
	EFLAG_SET_ZF_SHIFT;
	EFLAG_SET_SF_SHIFT;
	EFLAG_SET_PF;
	//printf("dest:%x,src:%x,res:%x,CF:%d\n",dest,src,res,cpu.eflags.CF);
	return res;
}

uint32_t alu_sar(uint32_t src, uint32_t dest, size_t data_size) {
	/*printf("\e[0;32mPlease implement me at alu.c\e[0m\n");
	assert(0);*/
	uint32_t res;
	uint32_t mask=0xFFFFFFFF;
	switch(data_size){
	case 8:
		mask=0xFFFFFFFF<<(7-src);
		break;
	case 16:
		mask=0xFFFFFFFF<<(15-src);
		break;
	case 32:
		mask=0xFFFFFFFF<<(31-src);
		break;
	}
	res=(~mask&(dest>>src));
	if((dest>>(data_size-1))&0x01){
		res|=mask;
		mask=(src!=31?mask<<(src+1):0);
		res&=(dest|~mask);
	}
	else{
		mask=(src!=31?mask<<(src+1):0);
		res|=(dest&mask);
	}
	EFLAG_SET_CF_SAR;
	EFLAG_SET_ZF_SHIFT;
	EFLAG_SET_SF_SHIFT;
	EFLAG_SET_PF;
	return res;
}

uint32_t alu_sal(uint32_t src, uint32_t dest, size_t data_size) {
	/*printf("\e[0;32mPlease implement me at alu.c\e[0m\n");
	assert(0);
	return 0;*/
	return alu_shl(src,dest,data_size);
}

uint32_t eflag_set_PF(uint32_t res){
	int count=0;
	for(int i=0;i<8;i++){
		count+=res&0x01;
		res=res>>1;
	}
	if(count%2==0) return 1;
	else return 0;
}
