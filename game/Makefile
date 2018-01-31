LIB_COMMON_DIR = ../include
NEWLIBC_DIR = $(LIB_COMMON_DIR)/newlib

#GAME = typing
GAME = nemu-pal

CC = gcc
CFLAGS = -m32 -MMD -Wall -Werror -Wno-format\
		 -fno-builtin -fno-omit-frame-pointer -fno-stack-protector \
		 -I./include -I$(LIB_COMMON_DIR) -I$(NEWLIBC_DIR)/include
LDFLAGS = -melf_i386 -Ttext=0x800000

CFLAGS += -I./src/$(GAME)/include

COMMON_FILES = $(shell find src/common -name "*.c")
GAME_FILES = $(shell find src/$(GAME) -name "*.c")

CFILES = $(COMMON_FILES) $(GAME_FILES)
OBJS = $(CFILES:.c=.o) 

NEWLIBC = $(NEWLIBC_DIR)/libc.a
#FLOAT = $(LIB_COMMON_DIR)/FLOAT.o

#game: $(OBJS) $(FLOAT)
game: $(OBJS)
	ld $(LDFLAGS) -e game_init -o game $(OBJS) $(NEWLIBC) #$(FLOAT)
ifeq ($(GAME),nemu-pal)
	dd if=/dev/null of=game seek=2048
	cat `find src/nemu-pal/data -type f | sort` >> game
endif

-include $(OBJS:.o=.d)

.PHONY: clean

clean:
	-rm -f game $(OBJS) $(OBJS:.o=.d)
