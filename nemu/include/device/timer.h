#ifndef __TIMER_H__
#define __TIMER_H__

#include "nemu.h"
#include "device/port_io.h"

#define TIMER_PORT 0X40
void timer_intr();
make_pio_handler(handler_timer);
#endif
