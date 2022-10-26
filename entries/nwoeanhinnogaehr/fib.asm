; assembles with nasm to an 81-byte ELF binary that works on x86 Linux

bits 32
org $25430000
    db $7F,"ELF" ; e_ident
    dd 1 ; p_type
    dd 0 ; p_offset
    dd $$ ; p_vaddr
    dw 2 ; e_type, p_paddr
    dw 3 ; e_machine
    dd entry ; e_version, p_filesz
    dw (entry-$$)&0xffff ; e_entry, p_memsz

entry:
    inc ebx
    and eax,strict dword 4 ;nop
    inc esi ; 1
    inc edi ; 1
            ; 2
            ; 3
            ; 5
            ; 8
            ; ...

loop:
    mov eax,esi
    push 10
    pop ebp
    push ebp
    jmp format
    dw $20 ; e_phentsize
    dw 1 ; e_phnum

format:
    cdq
    div ebp
    inc ebx
    dec esp
    or edx,'0'
    mov [esp],dl
    test eax,eax
    jnz format

print:
    mov al,4
    mov ecx,esp
    mov edx,ebx
    mov bl,1
    int 0x80

    ;update fibbo
    mov eax,edi
    add edi,esi
    xchg esi,eax

    ;exit on overflow
    jno loop
    xchg eax,ebx
    int 0x80
