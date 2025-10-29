section .text
    global factorial   ; make function visible to C

factorial:
    mov eax, 1          ; result = 1
    mov ecx, [esp + 4]  ; get argument n (32-bit calling convention)

loop_start:
    cmp ecx, 1
    jle done
    mul ecx             ; eax *= ecx
    dec ecx
    jmp loop_start

done:
    ret