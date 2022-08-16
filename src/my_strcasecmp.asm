    bits 64

    global strcasecmp:

    section .text
strcasecmp:
	mov rax, 0

loop:
	mov r8b, byte[rdi]
	mov r9b, byte[rsi]
	cmp r8b, 0
	je end
	cmp r9b, 0
	je end

check:
	cmp r8b, 65
	jl check_2
	cmp r8b, 90
	jg check_2
	add r8b, 32

check_2:
	cmp r9b, 65
	jl loop2
	cmp r9b, 90
	jg loop2
	add r9b, 32


loop2:
	cmp r8b, r9b
	jne end

	inc rsi
	inc rdi
	jmp loop

end:
	movzx rax, r8b
    movzx rbx, r9b
	sub rax, rbx
	ret