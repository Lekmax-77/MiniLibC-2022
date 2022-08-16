    bits 64

    global strrchr:

    section .text
strrchr:
	mov rax, 0

loop:
	cmp byte[rdi+rax], 0
	je loop_two
	inc rax
	jmp loop


loop_two:
	cmp byte[rdi+rax], sil
	je end
	cmp rax, 0
	je no_end
	dec rax
	jmp loop_two


end:
    add rax, rdi
	ret

no_end:
    mov rax, 0
	ret



