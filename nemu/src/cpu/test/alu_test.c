#include "nemu.h"
#include "cpu/reg.h"
#include "cpu/cpu.h"
#include "cpu/intr.h"
#include "cpu/instr.h"
#include "memory/memory.h"
#include <stdio.h>
#include <assert.h>
#include <stdlib.h>
#include <time.h>

typedef union {
	struct {
		uint32_t CF :1;
		uint32_t dummy0 :1;
		uint32_t PF :1;
		uint32_t dummy1 :1;
		uint32_t AF :1;
		uint32_t dummy2: 1;
		uint32_t ZF :1;
		uint32_t SF :1;
		uint32_t TF :1;
		uint32_t IF :1;
		uint32_t DF :1;
		uint32_t OF :1;
		uint32_t OLIP :2;
		uint32_t NT :1;
		uint32_t dummy3 :1;
		uint32_t RF :1;
		uint32_t VM :1;
		uint32_t dummy4 :14;
	};
	uint32_t val;	
} TEST_EFLAGS;

void alu_test_add() {
	uint32_t res, a, b, res_asm, res_eflags;
	TEST_EFLAGS test_eflags;
	int input[] = {0x10000000, -3, -2, -1, 0, 1, 2};
	int n = sizeof(input) / sizeof(int);
	int i, j;
	for(i = 0 ; i < n ; i++) {
		for(j = 0 ; j < n ; j++) {
			a = input[i];
			b = input[j];
			res = alu_add(b, a);

			asm (	"addl %%ecx, %%eax;"
				"pushf;"
				"popl %%edx;"
				: "=a" (res_asm), "=d" (res_eflags)
				: "a" (a), "c" (b));
				test_eflags.val = res_eflags;
	
			//printf("oracle eflags CF = %d, PF = %d, ZF = %d, SF = %d, OF = %d\n", test_eflags.CF, test_eflags.PF, test_eflags.ZF, test_eflags.SF, test_eflags.OF);
			//printf("nemu   eflags CF = %d, PF = %d, ZF = %d, SF = %d, OF = %d\n", cpu.eflags.CF, cpu.eflags.PF, cpu.eflags.ZF, cpu.eflags.SF, cpu.eflags.OF);
			//printf("res = %x, res_asm = %x\n", res, res_asm);

			assert(res == res_asm);
			assert(cpu.eflags.CF == test_eflags.CF);
			assert(cpu.eflags.PF == test_eflags.PF);
			assert(cpu.eflags.SF == test_eflags.SF);
			assert(cpu.eflags.ZF == test_eflags.ZF);
			assert(cpu.eflags.OF == test_eflags.OF);
		}
	}

	srand(time(0));
	for(i = 0 ; i < 1000000 ; i++) {
		a = rand();
		b = rand();
		res = alu_add(b, a);
		asm (	"addl %%ecx, %%eax;"
			"pushf;"
			"popl %%edx;"
			: "=a" (res_asm), "=d" (res_eflags)
			: "a" (a), "c" (b));
			test_eflags.val = res_eflags;

		assert(res == res_asm);
		assert(cpu.eflags.CF == test_eflags.CF);
		assert(cpu.eflags.PF == test_eflags.PF);
		assert(cpu.eflags.SF == test_eflags.SF);
		assert(cpu.eflags.ZF == test_eflags.ZF);
		assert(cpu.eflags.OF == test_eflags.OF);

	}
	printf("alu_test_add()  \e[0;32mpass\e[0m\n");
}

void alu_test_adc() {
	uint32_t res, a, b, res_asm, res_eflags;
	TEST_EFLAGS test_eflags;
	int input[] = {0x10000000,-3, -2, -1, 0, 1, 2};
	int n = sizeof(input) / sizeof(int);
	int i, j;
	for(i = 0 ; i < n ; i++) {
		for(j = 0 ; j < n ; j++) {
			a = input[i];
			b = input[j];
			cpu.eflags.CF = 0;
			res = alu_adc(b, a);

			asm (	"clc;"
				"adc %%ecx, %%eax;"
				"pushf;"
				"popl %%edx;"
				: "=a" (res_asm), "=d" (res_eflags)
				: "a" (a), "c" (b));
				test_eflags.val = res_eflags;
	
			//printf("oracle eflags CF = %d, PF = %d, ZF = %d, SF = %d, OF = %d\n", test_eflags.CF, test_eflags.PF, test_eflags.ZF, test_eflags.SF, test_eflags.OF);
			//printf("nemu   eflags CF = %d, PF = %d, ZF = %d, SF = %d, OF = %d\n", cpu.eflags.CF, cpu.eflags.PF, cpu.eflags.ZF, cpu.eflags.SF, cpu.eflags.OF);
			//printf("a = %d, b= %d, res = %d, res_asm = %d\n", a, b, res, res_asm);

			assert(res == res_asm);
			assert(cpu.eflags.CF == test_eflags.CF);
			assert(cpu.eflags.PF == test_eflags.PF);
			assert(cpu.eflags.SF == test_eflags.SF);
			assert(cpu.eflags.ZF == test_eflags.ZF);
			assert(cpu.eflags.OF == test_eflags.OF);
		}
	}

	for(i = 0 ; i < n ; i++) {
		for(j = 0 ; j < n ; j++) {
			a = input[i];
			b = input[j];
			cpu.eflags.CF = 1;
			res = alu_adc(b, a);

			asm (	"stc;"
				"adc %%ecx, %%eax;"
				"pushf;"
				"popl %%edx;"
				: "=a" (res_asm), "=d" (res_eflags)
				: "a" (a), "c" (b));
				test_eflags.val = res_eflags;
	
			//printf("oracle eflags CF = %d, PF = %d, ZF = %d, SF = %d, OF = %d\n", test_eflags.CF, test_eflags.PF, test_eflags.ZF, test_eflags.SF, test_eflags.OF);
			//printf("nemu   eflags CF = %d, PF = %d, ZF = %d, SF = %d, OF = %d\n", cpu.eflags.CF, cpu.eflags.PF, cpu.eflags.ZF, cpu.eflags.SF, cpu.eflags.OF);
			//printf("a = %x, b= %x, res = %x, res_asm = %x\n", a, b, res, res_asm);

			assert(res == res_asm);
			assert(cpu.eflags.CF == test_eflags.CF);
			assert(cpu.eflags.PF == test_eflags.PF);
			assert(cpu.eflags.SF == test_eflags.SF);
			assert(cpu.eflags.ZF == test_eflags.ZF);
			assert(cpu.eflags.OF == test_eflags.OF);
		}
	}

	srand(time(0));
	for(i = 0 ; i < 1000000 ; i++) {
		a = rand();
		b = rand();
		cpu.eflags.CF = 0;
		res = alu_adc(b, a);
		asm (	"clc;"
			"adc %%ecx, %%eax;"
			"pushf;"
			"popl %%edx;"
			: "=a" (res_asm), "=d" (res_eflags)
			: "a" (a), "c" (b));
			test_eflags.val = res_eflags;

		assert(res == res_asm);
		assert(cpu.eflags.CF == test_eflags.CF);
		assert(cpu.eflags.PF == test_eflags.PF);
		assert(cpu.eflags.SF == test_eflags.SF);
		assert(cpu.eflags.ZF == test_eflags.ZF);
		assert(cpu.eflags.OF == test_eflags.OF);
	}

	for(i = 0 ; i < 1000000 ; i++) {
		a = rand();
		b = rand();
		cpu.eflags.CF = 1;
		res = alu_adc(b, a);
		asm (	"stc;"
			"adc %%ecx, %%eax;"
			"pushf;"
			"popl %%edx;"
			: "=a" (res_asm), "=d" (res_eflags)
			: "a" (a), "c" (b));
			test_eflags.val = res_eflags;
	
		assert(res == res_asm);
		assert(cpu.eflags.CF == test_eflags.CF);
		assert(cpu.eflags.PF == test_eflags.PF);
		assert(cpu.eflags.SF == test_eflags.SF);
		assert(cpu.eflags.ZF == test_eflags.ZF);
		assert(cpu.eflags.OF == test_eflags.OF);
	}

	printf("alu_test_adc()  \e[0;32mpass\e[0m\n");
}

