Task_4: Task_4_c.o Task_4.o 
	gcc -o Task_4 Task_4_c.o Task_4.o

Task_4.o: Task_4_c.c
	gcc -c Task_4_c.c
Task_4.o: Task_4.asm
	nasm -f elf64 Task_4.asm
