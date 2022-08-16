    bits 64

    global memset:

    section .text
memset:
	mov rax, 0

loop:
	cmp rax, rdx
	je end
    mov byte[rdi+rax], sil
	inc rax
	jmp loop

end:
	mov rax, 0
    add rax, rdi
	ret