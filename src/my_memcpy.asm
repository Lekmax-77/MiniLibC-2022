    bits 64

    global memcpy:

    section .text
memcpy:
	mov rax, 0

loop:
	cmp rax, rdx
	je end
	mov r8b, byte[rsi+rax]
	mov byte[rdi+rax], r8b
	inc rax
	jmp loop

end:
	mov rax, rdi
	ret
