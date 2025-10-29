section .data
    result db 0

section .text
    global _start

_start:
    mov ecx, 15      ; counter = 15
    mov eax, 0       ; accumulator = 0

sum_loop:
    add eax, ecx     ; eax += ecx
    inc ecx          ; ecx++
    cmp ecx, 26      ; stop when ecx = 26
    jne sum_loop

    ; exit with sum as return code (not printed)
    mov ebx, eax
    mov eax, 1
    int 0x80