void alu_test_sub() {

	uint32_t res, a, b, res_asm, res_eflags;
	TEST_EFLAGS test_eflags;
	int input[] = {0x10000000,-3, -2, -1, 0, 1, 2};
	int n = sizeof(input) / sizeof(int);
	int i, j;
	for(i = 0 ; i < n ; i++) {
		for(j = 0 ; j < n ; j++) {
			a = input[i];
			b = input[j];
			res = alu_sub(b, a);

			asm (	"subl %%ecx, %%eax;"
				"pushf;"
				"popl %%edx;"
				: "=a" (res_asm), "=d" (res_eflags)
				: "a" (a), "c" (b));
				test_eflags.val = res_eflags;
	
			//printf("oracle eflags CF = %d, PF = %d, ZF = %d, SF = %d, OF = %d\n", test_eflags.CF, test_eflags.PF, test_eflags.ZF, test_eflags.SF, test_eflags.OF);
			//printf("nemu   eflags CF = %d, PF = %d, ZF = %d, SF = %d, OF = %d\n", cpu.eflags.CF, cpu.eflags.PF, cpu.eflags.ZF, cpu.eflags.SF, cpu.eflags.OF);
			//printf("a = %d, b= %d, res = %d, res_asm = %d\n", a, b, res, res_asm);

			assert(res == res_asm);
			assert(cpu.eflags.CF == test_eflags.CF);
			assert(cpu.eflags.PF == test_eflags.PF);
			assert(cpu.eflags.SF == test_eflags.SF);
			assert(cpu.eflags.ZF == test_eflags.ZF);
			assert(cpu.eflags.OF == test_eflags.OF);
		}
	}

	srand(time(0));
	for(i = 0 ; i < 1000000 ; i++) {
		a = rand();
		b = rand();
		res = alu_sub(b, a);

		asm (	"subl %%ecx, %%eax;"
			"pushf;"
			"popl %%edx;"
			: "=a" (res_asm), "=d" (res_eflags)
			: "a" (a), "c" (b));
			test_eflags.val = res_eflags;

		assert(res == res_asm);
		assert(cpu.eflags.CF == test_eflags.CF);
		assert(cpu.eflags.PF == test_eflags.PF);
		assert(cpu.eflags.SF == test_eflags.SF);
		assert(cpu.eflags.ZF == test_eflags.ZF);
		assert(cpu.eflags.OF == test_eflags.OF);
	}

	printf("alu_test_sub()  \e[0;32mpass\e[0m\n");
}

void alu_test_sbb() {

	uint32_t res, a, b, res_asm, res_eflags;
	TEST_EFLAGS test_eflags;
	int input[] = {0x80000000,0x10000000,-3, -2, -1, 0, 1, 2};
	int n = sizeof(input) / sizeof(int);
	int i, j;
	for(i = 0 ; i < n ; i++) {
		for(j = 0 ; j < n ; j++) {
			a = input[i];
			b = input[j];
			cpu.eflags.CF = 0;
			res = alu_sbb(b, a);

			asm (	"clc;"
				"sbb %%ecx, %%eax;"
				"pushf;"
				"popl %%edx;"
				: "=a" (res_asm), "=d" (res_eflags)
				: "a" (a), "c" (b));
				test_eflags.val = res_eflags;
	
			//printf("oracle eflags CF = %d, PF = %d, ZF = %d, SF = %d, OF = %d\n", test_eflags.CF, test_eflags.PF, test_eflags.ZF, test_eflags.SF, test_eflags.OF);
			//printf("nemu   eflags CF = %d, PF = %d, ZF = %d, SF = %d, OF = %d\n", cpu.eflags.CF, cpu.eflags.PF, cpu.eflags.ZF, cpu.eflags.SF, cpu.eflags.OF);
			//printf("a = %d, b= %d, res = %d, res_asm = %d\n", a, b, res, res_asm);

			assert(res == res_asm);
			assert(cpu.eflags.CF == test_eflags.CF);
			assert(cpu.eflags.PF == test_eflags.PF);
			assert(cpu.eflags.SF == test_eflags.SF);
			assert(cpu.eflags.ZF == test_eflags.ZF);
			assert(cpu.eflags.OF == test_eflags.OF);
		}
	}

	for(i = 0 ; i < n ; i++) {
		for(j = 0 ; j < n ; j++) {
			a = input[i];
			b = input[j];
			cpu.eflags.CF = 1;
			res = alu_sbb(b, a);

			asm (	"stc;"
				"sbb %%ecx, %%eax;"
				"pushf;"
				"popl %%edx;"
				: "=a" (res_asm), "=d" (res_eflags)
				: "a" (a), "c" (b));
				test_eflags.val = res_eflags;
	
			//printf("oracle eflags CF = %d, PF = %d, ZF = %d, SF = %d, OF = %d\n", test_eflags.CF, test_eflags.PF, test_eflags.ZF, test_eflags.SF, test_eflags.OF);
			//printf("nemu   eflags CF = %d, PF = %d, ZF = %d, SF = %d, OF = %d\n", cpu.eflags.CF, cpu.eflags.PF, cpu.eflags.ZF, cpu.eflags.SF, cpu.eflags.OF);
			//printf("a = %d, b= %d, res = %d, res_asm = %d\n", a, b, res, res_asm);

			assert(res == res_asm);
			assert(cpu.eflags.CF == test_eflags.CF);
			assert(cpu.eflags.PF == test_eflags.PF);
			assert(cpu.eflags.SF == test_eflags.SF);
			assert(cpu.eflags.ZF == test_eflags.ZF);
			assert(cpu.eflags.OF == test_eflags.OF);
		}
	}

	srand(time(0));
	for(i = 0 ; i < 1000000 ; i++) {
		a = rand();
		b = rand();
		cpu.eflags.CF = 0;
		res = alu_sbb(b, a);

		asm (	"clc;"
			"sbb %%ecx, %%eax;"
			"pushf;"
			"popl %%edx;"
			: "=a" (res_asm), "=d" (res_eflags)
			: "a" (a), "c" (b));
			test_eflags.val = res_eflags;
	
		assert(res == res_asm);
		assert(cpu.eflags.CF == test_eflags.CF);
		assert(cpu.eflags.PF == test_eflags.PF);
		assert(cpu.eflags.SF == test_eflags.SF);
		assert(cpu.eflags.ZF == test_eflags.ZF);
		assert(cpu.eflags.OF == test_eflags.OF);
	}

	for(i = 0 ; i < 1000000 ; i++) {
		a = rand();
		b = rand();
		cpu.eflags.CF = 1;
		res = alu_sbb(b, a);

		asm (	"stc;"
			"sbb %%ecx, %%eax;"
			"pushf;"
			"popl %%edx;"
			: "=a" (res_asm), "=d" (res_eflags)
			: "a" (a), "c" (b));
			test_eflags.val = res_eflags;
	
		assert(res == res_asm);
		assert(cpu.eflags.CF == test_eflags.CF);
		assert(cpu.eflags.PF == test_eflags.PF);
		assert(cpu.eflags.SF == test_eflags.SF);
		assert(cpu.eflags.ZF == test_eflags.ZF);
		assert(cpu.eflags.OF == test_eflags.OF);
	}

	printf("alu_test_sbb()  \e[0;32mpass\e[0m\n");
}



