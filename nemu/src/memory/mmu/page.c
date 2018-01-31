#include "cpu/cpu.h"
#include "memory/memory.h"

// translate from linear address to physical address
paddr_t page_translate(laddr_t laddr) {
#ifndef TLB_ENABLED
//	printf("laddr is %x,eip is %x\n",laddr,cpu.eip);
	PDE pde;
	PTE pte;
	paddr_t paddr=0;
	paddr_t pageTable_addr;
	paddr_t pageDir_addr;
	int pageDir_index=laddr>>22;
	int pageTable_index=(laddr>>12)&0x3FF;
	int offset=laddr&0xFFF;
	pageDir_addr=cpu.cr3.PDTR*0x1000;
	//printf("%x locating\n",laddr);
	pde.val=paddr_read(pageDir_addr+pageDir_index*4,4);
	if(pde.present==0){
		printf("laddr is %x,eip is %x\n",laddr,cpu.eip);
		assert(pde.present==1);
	}
	pageTable_addr=pde.page_frame*0x1000;
	//printf("addr is %x\n",pageTable_addr+pageTable_index*4);
	pte.val=paddr_read(pageTable_addr+pageTable_index*4,4);
	if(pte.present==0){
		printf("laddr is %x,tabel addr is %x,eip is %x\n",laddr,pde.page_frame,cpu.eip);
		assert(pte.present==1);
	}
	paddr=pte.page_frame*0x1000+offset;
	//if(laddr>0xa0000&&laddr<0xafa00) 	printf("laddr is %x,tabladdr is %x,diraddr is %x,paddr is%x\n",laddr,pageTable_addr,pageDir_addr,paddr);
	return paddr;
#else	
	return tlb_read(laddr) | (laddr & PAGE_MASK);;
#endif
}
