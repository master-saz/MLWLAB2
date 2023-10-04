[SECTION .text]
global _start
_start:
 jmp short  ender

starter:
 xor eax, eax ; clean up the registers
 xor ebx, ebx ; as we will see, using xor’s allowsus
 xor edx, edx ; to avoid having nulls (\0) on our code
 mov al, 4 ; search the identifier for write system call
 mov bl, 1 ; stdout file descriptor
 pop ecx ; get the string adress from the stack (IP from call!!)
 mov dl, 7 ; length of the string on the last line
 int 0x80 ; Interrupt for kernel to run write sys call
 xor eax, eax ; eax = 0
 mov al, 1 ; eax = 1 , the identifier for exit sys call
 xor ebx, ebx ; ebx = 0
 int 0x80 ; Interrupt for kernel to run exit (0) syscall
ender:
 call starter ; put the address of the string on the stack
 db 'YO MAMA\n' ; use back quotes to support \n
