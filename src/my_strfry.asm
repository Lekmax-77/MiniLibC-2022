    bits 64

    global strfry:

    section .text

    extern rand
 
;xor eax, eax
 ;   call rand
strfry:
    xor rax, rax
    xor rcx, rcx
    xor rdx, rdx
    jmp loop

loop:
    cmp BYTE[rdi+rcx], 0
    je end
    xor eax, eax
    call rand
    inc rcx
    jmp loop
    
end:
    add rax, rdi
    ret