    bits 64

    global strcmp:

    section .text
strcmp:
	mov rax, 0

loop:
	mov r8b, byte[rdi]
	cmp r8b, 0
	je end
	cmp byte[rsi], 0
	je end
	cmp r8b, byte[rsi]
	jne end

	inc rsi
	inc rdi
	jmp loop

end:
	movzx rax, r8b
    movzx rbx, byte[rsi]
	sub rax, rbx
	ret