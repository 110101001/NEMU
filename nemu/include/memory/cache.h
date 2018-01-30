#include "nemu.h"
#include <stdlib.h>
#include <stdio.h>
#define CACHE_SIZE_B 64*1024
#define LINE_AMOUNT 1024
#define LINE_SIZE_B CACHE_SIZE_B/LINE_AMOUNT
#define SET_ASSOCIATIVE_WAYS 8
#define GET_LINE_ADDR(addr) addr&0x3F
#define GET_GROUP_INDEX(addr) (addr&0x1FC0)>>6
#define GET_MARK(addr) addr>>13
typedef struct {
	bool vaild_bit;
	uint8_t data[LINE_SIZE_B];
	uint32_t mark;
} CacheLine;

extern CacheLine cache_mem[];

void init_cache(void);
uint32_t cache_read(paddr_t paddr,size_t len,CacheLine *cache);
void cache_write(paddr_t paddr,size_t len,uint32_t data,CacheLine *cache);

