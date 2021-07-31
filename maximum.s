.section .data
 data_items: .long 55,66,88,99,31,30,57,89,33,211,28,20,0 # random numbers
 
 .section .text
 .globl _start
 
 _start:
  movl $0, %edi
  movl data_items(,%edi,4), %eax
  movl %eax, %ebx
  
start_loop:
 cmpl $0, %eax
 je exit_loop
 incl %edi
 movl data_items(,%edi,4), %eax
 cmpl %ebx, %eax
 jle start_loop
 movl %eax, %ebx
 
exit_loop:
 movl $1, %eax
 int $0x80
 
 # to run the program:
 # as maxiumum.s -o maxiumum.o && ld maximum.o -o maxiumum
 # ./maxiumum
 # to see the result echo $?
