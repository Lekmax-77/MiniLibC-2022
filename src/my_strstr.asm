    bits 64

    global strstr:

    section .text
strstr:
	xor rax, rax
    xor rcx, rcx
    xor rdx, rdx

loop:
    mov r8b, BYTE[rdi+rdx]
    mov r9b, BYTE[rsi+rcx]
    cmp r9b, 0
    je end
    cmp r8b, 0
    je no_end
    cmp r8b, r9b
    jne loop_two
    inc rcx
    inc rdx
    jmp loop

loop_two:
    sub rdx, rcx
    mov rcx, 0
    inc rdx
    jmp loop

end:
    mov rax, rdi
    sub rdx, rcx
    add rax, rdx
    ret


no_end:
    mov rax, 0
    ret 
