    bits 64

    global strcspn:

    section .text
strcspn:
    mov rax, 0
    mov rcx, 0
    jmp loop

loop:
    mov r8b, BYTE[rdi+rax]
    mov r9b, BYTE[rsi+rcx]
    cmp r9b, r8b
    je end
    cmp r9b, 0
    je loop_two
    

    inc rcx
    jmp loop

loop_two:
    mov rcx, 0
    inc rax
    cmp r8b, 0
    je no_end
    jmp loop

end:
    ret

;
no_end:
    mov rax, 0
    ret 
;












