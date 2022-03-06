.section .data

.section .text
.globl _start

_start:
 movl $1, %eax
 movl $0, %ebx
 
 int $0x80
 
 # to run the program: as exit.s -o exit.o && ld exit.o -o exit
 # ./exit
 # to see the result: echo $?
