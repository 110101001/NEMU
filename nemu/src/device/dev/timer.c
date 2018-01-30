#include "nemu.h"
#include "device/timer.h"
#include "device/i8259_pic.h"

#define TIMER_IRQ 0

void timer_intr() {
	//printf("intr!");
	if(nemu_state == NEMU_RUN) {
		i8259_raise_intr(TIMER_IRQ);
	}
}


make_pio_handler(handler_timer) {}
