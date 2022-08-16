    bits 64

    global strpbrk:

    section .text
strpbrk:
    mov rax, 0
    mov rcx, 0
;    cmp rdi, rsi
;    je end
;    cmp BYTE[rdi], 0
;    je no_end
    cmp BYTE[rsi], 0
    je no_end
    jmp loop

loop:
    mov r8b, BYTE[rdi]
    mov r9b, BYTE[rsi+rcx]
    cmp r8b, 0
    je no_end
    cmp r9b, r8b
    je end
    cmp r9b, 0
    je loop_two
    inc rcx
    jmp loop

loop_two:
    mov rcx, 0
    inc rdi
    jmp loop

end:
    mov rax, rdi
    ret


no_end:
    mov rax, 0
    ret 












