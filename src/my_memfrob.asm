    bits 64

    global memfrob:

    section .text
memfrob:
    mov rax, 0

loop:
	cmp BYTE[rdi+rax], 0
    je end
    xor BYTE[rdi+rax], 42
	inc rax
	jmp loop

end:
    mov rax, rdi
    ret
