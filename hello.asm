section .data
    msg db 'Hello World!', 0xA
    tam equ $- msg

section .text

global _start

_start:
    mov EAX, 0x4
    mov EBX, 0x1
    mov ECX, msg
    mov EDX, tam
    int 0x80

    mov eax, 0x1
    mov ebx, 0x0
    int 0x80