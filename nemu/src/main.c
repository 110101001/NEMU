#include "nemu.h"
#include "monitor/ui.h"
#include "memory/memory.h"
#include "cpu/cpu.h"
#include "cpu/fpu.h"
#include "device/sdl.h"
#include "device/serial.h"
#include "device/ide.h"
#include "monitor/breakpoint.h"

#include <stdio.h>
#include <stdlib.h>

static void load_image(const char * image_file, const uint32_t load_off){
	int ret;
	FILE *fp = fopen(image_file, "rb");
	assert(fp != 0);

	fseek(fp, 0, SEEK_END);
	size_t file_size = ftell(fp);

	fseek(fp, 0, SEEK_SET);
	ret = fread(get_mem_addr() + load_off, file_size, 1, fp);
	assert(ret == 1);
	fclose(fp);
}

static void restart(const uint32_t init_eip) {
	/* Initialize CPU and memory*/
	init_cpu(init_eip);
	init_mem();
	init_bp_list();
	init_regex();
#if defined(HAS_DEVICE_TIMER) || defined(HAS_DEVICE_VGA) || defined(HAS_DEVICE_KEYBOARD)
	/* Initialize SDL for timer displayer and keyboard*/
	init_sdl();
#endif
#ifdef HAS_DEVICE_SERIAL
	init_serial();
#endif

}



static char * testcases[] = {
#ifndef IA32_PAGE
	"mov",
	"mov-cmp",
#endif
	"mov-c",
	"mov-jcc",
	"add",
	"add-longlong",
	"if-else",
	"fib",
	"bubble-sort",
	"quick-sort",
	"select-sort",
	"max",
	"min3",
	"pascal",
	"bit", 
	"movsx",
	"sub-longlong",
	"fact",
	"gotbaha",
	"leap-year",
	"matrix-mul-small",
	"matrix-mul",
	"mul-longlong", 
	"prime",
	"shuixianhua",
	"sum",
	"wanshu",
	"struct",
	"string",
	"hello-str", 
	"test-float",
#ifdef IA32_INTR
	"hello-inline", 
#endif
#if defined(IA32_INTR) && defined(HAS_DEVICE_SERIAL) && defined(HAS_DEVICE_KEYBOARD)
	"echo",
#endif
};

#define NR_TESTCASE sizeof(testcases) / sizeof(char *)

#define INIT_EIP 0x30000
#define LOAD_OFF 0x30000

static char image_path[100];
static char elf_path[100];
static bool autorun = false;
static bool kernel = false;
static bool game = false;

static void single_run() {
	printf("\nExecute %s %s\n", image_path, elf_path);
	// restart the machine, do some initializations
	restart(INIT_EIP);
	/* Load the memory image of executable */
	load_image(image_path, LOAD_OFF);
#ifdef HAS_DEVICE_IDE
	/* Initialize hard drive */
	init_ide(elf_path);
#else
	load_image(elf_path, 0);
#endif
	load_elf_tables(elf_path);
	/*Set the state of the machine to NEMU_READY*/
	nemu_state = NEMU_READY;
	/* Enter UI mainloop to accept user commands*/
	ui_mainloop(autorun);
}

/* 
usage: nemu2 <image_path> <hard_drive_content_path>
	nemu2 -autorun
*/
int main(int argc, char* argv[]) {	
	if(argc == 1) {
		reg_test();
		alu_test();
		fpu_test();
		return 0;
	}

	/* Read the arguments */
	if(argc == 3) {
		if(strcmp(argv[1], "-run")) {
			printf("Error: %s %s %s\n", argv[0], argv[1], argv[2]);
			printf("Usage: nemu -run <testcase>\n");
			return 0;
		}
		strcpy(image_path, "./testcase/bin/");
		strcat(image_path, argv[2]);
		strcat(image_path, ".img");
		strcpy(elf_path, "./testcase/bin/");
		strcat(elf_path, argv[2]);
		single_run();
	} else if(argc == 2) {
		if(strcmp(argv[1], "-autorun") == 0) {
			// make test
			autorun = true;
		} else if(strcmp(argv[1], "-kernel-test") == 0) {
			// make testkernel
			autorun = true;
			kernel = true;
		} else if(strcmp(argv[1], "-game") == 0) {
			// make testgame
			autorun = true;
			kernel = true;
			game = true;
		}
	} else {
		// print usage information
		printf("Error execution config\n");
		return 1;
	}

	if(autorun && !game) {
		// make test || make testkernel
		int i = 0;
		for(i = 0; i < NR_TESTCASE; i++) {
			if(!kernel) {
				strcpy(image_path, "./testcase/bin/");
				strcat(image_path, testcases[i]);
				strcat(image_path, ".img");
			} else {
				strcpy(image_path, "./kernel/kernel.img");
			}
			strcpy(elf_path, "./testcase/bin/");
			strcat(elf_path, testcases[i]);
			single_run();
		}
	}

	if(autorun && game) {
		// make testgame
		strcpy(image_path, "./kernel/kernel.img");
		strcpy(elf_path, "./game/game");
		single_run();
	}


#if defined(HAS_DEVICE_TIMER) || defined(HAS_DEVICE_VGA) || defined(HAS_DEVICE_KEYBOARD)
	close_sdl();
#endif

	return 0;
}
