    bits 64

    global memmove:

    section .text
memmove:
	xor rcx, rcx
	mov rax, rdi

hand:
	cmp rdi, rsi
	jg prev
	je end
	jl next

prev:
	mov rcx, rdx
	dec rcx

prev_:
	cmp rcx, 0
	jl end
	mov r8b, byte[rsi+rcx]
	mov byte[rdi+rcx], r8b
	dec rcx
	jmp prev_

next:
	cmp rcx, rdx
	je end
	mov r8b, byte[rsi+rcx]
	mov byte[rdi+rcx], r8b
	inc rcx
	jmp next

end:
	ret