void alu_test_and() {
	uint32_t res, a, b, res_asm, res_eflags;
	TEST_EFLAGS test_eflags;
	int input[] = {0x10000000,-3, -2, -1, 0, 1, 2};
	int n = sizeof(input) / sizeof(int);
	int i, j;
	for(i = 0 ; i < n ; i++) {
		for(j = 0 ; j < n ; j++) {
			a = input[i];
			b = input[j];
			res = alu_and(b, a);

			asm (	"and %%ecx, %%eax;"
				"pushf;"
				"popl %%edx;"
				: "=a" (res_asm), "=d" (res_eflags)
				: "a" (a), "c" (b));
				test_eflags.val = res_eflags;
	
			//printf("oracle eflags CF = %d, PF = %d, ZF = %d, SF = %d, OF = %d\n", test_eflags.CF, test_eflags.PF, test_eflags.ZF, test_eflags.SF, test_eflags.OF);
			//printf("nemu   eflags CF = %d, PF = %d, ZF = %d, SF = %d, OF = %d\n", cpu.eflags.CF, cpu.eflags.PF, cpu.eflags.ZF, cpu.eflags.SF, cpu.eflags.OF);
			//printf("a = %d, b= %d, res = %d, res_asm = %d\n", a, b, res, res_asm);

			assert(res == res_asm);
			assert(cpu.eflags.CF == test_eflags.CF);
			assert(cpu.eflags.PF == test_eflags.PF);
			assert(cpu.eflags.SF == test_eflags.SF);
			assert(cpu.eflags.ZF == test_eflags.ZF);
			assert(cpu.eflags.OF == test_eflags.OF);
		}
	}

	srand(time(0));
	for(i = 0 ; i < 1000000 ; i++) {
		a = rand();
		b = rand();
		res = alu_and(b, a);
		asm (	"and %%ecx, %%eax;"
			"pushf;"
			"popl %%edx;"
			: "=a" (res_asm), "=d" (res_eflags)
			: "a" (a), "c" (b));
			test_eflags.val = res_eflags;
	
		assert(res == res_asm);
		assert(cpu.eflags.CF == test_eflags.CF);
		assert(cpu.eflags.PF == test_eflags.PF);
		assert(cpu.eflags.SF == test_eflags.SF);
		assert(cpu.eflags.ZF == test_eflags.ZF);
		assert(cpu.eflags.OF == test_eflags.OF);
	}

	printf("alu_test_and()  \e[0;32mpass\e[0m\n");
}

void alu_test_or() {

	uint32_t res, a, b, res_asm, res_eflags;
	TEST_EFLAGS test_eflags;
	int input[] = {0x10000000,-3, -2, -1, 0, 1, 2};
	int n = sizeof(input) / sizeof(int);
	int i, j;
	for(i = 0 ; i < n ; i++) {
		for(j = 0 ; j < n ; j++) {
			a = input[i];
			b = input[j];
			res = alu_or(b, a);

			asm (	"or %%ecx, %%eax;"
				"pushf;"
				"popl %%edx;"
				: "=a" (res_asm), "=d" (res_eflags)
				: "a" (a), "c" (b));
				test_eflags.val = res_eflags;
	
			//printf("oracle eflags CF = %d, PF = %d, ZF = %d, SF = %d, OF = %d\n", test_eflags.CF, test_eflags.PF, test_eflags.ZF, test_eflags.SF, test_eflags.OF);
			//printf("nemu   eflags CF = %d, PF = %d, ZF = %d, SF = %d, OF = %d\n", cpu.eflags.CF, cpu.eflags.PF, cpu.eflags.ZF, cpu.eflags.SF, cpu.eflags.OF);
			//printf("a = %d, b= %d, res = %d, res_asm = %d\n", a, b, res, res_asm);

			assert(res == res_asm);
			assert(cpu.eflags.CF == test_eflags.CF);
			assert(cpu.eflags.PF == test_eflags.PF);
			assert(cpu.eflags.SF == test_eflags.SF);
			assert(cpu.eflags.ZF == test_eflags.ZF);
			assert(cpu.eflags.OF == test_eflags.OF);
		}
	}

	srand(time(0));
	for(i = 0 ; i < 1000000 ; i++) {
		a = rand();
		b = rand();
		res = alu_or(b, a);

		asm (	"or %%ecx, %%eax;"
			"pushf;"
			"popl %%edx;"
			: "=a" (res_asm), "=d" (res_eflags)
			: "a" (a), "c" (b));
			test_eflags.val = res_eflags;
	
		assert(res == res_asm);
		assert(cpu.eflags.CF == test_eflags.CF);
		assert(cpu.eflags.PF == test_eflags.PF);
		assert(cpu.eflags.SF == test_eflags.SF);
		assert(cpu.eflags.ZF == test_eflags.ZF);
		assert(cpu.eflags.OF == test_eflags.OF);
	}
	
	printf("alu_test_or()   \e[0;32mpass\e[0m\n");
}

