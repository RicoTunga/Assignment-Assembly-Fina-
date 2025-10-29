section .text
    global _start

_start:
    mov ecx, 25      ; start from 25
    mov eax, 0       ; sum = 0

sum_loop:
    add eax, ecx     ; add ecx to sum
    dec ecx          ; ecx--
    cmp ecx, 14      ; stop when ecx = 14
    jne sum_loop

    ; exit
    mov ebx, eax
    mov eax, 1
    int 0x80
