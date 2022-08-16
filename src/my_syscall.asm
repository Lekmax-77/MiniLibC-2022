    bits 64

    global syscall:

    section .text

syscall:
    movzx rax, sil	;/* Syscall number -> rax.  */
    mov rdi, rsi	;/* shift arg1 - arg5.  */
    mov rsi, rdx
    mov rdx, rcx
    mov r10, r8
    mov r8, r9
    mov r9, rsp	;/* arg6 is on the stack.  */
    syscall
    ret
