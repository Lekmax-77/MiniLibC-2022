    bits 64

    global strchr:

    section .text
strchr:
	mov rax, 0

loop:
    cmp byte[rdi+rax], sil
	je end
	cmp byte[rdi+rax], 0
	je no_end
	inc rax
	jmp loop

end:
    add rax, rdi
	ret

no_end:
    mov rax, 0
	ret