void alu_test_xor() {

	uint32_t res, a, b, res_asm, res_eflags;
	TEST_EFLAGS test_eflags;
	int input[] = {0x10000000,-3, -2, -1, 0, 1, 2};
	int n = sizeof(input) / sizeof(int);
	int i, j;
	for(i = 0 ; i < n ; i++) {
		for(j = 0 ; j < n ; j++) {
			a = input[i];
			b = input[j];
			res = alu_xor(b, a);

			asm (	"xor %%ecx, %%eax;"
				"pushf;"
				"popl %%edx;"
				: "=a" (res_asm), "=d" (res_eflags)
				: "a" (a), "c" (b));
				test_eflags.val = res_eflags;
	
			//printf("oracle eflags CF = %d, PF = %d, ZF = %d, SF = %d, OF = %d\n", test_eflags.CF, test_eflags.PF, test_eflags.ZF, test_eflags.SF, test_eflags.OF);
			//printf("nemu   eflags CF = %d, PF = %d, ZF = %d, SF = %d, OF = %d\n", cpu.eflags.CF, cpu.eflags.PF, cpu.eflags.ZF, cpu.eflags.SF, cpu.eflags.OF);
			//printf("a = %d, b= %d, res = %d, res_asm = %d\n", a, b, res, res_asm);

			assert(res == res_asm);
			assert(cpu.eflags.CF == test_eflags.CF);
			assert(cpu.eflags.PF == test_eflags.PF);
			assert(cpu.eflags.SF == test_eflags.SF);
			assert(cpu.eflags.ZF == test_eflags.ZF);
			assert(cpu.eflags.OF == test_eflags.OF);
		}
	}

	srand(time(0));
	for(i = 0 ; i < 1000000 ; i++) {
		a = rand();
		b = rand();
		res = alu_xor(b, a);

		asm (	"xor %%ecx, %%eax;"
			"pushf;"
			"popl %%edx;"
			: "=a" (res_asm), "=d" (res_eflags)
			: "a" (a), "c" (b));
			test_eflags.val = res_eflags;

		assert(res == res_asm);
		assert(cpu.eflags.CF == test_eflags.CF);
		assert(cpu.eflags.PF == test_eflags.PF);
		assert(cpu.eflags.SF == test_eflags.SF);
		assert(cpu.eflags.ZF == test_eflags.ZF);
		assert(cpu.eflags.OF == test_eflags.OF);
	}

	printf("alu_test_xor()  \e[0;32mpass\e[0m\n");
}

void alu_test_shl() {
	uint32_t res, a, b, res_asm, res_eflags;
	TEST_EFLAGS test_eflags;
	uint32_t inputb[] = {1, 2, 3, 4};
	uint32_t inputa[] = {0xffffffff, 0x0, 0x10101010};
	int na = sizeof(inputa) / sizeof(uint32_t);
	int nb = sizeof(inputb) / sizeof(uint32_t);
	int i, j;
	uint32_t data_sizes[] = {8, 16, 32};
	int n;
	for(n = 0 ; n < 3 ; n++) {
		for(i = 0 ; i < na ; i++) {
			for(j = 0 ; j < nb ; j++) {
				a = inputa[i];
				b = inputb[j];
				res = alu_shl(b, a, data_sizes[n]);

				switch(n){
					case 0: 
						asm (	"shlb %%cl, %%al;"
							"pushf;"
							"popl %%edx;"
							: "=a" (res_asm), "=d" (res_eflags)
							: "a" (a), "c" (b));
						break;
					case 1: 
						asm (	"shlw %%cl, %%ax;"
							"pushf;"
							"popl %%edx;"
							: "=a" (res_asm), "=d" (res_eflags)
							: "a" (a), "c" (b));
						break;
					case 2:
						asm (	"shll %%cl, %%eax;"
							"pushf;"
							"popl %%edx;"
							: "=a" (res_asm), "=d" (res_eflags)
							: "a" (a), "c" (b));
						break;
					default: assert(0);
				}


				test_eflags.val = res_eflags;
	
				//printf("oracle eflags CF = %d, PF = %d, ZF = %d, SF = %d, OF = %d\n", test_eflags.CF, test_eflags.PF, test_eflags.ZF, test_eflags.SF, test_eflags.OF);
				//printf("nemu   eflags CF = %d, PF = %d, ZF = %d, SF = %d, OF = %d\n", cpu.eflags.CF, cpu.eflags.PF, cpu.eflags.ZF, cpu.eflags.SF, cpu.eflags.OF);
				//printf("a = %x, b= %x, res = %x, res_asm = %x, data_size:%x\n", a, b, res, res_asm,data_sizes[n]);

				assert(res == res_asm);
				assert(cpu.eflags.CF == test_eflags.CF);
				assert(cpu.eflags.PF == test_eflags.PF);
				assert(cpu.eflags.SF == test_eflags.SF);
				assert(cpu.eflags.ZF == test_eflags.ZF);
			}
		}

		srand(time(0));
		for(i = 0 ; i < 1000000 ; i++) {
			for(j = 0 ; j < nb ; j++) {
				a = rand();
				b = inputb[j];
				res = alu_shl(b, a, data_sizes[n]);

				switch(n){
					case 0: 
						asm (	"shlb %%cl, %%al;"
							"pushf;"
							"popl %%edx;"
							: "=a" (res_asm), "=d" (res_eflags)
							: "a" (a), "c" (b));
						break;
					case 1: 
						asm (	"shlw %%cl, %%ax;"
							"pushf;"
							"popl %%edx;"
							: "=a" (res_asm), "=d" (res_eflags)
							: "a" (a), "c" (b));
						break;
					case 2:
						asm (	"shll %%cl, %%eax;"
							"pushf;"
							"popl %%edx;"
							: "=a" (res_asm), "=d" (res_eflags)
							: "a" (a), "c" (b));
						break;
					default: assert(0);
				}
				
				test_eflags.val = res_eflags;
	
				assert(res == res_asm);
				assert(cpu.eflags.CF == test_eflags.CF);
				assert(cpu.eflags.PF == test_eflags.PF);
				assert(cpu.eflags.SF == test_eflags.SF);
				assert(cpu.eflags.ZF == test_eflags.ZF);
			}
		}
	}

	printf("alu_test_shl()  \e[0;32mpass\e[0m\n");
}

