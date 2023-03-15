final_tutorial.dmp: tutorial.elf
	riscv64-unknown-elf-elf2hex --bit-width 32 --input tutorial.elf --output testshex.txt
	riscv64-unknown-elf-objdump -d tutorial.elf>final_tutorial.dmp
tutorial.elf: Tutorial.c lscript bootstrap.s
	riscv64-unknown-elf-gcc -O0 -Wall -nostdlib -march=rv32imav -mabi=ilp32 -T lscript bootstrap.s Tutorial.c Function.h -o tutorial.elf
clean:
	rm tutorial.elf final_tutorial.dmp