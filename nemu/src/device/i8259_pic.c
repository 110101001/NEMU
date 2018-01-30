#include "nemu.h"
#include "cpu/cpu.h"
#include "device/i8259_pic.h"

static uint8_t intr_no = I8259_NO_INTR;

uint8_t i8259_query_intr_no() {
	return intr_no;
}

void i8259_raise_intr(uint8_t irq_no) {
	intr_no = irq_no + IRQ_BASE;
#ifdef HAS_DEVICE_TIMER
	cpu.intr = 1;
#endif
}

void i8259_ack_intr() {
	intr_no = I8259_NO_INTR;
#ifdef HAS_DEVICE_TIMER
	cpu.intr = 0;
#endif
}