void alu_test_shr() {
	uint32_t res, a, b, res_asm, res_eflags;
	TEST_EFLAGS test_eflags;
	uint32_t inputb[] = {1, 2, 3, 4};
	uint32_t inputa[] = {0xffffffff, 0x0, 0x10101010};
	int na = sizeof(inputa) / sizeof(uint32_t);
	int nb = sizeof(inputb) / sizeof(uint32_t);
	int i, j;
	uint32_t data_sizes[] = {8, 16, 32};
	int n;
	for(n = 0 ; n < 3 ; n++) {
		for(i = 0 ; i < na ; i++) {
			for(j = 0 ; j < nb ; j++) {
				a = inputa[i];
				b = inputb[j];
				res = alu_shr(b, a, data_sizes[n]);

				switch(n){
					case 0: 
						asm (	"shrb %%cl, %%al;"
							"pushf;"
							"popl %%edx;"
							: "=a" (res_asm), "=d" (res_eflags)
							: "a" (a), "c" (b));
						break;
					case 1: 
						asm (	"shrw %%cl, %%ax;"
							"pushf;"
							"popl %%edx;"
							: "=a" (res_asm), "=d" (res_eflags)
							: "a" (a), "c" (b));
						break;
					case 2:
						asm (	"shrl %%cl, %%eax;"
							"pushf;"
							"popl %%edx;"
							: "=a" (res_asm), "=d" (res_eflags)
							: "a" (a), "c" (b));
						break;
					default: assert(0);
				}
				
				test_eflags.val = res_eflags;
	
			//printf("oracle eflags CF = %d, PF = %d, ZF = %d, SF = %d, OF = %d\n", test_eflags.CF, test_eflags.PF, test_eflags.ZF, test_eflags.SF, test_eflags.OF);
			//printf("nemu   eflags CF = %d, PF = %d, ZF = %d, SF = %d, OF = %d\n", cpu.eflags.CF, cpu.eflags.PF, cpu.eflags.ZF, cpu.eflags.SF, cpu.eflags.OF);
			//printf("a = %x, b= %x, res = %x, res_asm = %x, data_size = %x\n", a, b, res, res_asm, data_sizes[n]);

				assert(res == res_asm);
				assert(cpu.eflags.CF == test_eflags.CF);
				assert(cpu.eflags.PF == test_eflags.PF);
				assert(cpu.eflags.SF == test_eflags.SF);
				assert(cpu.eflags.ZF == test_eflags.ZF);
			}
		}

		srand(time(0));
		for(i = 0 ; i < 1000000 ; i++) {
			for(j = 0 ; j < nb ; j++) {
				a = rand();
				b = inputb[j];
				res = alu_shr(b, a, data_sizes[n]);

				switch(n){
					case 0: 
						asm (	"shrb %%cl, %%al;"
							"pushf;"
							"popl %%edx;"
							: "=a" (res_asm), "=d" (res_eflags)
							: "a" (a), "c" (b));
						break;
					case 1: 
						asm (	"shrw %%cl, %%ax;"
							"pushf;"
							"popl %%edx;"
							: "=a" (res_asm), "=d" (res_eflags)
							: "a" (a), "c" (b));
						break;
					case 2:
						asm (	"shrl %%cl, %%eax;"
							"pushf;"
							"popl %%edx;"
							: "=a" (res_asm), "=d" (res_eflags)
							: "a" (a), "c" (b));
						break;
					default: assert(0);
				}
				
				test_eflags.val = res_eflags;
	
				assert(res == res_asm);
				assert(cpu.eflags.CF == test_eflags.CF);
				assert(cpu.eflags.PF == test_eflags.PF);
				assert(cpu.eflags.SF == test_eflags.SF);
				assert(cpu.eflags.ZF == test_eflags.ZF);
			}
		}
	}
	printf("alu_test_shr()  \e[0;32mpass\e[0m\n");
}

void alu_test_sal() {
	uint32_t res, a, b, res_asm, res_eflags;
	TEST_EFLAGS test_eflags;
	uint32_t inputb[] = {1, 2, 3, 4};
	uint32_t inputa[] = {0xffffffff, 0x0, 0x10101010};
	int na = sizeof(inputa) / sizeof(uint32_t);
	int nb = sizeof(inputb) / sizeof(uint32_t);
	int i, j;
	uint32_t data_sizes[] = {8, 16, 32};
	int n;
	for(n = 0 ; n < 3 ; n++) {
		for(i = 0 ; i < na ; i++) {
			for(j = 0 ; j < nb ; j++) {
				a = inputa[i];
				b = inputb[j];
				res = alu_sal(b, a, data_sizes[n]);

				switch(n){
					case 0: 
						asm (	"salb %%cl, %%al;"
							"pushf;"
							"popl %%edx;"
							: "=a" (res_asm), "=d" (res_eflags)
							: "a" (a), "c" (b));
						break;
					case 1: 
						asm (	"salw %%cl, %%ax;"
							"pushf;"
							"popl %%edx;"
							: "=a" (res_asm), "=d" (res_eflags)
							: "a" (a), "c" (b));
						break;
					case 2:
						asm (	"sall %%cl, %%eax;"
							"pushf;"
							"popl %%edx;"
							: "=a" (res_asm), "=d" (res_eflags)
							: "a" (a), "c" (b));
						break;
					default: assert(0);
				}

				test_eflags.val = res_eflags;
	
				//printf("oracle eflags CF = %d, PF = %d, ZF = %d, SF = %d, OF = %d\n", test_eflags.CF, test_eflags.PF, test_eflags.ZF, test_eflags.SF, test_eflags.OF);
				//printf("nemu   eflags CF = %d, PF = %d, ZF = %d, SF = %d, OF = %d\n", cpu.eflags.CF, cpu.eflags.PF, cpu.eflags.ZF, cpu.eflags.SF, cpu.eflags.OF);
				//printf("a = %d, b= %d, res = %d, res_asm = %d\n", a, b, res, res_asm);

				assert(res == res_asm);
				assert(cpu.eflags.CF == test_eflags.CF);
				assert(cpu.eflags.PF == test_eflags.PF);
				assert(cpu.eflags.SF == test_eflags.SF);
				assert(cpu.eflags.ZF == test_eflags.ZF);
			}
		}

		srand(time(0));
		for(i = 0 ; i < 1000000 ; i++) {
			for(j = 0 ; j < nb ; j++) {
				a = rand();
				b = inputb[j];
				res = alu_sal(b, a, data_sizes[n]);

				switch(n){
					case 0: 
						asm (	"salb %%cl, %%al;"
							"pushf;"
							"popl %%edx;"
							: "=a" (res_asm), "=d" (res_eflags)
							: "a" (a), "c" (b));
						break;
					case 1: 
						asm (	"salw %%cl, %%ax;"
							"pushf;"
							"popl %%edx;"
							: "=a" (res_asm), "=d" (res_eflags)
							: "a" (a), "c" (b));
						break;
					case 2:
						asm (	"sall %%cl, %%eax;"
							"pushf;"
							"popl %%edx;"
							: "=a" (res_asm), "=d" (res_eflags)
							: "a" (a), "c" (b));
						break;
					default: assert(0);
				}

				test_eflags.val = res_eflags;
	
				assert(res == res_asm);
				assert(cpu.eflags.CF == test_eflags.CF);
				assert(cpu.eflags.PF == test_eflags.PF);
				assert(cpu.eflags.SF == test_eflags.SF);
				assert(cpu.eflags.ZF == test_eflags.ZF);
			}
		}
	}

	printf("alu_test_sal()  \e[0;32mpass\e[0m\n");
}

