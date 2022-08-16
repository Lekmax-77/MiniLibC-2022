    bits 64

    global strncmp:

    section .text
strncmp:
	mov rax, 0

loop:
	mov r8b, byte[rdi]
	cmp rax, rdx
	je no_end

	cmp r8b, 0
	je end
	cmp byte[rsi], 0
	je end
	cmp r8b, byte[rsi]
	jne end

	inc rsi
	inc rax
	inc rdi
	jmp loop

end:
	movzx rax, r8b
    movzx rbx, byte[rsi]
	sub rax, rbx
	ret
no_end:
	mov rax, 0
	ret