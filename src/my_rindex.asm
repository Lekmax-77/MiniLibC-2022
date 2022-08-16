    bits 64

    global rindex:

    section .text
rindex:
    mov rax, 0
    jmp loop

loop_one:
	cmp byte[rdi+rax], 0
	je loop
	inc rax
	jmp loop_one
loop:
    mov r8b, BYTE[rdi+rax]
    cmp rax, 0
    je no_end
    cmp r8b, sil
    je end
    dec rax
    jmp loop

end:
    add rax, rdi
    ret

no_end:
    mov rax, 0
    ret