void alu_test_sar() {
	uint32_t res, a, b, res_asm, res_eflags;
	TEST_EFLAGS test_eflags;
	uint32_t inputb[] = {1, 2, 3, 4};
	uint32_t inputa[] = {0xffffffff, 0x0, 0x10101010};
	int na = sizeof(inputa) / sizeof(uint32_t);
	int nb = sizeof(inputb) / sizeof(uint32_t);
	int i, j;
	uint32_t data_sizes[] = {8, 16, 32};
	int n;
	for(n = 0 ; n < 3 ; n++) {
		for(i = 0 ; i < na ; i++) {
			for(j = 0 ; j < nb ; j++) {
				a = inputa[i];
				b = inputb[j];
				res = alu_sar(b, a, data_sizes[n]);

				switch(n){
					case 0: 
						asm (	"sarb %%cl, %%al;"
							"pushf;"
							"popl %%edx;"
							: "=a" (res_asm), "=d" (res_eflags)
							: "a" (a), "c" (b));
						break;
					case 1: 
						asm (	"sarw %%cl, %%ax;"
							"pushf;"
							"popl %%edx;"
							: "=a" (res_asm), "=d" (res_eflags)
							: "a" (a), "c" (b));
						break;
					case 2:
						asm (	"sarl %%cl, %%eax;"
							"pushf;"
							"popl %%edx;"
							: "=a" (res_asm), "=d" (res_eflags)
							: "a" (a), "c" (b));
						break;
					default: assert(0);
				}

				test_eflags.val = res_eflags;
	
			//printf("oracle eflags CF = %d, PF = %d, ZF = %d, SF = %d, OF = %d\n", test_eflags.CF, test_eflags.PF, test_eflags.ZF, test_eflags.SF, test_eflags.OF);
			//printf("nemu   eflags CF = %d, PF = %d, ZF = %d, SF = %d, OF = %d\n", cpu.eflags.CF, cpu.eflags.PF, cpu.eflags.ZF, cpu.eflags.SF, cpu.eflags.OF);
			//printf("a = %x, b= %x, res = %x, res_asm = %x\n", a, b, res, res_asm);

				assert(res == res_asm);
				assert(cpu.eflags.CF == test_eflags.CF);
				assert(cpu.eflags.PF == test_eflags.PF);
				assert(cpu.eflags.SF == test_eflags.SF);
				assert(cpu.eflags.ZF == test_eflags.ZF);
			}
		}

		srand(time(0));
		for(i = 0 ; i < 1000000 ; i++) {
			for(j = 0 ; j < nb ; j++) {
				a = rand();
				b = inputb[j];
				res = alu_sar(b, a, data_sizes[n]);

				switch(n){
					case 0: 
						asm (	"sarb %%cl, %%al;"
							"pushf;"
							"popl %%edx;"
							: "=a" (res_asm), "=d" (res_eflags)
							: "a" (a), "c" (b));
						break;
					case 1: 
						asm (	"sarw %%cl, %%ax;"
							"pushf;"
							"popl %%edx;"
							: "=a" (res_asm), "=d" (res_eflags)
							: "a" (a), "c" (b));
						break;
					case 2:
						asm (	"sarl %%cl, %%eax;"
							"pushf;"
							"popl %%edx;"
							: "=a" (res_asm), "=d" (res_eflags)
							: "a" (a), "c" (b));
						break;
					default: assert(0);
				}

				test_eflags.val = res_eflags;

				assert(res == res_asm);
				assert(cpu.eflags.CF == test_eflags.CF);
				assert(cpu.eflags.PF == test_eflags.PF);
				assert(cpu.eflags.SF == test_eflags.SF);
				assert(cpu.eflags.ZF == test_eflags.ZF);
			}
		}
	}
	printf("alu_test_sar()  \e[0;32mpass\e[0m\n");
}

