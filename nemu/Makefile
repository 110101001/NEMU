.PHONY: clean

CC := gcc
LD := ld
CFLAGS := -ggdb3 -MMD -MP -Wall -Werror -O2 -I./include -I../include
LDFLAGS := -lreadline -lSDL

CFILES := $(shell find src/ -name "*.c")
OBJS := $(CFILES:.c=.o)

nemu2: $(OBJS)
	$(CC) -o nemu $(OBJS) $(LDFLAGS)

clean:
	-rm -f nemu $(OBJS) $(OBJS:.o=.d)
