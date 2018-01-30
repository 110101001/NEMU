#ifndef __HARD_DISK_H__
#define __HARD_DISK_H__

#include "nemu.h"
#include "device/port_io.h"

#define IDE_PORT_BASE 0x1F0
#define IDE_IRQ 14

// init the hard disk by loading the file needed
void init_ide(char * file_to_load);

make_pio_handler(handler_ide);

#endif
