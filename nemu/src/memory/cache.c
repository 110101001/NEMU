#include "memory/cache.h"
extern uint8_t hw_mem[];
CacheLine cache_mem[LINE_AMOUNT];

void init_cache(){
	for(int i=0;i<LINE_AMOUNT;i++){
		cache_mem[i].vaild_bit=0;
		cache_mem[i].mark=0;
	}
}

uint32_t cache_read(paddr_t paddr,size_t len,CacheLine* cache){
	int target_line=-1;
	int addr=GET_LINE_ADDR(paddr);
	int group=GET_GROUP_INDEX(paddr);
	int mark=GET_MARK(paddr);
	for(int i=group*SET_ASSOCIATIVE_WAYS;i<(group+1)*SET_ASSOCIATIVE_WAYS;i++){//search for matched mark
		if(mark==cache[i].mark&&cache[i].vaild_bit==1){//Hit!
			////printf("\"%x\" in group %d has hit,mark is %x,",paddr,group,mark);
			target_line=i;
			break;
		}
	}
	if(target_line==-1){//didn't hit
		////printf("\"%x\" in group %d didn't hit,",paddr,group);
		int unused_line=-1;
		for(int i=group*SET_ASSOCIATIVE_WAYS;i<(group+1)*SET_ASSOCIATIVE_WAYS;i++){
			if(cache[i].vaild_bit==0){
				unused_line=i;
				//printf("find empty line at %d,",unused_line);
				break;
			}
		}
		if(unused_line==-1){//random kick
			unused_line=rand()%8+group*SET_ASSOCIATIVE_WAYS;
			//printf("didn't find empty, randomly kick line at %d,",unused_line);
		}
		cache[unused_line].vaild_bit=1;
		cache[unused_line].mark=mark;
		//printf("filling it with mark:%x,",mark);
		memcpy(cache[unused_line].data,hw_mem+(paddr&0xFFFFFFC0),64);
		target_line=unused_line;
	}
	uint32_t ret=0;
	if(addr+len>64){//data in 2 blocks
		//printf("reading data cross block:{\n");
		memcpy(&ret,&cache[target_line].data[addr],64-addr);
		ret+=cache_read((paddr&0xFFFFFFC0)+64,len-(64-addr),cache)<<8*(64-addr);
		//printf("}\n");
	}
	else memcpy(&ret,&cache[target_line].data[addr],len);
	//printf("%x(should be %x) read from cache[%d].data[%d],len is %d.\n",ret,*(hw_mem+paddr),target_line,addr,len);
	////printf("hwmem is %x,",*(uint32_t*)(hw_mem+paddr));
	//if(group==126&&mark==880){
	//	if(*(hw_mem+paddr)!=ret){
			//printf("error!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n");
	
	return ret;

}

void cache_write(paddr_t paddr,size_t len,uint32_t data,CacheLine *cache){
	int target_line=-1;
	int addr=GET_LINE_ADDR(paddr);
	int group=GET_GROUP_INDEX(paddr);
	int mark=GET_MARK(paddr);
	//printf("%d at group %d",paddr,group);
	for(int i=group*SET_ASSOCIATIVE_WAYS;i<(group+1)*SET_ASSOCIATIVE_WAYS;i++){//search for matched mark
		if(mark==cache[i].mark&&cache[i].vaild_bit==1){//Hit!
			//printf("has hit cache[%d],",i);
			target_line=i;
			break;
		}
	}
	if(target_line!=-1){
		if(addr+len>64){//data in 2 blocks
			uint32_t overflowed_data=0;
			overflowed_data=data>>8*(64-addr);
			memcpy(cache[target_line].data+addr,&data,len-64+addr);
			cache_write(paddr+64-addr,overflowed_data,len-(64-addr),cache);
		}
		else{
			memcpy(cache[target_line].data+addr,&data,len);
			//printf("write to cache[%d],data[%d] with %x,",target_line,addr,data);
		}
	}
	//printf("write to memory %x\n",paddr);
	memcpy(hw_mem+paddr,&data,len);
	//if(group==126&&mark==880){
		//if(hw_mem[0x1101f80]!=cache[target_line].data[0]){
			//printf("error!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n");

}
