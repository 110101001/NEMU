.PHONY: nemu clean run test testkernel testgame do_not_call_me_testcase do_not_call_me_kernel do_not_call_me_game

include Makefile.git

nemu:
	$(call git_commit, "nemu")
	cd nemu && make

run: nemu do_not_call_me_testcase
	$(call git_commit, "run")
	./nemu/nemu -run add

test: nemu do_not_call_me_testcase
	$(call git_commit, "test")
	./nemu/nemu -autorun

testkernel: nemu do_not_call_me_testcase do_not_call_me_kernel
	$(call git_commit, "testkernel")
	./nemu/nemu -kernel-test

testgame: nemu do_not_call_me_kernel do_not_call_me_game
	$(call git_commit, "testgame")
	./nemu/nemu -game 

clean:
	cd nemu && make clean
	cd testcase && make clean
	cd kernel && make clean
	cd game && make clean

submit: clean
	cd .. && tar cvj $(shell pwd | grep -o '[^/]*$$') > $(STU_ID).tar.bz2


#### do not use the following targets directly ####

do_not_call_me_game:
	cd game && make

do_not_call_me_testcase:
	cd testcase && make

do_not_call_me_kernel:
	cd testcase && make
	cd kernel && make
	

