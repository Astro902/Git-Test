final_tutorial.dmp: tutorial.elf 
	riscv64-unknown-elf-objdump -d tutorial.elf>final_tutorial.dmp
tutorial.elf: Tutorial.c
	riscv64-unknown-elf-gcc -O0 -Wall -nostdlib -march=rv32imav -mabi=ilp32 Tutorial.c Function.h -o tutorial.elf
clean:
	rm tutorial.elf final_tutorial.dmp