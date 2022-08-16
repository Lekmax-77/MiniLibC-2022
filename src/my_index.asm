    bits 64

    global index:

    section .text
index:
    mov rax, 0
    jmp loop

loop:
    mov r8b, BYTE[rdi+rax]
    cmp r8b, 0
    je no_end
    cmp r8b, sil
    je end
    inc rax
    jmp loop

end:
    add rax, rdi
    ret

no_end:
    mov rax, 0
    ret