void alu_test_imul() {
	uint64_t res, temp_a, temp_d;
	uint32_t a, b, res_asm_a, res_asm_d, res_eflags;
	//TEST_EFLAGS test_eflags;
	int input[] = {-4,-3, -2, -1, 0, 1, 2, 3, 4, 0x0fffffff, 0xefffffff};
	int n = sizeof(input) / sizeof(int);
	int i, j;
	for(i = 0 ; i < n ; i++) {
		for(j = 0 ; j < n ; j++) {
			a = input[i];
			b = input[j];
			res = alu_imul(sign_ext(b, 8), sign_ext(a, 8), 8);

			asm (	"imulb %%cl;"
				"pushf;"
				"popl %%ecx;"
				: "=a" (res_asm_a), "=c" (res_eflags)
				: "a" (a & 0xff), "c" (b & 0xff));
			//	test_eflags.val = res_eflags;
	
			//printf("oracle eflags CF = %d, PF = %d, ZF = %d, SF = %d, OF = %d\n", test_eflags.CF, test_eflags.PF, test_eflags.ZF, test_eflags.SF, test_eflags.OF);
			//printf("nemu   eflags CF = %d, PF = %d, ZF = %d, SF = %d, OF = %d\n", cpu.eflags.CF, cpu.eflags.PF, cpu.eflags.ZF, cpu.eflags.SF, cpu.eflags.OF);
			//printf("a = %d, b= %d, res = %d, res_asm = %d\n", a, b, (int32_t) res, (int32_t) sign_ext(res_asm_a & 0xffff, 16));

			assert((int32_t) res == (int32_t) sign_ext(res_asm_a, 16));
		}
	}

	srand(time(0));
	for(i = 0 ; i < 1000000 ; i++) {
		a = rand();
		b = rand();
		res = alu_imul(sign_ext(b, 8), sign_ext(a, 8), 8);

		asm (	"imulb %%cl;"
			"pushf;"
			"popl %%ecx;"
			: "=a" (res_asm_a), "=c" (res_eflags)
			: "a" (a & 0xff), "c" (b & 0xff));

			assert((int32_t) res == (int32_t) sign_ext(res_asm_a, 16));
	}

	for(i = 0 ; i < n ; i++) {
		for(j = 0 ; j < n ; j++) {
			a = input[i];
			b = input[j];
			res = alu_imul(sign_ext(b, 16), sign_ext(a, 16), 16);

			asm (	"imulw %%cx;"
				"pushf;"
				"popl %%ecx;"
				: "=a" (res_asm_a), "=d" (res_asm_d), "=c" (res_eflags)
				: "a" (a & 0xffff), "c" (b & 0xffff));
			//	test_eflags.val = res_eflags;
	
			//printf("oracle eflags CF = %d, PF = %d, ZF = %d, SF = %d, OF = %d\n", test_eflags.CF, test_eflags.PF, test_eflags.ZF, test_eflags.SF, test_eflags.OF);
			//printf("nemu   eflags CF = %d, PF = %d, ZF = %d, SF = %d, OF = %d\n", cpu.eflags.CF, cpu.eflags.PF, cpu.eflags.ZF, cpu.eflags.SF, cpu.eflags.OF);
			//printf("a = %d, b= %d, res = %d, res_asm = %d\n", a, b, (int32_t) res, (int32_t) ((res_asm_a & 0xffff) | ((res_asm_d & 0xffff) << 16)));

			assert((int32_t) res == (int32_t) ((res_asm_a & 0xffff) | ((res_asm_d & 0xffff) << 16)));
		}
	}

	for(i = 0 ; i < 1000000 ; i++) {
		a = rand();
		b = rand();
		res = alu_imul(sign_ext(b, 16), sign_ext(a, 16), 16);

		asm (	"imulw %%cx;"
			"pushf;"
			"popl %%ecx;"
			: "=a" (res_asm_a), "=d" (res_asm_d), "=c" (res_eflags)
			: "a" (a & 0xffff), "c" (b & 0xffff));
	
		assert((int32_t) res == (int32_t) ((res_asm_a & 0xffff) | ((res_asm_d & 0xffff) << 16)));
	}


	for(i = 0 ; i < n ; i++) {
		for(j = 0 ; j < n ; j++) {
			a = input[i];
			b = input[j];
			res = alu_imul(b, a, 32);
			asm (	"imull %%ecx;"
				"pushf;"
				"popl %%ecx;"
				: "=a" (res_asm_a), "=d" (res_asm_d), "=c" (res_eflags)
				: "a" (a), "c" (b));
			//	test_eflags.val = res_eflags;
	
			//printf("oracle eflags CF = %d, PF = %d, ZF = %d, SF = %d, OF = %d\n", test_eflags.CF, test_eflags.PF, test_eflags.ZF, test_eflags.SF, test_eflags.OF);
			//printf("nemu   eflags CF = %d, PF = %d, ZF = %d, SF = %d, OF = %d\n", cpu.eflags.CF, cpu.eflags.PF, cpu.eflags.ZF, cpu.eflags.SF, cpu.eflags.OF);
			temp_a = res_asm_a;
			temp_d = res_asm_d;
			//printf("a = %d, b= %d, res = %d, res_asm = %d\n", a, b, (int32_t) res, (int32_t) ((temp_a & 0xffffffff) | ((temp_d & 0xffffffff) << 32)));
			assert((int32_t) res == (int32_t) ((temp_a & 0xffffffff) | ((temp_d & 0xffffffff) << 32)));
		}
	}

	for(i = 0 ; i < 1000000 ; i++) {
		a = rand();
		b = rand();
		res = alu_imul(b, a, 32);
		asm (	"imull %%ecx;"
			"pushf;"
			"popl %%ecx;"
			: "=a" (res_asm_a), "=d" (res_asm_d), "=c" (res_eflags)
			: "a" (a), "c" (b));
	
		temp_a = res_asm_a;
		temp_d = res_asm_d;
		assert((int32_t) res == (int32_t) ((temp_a & 0xffffffff) | ((temp_d & 0xffffffff) << 32)));
	}

	printf("alu_test_imul() \e[0;32mpass\e[0m\n");
}

