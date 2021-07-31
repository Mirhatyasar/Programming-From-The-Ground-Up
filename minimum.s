# Purpose: This program finds the minimum number of a set of data items.
.section .data
 data_items: .long 55,66,88,99,31,30,57,89,33,211,28,20,244 # random numbers

 .section .text
 .globl _start

 _start:
  movl $0, %edi
  movl data_items(,%edi,4), %eax
  movl %eax, %ebx

start_loop:
 cmpl $244, %eax
 je exit_loop
 incl %edi
 movl data_items(,%edi,4), %eax
 cmpl %ebx, %eax
 jge start_loop
 movl %eax, %ebx
 jmp start_loop

exit_loop:
 movl $1, %eax
 int $0x80

 # to run the program:
 # as minimum.s -o minimum.o && ld minimum.o -o minimum
 # ./minimum
 # to see the result echo $?
