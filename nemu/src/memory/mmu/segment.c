#include "cpu/cpu.h"
#include "memory/memory.h"
extern uint8_t hw_mem[];
extern uint32_t hw_mem_read(paddr_t paddr, size_t len);
// return the linear address from the virtual address and segment selector
uint32_t segment_translate(uint32_t offset, uint8_t sreg) {
	/* TODO: perform segment translation from virtual address to linear address
	 * by reading the invisible part of the segment register 'sreg'
	 */
	return offset+cpu.segReg[sreg].base;
}

// load the invisible part of a segment register
void load_sreg(uint8_t sreg) {
	/* TODO: load the invisibile part of the segment register 'sreg' by reading the GDT.
	 * The visible part of 'sreg' should be assigned by mov or ljmp already.
	 */
	SegDesc segdesc;
	segdesc.val[0]=laddr_read(cpu.GDTR.base+cpu.segReg[sreg].index*sizeof(SegDesc),4);
	segdesc.val[1]=laddr_read(cpu.GDTR.base+cpu.segReg[sreg].index*sizeof(SegDesc)+4,4);
	//printf("%d's index is %d\n",sreg,cpu.segReg[sreg].index);
	//printf("segdesc=%x%x\n",segdesc.val[0],segdesc.val[1]);
	assert(segdesc.present==1);
	cpu.segReg[sreg].base=segdesc.base_15_0+(segdesc.base_23_16<<16)+(segdesc.base_31_24<<24);
	cpu.segReg[sreg].limit=segdesc.limit_15_0+(segdesc.limit_19_16<<16);
}