void alu_test_mul() {
	uint64_t res, temp_a, temp_d;
	uint32_t a, b, res_asm_a, res_asm_d, res_eflags;
	TEST_EFLAGS test_eflags;
	int input[] = {0xffffffff,-3, -2, -1, 0, 1, 2, 4, 5, 0xefffffff};
	int n = sizeof(input) / sizeof(int);
	int i, j;
	for(i = 0 ; i < n ; i++) {
		for(j = 0 ; j < n ; j++) {
			a = input[i];
			b = input[j];
			res = alu_mul(b, a, 32);



			asm (	"mull %%ecx;"
				"pushf;"
				"popl %%ecx;"
				: "=a" (res_asm_a), "=d" (res_asm_d), "=c" (res_eflags)
				: "a" (a), "c" (b));
				test_eflags.val = res_eflags;
	
			//printf("oracle eflags CF = %d, PF = %d, ZF = %d, SF = %d, OF = %d\n", test_eflags.CF, test_eflags.PF, test_eflags.ZF, test_eflags.SF, test_eflags.OF);
			//printf("nemu   eflags CF = %d, PF = %d, ZF = %d, SF = %d, OF = %d\n", cpu.eflags.CF, cpu.eflags.PF, cpu.eflags.ZF, cpu.eflags.SF, cpu.eflags.OF);
			//printf("a = %x, b= %x, res = %llx, res_asm = %llx\n", a, b, res, (uint64_t)res_asm_a|(uint64_t)res_asm_d<<32);
			temp_a = res_asm_a;
			temp_d = res_asm_d;
			assert(res == (temp_a | (temp_d << 32)));
			assert(cpu.eflags.CF == test_eflags.CF);
			assert(cpu.eflags.OF == test_eflags.OF);
		}
	}

	srand(time(0));
	for(i = 0 ; i < 1000000 ; i++) {
		a = rand();
		b = rand();
		res = alu_mul(b, a, 32);

		asm (	"mull %%ecx;"
			"pushf;"
			"popl %%ecx;"
			: "=a" (res_asm_a), "=d" (res_asm_d), "=c" (res_eflags)
			: "a" (a), "c" (b));
			test_eflags.val = res_eflags;
	
		temp_a = res_asm_a;
		temp_d = res_asm_d;
		assert(res == (temp_a | (temp_d << 32)));
		assert(cpu.eflags.CF == test_eflags.CF);
		assert(cpu.eflags.OF == test_eflags.OF);
	}


	for(i = 0 ; i < n ; i++) {
		for(j = 0 ; j < n ; j++) {
			a = input[i];
			b = input[j];
			res = alu_mul(b & 0xffff, a & 0xffff, 16);

			asm (	"mulw %%cx;"
				"pushf;"
				"popl %%ecx;"
				: "=a" (res_asm_a), "=d" (res_asm_d), "=c" (res_eflags)
				: "a" (a & 0xffff), "c" (b & 0xffff));
				test_eflags.val = res_eflags;
	
			//printf("oracle eflags CF = %d, PF = %d, ZF = %d, SF = %d, OF = %d\n", test_eflags.CF, test_eflags.PF, test_eflags.ZF, test_eflags.SF, test_eflags.OF);
			//printf("nemu   eflags CF = %d, PF = %d, ZF = %d, SF = %d, OF = %d\n", cpu.eflags.CF, cpu.eflags.PF, cpu.eflags.ZF, cpu.eflags.SF, cpu.eflags.OF);
			//printf("a = %x, b= %x, res = %x, res_asm = %x\n", a, b, (int32_t)res, (res_asm_a | (res_asm_d << 16)));
			
			assert(res == (res_asm_a | (res_asm_d << 16)));
			assert(cpu.eflags.CF == test_eflags.CF);
			assert(cpu.eflags.OF == test_eflags.OF);
		}
	}

	for(i = 0 ; i < 1000000 ; i++) {
		a = rand();
		b = rand();
		res = alu_mul(b & 0xffff, a & 0xffff, 16);

			asm (	"mulw %%cx;"
				"pushf;"
				"popl %%ecx;"
				: "=a" (res_asm_a), "=d" (res_asm_d), "=c" (res_eflags)
				: "a" (a & 0xffff), "c" (b & 0xffff));
				test_eflags.val = res_eflags;
	
			assert(res == (res_asm_a | (res_asm_d << 16)));
			assert(cpu.eflags.CF == test_eflags.CF);
			assert(cpu.eflags.OF == test_eflags.OF);
	}

	for(i = 0 ; i < n ; i++) {
		for(j = 0 ; j < n ; j++) {
			a = input[i];
			b = input[j];
			res = alu_mul(b & 0xff, a & 0xff, 8);

			asm (	"mulb %%cl;"
				"pushf;"
				"popl %%ecx;"
				: "=a" (res_asm_a), "=d" (res_asm_d), "=c" (res_eflags)
				: "a" (a & 0xff), "c" (b & 0xff));
				test_eflags.val = res_eflags;
	
			//printf("oracle eflags CF = %d, PF = %d, ZF = %d, SF = %d, OF = %d\n", test_eflags.CF, test_eflags.PF, test_eflags.ZF, test_eflags.SF, test_eflags.OF);
			//printf("nemu   eflags CF = %d, PF = %d, ZF = %d, SF = %d, OF = %d\n", cpu.eflags.CF, cpu.eflags.PF, cpu.eflags.ZF, cpu.eflags.SF, cpu.eflags.OF);
			//printf("a = %d, b= %d, res = %d, res_asm = %d\n", a, b, res, res_asm);

			assert(res == (res_asm_a | (res_asm_d << 8)));
			assert(cpu.eflags.CF == test_eflags.CF);
			assert(cpu.eflags.OF == test_eflags.OF);
		}
	}

	for(i = 0 ; i < 1000000 ; i++) {
		a = rand();
		b = rand();
		res = alu_mul(b & 0xff, a & 0xff, 8);

		asm (	"mulb %%cl;"
			"pushf;"
			"popl %%ecx;"
			: "=a" (res_asm_a), "=d" (res_asm_d), "=c" (res_eflags)
			: "a" (a & 0xff), "c" (b & 0xff));
			test_eflags.val = res_eflags;
	
		assert(res == (res_asm_a | (res_asm_d << 8)));
		assert(cpu.eflags.CF == test_eflags.CF);
		assert(cpu.eflags.OF == test_eflags.OF);
	}

	printf("alu_test_mul()  \e[0;32mpass\e[0m\n");
}

void alu_test_idiv() {
	UINT64_T aa;
	uint64_t a, b;
	uint32_t quo, quo_asm, rem, rem_asm;
	uint32_t input[] = {-3, -2, -1, 1, 2, 3, 4};
	int n = sizeof(input) / sizeof(uint32_t);
	int i, j;
	for(i = 0 ; i < n ; i++) {
		for(j = 0 ; j < n ; j++) {
			a = sign_ext_64(input[i], 32);
			b = sign_ext_64(input[j], 32);
			aa.val = a;
			quo = alu_idiv(b, a, 32);
			rem = alu_imod(b, a);
			asm ("idivl %%ecx" : "=a" (quo_asm), "=d" (rem_asm) : "a" (aa.low), "d" (aa.high), "c" ((uint32_t)b));
			assert(quo == quo_asm);
			assert(rem == rem_asm);
		}
	}

	srand(time(0));
	for(i = 0 ; i < 1000000 ; i++) {
		a = sign_ext_64(rand(), 32);
		b = sign_ext_64(rand(), 32);
		if(b == 0) continue;
		aa.val = a;
		quo = alu_idiv(b, a, 32);
		rem = alu_imod(b, a);
		asm ("idivl %%ecx" : "=a" (quo_asm), "=d" (rem_asm) : "a" (aa.low), "d" (aa.high), "c" ((uint32_t)b));
		assert(quo == quo_asm);
		assert(rem == rem_asm);
	}

	printf("alu_test_idiv() \e[0;32mpass\e[0m\n");
}

void alu_test_div() {
	UINT64_T aa;
	uint64_t a;
	uint32_t b;
	uint32_t quo, quo_asm, rem, rem_asm;
	uint32_t input[] = {-3, -2, -1, 1, 2, 3, 4};
	int n = sizeof(input) / sizeof(uint32_t);
	int i, j;
	for(i = 0 ; i < n ; i++) {
		for(j = 0 ; j < n ; j++) {
			a = input[i];
			b = input[j];
			aa.val = a;
			quo = alu_div(b, a, 32);
			rem = alu_mod(b, a);
			asm ("divl %%ecx" : "=a" (quo_asm), "=d" (rem_asm) : "a" (aa.low), "d" (aa.high), "c" ((uint32_t)b));
			assert(quo == quo_asm);
			assert(rem == rem_asm);
		}
	}

	srand(time(0));
	for(i = 0 ; i < 1000000 ; i++) {
		a = rand();
		b = rand();
		if(b == 0) continue;
		aa.val = a;
		quo = alu_div(b, a, 32);
		rem = alu_mod(b, a);
		asm ("divl %%ecx" : "=a" (quo_asm), "=d" (rem_asm) : "a" (aa.low), "d" (aa.high), "c" ((uint32_t)b));
		assert(quo == quo_asm);
		assert(rem == rem_asm);
	}

	printf("alu_test_div()  \e[0;32mpass\e[0m\n");
}

void alu_test(){
	printf("\n======== alu test ========\n");
	alu_test_add();
	alu_test_adc();
	alu_test_sub();
	alu_test_sbb();
	alu_test_and();
	alu_test_or();
	alu_test_xor();
	alu_test_shl();
	alu_test_shr();
	alu_test_sal();
	alu_test_sar();
	alu_test_mul();
	alu_test_div();
	alu_test_imul();
	alu_test_idiv();
}
