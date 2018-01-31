#include "device/keyboard.h"
#include "device/i8259_pic.h"

static uint8_t scan_code_buf;

// called by the nemu_sdl_thread on detecting a key down event
void keyboard_down(uint32_t sym) {
	// put the scan code into the buffer
	scan_code_buf = sym2scancode[sym >> 8][sym & 0xff];
	// issue an iterrupt
	i8259_raise_intr(KEYBOARD_IRQ);
	// maybe the kernel will be interested and come to read on the data port
}

// called by the nemu_sdl_thread on detecting a key up event
void keyboard_up(uint32_t sym) {
	// put the scan code into the buffer
	scan_code_buf = sym2scancode[sym >> 8][sym & 0xff] | 0x80;
	// issue an iterrupt
	i8259_raise_intr(KEYBOARD_IRQ);
	// maybe the kernel will be interested and come to read on the data port
}

// called when the kernel issues an 'in' instruction on the keyboard's data port
make_pio_handler(handler_keyboard_data) {
	if(!is_write) {
		// only read allowed, and we do not consider race condition here
		write_io_port(port, len, scan_code_buf);
	}
}
